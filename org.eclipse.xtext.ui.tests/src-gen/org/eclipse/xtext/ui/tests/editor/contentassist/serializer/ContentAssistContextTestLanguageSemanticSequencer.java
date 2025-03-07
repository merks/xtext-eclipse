/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.ContentAssistContextTestPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.FirstLevel;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.SecondLevelA;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.SecondLevelB;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.ThirdLevelA1;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.ThirdLevelA2;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.ThirdLevelB1;
import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.ThirdLevelB2;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ContentAssistContextTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class ContentAssistContextTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ContentAssistContextTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == ContentAssistContextTestPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case ContentAssistContextTestPackage.FIRST_LEVEL:
				sequence_FirstLevel(context, (FirstLevel) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.SECOND_LEVEL_A:
				sequence_SecondLevelA(context, (SecondLevelA) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.SECOND_LEVEL_B:
				sequence_SecondLevelB(context, (SecondLevelB) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.THIRD_LEVEL_A1:
				sequence_ThirdLevelA1(context, (ThirdLevelA1) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.THIRD_LEVEL_A2:
				sequence_ThirdLevelA2(context, (ThirdLevelA2) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.THIRD_LEVEL_B1:
				sequence_ThirdLevelB1(context, (ThirdLevelB1) semanticObject); 
				return; 
			case ContentAssistContextTestPackage.THIRD_LEVEL_B2:
				sequence_ThirdLevelB2(context, (ThirdLevelB2) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     FirstLevel returns FirstLevel
	 *
	 * Constraint:
	 *     ((secondLevelA+=SecondLevelA+ secondLevelB+=SecondLevelB+) | secondLevelB+=SecondLevelB+)?
	 * </pre>
	 */
	protected void sequence_FirstLevel(ISerializationContext context, FirstLevel semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     SecondLevelA returns SecondLevelA
	 *
	 * Constraint:
	 *     (thirdLevelA1+=ThirdLevelA1+ thirdLevelA2+=ThirdLevelA2+)
	 * </pre>
	 */
	protected void sequence_SecondLevelA(ISerializationContext context, SecondLevelA semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     SecondLevelB returns SecondLevelB
	 *
	 * Constraint:
	 *     (thirdLevelB1+=ThirdLevelB1+ thirdLevelB2+=ThirdLevelB2+)
	 * </pre>
	 */
	protected void sequence_SecondLevelB(ISerializationContext context, SecondLevelB semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ThirdLevelA1 returns ThirdLevelA1
	 *
	 * Constraint:
	 *     name=ID?
	 * </pre>
	 */
	protected void sequence_ThirdLevelA1(ISerializationContext context, ThirdLevelA1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ThirdLevelA2 returns ThirdLevelA2
	 *
	 * Constraint:
	 *     name=ID?
	 * </pre>
	 */
	protected void sequence_ThirdLevelA2(ISerializationContext context, ThirdLevelA2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ThirdLevelB1 returns ThirdLevelB1
	 *
	 * Constraint:
	 *     name=ID?
	 * </pre>
	 */
	protected void sequence_ThirdLevelB1(ISerializationContext context, ThirdLevelB1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ThirdLevelB2 returns ThirdLevelB2
	 *
	 * Constraint:
	 *     name=ID?
	 * </pre>
	 */
	protected void sequence_ThirdLevelB2(ISerializationContext context, ThirdLevelB2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
