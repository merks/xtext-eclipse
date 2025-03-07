/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalEcore2XtextTest;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.xtext.ui.ecore2xtext.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.xtext.ui.ecore2xtext.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.xtext.ui.ecore2xtext.services.Ecore2XtextTestGrammarAccess;

}
@parser::members {
	private Ecore2XtextTestGrammarAccess grammarAccess;

	public void setGrammarAccess(Ecore2XtextTestGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleRoot
entryRuleRoot
:
{ before(grammarAccess.getRootRule()); }
	 ruleRoot
{ after(grammarAccess.getRootRule()); } 
	 EOF 
;

// Rule Root
ruleRoot 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRootAccess().getGroup()); }
		(rule__Root__Group__0)
		{ after(grammarAccess.getRootAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAbstract
entryRuleAbstract
:
{ before(grammarAccess.getAbstractRule()); }
	 ruleAbstract
{ after(grammarAccess.getAbstractRule()); } 
	 EOF 
;

// Rule Abstract
ruleAbstract 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAbstractAccess().getAlternatives()); }
		(rule__Abstract__Alternatives)
		{ after(grammarAccess.getAbstractAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConcrete0
entryRuleConcrete0
:
{ before(grammarAccess.getConcrete0Rule()); }
	 ruleConcrete0
{ after(grammarAccess.getConcrete0Rule()); } 
	 EOF 
;

// Rule Concrete0
ruleConcrete0 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConcrete0Access().getAlternatives()); }
		(rule__Concrete0__Alternatives)
		{ after(grammarAccess.getConcrete0Access().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleINT0
entryRuleINT0
:
{ before(grammarAccess.getINT0Rule()); }
	 ruleINT0
{ after(grammarAccess.getINT0Rule()); } 
	 EOF 
;

// Rule INT0
ruleINT0 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getINT0Access().getINTKeyword()); }
		'INT'
		{ after(grammarAccess.getINT0Access().getINTKeyword()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConcrete0_Impl
entryRuleConcrete0_Impl
:
{ before(grammarAccess.getConcrete0_ImplRule()); }
	 ruleConcrete0_Impl
{ after(grammarAccess.getConcrete0_ImplRule()); } 
	 EOF 
;

// Rule Concrete0_Impl
ruleConcrete0_Impl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConcrete0_ImplAccess().getGroup()); }
		(rule__Concrete0_Impl__Group__0)
		{ after(grammarAccess.getConcrete0_ImplAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEString
entryRuleEString
:
{ before(grammarAccess.getEStringRule()); }
	 ruleEString
{ after(grammarAccess.getEStringRule()); } 
	 EOF 
;

// Rule EString
ruleEString 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEStringAccess().getAlternatives()); }
		(rule__EString__Alternatives)
		{ after(grammarAccess.getEStringAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConcrete1_Impl
entryRuleConcrete1_Impl
:
{ before(grammarAccess.getConcrete1_ImplRule()); }
	 ruleConcrete1_Impl
{ after(grammarAccess.getConcrete1_ImplRule()); } 
	 EOF 
;

// Rule Concrete1_Impl
ruleConcrete1_Impl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConcrete1_ImplAccess().getGroup()); }
		(rule__Concrete1_Impl__Group__0)
		{ after(grammarAccess.getConcrete1_ImplAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDiamondInheritance
entryRuleDiamondInheritance
:
{ before(grammarAccess.getDiamondInheritanceRule()); }
	 ruleDiamondInheritance
{ after(grammarAccess.getDiamondInheritanceRule()); } 
	 EOF 
;

// Rule DiamondInheritance
ruleDiamondInheritance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDiamondInheritanceAccess().getGroup()); }
		(rule__DiamondInheritance__Group__0)
		{ after(grammarAccess.getDiamondInheritanceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Abstract__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAbstractAccess().getConcrete0_ImplParserRuleCall_0()); }
		ruleConcrete0_Impl
		{ after(grammarAccess.getAbstractAccess().getConcrete0_ImplParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getAbstractAccess().getConcrete1_ImplParserRuleCall_1()); }
		ruleConcrete1_Impl
		{ after(grammarAccess.getAbstractAccess().getConcrete1_ImplParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getAbstractAccess().getDiamondInheritanceParserRuleCall_2()); }
		ruleDiamondInheritance
		{ after(grammarAccess.getAbstractAccess().getDiamondInheritanceParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConcrete0Access().getConcrete0_ImplParserRuleCall_0()); }
		ruleConcrete0_Impl
		{ after(grammarAccess.getConcrete0Access().getConcrete0_ImplParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getConcrete0Access().getDiamondInheritanceParserRuleCall_1()); }
		ruleDiamondInheritance
		{ after(grammarAccess.getConcrete0Access().getDiamondInheritanceParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EString__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
		RULE_STRING
		{ after(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__0__Impl
	rule__Root__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getRootAction_0()); }
	()
	{ after(grammarAccess.getRootAccess().getRootAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__1__Impl
	rule__Root__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getRootKeyword_1()); }
	'Root'
	{ after(grammarAccess.getRootAccess().getRootKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__2__Impl
	rule__Root__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getNameAssignment_2()); }
	(rule__Root__NameAssignment_2)
	{ after(grammarAccess.getRootAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__3__Impl
	rule__Root__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__4__Impl
	rule__Root__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getGroup_4()); }
	(rule__Root__Group_4__0)?
	{ after(grammarAccess.getRootAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__5__Impl
	rule__Root__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getGroup_5()); }
	(rule__Root__Group_5__0)?
	{ after(grammarAccess.getRootAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getRightCurlyBracketKeyword_6()); }
	'}'
	{ after(grammarAccess.getRootAccess().getRightCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Root__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4__0__Impl
	rule__Root__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getClassesKeyword_4_0()); }
	'classes'
	{ after(grammarAccess.getRootAccess().getClassesKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4__1__Impl
	rule__Root__Group_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_4_1()); }
	'{'
	{ after(grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4__2__Impl
	rule__Root__Group_4__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getClassesAssignment_4_2()); }
	(rule__Root__ClassesAssignment_4_2)
	{ after(grammarAccess.getRootAccess().getClassesAssignment_4_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4__3__Impl
	rule__Root__Group_4__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getGroup_4_3()); }
	(rule__Root__Group_4_3__0)*
	{ after(grammarAccess.getRootAccess().getGroup_4_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getRightCurlyBracketKeyword_4_4()); }
	'}'
	{ after(grammarAccess.getRootAccess().getRightCurlyBracketKeyword_4_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Root__Group_4_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4_3__0__Impl
	rule__Root__Group_4_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getCommaKeyword_4_3_0()); }
	','
	{ after(grammarAccess.getRootAccess().getCommaKeyword_4_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_4_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_4_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getClassesAssignment_4_3_1()); }
	(rule__Root__ClassesAssignment_4_3_1)
	{ after(grammarAccess.getRootAccess().getClassesAssignment_4_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Root__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_5__0__Impl
	rule__Root__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getConcrete0Keyword_5_0()); }
	'concrete0'
	{ after(grammarAccess.getRootAccess().getConcrete0Keyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Root__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootAccess().getConcrete0Assignment_5_1()); }
	(rule__Root__Concrete0Assignment_5_1)
	{ after(grammarAccess.getRootAccess().getConcrete0Assignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concrete0_Impl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete0_Impl__Group__0__Impl
	rule__Concrete0_Impl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete0_ImplAccess().getConcrete0Action_0()); }
	()
	{ after(grammarAccess.getConcrete0_ImplAccess().getConcrete0Action_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete0_Impl__Group__1__Impl
	rule__Concrete0_Impl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete0_ImplAccess().getConcrete0Keyword_1()); }
	'Concrete0'
	{ after(grammarAccess.getConcrete0_ImplAccess().getConcrete0Keyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete0_Impl__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete0_ImplAccess().getNameAssignment_2()); }
	(rule__Concrete0_Impl__NameAssignment_2)
	{ after(grammarAccess.getConcrete0_ImplAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concrete1_Impl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete1_Impl__Group__0__Impl
	rule__Concrete1_Impl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete1_ImplAccess().getConcrete1Action_0()); }
	()
	{ after(grammarAccess.getConcrete1_ImplAccess().getConcrete1Action_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete1_Impl__Group__1__Impl
	rule__Concrete1_Impl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete1_ImplAccess().getConcrete1Keyword_1()); }
	'Concrete1'
	{ after(grammarAccess.getConcrete1_ImplAccess().getConcrete1Keyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concrete1_Impl__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConcrete1_ImplAccess().getNameAssignment_2()); }
	(rule__Concrete1_Impl__NameAssignment_2)
	{ after(grammarAccess.getConcrete1_ImplAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DiamondInheritance__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DiamondInheritance__Group__0__Impl
	rule__DiamondInheritance__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceAction_0()); }
	()
	{ after(grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DiamondInheritance__Group__1__Impl
	rule__DiamondInheritance__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceKeyword_1()); }
	'DiamondInheritance'
	{ after(grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DiamondInheritance__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDiamondInheritanceAccess().getNameAssignment_2()); }
	(rule__DiamondInheritance__NameAssignment_2)
	{ after(grammarAccess.getDiamondInheritanceAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Root__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootAccess().getNameINT0ParserRuleCall_2_0()); }
		ruleINT0
		{ after(grammarAccess.getRootAccess().getNameINT0ParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__ClassesAssignment_4_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_2_0()); }
		ruleAbstract
		{ after(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__ClassesAssignment_4_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_3_1_0()); }
		ruleAbstract
		{ after(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Root__Concrete0Assignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootAccess().getConcrete0Concrete0ParserRuleCall_5_1_0()); }
		ruleConcrete0
		{ after(grammarAccess.getRootAccess().getConcrete0Concrete0ParserRuleCall_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete0_Impl__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConcrete0_ImplAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getConcrete0_ImplAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concrete1_Impl__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConcrete1_ImplAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getConcrete1_ImplAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DiamondInheritance__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDiamondInheritanceAccess().getNameEStringParserRuleCall_2_0()); }
		ruleEString
		{ after(grammarAccess.getDiamondInheritanceAccess().getNameEStringParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
