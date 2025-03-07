/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalReferenceGrammarUiTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.testlanguages.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.testlanguages.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.testlanguages.services.ReferenceGrammarUiTestLanguageGrammarAccess;

}
@parser::members {
	private ReferenceGrammarUiTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(ReferenceGrammarUiTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleSpielplatz
entryRuleSpielplatz
:
{ before(grammarAccess.getSpielplatzRule()); }
	 ruleSpielplatz
{ after(grammarAccess.getSpielplatzRule()); } 
	 EOF 
;

// Rule Spielplatz
ruleSpielplatz 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSpielplatzAccess().getGroup()); }
		(rule__Spielplatz__Group__0)?
		{ after(grammarAccess.getSpielplatzAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleKind
entryRuleKind
:
{ before(grammarAccess.getKindRule()); }
	 ruleKind
{ after(grammarAccess.getKindRule()); } 
	 EOF 
;

// Rule Kind
ruleKind 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getKindAccess().getGroup()); }
		(rule__Kind__Group__0)
		{ after(grammarAccess.getKindAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleErwachsener
entryRuleErwachsener
:
{ before(grammarAccess.getErwachsenerRule()); }
	 ruleErwachsener
{ after(grammarAccess.getErwachsenerRule()); } 
	 EOF 
;

// Rule Erwachsener
ruleErwachsener 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getErwachsenerAccess().getGroup()); }
		(rule__Erwachsener__Group__0)
		{ after(grammarAccess.getErwachsenerAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSpielzeug
entryRuleSpielzeug
:
{ before(grammarAccess.getSpielzeugRule()); }
	 ruleSpielzeug
{ after(grammarAccess.getSpielzeugRule()); } 
	 EOF 
;

// Rule Spielzeug
ruleSpielzeug 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSpielzeugAccess().getGroup()); }
		(rule__Spielzeug__Group__0)
		{ after(grammarAccess.getSpielzeugAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFarbe
entryRuleFarbe
:
{ before(grammarAccess.getFarbeRule()); }
	 ruleFarbe
{ after(grammarAccess.getFarbeRule()); } 
	 EOF 
;

// Rule Farbe
ruleFarbe 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFarbeAccess().getWertAssignment()); }
		(rule__Farbe__WertAssignment)
		{ after(grammarAccess.getFarbeAccess().getWertAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFamilie
entryRuleFamilie
:
{ before(grammarAccess.getFamilieRule()); }
	 ruleFamilie
{ after(grammarAccess.getFamilieRule()); } 
	 EOF 
;

// Rule Familie
ruleFamilie 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFamilieAccess().getGroup()); }
		(rule__Familie__Group__0)
		{ after(grammarAccess.getFamilieAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getKinderAssignment_4_0()); }
		(rule__Spielplatz__KinderAssignment_4_0)
		{ after(grammarAccess.getSpielplatzAccess().getKinderAssignment_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getSpielplatzAccess().getErzieherAssignment_4_1()); }
		(rule__Spielplatz__ErzieherAssignment_4_1)
		{ after(grammarAccess.getSpielplatzAccess().getErzieherAssignment_4_1()); }
	)
	|
	(
		{ before(grammarAccess.getSpielplatzAccess().getSpielzeugeAssignment_4_2()); }
		(rule__Spielplatz__SpielzeugeAssignment_4_2)
		{ after(grammarAccess.getSpielplatzAccess().getSpielzeugeAssignment_4_2()); }
	)
	|
	(
		{ before(grammarAccess.getSpielplatzAccess().getFamilieAssignment_4_3()); }
		(rule__Spielplatz__FamilieAssignment_4_3)
		{ after(grammarAccess.getSpielplatzAccess().getFamilieAssignment_4_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Farbe__WertAlternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFarbeAccess().getWertROTKeyword_0_0()); }
		'ROT'
		{ after(grammarAccess.getFarbeAccess().getWertROTKeyword_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getFarbeAccess().getWertBLAUKeyword_0_1()); }
		'BLAU'
		{ after(grammarAccess.getFarbeAccess().getWertBLAUKeyword_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getFarbeAccess().getWertGELBKeyword_0_2()); }
		'GELB'
		{ after(grammarAccess.getFarbeAccess().getWertGELBKeyword_0_2()); }
	)
	|
	(
		{ before(grammarAccess.getFarbeAccess().getWertGR�NKeyword_0_3()); }
		'GR\u00DCN'
		{ after(grammarAccess.getFarbeAccess().getWertGR�NKeyword_0_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__NameAlternatives_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getNameKeywordKeyword_2_0_0()); }
		'keyword'
		{ after(grammarAccess.getFamilieAccess().getNameKeywordKeyword_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getFamilieAccess().getNameSTRINGTerminalRuleCall_2_0_1()); }
		RULE_STRING
		{ after(grammarAccess.getFamilieAccess().getNameSTRINGTerminalRuleCall_2_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getFamilieAccess().getNameIDTerminalRuleCall_2_0_2()); }
		RULE_ID
		{ after(grammarAccess.getFamilieAccess().getNameIDTerminalRuleCall_2_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__0__Impl
	rule__Spielplatz__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getSpielplatzKeyword_0()); }
	'spielplatz'
	{ after(grammarAccess.getSpielplatzAccess().getSpielplatzKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__1__Impl
	rule__Spielplatz__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getGroesseAssignment_1()); }
	(rule__Spielplatz__GroesseAssignment_1)
	{ after(grammarAccess.getSpielplatzAccess().getGroesseAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__2__Impl
	rule__Spielplatz__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getBeschreibungAssignment_2()); }
	(rule__Spielplatz__BeschreibungAssignment_2)?
	{ after(grammarAccess.getSpielplatzAccess().getBeschreibungAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__3__Impl
	rule__Spielplatz__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getSpielplatzAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__4__Impl
	rule__Spielplatz__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getAlternatives_4()); }
	(rule__Spielplatz__Alternatives_4)*
	{ after(grammarAccess.getSpielplatzAccess().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielplatz__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielplatzAccess().getRightCurlyBracketKeyword_5()); }
	'}'
	{ after(grammarAccess.getSpielplatzAccess().getRightCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Kind__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Kind__Group__0__Impl
	rule__Kind__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKindAccess().getKindKeyword_0()); }
	'kind'
	{ after(grammarAccess.getKindAccess().getKindKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Kind__Group__1__Impl
	rule__Kind__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKindAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getKindAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Kind__Group__2__Impl
	rule__Kind__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKindAccess().getNameAssignment_2()); }
	(rule__Kind__NameAssignment_2)
	{ after(grammarAccess.getKindAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Kind__Group__3__Impl
	rule__Kind__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKindAccess().getAgeAssignment_3()); }
	(rule__Kind__AgeAssignment_3)
	{ after(grammarAccess.getKindAccess().getAgeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Kind__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKindAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getKindAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Erwachsener__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Erwachsener__Group__0__Impl
	rule__Erwachsener__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getErwachsenerAccess().getErwachsenerKeyword_0()); }
	'erwachsener'
	{ after(grammarAccess.getErwachsenerAccess().getErwachsenerKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Erwachsener__Group__1__Impl
	rule__Erwachsener__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getErwachsenerAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getErwachsenerAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Erwachsener__Group__2__Impl
	rule__Erwachsener__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getErwachsenerAccess().getNameAssignment_2()); }
	(rule__Erwachsener__NameAssignment_2)
	{ after(grammarAccess.getErwachsenerAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Erwachsener__Group__3__Impl
	rule__Erwachsener__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getErwachsenerAccess().getAgeAssignment_3()); }
	(rule__Erwachsener__AgeAssignment_3)
	{ after(grammarAccess.getErwachsenerAccess().getAgeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Erwachsener__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getErwachsenerAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getErwachsenerAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Spielzeug__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielzeug__Group__0__Impl
	rule__Spielzeug__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielzeugAccess().getSpielzeugKeyword_0()); }
	'spielzeug'
	{ after(grammarAccess.getSpielzeugAccess().getSpielzeugKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielzeug__Group__1__Impl
	rule__Spielzeug__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielzeugAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getSpielzeugAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielzeug__Group__2__Impl
	rule__Spielzeug__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielzeugAccess().getNameAssignment_2()); }
	(rule__Spielzeug__NameAssignment_2)
	{ after(grammarAccess.getSpielzeugAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielzeug__Group__3__Impl
	rule__Spielzeug__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielzeugAccess().getFarbeAssignment_3()); }
	(rule__Spielzeug__FarbeAssignment_3)
	{ after(grammarAccess.getSpielzeugAccess().getFarbeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Spielzeug__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSpielzeugAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getSpielzeugAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Familie__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__0__Impl
	rule__Familie__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getFamilieKeyword_0()); }
	'familie'
	{ after(grammarAccess.getFamilieAccess().getFamilieKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__1__Impl
	rule__Familie__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getFamilieAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__2__Impl
	rule__Familie__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getNameAssignment_2()); }
	(rule__Familie__NameAssignment_2)
	{ after(grammarAccess.getFamilieAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__3__Impl
	rule__Familie__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getMutterAssignment_3()); }
	(rule__Familie__MutterAssignment_3)
	{ after(grammarAccess.getFamilieAccess().getMutterAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__4__Impl
	rule__Familie__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getVaterAssignment_4()); }
	(rule__Familie__VaterAssignment_4)
	{ after(grammarAccess.getFamilieAccess().getVaterAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__5__Impl
	rule__Familie__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getKinderAssignment_5()); }
	(rule__Familie__KinderAssignment_5)
	{ after(grammarAccess.getFamilieAccess().getKinderAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__6__Impl
	rule__Familie__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getGroup_6()); }
	(rule__Familie__Group_6__0)*
	{ after(grammarAccess.getFamilieAccess().getGroup_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getRightParenthesisKeyword_7()); }
	')'
	{ after(grammarAccess.getFamilieAccess().getRightParenthesisKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Familie__Group_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group_6__0__Impl
	rule__Familie__Group_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getCommaKeyword_6_0()); }
	','
	{ after(grammarAccess.getFamilieAccess().getCommaKeyword_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Familie__Group_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__Group_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFamilieAccess().getKinderAssignment_6_1()); }
	(rule__Familie__KinderAssignment_6_1)
	{ after(grammarAccess.getFamilieAccess().getKinderAssignment_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Spielplatz__GroesseAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getGroesseINTTerminalRuleCall_1_0()); }
		RULE_INT
		{ after(grammarAccess.getSpielplatzAccess().getGroesseINTTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__BeschreibungAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getBeschreibungSTRINGTerminalRuleCall_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getSpielplatzAccess().getBeschreibungSTRINGTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__KinderAssignment_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getKinderKindParserRuleCall_4_0_0()); }
		ruleKind
		{ after(grammarAccess.getSpielplatzAccess().getKinderKindParserRuleCall_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__ErzieherAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getErzieherErwachsenerParserRuleCall_4_1_0()); }
		ruleErwachsener
		{ after(grammarAccess.getSpielplatzAccess().getErzieherErwachsenerParserRuleCall_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__SpielzeugeAssignment_4_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getSpielzeugeSpielzeugParserRuleCall_4_2_0()); }
		ruleSpielzeug
		{ after(grammarAccess.getSpielplatzAccess().getSpielzeugeSpielzeugParserRuleCall_4_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielplatz__FamilieAssignment_4_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielplatzAccess().getFamilieFamilieParserRuleCall_4_3_0()); }
		ruleFamilie
		{ after(grammarAccess.getSpielplatzAccess().getFamilieFamilieParserRuleCall_4_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getKindAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getKindAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Kind__AgeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getKindAccess().getAgeINTTerminalRuleCall_3_0()); }
		RULE_INT
		{ after(grammarAccess.getKindAccess().getAgeINTTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getErwachsenerAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getErwachsenerAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Erwachsener__AgeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getErwachsenerAccess().getAgeINTTerminalRuleCall_3_0()); }
		RULE_INT
		{ after(grammarAccess.getErwachsenerAccess().getAgeINTTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielzeugAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getSpielzeugAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Spielzeug__FarbeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpielzeugAccess().getFarbeFarbeParserRuleCall_3_0()); }
		ruleFarbe
		{ after(grammarAccess.getSpielzeugAccess().getFarbeFarbeParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Farbe__WertAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFarbeAccess().getWertAlternatives_0()); }
		(rule__Farbe__WertAlternatives_0)
		{ after(grammarAccess.getFarbeAccess().getWertAlternatives_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getNameAlternatives_2_0()); }
		(rule__Familie__NameAlternatives_2_0)
		{ after(grammarAccess.getFamilieAccess().getNameAlternatives_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__MutterAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getMutterErwachsenerCrossReference_3_0()); }
		(
			{ before(grammarAccess.getFamilieAccess().getMutterErwachsenerIDTerminalRuleCall_3_0_1()); }
			RULE_ID
			{ after(grammarAccess.getFamilieAccess().getMutterErwachsenerIDTerminalRuleCall_3_0_1()); }
		)
		{ after(grammarAccess.getFamilieAccess().getMutterErwachsenerCrossReference_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__VaterAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getVaterErwachsenerCrossReference_4_0()); }
		(
			{ before(grammarAccess.getFamilieAccess().getVaterErwachsenerIDTerminalRuleCall_4_0_1()); }
			RULE_ID
			{ after(grammarAccess.getFamilieAccess().getVaterErwachsenerIDTerminalRuleCall_4_0_1()); }
		)
		{ after(grammarAccess.getFamilieAccess().getVaterErwachsenerCrossReference_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__KinderAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getKinderKindCrossReference_5_0()); }
		(
			{ before(grammarAccess.getFamilieAccess().getKinderKindIDTerminalRuleCall_5_0_1()); }
			RULE_ID
			{ after(grammarAccess.getFamilieAccess().getKinderKindIDTerminalRuleCall_5_0_1()); }
		)
		{ after(grammarAccess.getFamilieAccess().getKinderKindCrossReference_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Familie__KinderAssignment_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFamilieAccess().getKinderKindCrossReference_6_1_0()); }
		(
			{ before(grammarAccess.getFamilieAccess().getKinderKindIDTerminalRuleCall_6_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getFamilieAccess().getKinderKindIDTerminalRuleCall_6_1_0_1()); }
		)
		{ after(grammarAccess.getFamilieAccess().getKinderKindCrossReference_6_1_0()); }
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
