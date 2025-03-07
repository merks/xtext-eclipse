/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalRefactoringTestLanguage2;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.common.types.xtext.ui.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.common.types.xtext.ui.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.common.types.xtext.ui.services.RefactoringTestLanguage2GrammarAccess;

}
@parser::members {
	private RefactoringTestLanguage2GrammarAccess grammarAccess;

	public void setGrammarAccess(RefactoringTestLanguage2GrammarAccess grammarAccess) {
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

// Entry rule entryRuleEntry
entryRuleEntry
:
{ before(grammarAccess.getEntryRule()); }
	 ruleEntry
{ after(grammarAccess.getEntryRule()); } 
	 EOF 
;

// Rule Entry
ruleEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntryAccess().getModelParserRuleCall()); }
		ruleModel
		{ after(grammarAccess.getEntryAccess().getModelParserRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
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
		{ before(grammarAccess.getModelAccess().getReferenceHolderAssignment()); }
		(rule__Model__ReferenceHolderAssignment)*
		{ after(grammarAccess.getModelAccess().getReferenceHolderAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleReferenceHolder
entryRuleReferenceHolder
:
{ before(grammarAccess.getReferenceHolderRule()); }
	 ruleReferenceHolder
{ after(grammarAccess.getReferenceHolderRule()); } 
	 EOF 
;

// Rule ReferenceHolder
ruleReferenceHolder 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getGroup()); }
		(rule__ReferenceHolder__Group__0)
		{ after(grammarAccess.getReferenceHolderAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQN
entryRuleFQN
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN 
	@init {
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
}

rule__ReferenceHolder__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group__0__Impl
	rule__ReferenceHolder__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getNameAssignment_0()); }
	(rule__ReferenceHolder__NameAssignment_0)
	{ after(grammarAccess.getReferenceHolderAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReferenceHolder__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceAssignment_1()); }
	(rule__ReferenceHolder__DefaultReferenceAssignment_1)
	{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceAssignment_1()); }
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
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
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
	rule__FQN__Group__2
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

rule__FQN__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_2()); }
	(rule__FQN__Group_2__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_2()); }
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
	'.'
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
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_2__0__Impl
	rule__FQN__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getDollarSignKeyword_2_0()); }
	'$'
	{ after(grammarAccess.getFQNAccess().getDollarSignKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_2_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ReferenceHolderAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getReferenceHolderReferenceHolderParserRuleCall_0()); }
		ruleReferenceHolder
		{ after(grammarAccess.getModelAccess().getReferenceHolderReferenceHolderParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getReferenceHolderAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReferenceHolder__DefaultReferenceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeCrossReference_1_0()); }
		(
			{ before(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeFQNParserRuleCall_1_0_1()); }
			ruleFQN
			{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeFQNParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getReferenceHolderAccess().getDefaultReferenceJvmTypeCrossReference_1_0()); }
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
