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
public class TwoParametersTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ParserRuleParametersElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.ParserRuleParameters");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cParserRuleParametersAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Group cGroup_1_0 = (Group)cAlternatives_1.eContents().get(0);
		private final Keyword cNumberSignDigitOneKeyword_1_0_0 = (Keyword)cGroup_1_0.eContents().get(0);
		private final Assignment cScenarioAssignment_1_0_1 = (Assignment)cGroup_1_0.eContents().get(1);
		private final RuleCall cScenarioScenario6ParserRuleCall_1_0_1_0 = (RuleCall)cScenarioAssignment_1_0_1.eContents().get(0);
		private final Group cGroup_1_1 = (Group)cAlternatives_1.eContents().get(1);
		private final Keyword cNumberSignDigitTwoKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Assignment cScenarioAssignment_1_1_1 = (Assignment)cGroup_1_1.eContents().get(1);
		private final RuleCall cScenarioScenario6ParserRuleCall_1_1_1_0 = (RuleCall)cScenarioAssignment_1_1_1.eContents().get(0);
		private final Group cGroup_1_2 = (Group)cAlternatives_1.eContents().get(2);
		private final Keyword cNumberSignDigitThreeKeyword_1_2_0 = (Keyword)cGroup_1_2.eContents().get(0);
		private final Assignment cScenarioAssignment_1_2_1 = (Assignment)cGroup_1_2.eContents().get(1);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_2_1_0 = (RuleCall)cScenarioAssignment_1_2_1.eContents().get(0);
		private final Group cGroup_1_3 = (Group)cAlternatives_1.eContents().get(3);
		private final Keyword cNumberSignDigitFourKeyword_1_3_0 = (Keyword)cGroup_1_3.eContents().get(0);
		private final Assignment cScenarioAssignment_1_3_1 = (Assignment)cGroup_1_3.eContents().get(1);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_3_1_0 = (RuleCall)cScenarioAssignment_1_3_1.eContents().get(0);
		private final Group cGroup_1_4 = (Group)cAlternatives_1.eContents().get(4);
		private final Group cGroup_1_4_0 = (Group)cGroup_1_4.eContents().get(0);
		private final Keyword cNumberSignDigitFiveKeyword_1_4_0_0 = (Keyword)cGroup_1_4_0.eContents().get(0);
		private final Assignment cScenarioAssignment_1_4_0_1 = (Assignment)cGroup_1_4_0.eContents().get(1);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_4_0_1_0 = (RuleCall)cScenarioAssignment_1_4_0_1.eContents().get(0);
		private final Group cGroup_1_5 = (Group)cAlternatives_1.eContents().get(5);
		private final Group cGroup_1_5_0 = (Group)cGroup_1_5.eContents().get(0);
		private final Keyword cNumberSignDigitSixKeyword_1_5_0_0 = (Keyword)cGroup_1_5_0.eContents().get(0);
		private final Assignment cScenarioAssignment_1_5_0_1 = (Assignment)cGroup_1_5_0.eContents().get(1);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_5_0_1_0 = (RuleCall)cScenarioAssignment_1_5_0_1.eContents().get(0);
		private final Group cGroup_1_6 = (Group)cAlternatives_1.eContents().get(6);
		private final Keyword cNumberSignDigitSevenKeyword_1_6_0 = (Keyword)cGroup_1_6.eContents().get(0);
		private final Assignment cScenarioAssignment_1_6_1 = (Assignment)cGroup_1_6.eContents().get(1);
		private final RuleCall cScenarioScenario8ParserRuleCall_1_6_1_0 = (RuleCall)cScenarioAssignment_1_6_1.eContents().get(0);
		private final Group cGroup_1_7 = (Group)cAlternatives_1.eContents().get(7);
		private final Keyword cNumberSignDigitEightKeyword_1_7_0 = (Keyword)cGroup_1_7.eContents().get(0);
		private final Assignment cScenarioAssignment_1_7_1 = (Assignment)cGroup_1_7.eContents().get(1);
		private final RuleCall cScenarioScenario8ParserRuleCall_1_7_1_0 = (RuleCall)cScenarioAssignment_1_7_1.eContents().get(0);
		private final Group cGroup_1_8 = (Group)cAlternatives_1.eContents().get(8);
		private final Keyword cNumberSignDigitNineKeyword_1_8_0 = (Keyword)cGroup_1_8.eContents().get(0);
		private final Alternatives cAlternatives_1_8_1 = (Alternatives)cGroup_1_8.eContents().get(1);
		private final Assignment cScenarioAssignment_1_8_1_0 = (Assignment)cAlternatives_1_8_1.eContents().get(0);
		private final RuleCall cScenarioScenario9ParserRuleCall_1_8_1_0_0 = (RuleCall)cScenarioAssignment_1_8_1_0.eContents().get(0);
		private final Group cGroup_1_8_1_1 = (Group)cAlternatives_1_8_1.eContents().get(1);
		private final Assignment cScenarioAssignment_1_8_1_1_0 = (Assignment)cGroup_1_8_1_1.eContents().get(0);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_8_1_1_0_0 = (RuleCall)cScenarioAssignment_1_8_1_1_0.eContents().get(0);
		private final Keyword cTrailingKeyword_1_8_1_1_1 = (Keyword)cGroup_1_8_1_1.eContents().get(1);
		private final Group cGroup_1_9 = (Group)cAlternatives_1.eContents().get(9);
		private final Keyword cNumberSignDigitOneDigitZeroKeyword_1_9_0 = (Keyword)cGroup_1_9.eContents().get(0);
		private final Alternatives cAlternatives_1_9_1 = (Alternatives)cGroup_1_9.eContents().get(1);
		private final Assignment cScenarioAssignment_1_9_1_0 = (Assignment)cAlternatives_1_9_1.eContents().get(0);
		private final RuleCall cScenarioScenario9ParserRuleCall_1_9_1_0_0 = (RuleCall)cScenarioAssignment_1_9_1_0.eContents().get(0);
		private final Group cGroup_1_9_1_1 = (Group)cAlternatives_1_9_1.eContents().get(1);
		private final Assignment cScenarioAssignment_1_9_1_1_0 = (Assignment)cGroup_1_9_1_1.eContents().get(0);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_9_1_1_0_0 = (RuleCall)cScenarioAssignment_1_9_1_1_0.eContents().get(0);
		private final Keyword cTrailingKeyword_1_9_1_1_1 = (Keyword)cGroup_1_9_1_1.eContents().get(1);
		private final Group cGroup_1_10 = (Group)cAlternatives_1.eContents().get(10);
		private final Keyword cNumberSignDigitOneDigitOneKeyword_1_10_0 = (Keyword)cGroup_1_10.eContents().get(0);
		private final Alternatives cAlternatives_1_10_1 = (Alternatives)cGroup_1_10.eContents().get(1);
		private final Assignment cScenarioAssignment_1_10_1_0 = (Assignment)cAlternatives_1_10_1.eContents().get(0);
		private final RuleCall cScenarioScenario9ParserRuleCall_1_10_1_0_0 = (RuleCall)cScenarioAssignment_1_10_1_0.eContents().get(0);
		private final Group cGroup_1_10_1_1 = (Group)cAlternatives_1_10_1.eContents().get(1);
		private final Assignment cScenarioAssignment_1_10_1_1_0 = (Assignment)cGroup_1_10_1_1.eContents().get(0);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_10_1_1_0_0 = (RuleCall)cScenarioAssignment_1_10_1_1_0.eContents().get(0);
		private final Keyword cTrailingKeyword_1_10_1_1_1 = (Keyword)cGroup_1_10_1_1.eContents().get(1);
		private final Group cGroup_1_11 = (Group)cAlternatives_1.eContents().get(11);
		private final Keyword cNumberSignDigitOneDigitTwoKeyword_1_11_0 = (Keyword)cGroup_1_11.eContents().get(0);
		private final Alternatives cAlternatives_1_11_1 = (Alternatives)cGroup_1_11.eContents().get(1);
		private final Assignment cScenarioAssignment_1_11_1_0 = (Assignment)cAlternatives_1_11_1.eContents().get(0);
		private final RuleCall cScenarioScenario9ParserRuleCall_1_11_1_0_0 = (RuleCall)cScenarioAssignment_1_11_1_0.eContents().get(0);
		private final Group cGroup_1_11_1_1 = (Group)cAlternatives_1_11_1.eContents().get(1);
		private final Assignment cScenarioAssignment_1_11_1_1_0 = (Assignment)cGroup_1_11_1_1.eContents().get(0);
		private final RuleCall cScenarioScenario7ParserRuleCall_1_11_1_1_0_0 = (RuleCall)cScenarioAssignment_1_11_1_1_0.eContents().get(0);
		private final Keyword cTrailingKeyword_1_11_1_1_1 = (Keyword)cGroup_1_11_1_1.eContents().get(1);
		private final Group cGroup_1_12 = (Group)cAlternatives_1.eContents().get(12);
		private final Keyword cNumberSignDigitOneDigitThreeKeyword_1_12_0 = (Keyword)cGroup_1_12.eContents().get(0);
		private final Assignment cScenarioAssignment_1_12_1 = (Assignment)cGroup_1_12.eContents().get(1);
		private final RuleCall cScenarioScenario10ParserRuleCall_1_12_1_0 = (RuleCall)cScenarioAssignment_1_12_1.eContents().get(0);
		private final Group cGroup_1_13 = (Group)cAlternatives_1.eContents().get(13);
		private final Keyword cNumberSignDigitOneDigitFourKeyword_1_13_0 = (Keyword)cGroup_1_13.eContents().get(0);
		private final Assignment cScenarioAssignment_1_13_1 = (Assignment)cGroup_1_13.eContents().get(1);
		private final RuleCall cScenarioScenario10ParserRuleCall_1_13_1_0 = (RuleCall)cScenarioAssignment_1_13_1.eContents().get(0);
		
		//@Override
		//ParserRuleParameters: {ParserRuleParameters}
		//  ( '#1' scenario=Scenario6<true, true>
		//  |    '#2' scenario=Scenario6<false, false>
		//  | '#3' scenario=Scenario7<true, true>
		//  | '#4' scenario=Scenario7<false, true>
		//  | =>('#5' scenario=Scenario7<true, true>)
		//  | =>('#6' scenario=Scenario7<false, false>)
		//  | '#7' scenario=Scenario8<true, true>
		//  | '#8' scenario=Scenario8<false, true>
		//  | '#9' (scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
		//  | '#10' (scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
		//  | '#11' (scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
		//  | '#12' (scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
		//  | '#13' scenario=Scenario10<true, false>
		//  | '#14' scenario=Scenario10<true, true>
		//  )
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{ParserRuleParameters}
		// ( '#1' scenario=Scenario6<true, true>
		// |    '#2' scenario=Scenario6<false, false>
		// | '#3' scenario=Scenario7<true, true>
		// | '#4' scenario=Scenario7<false, true>
		// | =>('#5' scenario=Scenario7<true, true>)
		// | =>('#6' scenario=Scenario7<false, false>)
		// | '#7' scenario=Scenario8<true, true>
		// | '#8' scenario=Scenario8<false, true>
		// | '#9' (scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
		// | '#10' (scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
		// | '#11' (scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
		// | '#12' (scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
		// | '#13' scenario=Scenario10<true, false>
		// | '#14' scenario=Scenario10<true, true>
		// )
		public Group getGroup() { return cGroup; }
		
		//{ParserRuleParameters}
		public Action getParserRuleParametersAction_0() { return cParserRuleParametersAction_0; }
		
		//( '#1' scenario=Scenario6<true, true>
		//|    '#2' scenario=Scenario6<false, false>
		//| '#3' scenario=Scenario7<true, true>
		//| '#4' scenario=Scenario7<false, true>
		//| =>('#5' scenario=Scenario7<true, true>)
		//| =>('#6' scenario=Scenario7<false, false>)
		//| '#7' scenario=Scenario8<true, true>
		//| '#8' scenario=Scenario8<false, true>
		//| '#9' (scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
		//| '#10' (scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
		//| '#11' (scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
		//| '#12' (scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
		//| '#13' scenario=Scenario10<true, false>
		//| '#14' scenario=Scenario10<true, true>
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//'#1' scenario=Scenario6<true, true>
		public Group getGroup_1_0() { return cGroup_1_0; }
		
		//'#1'
		public Keyword getNumberSignDigitOneKeyword_1_0_0() { return cNumberSignDigitOneKeyword_1_0_0; }
		
		//scenario=Scenario6<true, true>
		public Assignment getScenarioAssignment_1_0_1() { return cScenarioAssignment_1_0_1; }
		
		//Scenario6<true, true>
		public RuleCall getScenarioScenario6ParserRuleCall_1_0_1_0() { return cScenarioScenario6ParserRuleCall_1_0_1_0; }
		
		//'#2' scenario=Scenario6<false, false>
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//'#2'
		public Keyword getNumberSignDigitTwoKeyword_1_1_0() { return cNumberSignDigitTwoKeyword_1_1_0; }
		
		//scenario=Scenario6<false, false>
		public Assignment getScenarioAssignment_1_1_1() { return cScenarioAssignment_1_1_1; }
		
		//Scenario6<false, false>
		public RuleCall getScenarioScenario6ParserRuleCall_1_1_1_0() { return cScenarioScenario6ParserRuleCall_1_1_1_0; }
		
		//'#3' scenario=Scenario7<true, true>
		public Group getGroup_1_2() { return cGroup_1_2; }
		
		//'#3'
		public Keyword getNumberSignDigitThreeKeyword_1_2_0() { return cNumberSignDigitThreeKeyword_1_2_0; }
		
		//scenario=Scenario7<true, true>
		public Assignment getScenarioAssignment_1_2_1() { return cScenarioAssignment_1_2_1; }
		
		//Scenario7<true, true>
		public RuleCall getScenarioScenario7ParserRuleCall_1_2_1_0() { return cScenarioScenario7ParserRuleCall_1_2_1_0; }
		
		//'#4' scenario=Scenario7<false, true>
		public Group getGroup_1_3() { return cGroup_1_3; }
		
		//'#4'
		public Keyword getNumberSignDigitFourKeyword_1_3_0() { return cNumberSignDigitFourKeyword_1_3_0; }
		
		//scenario=Scenario7<false, true>
		public Assignment getScenarioAssignment_1_3_1() { return cScenarioAssignment_1_3_1; }
		
		//Scenario7<false, true>
		public RuleCall getScenarioScenario7ParserRuleCall_1_3_1_0() { return cScenarioScenario7ParserRuleCall_1_3_1_0; }
		
		//=>('#5' scenario=Scenario7<true, true>)
		public Group getGroup_1_4() { return cGroup_1_4; }
		
		//'#5' scenario=Scenario7<true, true>
		public Group getGroup_1_4_0() { return cGroup_1_4_0; }
		
		//'#5'
		public Keyword getNumberSignDigitFiveKeyword_1_4_0_0() { return cNumberSignDigitFiveKeyword_1_4_0_0; }
		
		//scenario=Scenario7<true, true>
		public Assignment getScenarioAssignment_1_4_0_1() { return cScenarioAssignment_1_4_0_1; }
		
		//Scenario7<true, true>
		public RuleCall getScenarioScenario7ParserRuleCall_1_4_0_1_0() { return cScenarioScenario7ParserRuleCall_1_4_0_1_0; }
		
		//=>('#6' scenario=Scenario7<false, false>)
		public Group getGroup_1_5() { return cGroup_1_5; }
		
		//'#6' scenario=Scenario7<false, false>
		public Group getGroup_1_5_0() { return cGroup_1_5_0; }
		
		//'#6'
		public Keyword getNumberSignDigitSixKeyword_1_5_0_0() { return cNumberSignDigitSixKeyword_1_5_0_0; }
		
		//scenario=Scenario7<false, false>
		public Assignment getScenarioAssignment_1_5_0_1() { return cScenarioAssignment_1_5_0_1; }
		
		//Scenario7<false, false>
		public RuleCall getScenarioScenario7ParserRuleCall_1_5_0_1_0() { return cScenarioScenario7ParserRuleCall_1_5_0_1_0; }
		
		//'#7' scenario=Scenario8<true, true>
		public Group getGroup_1_6() { return cGroup_1_6; }
		
		//'#7'
		public Keyword getNumberSignDigitSevenKeyword_1_6_0() { return cNumberSignDigitSevenKeyword_1_6_0; }
		
		//scenario=Scenario8<true, true>
		public Assignment getScenarioAssignment_1_6_1() { return cScenarioAssignment_1_6_1; }
		
		//Scenario8<true, true>
		public RuleCall getScenarioScenario8ParserRuleCall_1_6_1_0() { return cScenarioScenario8ParserRuleCall_1_6_1_0; }
		
		//'#8' scenario=Scenario8<false, true>
		public Group getGroup_1_7() { return cGroup_1_7; }
		
		//'#8'
		public Keyword getNumberSignDigitEightKeyword_1_7_0() { return cNumberSignDigitEightKeyword_1_7_0; }
		
		//scenario=Scenario8<false, true>
		public Assignment getScenarioAssignment_1_7_1() { return cScenarioAssignment_1_7_1; }
		
		//Scenario8<false, true>
		public RuleCall getScenarioScenario8ParserRuleCall_1_7_1_0() { return cScenarioScenario8ParserRuleCall_1_7_1_0; }
		
		//'#9' (scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
		public Group getGroup_1_8() { return cGroup_1_8; }
		
		//'#9'
		public Keyword getNumberSignDigitNineKeyword_1_8_0() { return cNumberSignDigitNineKeyword_1_8_0; }
		
		//(scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
		public Alternatives getAlternatives_1_8_1() { return cAlternatives_1_8_1; }
		
		//scenario=Scenario9<true, true>
		public Assignment getScenarioAssignment_1_8_1_0() { return cScenarioAssignment_1_8_1_0; }
		
		//Scenario9<true, true>
		public RuleCall getScenarioScenario9ParserRuleCall_1_8_1_0_0() { return cScenarioScenario9ParserRuleCall_1_8_1_0_0; }
		
		//scenario=Scenario7<true, true> 'trailing'?
		public Group getGroup_1_8_1_1() { return cGroup_1_8_1_1; }
		
		//scenario=Scenario7<true, true>
		public Assignment getScenarioAssignment_1_8_1_1_0() { return cScenarioAssignment_1_8_1_1_0; }
		
		//Scenario7<true, true>
		public RuleCall getScenarioScenario7ParserRuleCall_1_8_1_1_0_0() { return cScenarioScenario7ParserRuleCall_1_8_1_1_0_0; }
		
		//'trailing'?
		public Keyword getTrailingKeyword_1_8_1_1_1() { return cTrailingKeyword_1_8_1_1_1; }
		
		//'#10' (scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
		public Group getGroup_1_9() { return cGroup_1_9; }
		
		//'#10'
		public Keyword getNumberSignDigitOneDigitZeroKeyword_1_9_0() { return cNumberSignDigitOneDigitZeroKeyword_1_9_0; }
		
		//(scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
		public Alternatives getAlternatives_1_9_1() { return cAlternatives_1_9_1; }
		
		//scenario=Scenario9<true, true>
		public Assignment getScenarioAssignment_1_9_1_0() { return cScenarioAssignment_1_9_1_0; }
		
		//Scenario9<true, true>
		public RuleCall getScenarioScenario9ParserRuleCall_1_9_1_0_0() { return cScenarioScenario9ParserRuleCall_1_9_1_0_0; }
		
		//scenario=Scenario7<false, false> 'trailing'?
		public Group getGroup_1_9_1_1() { return cGroup_1_9_1_1; }
		
		//scenario=Scenario7<false, false>
		public Assignment getScenarioAssignment_1_9_1_1_0() { return cScenarioAssignment_1_9_1_1_0; }
		
		//Scenario7<false, false>
		public RuleCall getScenarioScenario7ParserRuleCall_1_9_1_1_0_0() { return cScenarioScenario7ParserRuleCall_1_9_1_1_0_0; }
		
		//'trailing'?
		public Keyword getTrailingKeyword_1_9_1_1_1() { return cTrailingKeyword_1_9_1_1_1; }
		
		//'#11' (scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
		public Group getGroup_1_10() { return cGroup_1_10; }
		
		//'#11'
		public Keyword getNumberSignDigitOneDigitOneKeyword_1_10_0() { return cNumberSignDigitOneDigitOneKeyword_1_10_0; }
		
		//(scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
		public Alternatives getAlternatives_1_10_1() { return cAlternatives_1_10_1; }
		
		//scenario=Scenario9<false, false>
		public Assignment getScenarioAssignment_1_10_1_0() { return cScenarioAssignment_1_10_1_0; }
		
		//Scenario9<false, false>
		public RuleCall getScenarioScenario9ParserRuleCall_1_10_1_0_0() { return cScenarioScenario9ParserRuleCall_1_10_1_0_0; }
		
		//scenario=Scenario7<true, true> 'trailing'?
		public Group getGroup_1_10_1_1() { return cGroup_1_10_1_1; }
		
		//scenario=Scenario7<true, true>
		public Assignment getScenarioAssignment_1_10_1_1_0() { return cScenarioAssignment_1_10_1_1_0; }
		
		//Scenario7<true, true>
		public RuleCall getScenarioScenario7ParserRuleCall_1_10_1_1_0_0() { return cScenarioScenario7ParserRuleCall_1_10_1_1_0_0; }
		
		//'trailing'?
		public Keyword getTrailingKeyword_1_10_1_1_1() { return cTrailingKeyword_1_10_1_1_1; }
		
		//'#12' (scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
		public Group getGroup_1_11() { return cGroup_1_11; }
		
		//'#12'
		public Keyword getNumberSignDigitOneDigitTwoKeyword_1_11_0() { return cNumberSignDigitOneDigitTwoKeyword_1_11_0; }
		
		//(scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
		public Alternatives getAlternatives_1_11_1() { return cAlternatives_1_11_1; }
		
		//scenario=Scenario9<false, false>
		public Assignment getScenarioAssignment_1_11_1_0() { return cScenarioAssignment_1_11_1_0; }
		
		//Scenario9<false, false>
		public RuleCall getScenarioScenario9ParserRuleCall_1_11_1_0_0() { return cScenarioScenario9ParserRuleCall_1_11_1_0_0; }
		
		//scenario=Scenario7<false, false> 'trailing'?
		public Group getGroup_1_11_1_1() { return cGroup_1_11_1_1; }
		
		//scenario=Scenario7<false, false>
		public Assignment getScenarioAssignment_1_11_1_1_0() { return cScenarioAssignment_1_11_1_1_0; }
		
		//Scenario7<false, false>
		public RuleCall getScenarioScenario7ParserRuleCall_1_11_1_1_0_0() { return cScenarioScenario7ParserRuleCall_1_11_1_1_0_0; }
		
		//'trailing'?
		public Keyword getTrailingKeyword_1_11_1_1_1() { return cTrailingKeyword_1_11_1_1_1; }
		
		//'#13' scenario=Scenario10<true, false>
		public Group getGroup_1_12() { return cGroup_1_12; }
		
		//'#13'
		public Keyword getNumberSignDigitOneDigitThreeKeyword_1_12_0() { return cNumberSignDigitOneDigitThreeKeyword_1_12_0; }
		
		//scenario=Scenario10<true, false>
		public Assignment getScenarioAssignment_1_12_1() { return cScenarioAssignment_1_12_1; }
		
		//Scenario10<true, false>
		public RuleCall getScenarioScenario10ParserRuleCall_1_12_1_0() { return cScenarioScenario10ParserRuleCall_1_12_1_0; }
		
		//'#14' scenario=Scenario10<true, true>
		public Group getGroup_1_13() { return cGroup_1_13; }
		
		//'#14'
		public Keyword getNumberSignDigitOneDigitFourKeyword_1_13_0() { return cNumberSignDigitOneDigitFourKeyword_1_13_0; }
		
		//scenario=Scenario10<true, true>
		public Assignment getScenarioAssignment_1_13_1() { return cScenarioAssignment_1_13_1; }
		
		//Scenario10<true, true>
		public RuleCall getScenarioScenario10ParserRuleCall_1_13_1_0() { return cScenarioScenario10ParserRuleCall_1_13_1_0; }
	}
	public class Scenario6Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.Scenario6");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Assignment cFirstAssignment_0_0 = (Assignment)cGroup_0.eContents().get(0);
		private final RuleCall cFirstIDTerminalRuleCall_0_0_0 = (RuleCall)cFirstAssignment_0_0.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Assignment cSecondAssignment_1_0 = (Assignment)cGroup_1.eContents().get(0);
		private final RuleCall cSecondIDTerminalRuleCall_1_0_0 = (RuleCall)cSecondAssignment_1_0.eContents().get(0);
		
		//Scenario6<A, B> returns Scenario:
		//    <A & B> first=ID
		//  | <!A | !B> second=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  <A & B> first=ID
		//| <!A | !B> second=ID
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//<A & B> first=ID
		public Group getGroup_0() { return cGroup_0; }
		
		//first=ID
		public Assignment getFirstAssignment_0_0() { return cFirstAssignment_0_0; }
		
		//ID
		public RuleCall getFirstIDTerminalRuleCall_0_0_0() { return cFirstIDTerminalRuleCall_0_0_0; }
		
		//<!A | !B> second=ID
		public Group getGroup_1() { return cGroup_1; }
		
		//second=ID
		public Assignment getSecondAssignment_1_0() { return cSecondAssignment_1_0; }
		
		//ID
		public RuleCall getSecondIDTerminalRuleCall_1_0_0() { return cSecondIDTerminalRuleCall_1_0_0; }
	}
	public class Scenario7Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.Scenario7");
		private final Assignment cFirstAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cFirstIdOrKeyword2ParserRuleCall_0 = (RuleCall)cFirstAssignment.eContents().get(0);
		
		//Scenario7<A, B> returns Scenario:
		//    first=IdOrKeyword2<A, B, A&B>
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//first=IdOrKeyword2<A, B, A&B>
		public Assignment getFirstAssignment() { return cFirstAssignment; }
		
		//IdOrKeyword2<A, B, A&B>
		public RuleCall getFirstIdOrKeyword2ParserRuleCall_0() { return cFirstIdOrKeyword2ParserRuleCall_0; }
	}
	public class Scenario8Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.Scenario8");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Assignment cFirstAssignment_0 = (Assignment)cAlternatives.eContents().get(0);
		private final RuleCall cFirstIdOrKeyword2ParserRuleCall_0_0 = (RuleCall)cFirstAssignment_0.eContents().get(0);
		private final Assignment cSecondAssignment_1 = (Assignment)cAlternatives.eContents().get(1);
		private final Keyword cSecondScenario3Keyword_1_0 = (Keyword)cSecondAssignment_1.eContents().get(0);
		
		//Scenario8<A, B> returns Scenario:
		//    =>first=IdOrKeyword2<A, B, A&B>
		//    | second='scenario3' // intentionally used keyword from super grammar
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//=>first=IdOrKeyword2<A, B, A&B>
		//| second='scenario3'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//=>first=IdOrKeyword2<A, B, A&B>
		public Assignment getFirstAssignment_0() { return cFirstAssignment_0; }
		
		//IdOrKeyword2<A, B, A&B>
		public RuleCall getFirstIdOrKeyword2ParserRuleCall_0_0() { return cFirstIdOrKeyword2ParserRuleCall_0_0; }
		
		//second='scenario3'
		public Assignment getSecondAssignment_1() { return cSecondAssignment_1; }
		
		//'scenario3'
		public Keyword getSecondScenario3Keyword_1_0() { return cSecondScenario3Keyword_1_0; }
	}
	public class Scenario9Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.Scenario9");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cSecondAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cSecondIdOrKeyword2ParserRuleCall_0_0 = (RuleCall)cSecondAssignment_0.eContents().get(0);
		private final Keyword cScenario4Keyword_1 = (Keyword)cGroup.eContents().get(1);
		
		//Scenario9<A, B> returns Scenario:
		//    =>second=IdOrKeyword2<A, B, A|B> 'scenario4' // intentionally used keyword from super grammar
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//=>second=IdOrKeyword2<A, B, A|B> 'scenario4'
		public Group getGroup() { return cGroup; }
		
		//=>second=IdOrKeyword2<A, B, A|B>
		public Assignment getSecondAssignment_0() { return cSecondAssignment_0; }
		
		//IdOrKeyword2<A, B, A|B>
		public RuleCall getSecondIdOrKeyword2ParserRuleCall_0_0() { return cSecondIdOrKeyword2ParserRuleCall_0_0; }
		
		//'scenario4'
		public Keyword getScenario4Keyword_1() { return cScenario4Keyword_1; }
	}
	public class Scenario10Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.Scenario10");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Action cScenarioAction_0_0 = (Action)cGroup_0.eContents().get(0);
		private final Keyword cIncludeKeyword_0_1 = (Keyword)cGroup_0.eContents().get(1);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Action cScenarioAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Keyword cTrailingKeyword_1_1 = (Keyword)cGroup_1.eContents().get(1);
		private final Group cGroup_2 = (Group)cAlternatives.eContents().get(2);
		private final Action cScenarioAction_2_0 = (Action)cGroup_2.eContents().get(0);
		private final Keyword cScenario5Keyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Group cGroup_2_2 = (Group)cGroup_2.eContents().get(2);
		private final Keyword cIncludeKeyword_2_2_0 = (Keyword)cGroup_2_2.eContents().get(0);
		private final Assignment cFirstAssignment_2_3 = (Assignment)cGroup_2.eContents().get(3);
		private final RuleCall cFirstIdOrKeywordParserRuleCall_2_3_0 = (RuleCall)cFirstAssignment_2_3.eContents().get(0);
		private final Assignment cSecondAssignment_2_4 = (Assignment)cGroup_2.eContents().get(4);
		private final RuleCall cSecondIdOrKeywordParserRuleCall_2_4_0 = (RuleCall)cSecondAssignment_2_4.eContents().get(0);
		private final Group cGroup_3 = (Group)cAlternatives.eContents().get(3);
		private final Action cScenarioAction_3_0 = (Action)cGroup_3.eContents().get(0);
		private final Keyword cScenario5Keyword_3_1 = (Keyword)cGroup_3.eContents().get(1);
		private final Keyword cFragmentKeyword_3_2 = (Keyword)cGroup_3.eContents().get(2);
		private final RuleCall cScenario5BodyParserRuleCall_3_3 = (RuleCall)cGroup_3.eContents().get(3);
		private final Keyword cTrailingKeyword_3_4 = (Keyword)cGroup_3.eContents().get(4);
		
		//Scenario10<A, B> returns Scenario:
		//      <A & B> {Scenario} 'include'
		//    | {Scenario} 'trailing'
		//    | {Scenario} 'scenario5' (<A & B> 'include')? first=IdOrKeyword<true> second=IdOrKeyword<false>
		//    | {Scenario} 'scenario5' 'fragment' Scenario5Body<A & B> 'trailing'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  <A & B> {Scenario} 'include'
		//| {Scenario} 'trailing'
		//| {Scenario} 'scenario5' (<A & B> 'include')? first=IdOrKeyword<true> second=IdOrKeyword<false>
		//| {Scenario} 'scenario5' 'fragment' Scenario5Body<A & B> 'trailing'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//<A & B> {Scenario} 'include'
		public Group getGroup_0() { return cGroup_0; }
		
		//{Scenario}
		public Action getScenarioAction_0_0() { return cScenarioAction_0_0; }
		
		//'include'
		public Keyword getIncludeKeyword_0_1() { return cIncludeKeyword_0_1; }
		
		//{Scenario} 'trailing'
		public Group getGroup_1() { return cGroup_1; }
		
		//{Scenario}
		public Action getScenarioAction_1_0() { return cScenarioAction_1_0; }
		
		//'trailing'
		public Keyword getTrailingKeyword_1_1() { return cTrailingKeyword_1_1; }
		
		//{Scenario} 'scenario5' (<A & B> 'include')? first=IdOrKeyword<true> second=IdOrKeyword<false>
		public Group getGroup_2() { return cGroup_2; }
		
		//{Scenario}
		public Action getScenarioAction_2_0() { return cScenarioAction_2_0; }
		
		//'scenario5'
		public Keyword getScenario5Keyword_2_1() { return cScenario5Keyword_2_1; }
		
		//(<A & B> 'include')?
		public Group getGroup_2_2() { return cGroup_2_2; }
		
		//'include'
		public Keyword getIncludeKeyword_2_2_0() { return cIncludeKeyword_2_2_0; }
		
		//first=IdOrKeyword<true>
		public Assignment getFirstAssignment_2_3() { return cFirstAssignment_2_3; }
		
		//IdOrKeyword<true>
		public RuleCall getFirstIdOrKeywordParserRuleCall_2_3_0() { return cFirstIdOrKeywordParserRuleCall_2_3_0; }
		
		//second=IdOrKeyword<false>
		public Assignment getSecondAssignment_2_4() { return cSecondAssignment_2_4; }
		
		//IdOrKeyword<false>
		public RuleCall getSecondIdOrKeywordParserRuleCall_2_4_0() { return cSecondIdOrKeywordParserRuleCall_2_4_0; }
		
		//{Scenario} 'scenario5' 'fragment' Scenario5Body<A & B> 'trailing'
		public Group getGroup_3() { return cGroup_3; }
		
		//{Scenario}
		public Action getScenarioAction_3_0() { return cScenarioAction_3_0; }
		
		//'scenario5'
		public Keyword getScenario5Keyword_3_1() { return cScenario5Keyword_3_1; }
		
		//'fragment'
		public Keyword getFragmentKeyword_3_2() { return cFragmentKeyword_3_2; }
		
		//Scenario5Body<A & B>
		public RuleCall getScenario5BodyParserRuleCall_3_3() { return cScenario5BodyParserRuleCall_3_3; }
		
		//'trailing'
		public Keyword getTrailingKeyword_3_4() { return cTrailingKeyword_3_4; }
	}
	public class IdOrKeyword2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage.IdOrKeyword2");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Keyword cKeywordKeyword_0_0 = (Keyword)cGroup_0.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//IdOrKeyword2<A, B, C>:
		//    <A & B | C> 'keyword'
		//    | ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//<A & B | C> 'keyword'
		//| ID
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//<A & B | C> 'keyword'
		public Group getGroup_0() { return cGroup_0; }
		
		//'keyword'
		public Keyword getKeywordKeyword_0_0() { return cKeywordKeyword_0_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1() { return cIDTerminalRuleCall_1; }
	}
	
	
	private final ParserRuleParametersElements pParserRuleParameters;
	private final Scenario6Elements pScenario6;
	private final Scenario7Elements pScenario7;
	private final Scenario8Elements pScenario8;
	private final Scenario9Elements pScenario9;
	private final Scenario10Elements pScenario10;
	private final IdOrKeyword2Elements pIdOrKeyword2;
	
	private final Grammar grammar;
	
	private final ParametersTestLanguageGrammarAccess gaParametersTestLanguage;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public TwoParametersTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			ParametersTestLanguageGrammarAccess gaParametersTestLanguage,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaParametersTestLanguage = gaParametersTestLanguage;
		this.gaTerminals = gaTerminals;
		this.pParserRuleParameters = new ParserRuleParametersElements();
		this.pScenario6 = new Scenario6Elements();
		this.pScenario7 = new Scenario7Elements();
		this.pScenario8 = new Scenario8Elements();
		this.pScenario9 = new Scenario9Elements();
		this.pScenario10 = new Scenario10Elements();
		this.pIdOrKeyword2 = new IdOrKeyword2Elements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage".equals(grammar.getName())) {
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
	
	
	public ParametersTestLanguageGrammarAccess getParametersTestLanguageGrammarAccess() {
		return gaParametersTestLanguage;
	}
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//@Override
	//ParserRuleParameters: {ParserRuleParameters}
	//  ( '#1' scenario=Scenario6<true, true>
	//  |    '#2' scenario=Scenario6<false, false>
	//  | '#3' scenario=Scenario7<true, true>
	//  | '#4' scenario=Scenario7<false, true>
	//  | =>('#5' scenario=Scenario7<true, true>)
	//  | =>('#6' scenario=Scenario7<false, false>)
	//  | '#7' scenario=Scenario8<true, true>
	//  | '#8' scenario=Scenario8<false, true>
	//  | '#9' (scenario=Scenario9<true, true> | scenario=Scenario7<true, true> 'trailing'?)
	//  | '#10' (scenario=Scenario9<true, true> | scenario=Scenario7<false, false> 'trailing'?)
	//  | '#11' (scenario=Scenario9<false, false> | scenario=Scenario7<true, true> 'trailing'?)
	//  | '#12' (scenario=Scenario9<false, false> | scenario=Scenario7<false, false> 'trailing'?)
	//  | '#13' scenario=Scenario10<true, false>
	//  | '#14' scenario=Scenario10<true, true>
	//  )
	//;
	public ParserRuleParametersElements getParserRuleParametersAccess() {
		return pParserRuleParameters;
	}
	
	public ParserRule getParserRuleParametersRule() {
		return getParserRuleParametersAccess().getRule();
	}
	
	//Scenario6<A, B> returns Scenario:
	//    <A & B> first=ID
	//  | <!A | !B> second=ID
	//;
	public Scenario6Elements getScenario6Access() {
		return pScenario6;
	}
	
	public ParserRule getScenario6Rule() {
		return getScenario6Access().getRule();
	}
	
	//Scenario7<A, B> returns Scenario:
	//    first=IdOrKeyword2<A, B, A&B>
	//;
	public Scenario7Elements getScenario7Access() {
		return pScenario7;
	}
	
	public ParserRule getScenario7Rule() {
		return getScenario7Access().getRule();
	}
	
	//Scenario8<A, B> returns Scenario:
	//    =>first=IdOrKeyword2<A, B, A&B>
	//    | second='scenario3' // intentionally used keyword from super grammar
	//;
	public Scenario8Elements getScenario8Access() {
		return pScenario8;
	}
	
	public ParserRule getScenario8Rule() {
		return getScenario8Access().getRule();
	}
	
	//Scenario9<A, B> returns Scenario:
	//    =>second=IdOrKeyword2<A, B, A|B> 'scenario4' // intentionally used keyword from super grammar
	//;
	public Scenario9Elements getScenario9Access() {
		return pScenario9;
	}
	
	public ParserRule getScenario9Rule() {
		return getScenario9Access().getRule();
	}
	
	//Scenario10<A, B> returns Scenario:
	//      <A & B> {Scenario} 'include'
	//    | {Scenario} 'trailing'
	//    | {Scenario} 'scenario5' (<A & B> 'include')? first=IdOrKeyword<true> second=IdOrKeyword<false>
	//    | {Scenario} 'scenario5' 'fragment' Scenario5Body<A & B> 'trailing'
	//;
	public Scenario10Elements getScenario10Access() {
		return pScenario10;
	}
	
	public ParserRule getScenario10Rule() {
		return getScenario10Access().getRule();
	}
	
	//IdOrKeyword2<A, B, C>:
	//    <A & B | C> 'keyword'
	//    | ID
	//;
	public IdOrKeyword2Elements getIdOrKeyword2Access() {
		return pIdOrKeyword2;
	}
	
	public ParserRule getIdOrKeyword2Rule() {
		return getIdOrKeyword2Access().getRule();
	}
	
	//Scenario1<Param> returns Scenario:
	//    <Param> first=ID
	//  | <!Param> second=ID
	//;
	public ParametersTestLanguageGrammarAccess.Scenario1Elements getScenario1Access() {
		return gaParametersTestLanguage.getScenario1Access();
	}
	
	public ParserRule getScenario1Rule() {
		return getScenario1Access().getRule();
	}
	
	//Scenario2<AllowKeyword> returns Scenario:
	//    first=IdOrKeyword<AllowKeyword>
	//;
	public ParametersTestLanguageGrammarAccess.Scenario2Elements getScenario2Access() {
		return gaParametersTestLanguage.getScenario2Access();
	}
	
	public ParserRule getScenario2Rule() {
		return getScenario2Access().getRule();
	}
	
	//Scenario3<AllowKeyword> returns Scenario:
	//    =>first=IdOrKeyword<AllowKeyword>
	//    | second='scenario3'
	//;
	public ParametersTestLanguageGrammarAccess.Scenario3Elements getScenario3Access() {
		return gaParametersTestLanguage.getScenario3Access();
	}
	
	public ParserRule getScenario3Rule() {
		return getScenario3Access().getRule();
	}
	
	//Scenario4<AllowKeyword> returns Scenario:
	//    =>second=IdOrKeyword<AllowKeyword> 'scenario4'
	//;
	public ParametersTestLanguageGrammarAccess.Scenario4Elements getScenario4Access() {
		return gaParametersTestLanguage.getScenario4Access();
	}
	
	public ParserRule getScenario4Rule() {
		return getScenario4Access().getRule();
	}
	
	//Scenario5<Include> returns Scenario:
	//      <Include> {Scenario} 'include'
	//    | {Scenario} 'trailing'
	//    | {Scenario} 'scenario5' (<Include> 'include')? first=IdOrKeyword<true> second=IdOrKeyword<false>
	//    | {Scenario} 'scenario5' 'fragment' Scenario5Body<Include> 'trailing'
	//;
	public ParametersTestLanguageGrammarAccess.Scenario5Elements getScenario5Access() {
		return gaParametersTestLanguage.getScenario5Access();
	}
	
	public ParserRule getScenario5Rule() {
		return getScenario5Access().getRule();
	}
	
	//fragment Scenario5Body <Include>*:
	//        <Include> 'include'
	//    |    <!Include> 'fragment'?
	//;
	public ParametersTestLanguageGrammarAccess.Scenario5BodyElements getScenario5BodyAccess() {
		return gaParametersTestLanguage.getScenario5BodyAccess();
	}
	
	public ParserRule getScenario5BodyRule() {
		return getScenario5BodyAccess().getRule();
	}
	
	//IdOrKeyword<Keyword>:
	//    <Keyword> 'keyword'
	//    | ID
	//;
	public ParametersTestLanguageGrammarAccess.IdOrKeywordElements getIdOrKeywordAccess() {
		return gaParametersTestLanguage.getIdOrKeywordAccess();
	}
	
	public ParserRule getIdOrKeywordRule() {
		return getIdOrKeywordAccess().getRule();
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
