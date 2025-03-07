/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBmTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.bracketmatching.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.bracketmatching.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.editor.bracketmatching.services.BmTestLanguageGrammarAccess;

}
@parser::members {
	private BmTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(BmTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleFile
entryRuleFile
:
{ before(grammarAccess.getFileRule()); }
	 ruleFile
{ after(grammarAccess.getFileRule()); } 
	 EOF 
;

// Rule File
ruleFile 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFileAccess().getExpressionAssignment()); }
		(rule__File__ExpressionAssignment)*
		{ after(grammarAccess.getFileAccess().getExpressionAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExpression
entryRuleExpression
:
{ before(grammarAccess.getExpressionRule()); }
	 ruleExpression
{ after(grammarAccess.getExpressionRule()); } 
	 EOF 
;

// Rule Expression
ruleExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExpressionAccess().getAlternatives()); }
		(rule__Expression__Alternatives)
		{ after(grammarAccess.getExpressionAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSExpression
entryRuleSExpression
:
{ before(grammarAccess.getSExpressionRule()); }
	 ruleSExpression
{ after(grammarAccess.getSExpressionRule()); } 
	 EOF 
;

// Rule SExpression
ruleSExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSExpressionAccess().getGroup()); }
		(rule__SExpression__Group__0)
		{ after(grammarAccess.getSExpressionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAtom
entryRuleAtom
:
{ before(grammarAccess.getAtomRule()); }
	 ruleAtom
{ after(grammarAccess.getAtomRule()); } 
	 EOF 
;

// Rule Atom
ruleAtom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAtomAccess().getValueAssignment()); }
		(rule__Atom__ValueAssignment)
		{ after(grammarAccess.getAtomAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVALUE
entryRuleVALUE
:
{ before(grammarAccess.getVALUERule()); }
	 ruleVALUE
{ after(grammarAccess.getVALUERule()); } 
	 EOF 
;

// Rule VALUE
ruleVALUE 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVALUEAccess().getAlternatives()); }
		(rule__VALUE__Alternatives)
		{ after(grammarAccess.getVALUEAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExpressionAccess().getSExpressionParserRuleCall_0()); }
		ruleSExpression
		{ after(grammarAccess.getExpressionAccess().getSExpressionParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getExpressionAccess().getAtomParserRuleCall_1()); }
		ruleAtom
		{ after(grammarAccess.getExpressionAccess().getAtomParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getExpressionAccess().getGroup_2()); }
		(rule__Expression__Group_2__0)
		{ after(grammarAccess.getExpressionAccess().getGroup_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSExpressionAccess().getGroup_1_0()); }
		(rule__SExpression__Group_1_0__0)
		{ after(grammarAccess.getSExpressionAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getSExpressionAccess().getGroup_1_1()); }
		(rule__SExpression__Group_1_1__0)
		{ after(grammarAccess.getSExpressionAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VALUE__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVALUEAccess().getIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getVALUEAccess().getIDTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getVALUEAccess().getINTTerminalRuleCall_1()); }
		RULE_INT
		{ after(grammarAccess.getVALUEAccess().getINTTerminalRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_2()); }
		RULE_STRING
		{ after(grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expression__Group_2__0__Impl
	rule__Expression__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressionAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getExpressionAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expression__Group_2__1__Impl
	rule__Expression__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressionAccess().getExpressionParserRuleCall_2_1()); }
	ruleExpression
	{ after(grammarAccess.getExpressionAccess().getExpressionParserRuleCall_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Expression__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExpressionAccess().getRightSquareBracketKeyword_2_2()); }
	']'
	{ after(grammarAccess.getExpressionAccess().getRightSquareBracketKeyword_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SExpression__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group__0__Impl
	rule__SExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getSExpressionAction_0()); }
	()
	{ after(grammarAccess.getSExpressionAccess().getSExpressionAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getAlternatives_1()); }
	(rule__SExpression__Alternatives_1)
	{ after(grammarAccess.getSExpressionAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SExpression__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_0__0__Impl
	rule__SExpression__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getLeftParenthesisKeyword_1_0_0()); }
	'('
	{ after(grammarAccess.getSExpressionAccess().getLeftParenthesisKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_0__1__Impl
	rule__SExpression__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getElementAssignment_1_0_1()); }
	(rule__SExpression__ElementAssignment_1_0_1)*
	{ after(grammarAccess.getSExpressionAccess().getElementAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getRightParenthesisKeyword_1_0_2()); }
	')'
	{ after(grammarAccess.getSExpressionAccess().getRightParenthesisKeyword_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SExpression__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_1__0__Impl
	rule__SExpression__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getBeginKeyword_1_1_0()); }
	'begin'
	{ after(grammarAccess.getSExpressionAccess().getBeginKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_1__1__Impl
	rule__SExpression__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getElementAssignment_1_1_1()); }
	(rule__SExpression__ElementAssignment_1_1_1)*
	{ after(grammarAccess.getSExpressionAccess().getElementAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SExpression__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSExpressionAccess().getEndKeyword_1_1_2()); }
	'end'
	{ after(grammarAccess.getSExpressionAccess().getEndKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__File__ExpressionAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFileAccess().getExpressionExpressionParserRuleCall_0()); }
		ruleExpression
		{ after(grammarAccess.getFileAccess().getExpressionExpressionParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__ElementAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSExpressionAccess().getElementExpressionParserRuleCall_1_0_1_0()); }
		ruleExpression
		{ after(grammarAccess.getSExpressionAccess().getElementExpressionParserRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SExpression__ElementAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSExpressionAccess().getElementExpressionParserRuleCall_1_1_1_0()); }
		ruleExpression
		{ after(grammarAccess.getSExpressionAccess().getElementExpressionParserRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Atom__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAtomAccess().getValueVALUEParserRuleCall_0()); }
		ruleVALUE
		{ after(grammarAccess.getAtomAccess().getValueVALUEParserRuleCall_0()); }
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
