/*******************************************************************************
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
parser grammar InternalCodetemplatesParser;

options {
	tokenVocab=InternalCodetemplatesLexer;
	superClass=AbstractInternalContentAssistParser;
}

@header {
package org.eclipse.xtext.ui.codetemplates.ide.contentassist.antlr.internal;
import java.util.Map;
import java.util.HashMap;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.ui.codetemplates.services.CodetemplatesGrammarAccess;

}
@members {
	private CodetemplatesGrammarAccess grammarAccess;
	private final Map<String, String> tokenNameToValue = new HashMap<String, String>();
	
	{
		tokenNameToValue.put("DollarSign", "'\\u0024'");
		tokenNameToValue.put("LeftParenthesis", "'('");
		tokenNameToValue.put("RightParenthesis", "')'");
		tokenNameToValue.put("Comma", "','");
		tokenNameToValue.put("FullStop", "'.'");
		tokenNameToValue.put("Colon", "':'");
		tokenNameToValue.put("RightCurlyBracket", "'}'");
		tokenNameToValue.put("DollarSignDollarSign", "'\\u0024\\u0024'");
		tokenNameToValue.put("DollarSignLeftCurlyBracket", "'\\u0024{'");
		tokenNameToValue.put("LessThanSignLessThanSign", "'<<'");
		tokenNameToValue.put("GreaterThanSignGreaterThanSign", "'>>'");
		tokenNameToValue.put("ReverseSolidusLessThanSignLessThanSign", "'\\<<'");
		tokenNameToValue.put("For", "'for'");
		tokenNameToValue.put("Templates", "'templates'");
	}

	public void setGrammarAccess(CodetemplatesGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		String result = tokenNameToValue.get(tokenName);
		if (result == null)
			result = tokenName;
		return result;
	}
}

// Entry rule entryRuleCodetemplates
entryRuleCodetemplates
:
{ before(grammarAccess.getCodetemplatesRule()); }
	 ruleCodetemplates
{ after(grammarAccess.getCodetemplatesRule()); } 
	 EOF 
;

// Rule Codetemplates
ruleCodetemplates 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCodetemplatesAccess().getGroup()); }
		(rule__Codetemplates__Group__0)
		{ after(grammarAccess.getCodetemplatesAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCodetemplate
entryRuleCodetemplate
:
{ before(grammarAccess.getCodetemplateRule()); }
	 ruleCodetemplate
{ after(grammarAccess.getCodetemplateRule()); } 
	 EOF 
;

// Rule Codetemplate
ruleCodetemplate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCodetemplateAccess().getGroup()); }
		(rule__Codetemplate__Group__0)
		{ after(grammarAccess.getCodetemplateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTemplateBodyWithQuotes
entryRuleTemplateBodyWithQuotes
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getTemplateBodyWithQuotesRule()); }
	 ruleTemplateBodyWithQuotes
{ after(grammarAccess.getTemplateBodyWithQuotesRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule TemplateBodyWithQuotes
ruleTemplateBodyWithQuotes 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTemplateBodyWithQuotesAccess().getGroup()); }
		(rule__TemplateBodyWithQuotes__Group__0)
		{ after(grammarAccess.getTemplateBodyWithQuotesAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleTemplateBody
entryRuleTemplateBody
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getTemplateBodyRule()); }
	 ruleTemplateBody
{ after(grammarAccess.getTemplateBodyRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule TemplateBody
ruleTemplateBody 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTemplateBodyAccess().getGroup()); }
		(rule__TemplateBody__Group__0)
		{ after(grammarAccess.getTemplateBodyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleVariableOrDollar
entryRuleVariableOrDollar
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getVariableOrDollarRule()); }
	 ruleVariableOrDollar
{ after(grammarAccess.getVariableOrDollarRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule VariableOrDollar
ruleVariableOrDollar 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableOrDollarAccess().getAlternatives()); }
		(rule__VariableOrDollar__Alternatives)
		{ after(grammarAccess.getVariableOrDollarAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleVariable
entryRuleVariable
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getVariableRule()); }
	 ruleVariable
{ after(grammarAccess.getVariableRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Variable
ruleVariable 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableAccess().getGroup()); }
		(rule__Variable__Group__0)
		{ after(grammarAccess.getVariableAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleValidID
entryRuleValidID
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getValidIDRule()); }
	 ruleValidID
{ after(grammarAccess.getValidIDRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule ValidID
ruleValidID 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getValidIDAccess().getAlternatives()); }
		(rule__ValidID__Alternatives)
		{ after(grammarAccess.getValidIDAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleFQN
entryRuleFQN
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule FQN
ruleFQN 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNAccess().getGroup()); }
		(rule__FQN__Group__0)
		{ after(grammarAccess.getFQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleLiteral
entryRuleLiteral
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getLiteralRule()); }
	 ruleLiteral
{ after(grammarAccess.getLiteralRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Literal
ruleLiteral 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLiteralAccess().getValueAssignment()); }
		(rule__Literal__ValueAssignment)
		{ after(grammarAccess.getLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleLiteralValue
entryRuleLiteralValue
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getLiteralValueRule()); }
	 ruleLiteralValue
{ after(grammarAccess.getLiteralValueRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule LiteralValue
ruleLiteralValue 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		(
			{ before(grammarAccess.getLiteralValueAccess().getAlternatives()); }
			(rule__LiteralValue__Alternatives)
			{ after(grammarAccess.getLiteralValueAccess().getAlternatives()); }
		)
		(
			{ before(grammarAccess.getLiteralValueAccess().getAlternatives()); }
			(rule__LiteralValue__Alternatives)*
			{ after(grammarAccess.getLiteralValueAccess().getAlternatives()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleDollar
entryRuleDollar
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getDollarRule()); }
	 ruleDollar
{ after(grammarAccess.getDollarRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Dollar
ruleDollar 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDollarAccess().getGroup()); }
		(rule__Dollar__Group__0)
		{ after(grammarAccess.getDollarAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

rule__Codetemplate__Alternatives_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getContextAssignment_7_0()); }
		(rule__Codetemplate__ContextAssignment_7_0)
		{ after(grammarAccess.getCodetemplateAccess().getContextAssignment_7_0()); }
	)
	|
	(
		{ before(grammarAccess.getCodetemplateAccess().getKeywordContextAssignment_7_1()); }
		(rule__Codetemplate__KeywordContextAssignment_7_1)
		{ after(grammarAccess.getCodetemplateAccess().getKeywordContextAssignment_7_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableOrDollar__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableOrDollarAccess().getVariableParserRuleCall_0()); }
		ruleVariable
		{ after(grammarAccess.getVariableOrDollarAccess().getVariableParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getVariableOrDollarAccess().getDollarParserRuleCall_1()); }
		ruleDollar
		{ after(grammarAccess.getVariableOrDollarAccess().getDollarParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Alternatives_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getNameAssignment_2_0()); }
		(rule__Variable__NameAssignment_2_0)
		{ after(grammarAccess.getVariableAccess().getNameAssignment_2_0()); }
	)
	|
	(
		{ before(grammarAccess.getVariableAccess().getGroup_2_1()); }
		(rule__Variable__Group_2_1__0)
		{ after(grammarAccess.getVariableAccess().getGroup_2_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__ParametersAlternatives_2_1_4_3_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getParametersSTRINGTerminalRuleCall_2_1_4_3_0_0_0()); }
		RULE_STRING
		{ after(grammarAccess.getVariableAccess().getParametersSTRINGTerminalRuleCall_2_1_4_3_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVariableAccess().getParametersFQNParserRuleCall_2_1_4_3_0_0_1()); }
		ruleFQN
		{ after(grammarAccess.getVariableAccess().getParametersFQNParserRuleCall_2_1_4_3_0_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__ParametersAlternatives_2_1_4_3_1_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getParametersSTRINGTerminalRuleCall_2_1_4_3_1_3_0_0()); }
		RULE_STRING
		{ after(grammarAccess.getVariableAccess().getParametersSTRINGTerminalRuleCall_2_1_4_3_1_3_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVariableAccess().getParametersFQNParserRuleCall_2_1_4_3_1_3_0_1()); }
		ruleFQN
		{ after(grammarAccess.getVariableAccess().getParametersFQNParserRuleCall_2_1_4_3_1_3_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ValidID__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getValidIDAccess().getIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getValidIDAccess().getIDTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getValidIDAccess().getForKeyword_1()); }
		For
		{ after(grammarAccess.getValidIDAccess().getForKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getValidIDAccess().getTemplatesKeyword_2()); }
		Templates
		{ after(grammarAccess.getValidIDAccess().getTemplatesKeyword_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralValue__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralValueAccess().getWSTerminalRuleCall_0()); }
		RULE_WS
		{ after(grammarAccess.getLiteralValueAccess().getWSTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralValueAccess().getANY_OTHERTerminalRuleCall_1()); }
		RULE_ANY_OTHER
		{ after(grammarAccess.getLiteralValueAccess().getANY_OTHERTerminalRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralValueAccess().getIDTerminalRuleCall_2()); }
		RULE_ID
		{ after(grammarAccess.getLiteralValueAccess().getIDTerminalRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralValueAccess().getReverseSolidusLessThanSignLessThanSignKeyword_3()); }
		ReverseSolidusLessThanSignLessThanSign
		{ after(grammarAccess.getLiteralValueAccess().getReverseSolidusLessThanSignLessThanSignKeyword_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dollar__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDollarAccess().getEscapedAssignment_1_0()); }
		(rule__Dollar__EscapedAssignment_1_0)
		{ after(grammarAccess.getDollarAccess().getEscapedAssignment_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getDollarAccess().getDollarSignKeyword_1_1()); }
		DollarSign
		{ after(grammarAccess.getDollarAccess().getDollarSignKeyword_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplates__Group__0__Impl
	rule__Codetemplates__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplatesAccess().getTemplatesKeyword_0()); }
	Templates
	{ after(grammarAccess.getCodetemplatesAccess().getTemplatesKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplates__Group__1__Impl
	rule__Codetemplates__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplatesAccess().getForKeyword_1()); }
	For
	{ after(grammarAccess.getCodetemplatesAccess().getForKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplates__Group__2__Impl
	rule__Codetemplates__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplatesAccess().getLanguageAssignment_2()); }
	(rule__Codetemplates__LanguageAssignment_2)
	{ after(grammarAccess.getCodetemplatesAccess().getLanguageAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplates__Group__3__Impl
	rule__Codetemplates__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplatesAccess().getColonKeyword_3()); }
	Colon
	{ after(grammarAccess.getCodetemplatesAccess().getColonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplates__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplatesAccess().getTemplatesAssignment_4()); }
	(rule__Codetemplates__TemplatesAssignment_4)*
	{ after(grammarAccess.getCodetemplatesAccess().getTemplatesAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Codetemplate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__0__Impl
	rule__Codetemplate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getNameAssignment_0()); }
	(rule__Codetemplate__NameAssignment_0)
	{ after(grammarAccess.getCodetemplateAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__1__Impl
	rule__Codetemplate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getLeftParenthesisKeyword_1()); }
	LeftParenthesis
	{ after(grammarAccess.getCodetemplateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__2__Impl
	rule__Codetemplate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getIdAssignment_2()); }
	(rule__Codetemplate__IdAssignment_2)
	{ after(grammarAccess.getCodetemplateAccess().getIdAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__3__Impl
	rule__Codetemplate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getCommaKeyword_3()); }
	Comma
	{ after(grammarAccess.getCodetemplateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__4__Impl
	rule__Codetemplate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getDescriptionAssignment_4()); }
	(rule__Codetemplate__DescriptionAssignment_4)
	{ after(grammarAccess.getCodetemplateAccess().getDescriptionAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__5__Impl
	rule__Codetemplate__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getRightParenthesisKeyword_5()); }
	RightParenthesis
	{ after(grammarAccess.getCodetemplateAccess().getRightParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__6__Impl
	rule__Codetemplate__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getForKeyword_6()); }
	For
	{ after(grammarAccess.getCodetemplateAccess().getForKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__7__Impl
	rule__Codetemplate__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getAlternatives_7()); }
	(rule__Codetemplate__Alternatives_7)
	{ after(grammarAccess.getCodetemplateAccess().getAlternatives_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Codetemplate__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCodetemplateAccess().getBodyAssignment_8()); }
	(rule__Codetemplate__BodyAssignment_8)
	{ after(grammarAccess.getCodetemplateAccess().getBodyAssignment_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBodyWithQuotes__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBodyWithQuotes__Group__0__Impl
	rule__TemplateBodyWithQuotes__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyWithQuotesAccess().getWSTerminalRuleCall_0()); }
	(RULE_WS)?
	{ after(grammarAccess.getTemplateBodyWithQuotesAccess().getWSTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBodyWithQuotes__Group__1__Impl
	rule__TemplateBodyWithQuotes__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyWithQuotesAccess().getGreaterThanSignGreaterThanSignKeyword_1()); }
	GreaterThanSignGreaterThanSign
	{ after(grammarAccess.getTemplateBodyWithQuotesAccess().getGreaterThanSignGreaterThanSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBodyWithQuotes__Group__2__Impl
	rule__TemplateBodyWithQuotes__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyWithQuotesAccess().getTemplateBodyParserRuleCall_2()); }
	ruleTemplateBody
	{ after(grammarAccess.getTemplateBodyWithQuotesAccess().getTemplateBodyParserRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBodyWithQuotes__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBodyWithQuotes__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyWithQuotesAccess().getLessThanSignLessThanSignKeyword_3()); }
	LessThanSignLessThanSign
	{ after(grammarAccess.getTemplateBodyWithQuotesAccess().getLessThanSignLessThanSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBody__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBody__Group__0__Impl
	rule__TemplateBody__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyAccess().getTemplateBodyAction_0()); }
	()
	{ after(grammarAccess.getTemplateBodyAccess().getTemplateBodyAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBody__Group__1__Impl
	rule__TemplateBody__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyAccess().getPartsAssignment_1()); }
	(rule__TemplateBody__PartsAssignment_1)?
	{ after(grammarAccess.getTemplateBodyAccess().getPartsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBody__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyAccess().getGroup_2()); }
	(rule__TemplateBody__Group_2__0)*
	{ after(grammarAccess.getTemplateBodyAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TemplateBody__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBody__Group_2__0__Impl
	rule__TemplateBody__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyAccess().getPartsAssignment_2_0()); }
	(rule__TemplateBody__PartsAssignment_2_0)
	{ after(grammarAccess.getTemplateBodyAccess().getPartsAssignment_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TemplateBody__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTemplateBodyAccess().getPartsAssignment_2_1()); }
	(rule__TemplateBody__PartsAssignment_2_1)?
	{ after(grammarAccess.getTemplateBodyAccess().getPartsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group__0__Impl
	rule__Variable__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getDollarSignLeftCurlyBracketKeyword_0()); }
	DollarSignLeftCurlyBracket
	{ after(grammarAccess.getVariableAccess().getDollarSignLeftCurlyBracketKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group__1__Impl
	rule__Variable__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_1()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group__2__Impl
	rule__Variable__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getAlternatives_2()); }
	(rule__Variable__Alternatives_2)
	{ after(grammarAccess.getVariableAccess().getAlternatives_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group__3__Impl
	rule__Variable__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_3()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getRightCurlyBracketKeyword_4()); }
	RightCurlyBracket
	{ after(grammarAccess.getVariableAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1__0__Impl
	rule__Variable__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getGroup_2_1_0()); }
	(rule__Variable__Group_2_1_0__0)?
	{ after(grammarAccess.getVariableAccess().getGroup_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1__1__Impl
	rule__Variable__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getColonKeyword_2_1_1()); }
	Colon
	{ after(grammarAccess.getVariableAccess().getColonKeyword_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1__2__Impl
	rule__Variable__Group_2_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_2()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1__3__Impl
	rule__Variable__Group_2_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getTypeAssignment_2_1_3()); }
	(rule__Variable__TypeAssignment_2_1_3)
	{ after(grammarAccess.getVariableAccess().getTypeAssignment_2_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getGroup_2_1_4()); }
	(rule__Variable__Group_2_1_4__0)?
	{ after(grammarAccess.getVariableAccess().getGroup_2_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group_2_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_0__0__Impl
	rule__Variable__Group_2_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getNameAssignment_2_1_0_0()); }
	(rule__Variable__NameAssignment_2_1_0_0)
	{ after(grammarAccess.getVariableAccess().getNameAssignment_2_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_0_1()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group_2_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4__0__Impl
	rule__Variable__Group_2_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_0()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4__1__Impl
	rule__Variable__Group_2_1_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getExpectingParametersAssignment_2_1_4_1()); }
	(rule__Variable__ExpectingParametersAssignment_2_1_4_1)
	{ after(grammarAccess.getVariableAccess().getExpectingParametersAssignment_2_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4__2__Impl
	rule__Variable__Group_2_1_4__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_2()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4__3__Impl
	rule__Variable__Group_2_1_4__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getGroup_2_1_4_3()); }
	(rule__Variable__Group_2_1_4_3__0)?
	{ after(grammarAccess.getVariableAccess().getGroup_2_1_4_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getRightParenthesisKeyword_2_1_4_4()); }
	RightParenthesis
	{ after(grammarAccess.getVariableAccess().getRightParenthesisKeyword_2_1_4_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group_2_1_4_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3__0__Impl
	rule__Variable__Group_2_1_4_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getParametersAssignment_2_1_4_3_0()); }
	(rule__Variable__ParametersAssignment_2_1_4_3_0)
	{ after(grammarAccess.getVariableAccess().getParametersAssignment_2_1_4_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3__1__Impl
	rule__Variable__Group_2_1_4_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getGroup_2_1_4_3_1()); }
	(rule__Variable__Group_2_1_4_3_1__0)*
	{ after(grammarAccess.getVariableAccess().getGroup_2_1_4_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_2()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Variable__Group_2_1_4_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3_1__0__Impl
	rule__Variable__Group_2_1_4_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_1_0()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3_1__1__Impl
	rule__Variable__Group_2_1_4_3_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getCommaKeyword_2_1_4_3_1_1()); }
	Comma
	{ after(grammarAccess.getVariableAccess().getCommaKeyword_2_1_4_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3_1__2__Impl
	rule__Variable__Group_2_1_4_3_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_1_2()); }
	(RULE_WS)*
	{ after(grammarAccess.getVariableAccess().getWSTerminalRuleCall_2_1_4_3_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Variable__Group_2_1_4_3_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__Group_2_1_4_3_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVariableAccess().getParametersAssignment_2_1_4_3_1_3()); }
	(rule__Variable__ParametersAssignment_2_1_4_3_1_3)
	{ after(grammarAccess.getVariableAccess().getParametersAssignment_2_1_4_3_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getValidIDParserRuleCall_0()); }
	ruleValidID
	{ after(grammarAccess.getFQNAccess().getValidIDParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_1()); }
	(rule__FQN__Group_1__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
	FullStop
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getValidIDParserRuleCall_1_1()); }
	ruleValidID
	{ after(grammarAccess.getFQNAccess().getValidIDParserRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dollar__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dollar__Group__0__Impl
	rule__Dollar__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dollar__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDollarAccess().getDollarAction_0()); }
	()
	{ after(grammarAccess.getDollarAccess().getDollarAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dollar__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dollar__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dollar__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDollarAccess().getAlternatives_1()); }
	(rule__Dollar__Alternatives_1)
	{ after(grammarAccess.getDollarAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Codetemplates__LanguageAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplatesAccess().getLanguageGrammarCrossReference_2_0()); }
		(
			{ before(grammarAccess.getCodetemplatesAccess().getLanguageGrammarFQNParserRuleCall_2_0_1()); }
			ruleFQN
			{ after(grammarAccess.getCodetemplatesAccess().getLanguageGrammarFQNParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getCodetemplatesAccess().getLanguageGrammarCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplates__TemplatesAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplatesAccess().getTemplatesCodetemplateParserRuleCall_4_0()); }
		ruleCodetemplate
		{ after(grammarAccess.getCodetemplatesAccess().getTemplatesCodetemplateParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getNameValidIDParserRuleCall_0_0()); }
		ruleValidID
		{ after(grammarAccess.getCodetemplateAccess().getNameValidIDParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__IdAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getIdIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getCodetemplateAccess().getIdIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__DescriptionAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getDescriptionSTRINGTerminalRuleCall_4_0()); }
		RULE_STRING
		{ after(grammarAccess.getCodetemplateAccess().getDescriptionSTRINGTerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__ContextAssignment_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getContextAbstractRuleCrossReference_7_0_0()); }
		(
			{ before(grammarAccess.getCodetemplateAccess().getContextAbstractRuleValidIDParserRuleCall_7_0_0_1()); }
			ruleValidID
			{ after(grammarAccess.getCodetemplateAccess().getContextAbstractRuleValidIDParserRuleCall_7_0_0_1()); }
		)
		{ after(grammarAccess.getCodetemplateAccess().getContextAbstractRuleCrossReference_7_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__KeywordContextAssignment_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getKeywordContextSTRINGTerminalRuleCall_7_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getCodetemplateAccess().getKeywordContextSTRINGTerminalRuleCall_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Codetemplate__BodyAssignment_8
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCodetemplateAccess().getBodyTemplateBodyWithQuotesParserRuleCall_8_0()); }
		ruleTemplateBodyWithQuotes
		{ after(grammarAccess.getCodetemplateAccess().getBodyTemplateBodyWithQuotesParserRuleCall_8_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__PartsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTemplateBodyAccess().getPartsLiteralParserRuleCall_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getTemplateBodyAccess().getPartsLiteralParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__PartsAssignment_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTemplateBodyAccess().getPartsVariableOrDollarParserRuleCall_2_0_0()); }
		ruleVariableOrDollar
		{ after(grammarAccess.getTemplateBodyAccess().getPartsVariableOrDollarParserRuleCall_2_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TemplateBody__PartsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTemplateBodyAccess().getPartsLiteralParserRuleCall_2_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getTemplateBodyAccess().getPartsLiteralParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__NameAssignment_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getNameValidIDParserRuleCall_2_0_0()); }
		ruleValidID
		{ after(grammarAccess.getVariableAccess().getNameValidIDParserRuleCall_2_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__NameAssignment_2_1_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getNameValidIDParserRuleCall_2_1_0_0_0()); }
		ruleValidID
		{ after(grammarAccess.getVariableAccess().getNameValidIDParserRuleCall_2_1_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__TypeAssignment_2_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getTypeValidIDParserRuleCall_2_1_3_0()); }
		ruleValidID
		{ after(grammarAccess.getVariableAccess().getTypeValidIDParserRuleCall_2_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__ExpectingParametersAssignment_2_1_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getExpectingParametersLeftParenthesisKeyword_2_1_4_1_0()); }
		(
			{ before(grammarAccess.getVariableAccess().getExpectingParametersLeftParenthesisKeyword_2_1_4_1_0()); }
			LeftParenthesis
			{ after(grammarAccess.getVariableAccess().getExpectingParametersLeftParenthesisKeyword_2_1_4_1_0()); }
		)
		{ after(grammarAccess.getVariableAccess().getExpectingParametersLeftParenthesisKeyword_2_1_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__ParametersAssignment_2_1_4_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getParametersAlternatives_2_1_4_3_0_0()); }
		(rule__Variable__ParametersAlternatives_2_1_4_3_0_0)
		{ after(grammarAccess.getVariableAccess().getParametersAlternatives_2_1_4_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Variable__ParametersAssignment_2_1_4_3_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableAccess().getParametersAlternatives_2_1_4_3_1_3_0()); }
		(rule__Variable__ParametersAlternatives_2_1_4_3_1_3_0)
		{ after(grammarAccess.getVariableAccess().getParametersAlternatives_2_1_4_3_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getValueLiteralValueParserRuleCall_0()); }
		ruleLiteralValue
		{ after(grammarAccess.getLiteralAccess().getValueLiteralValueParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dollar__EscapedAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDollarAccess().getEscapedDollarSignDollarSignKeyword_1_0_0()); }
		(
			{ before(grammarAccess.getDollarAccess().getEscapedDollarSignDollarSignKeyword_1_0_0()); }
			DollarSignDollarSign
			{ after(grammarAccess.getDollarAccess().getEscapedDollarSignDollarSignKeyword_1_0_0()); }
		)
		{ after(grammarAccess.getDollarAccess().getEscapedDollarSignDollarSignKeyword_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}
