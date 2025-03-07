/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class TwoContextsTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class MainModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage.MainModel");
		private final Assignment cElementsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cElementsAnElementParserRuleCall_0 = (RuleCall)cElementsAssignment.eContents().get(0);
		
		//MainModel :
		//    (elements+=AnElement)*;
		@Override public ParserRule getRule() { return rule; }
		
		//(elements+=AnElement)*
		public Assignment getElementsAssignment() { return cElementsAssignment; }
		
		//AnElement
		public RuleCall getElementsAnElementParserRuleCall_0() { return cElementsAnElementParserRuleCall_0; }
	}
	public class AnElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage.AnElement");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cRefersToKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cReferredAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final CrossReference cReferredAnElementCrossReference_1_1_0 = (CrossReference)cReferredAssignment_1_1.eContents().get(0);
		private final RuleCall cReferredAnElementIDTerminalRuleCall_1_1_0_1 = (RuleCall)cReferredAnElementCrossReference_1_1_0.eContents().get(1);
		private final Keyword cSemicolonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//AnElement :
		//    name=ID ('refersTo' referred=[AnElement])? ';';
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ('refersTo' referred=[AnElement])? ';'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//('refersTo' referred=[AnElement])?
		public Group getGroup_1() { return cGroup_1; }
		
		//'refersTo'
		public Keyword getRefersToKeyword_1_0() { return cRefersToKeyword_1_0; }
		
		//referred=[AnElement]
		public Assignment getReferredAssignment_1_1() { return cReferredAssignment_1_1; }
		
		//[AnElement]
		public CrossReference getReferredAnElementCrossReference_1_1_0() { return cReferredAnElementCrossReference_1_1_0; }
		
		//ID
		public RuleCall getReferredAnElementIDTerminalRuleCall_1_1_0_1() { return cReferredAnElementIDTerminalRuleCall_1_1_0_1; }
		
		//';'
		public Keyword getSemicolonKeyword_2() { return cSemicolonKeyword_2; }
	}
	
	
	private final MainModelElements pMainModel;
	private final AnElementElements pAnElement;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public TwoContextsTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pMainModel = new MainModelElements();
		this.pAnElement = new AnElementElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//MainModel :
	//    (elements+=AnElement)*;
	public MainModelElements getMainModelAccess() {
		return pMainModel;
	}
	
	public ParserRule getMainModelRule() {
		return getMainModelAccess().getRule();
	}
	
	//AnElement :
	//    name=ID ('refersTo' referred=[AnElement])? ';';
	public AnElementElements getAnElementAccess() {
		return pAnElement;
	}
	
	public ParserRule getAnElementRule() {
		return getAnElementAccess().getRule();
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS         : (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}
