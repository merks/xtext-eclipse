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
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.EnumLiteralDeclaration;
import org.eclipse.xtext.EnumRule;
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
public class Bug348427TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Model");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Assignment cElement1Assignment_0 = (Assignment)cAlternatives.eContents().get(0);
		private final RuleCall cElement1Scenario1_1ParserRuleCall_0_0 = (RuleCall)cElement1Assignment_0.eContents().get(0);
		private final Assignment cElement1Assignment_1 = (Assignment)cAlternatives.eContents().get(1);
		private final RuleCall cElement1Scenario1_2ParserRuleCall_1_0 = (RuleCall)cElement1Assignment_1.eContents().get(0);
		private final Assignment cElement1Assignment_2 = (Assignment)cAlternatives.eContents().get(2);
		private final RuleCall cElement1Scenario1_3ParserRuleCall_2_0 = (RuleCall)cElement1Assignment_2.eContents().get(0);
		private final Assignment cElement1Assignment_3 = (Assignment)cAlternatives.eContents().get(3);
		private final RuleCall cElement1Scenario1_4ParserRuleCall_3_0 = (RuleCall)cElement1Assignment_3.eContents().get(0);
		private final Assignment cElement2Assignment_4 = (Assignment)cAlternatives.eContents().get(4);
		private final RuleCall cElement2Scenario2_1ParserRuleCall_4_0 = (RuleCall)cElement2Assignment_4.eContents().get(0);
		private final Assignment cElement2Assignment_5 = (Assignment)cAlternatives.eContents().get(5);
		private final RuleCall cElement2Scenario2_2ParserRuleCall_5_0 = (RuleCall)cElement2Assignment_5.eContents().get(0);
		private final Assignment cElement2Assignment_6 = (Assignment)cAlternatives.eContents().get(6);
		private final RuleCall cElement2Scenario2_3ParserRuleCall_6_0 = (RuleCall)cElement2Assignment_6.eContents().get(0);
		private final Assignment cElement2Assignment_7 = (Assignment)cAlternatives.eContents().get(7);
		private final RuleCall cElement2Scenario2_4ParserRuleCall_7_0 = (RuleCall)cElement2Assignment_7.eContents().get(0);
		private final Assignment cElement2Assignment_8 = (Assignment)cAlternatives.eContents().get(8);
		private final RuleCall cElement2Scenario2_5ParserRuleCall_8_0 = (RuleCall)cElement2Assignment_8.eContents().get(0);
		private final Assignment cElement2Assignment_9 = (Assignment)cAlternatives.eContents().get(9);
		private final RuleCall cElement2Scenario2_6ParserRuleCall_9_0 = (RuleCall)cElement2Assignment_9.eContents().get(0);
		private final Assignment cElement2Assignment_10 = (Assignment)cAlternatives.eContents().get(10);
		private final RuleCall cElement2Scenario2_7ParserRuleCall_10_0 = (RuleCall)cElement2Assignment_10.eContents().get(0);
		private final Assignment cElement2Assignment_11 = (Assignment)cAlternatives.eContents().get(11);
		private final RuleCall cElement2Scenario2_8ParserRuleCall_11_0 = (RuleCall)cElement2Assignment_11.eContents().get(0);
		
		//Model :
		//      element1=Scenario1_1
		//    | element1=Scenario1_2
		//    | element1=Scenario1_3
		//    | element1=Scenario1_4
		//    | element2=Scenario2_1
		//    | element2=Scenario2_2
		//    | element2=Scenario2_3
		//    | element2=Scenario2_4
		//    | element2=Scenario2_5
		//    | element2=Scenario2_6
		//    | element2=Scenario2_7
		//    | element2=Scenario2_8
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  element1=Scenario1_1
		//| element1=Scenario1_2
		//| element1=Scenario1_3
		//| element1=Scenario1_4
		//| element2=Scenario2_1
		//| element2=Scenario2_2
		//| element2=Scenario2_3
		//| element2=Scenario2_4
		//| element2=Scenario2_5
		//| element2=Scenario2_6
		//| element2=Scenario2_7
		//| element2=Scenario2_8
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//element1=Scenario1_1
		public Assignment getElement1Assignment_0() { return cElement1Assignment_0; }
		
		//Scenario1_1
		public RuleCall getElement1Scenario1_1ParserRuleCall_0_0() { return cElement1Scenario1_1ParserRuleCall_0_0; }
		
		//element1=Scenario1_2
		public Assignment getElement1Assignment_1() { return cElement1Assignment_1; }
		
		//Scenario1_2
		public RuleCall getElement1Scenario1_2ParserRuleCall_1_0() { return cElement1Scenario1_2ParserRuleCall_1_0; }
		
		//element1=Scenario1_3
		public Assignment getElement1Assignment_2() { return cElement1Assignment_2; }
		
		//Scenario1_3
		public RuleCall getElement1Scenario1_3ParserRuleCall_2_0() { return cElement1Scenario1_3ParserRuleCall_2_0; }
		
		//element1=Scenario1_4
		public Assignment getElement1Assignment_3() { return cElement1Assignment_3; }
		
		//Scenario1_4
		public RuleCall getElement1Scenario1_4ParserRuleCall_3_0() { return cElement1Scenario1_4ParserRuleCall_3_0; }
		
		//element2=Scenario2_1
		public Assignment getElement2Assignment_4() { return cElement2Assignment_4; }
		
		//Scenario2_1
		public RuleCall getElement2Scenario2_1ParserRuleCall_4_0() { return cElement2Scenario2_1ParserRuleCall_4_0; }
		
		//element2=Scenario2_2
		public Assignment getElement2Assignment_5() { return cElement2Assignment_5; }
		
		//Scenario2_2
		public RuleCall getElement2Scenario2_2ParserRuleCall_5_0() { return cElement2Scenario2_2ParserRuleCall_5_0; }
		
		//element2=Scenario2_3
		public Assignment getElement2Assignment_6() { return cElement2Assignment_6; }
		
		//Scenario2_3
		public RuleCall getElement2Scenario2_3ParserRuleCall_6_0() { return cElement2Scenario2_3ParserRuleCall_6_0; }
		
		//element2=Scenario2_4
		public Assignment getElement2Assignment_7() { return cElement2Assignment_7; }
		
		//Scenario2_4
		public RuleCall getElement2Scenario2_4ParserRuleCall_7_0() { return cElement2Scenario2_4ParserRuleCall_7_0; }
		
		//element2=Scenario2_5
		public Assignment getElement2Assignment_8() { return cElement2Assignment_8; }
		
		//Scenario2_5
		public RuleCall getElement2Scenario2_5ParserRuleCall_8_0() { return cElement2Scenario2_5ParserRuleCall_8_0; }
		
		//element2=Scenario2_6
		public Assignment getElement2Assignment_9() { return cElement2Assignment_9; }
		
		//Scenario2_6
		public RuleCall getElement2Scenario2_6ParserRuleCall_9_0() { return cElement2Scenario2_6ParserRuleCall_9_0; }
		
		//element2=Scenario2_7
		public Assignment getElement2Assignment_10() { return cElement2Assignment_10; }
		
		//Scenario2_7
		public RuleCall getElement2Scenario2_7ParserRuleCall_10_0() { return cElement2Scenario2_7ParserRuleCall_10_0; }
		
		//element2=Scenario2_8
		public Assignment getElement2Assignment_11() { return cElement2Assignment_11; }
		
		//Scenario2_8
		public RuleCall getElement2Scenario2_8ParserRuleCall_11_0() { return cElement2Scenario2_8ParserRuleCall_11_0; }
	}
	public class Scenario1_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitOneFullStopDigitOneKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild1_1ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild1_2ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild1_3ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario1_1 returns Scenario1:
		//    '1.1'
		//    (
		//          child+=Child1_1
		//      |   child+=Child1_2
		//      |   child+=Child1_3
		//    )
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'1.1'
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'1.1'
		public Keyword getDigitOneFullStopDigitOneKeyword_0() { return cDigitOneFullStopDigitOneKeyword_0; }
		
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child1_1
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child1_1
		public RuleCall getChildChild1_1ParserRuleCall_1_0_0() { return cChildChild1_1ParserRuleCall_1_0_0; }
		
		//child+=Child1_2
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child1_2
		public RuleCall getChildChild1_2ParserRuleCall_1_1_0() { return cChildChild1_2ParserRuleCall_1_1_0; }
		
		//child+=Child1_3
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child1_3
		public RuleCall getChildChild1_3ParserRuleCall_1_2_0() { return cChildChild1_3ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario1_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitOneFullStopDigitTwoKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild1_1ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild1_2ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild1_3ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario1_2 returns Scenario1:
		//    '1.2'
		//    (
		//          child+=Child1_1
		//      |   child+=Child1_2
		//      |   child+=Child1_3
		//    )+
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'1.2'
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)+
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'1.2'
		public Keyword getDigitOneFullStopDigitTwoKeyword_0() { return cDigitOneFullStopDigitTwoKeyword_0; }
		
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)+
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child1_1
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child1_1
		public RuleCall getChildChild1_1ParserRuleCall_1_0_0() { return cChildChild1_1ParserRuleCall_1_0_0; }
		
		//child+=Child1_2
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child1_2
		public RuleCall getChildChild1_2ParserRuleCall_1_1_0() { return cChildChild1_2ParserRuleCall_1_1_0; }
		
		//child+=Child1_3
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child1_3
		public RuleCall getChildChild1_3ParserRuleCall_1_2_0() { return cChildChild1_3ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario1_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario1Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitOneFullStopDigitThreeKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild1_1ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild1_2ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild1_3ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario1_3 returns Scenario1:
		//    {Scenario1}
		//    '1.3'
		//    (
		//          child+=Child1_1
		//      |   child+=Child1_2
		//      |   child+=Child1_3
		//    )*
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario1}
		//'1.3'
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)*
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario1}
		public Action getScenario1Action_0() { return cScenario1Action_0; }
		
		//'1.3'
		public Keyword getDigitOneFullStopDigitThreeKeyword_1() { return cDigitOneFullStopDigitThreeKeyword_1; }
		
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)*
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child1_1
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child1_1
		public RuleCall getChildChild1_1ParserRuleCall_2_0_0() { return cChildChild1_1ParserRuleCall_2_0_0; }
		
		//child+=Child1_2
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child1_2
		public RuleCall getChildChild1_2ParserRuleCall_2_1_0() { return cChildChild1_2ParserRuleCall_2_1_0; }
		
		//child+=Child1_3
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child1_3
		public RuleCall getChildChild1_3ParserRuleCall_2_2_0() { return cChildChild1_3ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Scenario1_4Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_4");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario1Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitOneFullStopDigitFourKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild1_1ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild1_2ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild1_3ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario1_4 returns Scenario1:
		//    {Scenario1}
		//    '1.4'
		//    (
		//          child+=Child1_1
		//      |   child+=Child1_2
		//      |   child+=Child1_3
		//    )?
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario1}
		//'1.4'
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)?
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario1}
		public Action getScenario1Action_0() { return cScenario1Action_0; }
		
		//'1.4'
		public Keyword getDigitOneFullStopDigitFourKeyword_1() { return cDigitOneFullStopDigitFourKeyword_1; }
		
		//(
		//      child+=Child1_1
		//  |   child+=Child1_2
		//  |   child+=Child1_3
		//)?
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child1_1
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child1_1
		public RuleCall getChildChild1_1ParserRuleCall_2_0_0() { return cChildChild1_1ParserRuleCall_2_0_0; }
		
		//child+=Child1_2
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child1_2
		public RuleCall getChildChild1_2ParserRuleCall_2_1_0() { return cChildChild1_2ParserRuleCall_2_1_0; }
		
		//child+=Child1_3
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child1_3
		public RuleCall getChildChild1_3ParserRuleCall_2_2_0() { return cChildChild1_3ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Child1_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cEnumTypeAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cEnumTypeEnumTypeEnumRuleCall_3_0 = (RuleCall)cEnumTypeAssignment_3.eContents().get(0);
		private final Keyword cChild1Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child1_1 returns Child1:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    enumType=EnumType // this is not ok
		//    'child1' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//enumType=EnumType // this is not ok
		//'child1' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//enumType=EnumType
		public Assignment getEnumTypeAssignment_3() { return cEnumTypeAssignment_3; }
		
		//EnumType
		public RuleCall getEnumTypeEnumTypeEnumRuleCall_3_0() { return cEnumTypeEnumTypeEnumRuleCall_3_0; }
		
		//// this is not ok
		//   'child1'
		public Keyword getChild1Keyword_4() { return cChild1Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child1_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cEnumTypeAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cEnumTypeEnumTypeEnumRuleCall_3_0 = (RuleCall)cEnumTypeAssignment_3.eContents().get(0);
		private final Keyword cChild2Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child1_2 returns Child1:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    enumType=EnumType // this is not ok
		//    'child2' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//enumType=EnumType // this is not ok
		//'child2' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//enumType=EnumType
		public Assignment getEnumTypeAssignment_3() { return cEnumTypeAssignment_3; }
		
		//EnumType
		public RuleCall getEnumTypeEnumTypeEnumRuleCall_3_0() { return cEnumTypeEnumTypeEnumRuleCall_3_0; }
		
		//// this is not ok
		//   'child2'
		public Keyword getChild2Keyword_4() { return cChild2Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child1_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cEnumTypeAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cEnumTypeEnumTypeEnumRuleCall_3_0 = (RuleCall)cEnumTypeAssignment_3.eContents().get(0);
		private final Keyword cChild3Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child1_3 returns Child1:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    enumType=EnumType // this is not ok
		//    'child3' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//enumType=EnumType // this is not ok
		//'child3' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//enumType=EnumType
		public Assignment getEnumTypeAssignment_3() { return cEnumTypeAssignment_3; }
		
		//EnumType
		public RuleCall getEnumTypeEnumTypeEnumRuleCall_3_0() { return cEnumTypeEnumTypeEnumRuleCall_3_0; }
		
		//// this is not ok
		//   'child3'
		public Keyword getChild3Keyword_4() { return cChild3Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Scenario2_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitTwoFullStopDigitOneKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild2_1ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild2_2ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild2_3ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario2_1 returns Scenario2:
		//    '2.1'
		//    (
		//          child+=Child2_1
		//      |   child+=Child2_2
		//      |   child+=Child2_3
		//    )
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'2.1'
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'2.1'
		public Keyword getDigitTwoFullStopDigitOneKeyword_0() { return cDigitTwoFullStopDigitOneKeyword_0; }
		
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child2_1
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child2_1
		public RuleCall getChildChild2_1ParserRuleCall_1_0_0() { return cChildChild2_1ParserRuleCall_1_0_0; }
		
		//child+=Child2_2
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child2_2
		public RuleCall getChildChild2_2ParserRuleCall_1_1_0() { return cChildChild2_2ParserRuleCall_1_1_0; }
		
		//child+=Child2_3
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child2_3
		public RuleCall getChildChild2_3ParserRuleCall_1_2_0() { return cChildChild2_3ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario2_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitTwoFullStopDigitTwoKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild2_1ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild2_2ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild2_3ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario2_2 returns Scenario2:
		//    '2.2'
		//    (
		//          child+=Child2_1
		//      |   child+=Child2_2
		//      |   child+=Child2_3
		//    )+
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'2.2'
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)+
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'2.2'
		public Keyword getDigitTwoFullStopDigitTwoKeyword_0() { return cDigitTwoFullStopDigitTwoKeyword_0; }
		
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)+
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child2_1
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child2_1
		public RuleCall getChildChild2_1ParserRuleCall_1_0_0() { return cChildChild2_1ParserRuleCall_1_0_0; }
		
		//child+=Child2_2
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child2_2
		public RuleCall getChildChild2_2ParserRuleCall_1_1_0() { return cChildChild2_2ParserRuleCall_1_1_0; }
		
		//child+=Child2_3
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child2_3
		public RuleCall getChildChild2_3ParserRuleCall_1_2_0() { return cChildChild2_3ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario2_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitTwoFullStopDigitThreeKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild2_4ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild2_5ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild2_6ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario2_3 returns Scenario2:
		//    '2.3'
		//    (
		//          child+=Child2_4
		//      |   child+=Child2_5
		//      |   child+=Child2_6
		//    )
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'2.3'
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'2.3'
		public Keyword getDigitTwoFullStopDigitThreeKeyword_0() { return cDigitTwoFullStopDigitThreeKeyword_0; }
		
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child2_4
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child2_4
		public RuleCall getChildChild2_4ParserRuleCall_1_0_0() { return cChildChild2_4ParserRuleCall_1_0_0; }
		
		//child+=Child2_5
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child2_5
		public RuleCall getChildChild2_5ParserRuleCall_1_1_0() { return cChildChild2_5ParserRuleCall_1_1_0; }
		
		//child+=Child2_6
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child2_6
		public RuleCall getChildChild2_6ParserRuleCall_1_2_0() { return cChildChild2_6ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario2_4Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_4");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDigitTwoFullStopDigitFourKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cChildAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cChildChild2_4ParserRuleCall_1_0_0 = (RuleCall)cChildAssignment_1_0.eContents().get(0);
		private final Assignment cChildAssignment_1_1 = (Assignment)cAlternatives_1.eContents().get(1);
		private final RuleCall cChildChild2_5ParserRuleCall_1_1_0 = (RuleCall)cChildAssignment_1_1.eContents().get(0);
		private final Assignment cChildAssignment_1_2 = (Assignment)cAlternatives_1.eContents().get(2);
		private final RuleCall cChildChild2_6ParserRuleCall_1_2_0 = (RuleCall)cChildAssignment_1_2.eContents().get(0);
		private final Keyword cNextKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Scenario2_4 returns Scenario2:
		//    '2.4'
		//    (
		//          child+=Child2_4
		//      |   child+=Child2_5
		//      |   child+=Child2_6
		//    )+
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'2.4'
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)+
		//'next'
		public Group getGroup() { return cGroup; }
		
		//'2.4'
		public Keyword getDigitTwoFullStopDigitFourKeyword_0() { return cDigitTwoFullStopDigitFourKeyword_0; }
		
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)+
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//child+=Child2_4
		public Assignment getChildAssignment_1_0() { return cChildAssignment_1_0; }
		
		//Child2_4
		public RuleCall getChildChild2_4ParserRuleCall_1_0_0() { return cChildChild2_4ParserRuleCall_1_0_0; }
		
		//child+=Child2_5
		public Assignment getChildAssignment_1_1() { return cChildAssignment_1_1; }
		
		//Child2_5
		public RuleCall getChildChild2_5ParserRuleCall_1_1_0() { return cChildChild2_5ParserRuleCall_1_1_0; }
		
		//child+=Child2_6
		public Assignment getChildAssignment_1_2() { return cChildAssignment_1_2; }
		
		//Child2_6
		public RuleCall getChildChild2_6ParserRuleCall_1_2_0() { return cChildChild2_6ParserRuleCall_1_2_0; }
		
		//'next'
		public Keyword getNextKeyword_2() { return cNextKeyword_2; }
	}
	public class Scenario2_5Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_5");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario2Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitTwoFullStopDigitFiveKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild2_1ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild2_2ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild2_3ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario2_5 returns Scenario2:
		//    {Scenario2}
		//    '2.5'
		//    (
		//          child+=Child2_1
		//      |   child+=Child2_2
		//      |   child+=Child2_3
		//    )?
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario2}
		//'2.5'
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)?
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario2}
		public Action getScenario2Action_0() { return cScenario2Action_0; }
		
		//'2.5'
		public Keyword getDigitTwoFullStopDigitFiveKeyword_1() { return cDigitTwoFullStopDigitFiveKeyword_1; }
		
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)?
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child2_1
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child2_1
		public RuleCall getChildChild2_1ParserRuleCall_2_0_0() { return cChildChild2_1ParserRuleCall_2_0_0; }
		
		//child+=Child2_2
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child2_2
		public RuleCall getChildChild2_2ParserRuleCall_2_1_0() { return cChildChild2_2ParserRuleCall_2_1_0; }
		
		//child+=Child2_3
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child2_3
		public RuleCall getChildChild2_3ParserRuleCall_2_2_0() { return cChildChild2_3ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Scenario2_6Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_6");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario2Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitTwoFullStopDigitSixKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild2_1ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild2_2ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild2_3ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario2_6 returns Scenario2:
		//    {Scenario2}
		//    '2.6'
		//    (
		//          child+=Child2_1
		//      |   child+=Child2_2
		//      |   child+=Child2_3
		//    )*
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario2}
		//'2.6'
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)*
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario2}
		public Action getScenario2Action_0() { return cScenario2Action_0; }
		
		//'2.6'
		public Keyword getDigitTwoFullStopDigitSixKeyword_1() { return cDigitTwoFullStopDigitSixKeyword_1; }
		
		//(
		//      child+=Child2_1
		//  |   child+=Child2_2
		//  |   child+=Child2_3
		//)*
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child2_1
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child2_1
		public RuleCall getChildChild2_1ParserRuleCall_2_0_0() { return cChildChild2_1ParserRuleCall_2_0_0; }
		
		//child+=Child2_2
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child2_2
		public RuleCall getChildChild2_2ParserRuleCall_2_1_0() { return cChildChild2_2ParserRuleCall_2_1_0; }
		
		//child+=Child2_3
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child2_3
		public RuleCall getChildChild2_3ParserRuleCall_2_2_0() { return cChildChild2_3ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Scenario2_7Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_7");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario2Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitTwoFullStopDigitSevenKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild2_4ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild2_5ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild2_6ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario2_7 returns Scenario2:
		//    {Scenario2}
		//    '2.7'
		//    (
		//          child+=Child2_4
		//      |   child+=Child2_5
		//      |   child+=Child2_6
		//    )?
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario2}
		//'2.7'
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)?
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario2}
		public Action getScenario2Action_0() { return cScenario2Action_0; }
		
		//'2.7'
		public Keyword getDigitTwoFullStopDigitSevenKeyword_1() { return cDigitTwoFullStopDigitSevenKeyword_1; }
		
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)?
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child2_4
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child2_4
		public RuleCall getChildChild2_4ParserRuleCall_2_0_0() { return cChildChild2_4ParserRuleCall_2_0_0; }
		
		//child+=Child2_5
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child2_5
		public RuleCall getChildChild2_5ParserRuleCall_2_1_0() { return cChildChild2_5ParserRuleCall_2_1_0; }
		
		//child+=Child2_6
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child2_6
		public RuleCall getChildChild2_6ParserRuleCall_2_2_0() { return cChildChild2_6ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Scenario2_8Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_8");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cScenario2Action_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cDigitTwoFullStopDigitEightKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Assignment cChildAssignment_2_0 = (Assignment)cAlternatives_2.eContents().get(0);
		private final RuleCall cChildChild2_4ParserRuleCall_2_0_0 = (RuleCall)cChildAssignment_2_0.eContents().get(0);
		private final Assignment cChildAssignment_2_1 = (Assignment)cAlternatives_2.eContents().get(1);
		private final RuleCall cChildChild2_5ParserRuleCall_2_1_0 = (RuleCall)cChildAssignment_2_1.eContents().get(0);
		private final Assignment cChildAssignment_2_2 = (Assignment)cAlternatives_2.eContents().get(2);
		private final RuleCall cChildChild2_6ParserRuleCall_2_2_0 = (RuleCall)cChildAssignment_2_2.eContents().get(0);
		private final Keyword cNextKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Scenario2_8 returns Scenario2:
		//    {Scenario2}
		//    '2.8'
		//    (
		//          child+=Child2_4
		//      |   child+=Child2_5
		//      |   child+=Child2_6
		//    )*
		//    'next'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Scenario2}
		//'2.8'
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)*
		//'next'
		public Group getGroup() { return cGroup; }
		
		//{Scenario2}
		public Action getScenario2Action_0() { return cScenario2Action_0; }
		
		//'2.8'
		public Keyword getDigitTwoFullStopDigitEightKeyword_1() { return cDigitTwoFullStopDigitEightKeyword_1; }
		
		//(
		//      child+=Child2_4
		//  |   child+=Child2_5
		//  |   child+=Child2_6
		//)*
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//child+=Child2_4
		public Assignment getChildAssignment_2_0() { return cChildAssignment_2_0; }
		
		//Child2_4
		public RuleCall getChildChild2_4ParserRuleCall_2_0_0() { return cChildChild2_4ParserRuleCall_2_0_0; }
		
		//child+=Child2_5
		public Assignment getChildAssignment_2_1() { return cChildAssignment_2_1; }
		
		//Child2_5
		public RuleCall getChildChild2_5ParserRuleCall_2_1_0() { return cChildChild2_5ParserRuleCall_2_1_0; }
		
		//child+=Child2_6
		public Assignment getChildAssignment_2_2() { return cChildAssignment_2_2; }
		
		//Child2_6
		public RuleCall getChildChild2_6ParserRuleCall_2_2_0() { return cChildChild2_6ParserRuleCall_2_2_0; }
		
		//'next'
		public Keyword getNextKeyword_3() { return cNextKeyword_3; }
	}
	public class Child2_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cStringAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final Alternatives cStringAlternatives_3_0 = (Alternatives)cStringAssignment_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAlternatives_3_0.eContents().get(0);
		private final Keyword cStringBKeyword_3_0_1 = (Keyword)cStringAlternatives_3_0.eContents().get(1);
		private final Keyword cChild1Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_1 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    string=('a' | 'b')
		//    'child1' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//string=('a' | 'b')
		//'child1' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//string=('a' | 'b')
		public Assignment getStringAssignment_3() { return cStringAssignment_3; }
		
		//('a' | 'b')
		public Alternatives getStringAlternatives_3_0() { return cStringAlternatives_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//'b'
		public Keyword getStringBKeyword_3_0_1() { return cStringBKeyword_3_0_1; }
		
		//'child1'
		public Keyword getChild1Keyword_4() { return cChild1Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child2_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cStringAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final Alternatives cStringAlternatives_3_0 = (Alternatives)cStringAssignment_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAlternatives_3_0.eContents().get(0);
		private final Keyword cStringBKeyword_3_0_1 = (Keyword)cStringAlternatives_3_0.eContents().get(1);
		private final Keyword cChild2Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_2 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    string=('a' | 'b')
		//    'child2' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//string=('a' | 'b')
		//'child2' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//string=('a' | 'b')
		public Assignment getStringAssignment_3() { return cStringAssignment_3; }
		
		//('a' | 'b')
		public Alternatives getStringAlternatives_3_0() { return cStringAlternatives_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//'b'
		public Keyword getStringBKeyword_3_0_1() { return cStringBKeyword_3_0_1; }
		
		//'child2'
		public Keyword getChild2Keyword_4() { return cChild2Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child2_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cStringAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final Alternatives cStringAlternatives_3_0 = (Alternatives)cStringAssignment_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAlternatives_3_0.eContents().get(0);
		private final Keyword cStringBKeyword_3_0_1 = (Keyword)cStringAlternatives_3_0.eContents().get(1);
		private final Keyword cChild3Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_3 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    string=('a' | 'b')
		//    'child3' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//string=('a' | 'b')
		//'child3' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//string=('a' | 'b')
		public Assignment getStringAssignment_3() { return cStringAssignment_3; }
		
		//('a' | 'b')
		public Alternatives getStringAlternatives_3_0() { return cStringAlternatives_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//'b'
		public Keyword getStringBKeyword_3_0_1() { return cStringBKeyword_3_0_1; }
		
		//'child3'
		public Keyword getChild3Keyword_4() { return cChild3Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child2_4Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_4");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Alternatives cAlternatives_3 = (Alternatives)cGroup.eContents().get(3);
		private final Assignment cStringAssignment_3_0 = (Assignment)cAlternatives_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAssignment_3_0.eContents().get(0);
		private final Assignment cStringAssignment_3_1 = (Assignment)cAlternatives_3.eContents().get(1);
		private final Keyword cStringBKeyword_3_1_0 = (Keyword)cStringAssignment_3_1.eContents().get(0);
		private final Keyword cChild1Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_4 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    (string='a' | string='b')
		//    'child1' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//(string='a' | string='b')
		//'child1' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//(string='a' | string='b')
		public Alternatives getAlternatives_3() { return cAlternatives_3; }
		
		//string='a'
		public Assignment getStringAssignment_3_0() { return cStringAssignment_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//string='b'
		public Assignment getStringAssignment_3_1() { return cStringAssignment_3_1; }
		
		//'b'
		public Keyword getStringBKeyword_3_1_0() { return cStringBKeyword_3_1_0; }
		
		//'child1'
		public Keyword getChild1Keyword_4() { return cChild1Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child2_5Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_5");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Alternatives cAlternatives_3 = (Alternatives)cGroup.eContents().get(3);
		private final Assignment cStringAssignment_3_0 = (Assignment)cAlternatives_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAssignment_3_0.eContents().get(0);
		private final Assignment cStringAssignment_3_1 = (Assignment)cAlternatives_3.eContents().get(1);
		private final Keyword cStringBKeyword_3_1_0 = (Keyword)cStringAssignment_3_1.eContents().get(0);
		private final Keyword cChild2Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_5 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    (string='a' | string='b')
		//    'child2' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//(string='a' | string='b')
		//'child2' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//(string='a' | string='b')
		public Alternatives getAlternatives_3() { return cAlternatives_3; }
		
		//string='a'
		public Assignment getStringAssignment_3_0() { return cStringAssignment_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//string='b'
		public Assignment getStringAssignment_3_1() { return cStringAssignment_3_1; }
		
		//'b'
		public Keyword getStringBKeyword_3_1_0() { return cStringBKeyword_3_1_0; }
		
		//'child2'
		public Keyword getChild2Keyword_4() { return cChild2Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	public class Child2_6Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_6");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cColonKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cBoolAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final Keyword cBoolBoolKeyword_2_0_0 = (Keyword)cBoolAssignment_2_0.eContents().get(0);
		private final Keyword cKeywordKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Alternatives cAlternatives_3 = (Alternatives)cGroup.eContents().get(3);
		private final Assignment cStringAssignment_3_0 = (Assignment)cAlternatives_3.eContents().get(0);
		private final Keyword cStringAKeyword_3_0_0 = (Keyword)cStringAssignment_3_0.eContents().get(0);
		private final Assignment cStringAssignment_3_1 = (Assignment)cAlternatives_3.eContents().get(1);
		private final Keyword cStringBKeyword_3_1_0 = (Keyword)cStringAssignment_3_1.eContents().get(0);
		private final Keyword cChild3Keyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cEndKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Child2_6 returns Child2:
		//    name=ID ':'
		//    (bool?='bool' 'keyword')?
		//    (string='a' | string='b')
		//    'child3' 'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID ':'
		//(bool?='bool' 'keyword')?
		//(string='a' | string='b')
		//'child3' 'end'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//':'
		public Keyword getColonKeyword_1() { return cColonKeyword_1; }
		
		//(bool?='bool' 'keyword')?
		public Group getGroup_2() { return cGroup_2; }
		
		//bool?='bool'
		public Assignment getBoolAssignment_2_0() { return cBoolAssignment_2_0; }
		
		//'bool'
		public Keyword getBoolBoolKeyword_2_0_0() { return cBoolBoolKeyword_2_0_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_2_1() { return cKeywordKeyword_2_1; }
		
		//(string='a' | string='b')
		public Alternatives getAlternatives_3() { return cAlternatives_3; }
		
		//string='a'
		public Assignment getStringAssignment_3_0() { return cStringAssignment_3_0; }
		
		//'a'
		public Keyword getStringAKeyword_3_0_0() { return cStringAKeyword_3_0_0; }
		
		//string='b'
		public Assignment getStringAssignment_3_1() { return cStringAssignment_3_1; }
		
		//'b'
		public Keyword getStringBKeyword_3_1_0() { return cStringBKeyword_3_1_0; }
		
		//'child3'
		public Keyword getChild3Keyword_4() { return cChild3Keyword_4; }
		
		//'end'
		public Keyword getEndKeyword_5() { return cEndKeyword_5; }
	}
	
	public class EnumTypeElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.EnumType");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cAEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cAAKeyword_0_0 = (Keyword)cAEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cBEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cBBKeyword_1_0 = (Keyword)cBEnumLiteralDeclaration_1.eContents().get(0);
		
		//enum EnumType: a | b;
		public EnumRule getRule() { return rule; }
		
		//a | b
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//a
		public EnumLiteralDeclaration getAEnumLiteralDeclaration_0() { return cAEnumLiteralDeclaration_0; }
		
		public Keyword getAAKeyword_0_0() { return cAAKeyword_0_0; }
		
		//b
		public EnumLiteralDeclaration getBEnumLiteralDeclaration_1() { return cBEnumLiteralDeclaration_1; }
		
		public Keyword getBBKeyword_1_0() { return cBBKeyword_1_0; }
	}
	
	private final ModelElements pModel;
	private final Scenario1_1Elements pScenario1_1;
	private final Scenario1_2Elements pScenario1_2;
	private final Scenario1_3Elements pScenario1_3;
	private final Scenario1_4Elements pScenario1_4;
	private final Child1_1Elements pChild1_1;
	private final Child1_2Elements pChild1_2;
	private final Child1_3Elements pChild1_3;
	private final EnumTypeElements eEnumType;
	private final Scenario2_1Elements pScenario2_1;
	private final Scenario2_2Elements pScenario2_2;
	private final Scenario2_3Elements pScenario2_3;
	private final Scenario2_4Elements pScenario2_4;
	private final Scenario2_5Elements pScenario2_5;
	private final Scenario2_6Elements pScenario2_6;
	private final Scenario2_7Elements pScenario2_7;
	private final Scenario2_8Elements pScenario2_8;
	private final Child2_1Elements pChild2_1;
	private final Child2_2Elements pChild2_2;
	private final Child2_3Elements pChild2_3;
	private final Child2_4Elements pChild2_4;
	private final Child2_5Elements pChild2_5;
	private final Child2_6Elements pChild2_6;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug348427TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pScenario1_1 = new Scenario1_1Elements();
		this.pScenario1_2 = new Scenario1_2Elements();
		this.pScenario1_3 = new Scenario1_3Elements();
		this.pScenario1_4 = new Scenario1_4Elements();
		this.pChild1_1 = new Child1_1Elements();
		this.pChild1_2 = new Child1_2Elements();
		this.pChild1_3 = new Child1_3Elements();
		this.eEnumType = new EnumTypeElements();
		this.pScenario2_1 = new Scenario2_1Elements();
		this.pScenario2_2 = new Scenario2_2Elements();
		this.pScenario2_3 = new Scenario2_3Elements();
		this.pScenario2_4 = new Scenario2_4Elements();
		this.pScenario2_5 = new Scenario2_5Elements();
		this.pScenario2_6 = new Scenario2_6Elements();
		this.pScenario2_7 = new Scenario2_7Elements();
		this.pScenario2_8 = new Scenario2_8Elements();
		this.pChild2_1 = new Child2_1Elements();
		this.pChild2_2 = new Child2_2Elements();
		this.pChild2_3 = new Child2_3Elements();
		this.pChild2_4 = new Child2_4Elements();
		this.pChild2_5 = new Child2_5Elements();
		this.pChild2_6 = new Child2_6Elements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage".equals(grammar.getName())) {
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

	
	//Model :
	//      element1=Scenario1_1
	//    | element1=Scenario1_2
	//    | element1=Scenario1_3
	//    | element1=Scenario1_4
	//    | element2=Scenario2_1
	//    | element2=Scenario2_2
	//    | element2=Scenario2_3
	//    | element2=Scenario2_4
	//    | element2=Scenario2_5
	//    | element2=Scenario2_6
	//    | element2=Scenario2_7
	//    | element2=Scenario2_8
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Scenario1_1 returns Scenario1:
	//    '1.1'
	//    (
	//          child+=Child1_1
	//      |   child+=Child1_2
	//      |   child+=Child1_3
	//    )
	//    'next'
	//;
	public Scenario1_1Elements getScenario1_1Access() {
		return pScenario1_1;
	}
	
	public ParserRule getScenario1_1Rule() {
		return getScenario1_1Access().getRule();
	}
	
	//Scenario1_2 returns Scenario1:
	//    '1.2'
	//    (
	//          child+=Child1_1
	//      |   child+=Child1_2
	//      |   child+=Child1_3
	//    )+
	//    'next'
	//;
	public Scenario1_2Elements getScenario1_2Access() {
		return pScenario1_2;
	}
	
	public ParserRule getScenario1_2Rule() {
		return getScenario1_2Access().getRule();
	}
	
	//Scenario1_3 returns Scenario1:
	//    {Scenario1}
	//    '1.3'
	//    (
	//          child+=Child1_1
	//      |   child+=Child1_2
	//      |   child+=Child1_3
	//    )*
	//    'next'
	//;
	public Scenario1_3Elements getScenario1_3Access() {
		return pScenario1_3;
	}
	
	public ParserRule getScenario1_3Rule() {
		return getScenario1_3Access().getRule();
	}
	
	//Scenario1_4 returns Scenario1:
	//    {Scenario1}
	//    '1.4'
	//    (
	//          child+=Child1_1
	//      |   child+=Child1_2
	//      |   child+=Child1_3
	//    )?
	//    'next'
	//;
	public Scenario1_4Elements getScenario1_4Access() {
		return pScenario1_4;
	}
	
	public ParserRule getScenario1_4Rule() {
		return getScenario1_4Access().getRule();
	}
	
	//Child1_1 returns Child1:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    enumType=EnumType // this is not ok
	//    'child1' 'end'
	//;
	public Child1_1Elements getChild1_1Access() {
		return pChild1_1;
	}
	
	public ParserRule getChild1_1Rule() {
		return getChild1_1Access().getRule();
	}
	
	//Child1_2 returns Child1:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    enumType=EnumType // this is not ok
	//    'child2' 'end'
	//;
	public Child1_2Elements getChild1_2Access() {
		return pChild1_2;
	}
	
	public ParserRule getChild1_2Rule() {
		return getChild1_2Access().getRule();
	}
	
	//Child1_3 returns Child1:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    enumType=EnumType // this is not ok
	//    'child3' 'end'
	//;
	public Child1_3Elements getChild1_3Access() {
		return pChild1_3;
	}
	
	public ParserRule getChild1_3Rule() {
		return getChild1_3Access().getRule();
	}
	
	//enum EnumType: a | b;
	public EnumTypeElements getEnumTypeAccess() {
		return eEnumType;
	}
	
	public EnumRule getEnumTypeRule() {
		return getEnumTypeAccess().getRule();
	}
	
	//Scenario2_1 returns Scenario2:
	//    '2.1'
	//    (
	//          child+=Child2_1
	//      |   child+=Child2_2
	//      |   child+=Child2_3
	//    )
	//    'next'
	//;
	public Scenario2_1Elements getScenario2_1Access() {
		return pScenario2_1;
	}
	
	public ParserRule getScenario2_1Rule() {
		return getScenario2_1Access().getRule();
	}
	
	//Scenario2_2 returns Scenario2:
	//    '2.2'
	//    (
	//          child+=Child2_1
	//      |   child+=Child2_2
	//      |   child+=Child2_3
	//    )+
	//    'next'
	//;
	public Scenario2_2Elements getScenario2_2Access() {
		return pScenario2_2;
	}
	
	public ParserRule getScenario2_2Rule() {
		return getScenario2_2Access().getRule();
	}
	
	//Scenario2_3 returns Scenario2:
	//    '2.3'
	//    (
	//          child+=Child2_4
	//      |   child+=Child2_5
	//      |   child+=Child2_6
	//    )
	//    'next'
	//;
	public Scenario2_3Elements getScenario2_3Access() {
		return pScenario2_3;
	}
	
	public ParserRule getScenario2_3Rule() {
		return getScenario2_3Access().getRule();
	}
	
	//Scenario2_4 returns Scenario2:
	//    '2.4'
	//    (
	//          child+=Child2_4
	//      |   child+=Child2_5
	//      |   child+=Child2_6
	//    )+
	//    'next'
	//;
	public Scenario2_4Elements getScenario2_4Access() {
		return pScenario2_4;
	}
	
	public ParserRule getScenario2_4Rule() {
		return getScenario2_4Access().getRule();
	}
	
	//Scenario2_5 returns Scenario2:
	//    {Scenario2}
	//    '2.5'
	//    (
	//          child+=Child2_1
	//      |   child+=Child2_2
	//      |   child+=Child2_3
	//    )?
	//    'next'
	//;
	public Scenario2_5Elements getScenario2_5Access() {
		return pScenario2_5;
	}
	
	public ParserRule getScenario2_5Rule() {
		return getScenario2_5Access().getRule();
	}
	
	//Scenario2_6 returns Scenario2:
	//    {Scenario2}
	//    '2.6'
	//    (
	//          child+=Child2_1
	//      |   child+=Child2_2
	//      |   child+=Child2_3
	//    )*
	//    'next'
	//;
	public Scenario2_6Elements getScenario2_6Access() {
		return pScenario2_6;
	}
	
	public ParserRule getScenario2_6Rule() {
		return getScenario2_6Access().getRule();
	}
	
	//Scenario2_7 returns Scenario2:
	//    {Scenario2}
	//    '2.7'
	//    (
	//          child+=Child2_4
	//      |   child+=Child2_5
	//      |   child+=Child2_6
	//    )?
	//    'next'
	//;
	public Scenario2_7Elements getScenario2_7Access() {
		return pScenario2_7;
	}
	
	public ParserRule getScenario2_7Rule() {
		return getScenario2_7Access().getRule();
	}
	
	//Scenario2_8 returns Scenario2:
	//    {Scenario2}
	//    '2.8'
	//    (
	//          child+=Child2_4
	//      |   child+=Child2_5
	//      |   child+=Child2_6
	//    )*
	//    'next'
	//;
	public Scenario2_8Elements getScenario2_8Access() {
		return pScenario2_8;
	}
	
	public ParserRule getScenario2_8Rule() {
		return getScenario2_8Access().getRule();
	}
	
	//Child2_1 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    string=('a' | 'b')
	//    'child1' 'end'
	//;
	public Child2_1Elements getChild2_1Access() {
		return pChild2_1;
	}
	
	public ParserRule getChild2_1Rule() {
		return getChild2_1Access().getRule();
	}
	
	//Child2_2 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    string=('a' | 'b')
	//    'child2' 'end'
	//;
	public Child2_2Elements getChild2_2Access() {
		return pChild2_2;
	}
	
	public ParserRule getChild2_2Rule() {
		return getChild2_2Access().getRule();
	}
	
	//Child2_3 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    string=('a' | 'b')
	//    'child3' 'end'
	//;
	public Child2_3Elements getChild2_3Access() {
		return pChild2_3;
	}
	
	public ParserRule getChild2_3Rule() {
		return getChild2_3Access().getRule();
	}
	
	//Child2_4 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    (string='a' | string='b')
	//    'child1' 'end'
	//;
	public Child2_4Elements getChild2_4Access() {
		return pChild2_4;
	}
	
	public ParserRule getChild2_4Rule() {
		return getChild2_4Access().getRule();
	}
	
	//Child2_5 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    (string='a' | string='b')
	//    'child2' 'end'
	//;
	public Child2_5Elements getChild2_5Access() {
		return pChild2_5;
	}
	
	public ParserRule getChild2_5Rule() {
		return getChild2_5Access().getRule();
	}
	
	//Child2_6 returns Child2:
	//    name=ID ':'
	//    (bool?='bool' 'keyword')?
	//    (string='a' | string='b')
	//    'child3' 'end'
	//;
	public Child2_6Elements getChild2_6Access() {
		return pChild2_6;
	}
	
	public ParserRule getChild2_6Rule() {
		return getChild2_6Access().getRule();
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
