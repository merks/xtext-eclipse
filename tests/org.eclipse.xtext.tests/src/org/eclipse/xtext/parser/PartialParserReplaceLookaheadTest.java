/*******************************************************************************
 * Copyright (c) 2008 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 *******************************************************************************/
package org.eclipse.xtext.parser;

import org.eclipse.xtext.testlanguages.LookaheadTestLanguageStandaloneSetup;

/**
 * @author Jan K�hnlein - Initial contribution and API
 * @author Sebastian Zarnekow
 */
public abstract class PartialParserReplaceLookaheadTest extends AbstractPartialParserReplaceTest {

	@Override
	protected void setUp() throws Exception {
		super.setUp();
		with(LookaheadTestLanguageStandaloneSetup.class);
	}
	
	public void testLookahead_10_1() throws Exception {
		String model = "foo bar b c";
		replaceAndReparse(model, 10, 1, "d", " d");
	}
	
	public void testLookahead_8_1() throws Exception {
		String model = "foo bar b c";
		replaceAndReparse(model, 8, 1, "b", "foo bar b c");
	}
	
	public void testLookahead_0_length() throws Exception {
		String model = "foo bar b c";
		replaceAndReparse(model, 0, model.length(), "", "");		
	}

}
