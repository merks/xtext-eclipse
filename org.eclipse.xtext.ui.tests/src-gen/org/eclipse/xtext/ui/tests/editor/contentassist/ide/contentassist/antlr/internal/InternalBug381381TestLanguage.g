/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug381381TestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug381381TestLanguageGrammarAccess;

}
@parser::members {
	private Bug381381TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug381381TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getStmtAssignment()); }
		(rule__Model__StmtAssignment)
		{ after(grammarAccess.getModelAccess().getStmtAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCopyFieldNameToVariableStmt
entryRuleCopyFieldNameToVariableStmt
:
{ before(grammarAccess.getCopyFieldNameToVariableStmtRule()); }
	 ruleCopyFieldNameToVariableStmt
{ after(grammarAccess.getCopyFieldNameToVariableStmtRule()); } 
	 EOF 
;

// Rule CopyFieldNameToVariableStmt
ruleCopyFieldNameToVariableStmt 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup()); }
		(rule__CopyFieldNameToVariableStmt__Group__0)
		{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group__0__Impl
	rule__CopyFieldNameToVariableStmt__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getFIELDNAMETOVARIABLEKeyword_0()); }
	'FIELD-NAME-TO-VARIABLE'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getFIELDNAMETOVARIABLEKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1()); }
	(rule__CopyFieldNameToVariableStmt__UnorderedGroup_1)
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CopyFieldNameToVariableStmt__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__0__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_0()); }
	','
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__1__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getSCREENKeyword_1_0_1()); }
	'SCREEN'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getSCREENKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__2__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_0_2()); }
	'='
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__3__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLeftParenthesisKeyword_1_0_3()); }
	'('
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLeftParenthesisKeyword_1_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__4__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__5
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLineAssignment_1_0_4()); }
	(rule__CopyFieldNameToVariableStmt__LineAssignment_1_0_4)
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLineAssignment_1_0_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__5__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__6
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_5()); }
	','
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_0_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__6__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_0__7
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getColumnAssignment_1_0_6()); }
	(rule__CopyFieldNameToVariableStmt__ColumnAssignment_1_0_6)
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getColumnAssignment_1_0_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_0__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_0__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getRightParenthesisKeyword_1_0_7()); }
	')'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getRightParenthesisKeyword_1_0_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CopyFieldNameToVariableStmt__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_1__0__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_1_0()); }
	','
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_1__1__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getVARKeyword_1_1_1()); }
	'VAR'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getVARKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_1__2__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_1_2()); }
	'='
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getNameAssignment_1_1_3()); }
	(rule__CopyFieldNameToVariableStmt__NameAssignment_1_1_3)
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getNameAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CopyFieldNameToVariableStmt__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_2__0__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_2_0()); }
	','
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_2__1__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getTYPEKeyword_1_2_1()); }
	'TYPE'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getTYPEKeyword_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_2__2__Impl
	rule__CopyFieldNameToVariableStmt__Group_1_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_2_2()); }
	'='
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__Group_1_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__Group_1_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getREPLACEKeyword_1_2_3()); }
	'REPLACE'
	{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getREPLACEKeyword_1_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CopyFieldNameToVariableStmt__UnorderedGroup_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
	}
:
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__0
	{getUnorderedGroupHelper().canLeave(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1())}?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_0()); }
					(rule__CopyFieldNameToVariableStmt__Group_1_0__0)
					{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_1()); }
					(rule__CopyFieldNameToVariableStmt__Group_1_1__0)
					{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_2()); }
					(rule__CopyFieldNameToVariableStmt__Group_1_2__0)
					{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getGroup_1_2()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getCopyFieldNameToVariableStmtAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__Impl
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__Impl
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CopyFieldNameToVariableStmt__UnorderedGroup_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__StmtAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getStmtCopyFieldNameToVariableStmtParserRuleCall_0()); }
		ruleCopyFieldNameToVariableStmt
		{ after(grammarAccess.getModelAccess().getStmtCopyFieldNameToVariableStmtParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__LineAssignment_1_0_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLineINTTerminalRuleCall_1_0_4_0()); }
		RULE_INT
		{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getLineINTTerminalRuleCall_1_0_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__ColumnAssignment_1_0_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getColumnINTTerminalRuleCall_1_0_6_0()); }
		RULE_INT
		{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getColumnINTTerminalRuleCall_1_0_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CopyFieldNameToVariableStmt__NameAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCopyFieldNameToVariableStmtAccess().getNameIDTerminalRuleCall_1_1_3_0()); }
		RULE_ID
		{ after(grammarAccess.getCopyFieldNameToVariableStmtAccess().getNameIDTerminalRuleCall_1_1_3_0()); }
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
