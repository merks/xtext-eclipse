/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalTwoParametersTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.TwoParametersTestLanguageGrammarAccess;

}
@parser::members {
	private TwoParametersTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(TwoParametersTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleParserRuleParameters
entryRuleParserRuleParameters
:
{ before(grammarAccess.getParserRuleParametersRule()); }
	 ruleParserRuleParameters
{ after(grammarAccess.getParserRuleParametersRule()); } 
	 EOF 
;

// Rule ParserRuleParameters
ruleParserRuleParameters 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup()); }
		(rule__ParserRuleParameters__Group__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScenario6
entryRuleScenario6
:
{ before(grammarAccess.getScenario6Rule()); }
	 ruleScenario6
{ after(grammarAccess.getScenario6Rule()); } 
	 EOF 
;

// Rule Scenario6
ruleScenario6 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario6Access().getSecondAssignment_1_0(), 0
		); }
		(rule__Scenario6__SecondAssignment_1_0)
		{ after(grammarAccess.getScenario6Access().getSecondAssignment_1_0(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario6
norm3_Scenario6 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario6Access().getFirstAssignment_0_0(), 3
		); }
		(norm3_Scenario6__FirstAssignment_0_0)
		{ after(grammarAccess.getScenario6Access().getFirstAssignment_0_0(), 3
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScenario7
entryRuleScenario7
:
{ before(grammarAccess.getScenario7Rule()); }
	 ruleScenario7
{ after(grammarAccess.getScenario7Rule()); } 
	 EOF 
;

// Rule Scenario7
ruleScenario7 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario7Access().getFirstAssignment(), 0
		); }
		(rule__Scenario7__FirstAssignment)
		{ after(grammarAccess.getScenario7Access().getFirstAssignment(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario7
norm2_Scenario7 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario7Access().getFirstAssignment(), 2
		); }
		(norm2_Scenario7__FirstAssignment)
		{ after(grammarAccess.getScenario7Access().getFirstAssignment(), 2
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario7
norm3_Scenario7 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario7Access().getFirstAssignment(), 3
		); }
		(norm3_Scenario7__FirstAssignment)
		{ after(grammarAccess.getScenario7Access().getFirstAssignment(), 3
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario8
norm2_Scenario8 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario8Access().getAlternatives(), 2
		); }
		(norm2_Scenario8__Alternatives)
		{ after(grammarAccess.getScenario8Access().getAlternatives(), 2
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario8
norm3_Scenario8 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario8Access().getAlternatives(), 3
		); }
		(norm3_Scenario8__Alternatives)
		{ after(grammarAccess.getScenario8Access().getAlternatives(), 3
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScenario9
entryRuleScenario9
:
{ before(grammarAccess.getScenario9Rule()); }
	 ruleScenario9
{ after(grammarAccess.getScenario9Rule()); } 
	 EOF 
;

// Rule Scenario9
ruleScenario9 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario9Access().getGroup(), 0
		); }
		(rule__Scenario9__Group__0)
		{ after(grammarAccess.getScenario9Access().getGroup(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario9
norm3_Scenario9 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario9Access().getGroup(), 3
		); }
		(norm3_Scenario9__Group__0)
		{ after(grammarAccess.getScenario9Access().getGroup(), 3
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario10
norm1_Scenario10 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario10Access().getAlternatives(), 1
		); }
		(norm1_Scenario10__Alternatives)
		{ after(grammarAccess.getScenario10Access().getAlternatives(), 1
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario10
norm3_Scenario10 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario10Access().getAlternatives(), 3
		); }
		(norm3_Scenario10__Alternatives)
		{ after(grammarAccess.getScenario10Access().getAlternatives(), 3
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIdOrKeyword2
entryRuleIdOrKeyword2
:
{ before(grammarAccess.getIdOrKeyword2Rule()); }
	 ruleIdOrKeyword2
{ after(grammarAccess.getIdOrKeyword2Rule()); } 
	 EOF 
;

// Rule IdOrKeyword2
ruleIdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 0
		); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword2
norm1_IdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 1
		); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 1
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword2
norm2_IdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 2
		); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1(), 2
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword2
norm5_IdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 5
		); }
		(norm5_IdOrKeyword2__Alternatives)
		{ after(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 5
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword2
norm6_IdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 6
		); }
		(norm6_IdOrKeyword2__Alternatives)
		{ after(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 6
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword2
norm7_IdOrKeyword2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 7
		); }
		(norm7_IdOrKeyword2__Alternatives)
		{ after(grammarAccess.getIdOrKeyword2Access().getAlternatives(), 7
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario5Body
ruleScenario5Body 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario5BodyAccess().getFragmentKeyword_1_0(), 0
		); }
		('fragment')?
		{ after(grammarAccess.getScenario5BodyAccess().getFragmentKeyword_1_0(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule Scenario5Body
norm1_Scenario5Body 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScenario5BodyAccess().getIncludeKeyword_0_0(), 1
		); }
		'include'
		{ after(grammarAccess.getScenario5BodyAccess().getIncludeKeyword_0_0(), 1
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIdOrKeyword
entryRuleIdOrKeyword
:
{ before(grammarAccess.getIdOrKeywordRule()); }
	 ruleIdOrKeyword
{ after(grammarAccess.getIdOrKeywordRule()); } 
	 EOF 
;

// Rule IdOrKeyword
ruleIdOrKeyword 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1(), 0
		); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1(), 0
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule IdOrKeyword
norm1_IdOrKeyword 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdOrKeywordAccess().getAlternatives(), 1
		); }
		(norm1_IdOrKeyword__Alternatives)
		{ after(grammarAccess.getIdOrKeywordAccess().getAlternatives(), 1
		); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_0()); }
		(rule__ParserRuleParameters__Group_1_0__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_1()); }
		(rule__ParserRuleParameters__Group_1_1__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_1()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_2()); }
		(rule__ParserRuleParameters__Group_1_2__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_2()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_3()); }
		(rule__ParserRuleParameters__Group_1_3__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_3()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_4()); }
		(rule__ParserRuleParameters__Group_1_4__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_4()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_5()); }
		(rule__ParserRuleParameters__Group_1_5__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_5()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_6()); }
		(rule__ParserRuleParameters__Group_1_6__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_6()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_7()); }
		(rule__ParserRuleParameters__Group_1_7__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_7()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_8()); }
		(rule__ParserRuleParameters__Group_1_8__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_8()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_9()); }
		(rule__ParserRuleParameters__Group_1_9__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_9()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_10()); }
		(rule__ParserRuleParameters__Group_1_10__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_10()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_11()); }
		(rule__ParserRuleParameters__Group_1_11__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_11()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_12()); }
		(rule__ParserRuleParameters__Group_1_12__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_12()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_13()); }
		(rule__ParserRuleParameters__Group_1_13__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_13()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Alternatives_1_8_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_8_1_0()); }
		(rule__ParserRuleParameters__ScenarioAssignment_1_8_1_0)
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_8_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_8_1_1()); }
		(rule__ParserRuleParameters__Group_1_8_1_1__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_8_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Alternatives_1_9_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_9_1_0()); }
		(rule__ParserRuleParameters__ScenarioAssignment_1_9_1_0)
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_9_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_9_1_1()); }
		(rule__ParserRuleParameters__Group_1_9_1_1__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_9_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Alternatives_1_10_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_10_1_0()); }
		(rule__ParserRuleParameters__ScenarioAssignment_1_10_1_0)
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_10_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_10_1_1()); }
		(rule__ParserRuleParameters__Group_1_10_1_1__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_10_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Alternatives_1_11_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_11_1_0()); }
		(rule__ParserRuleParameters__ScenarioAssignment_1_11_1_0)
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_11_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_11_1_1()); }
		(rule__ParserRuleParameters__Group_1_11_1_1__0)
		{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_11_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm2_Scenario8__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getFirstAssignment_0()); }
		(norm2_Scenario8__FirstAssignment_0)
		{ after(grammarAccess.getScenario8Access().getFirstAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getScenario8Access().getSecondAssignment_1()); }
		(norm2_Scenario8__SecondAssignment_1)
		{ after(grammarAccess.getScenario8Access().getSecondAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario8__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getFirstAssignment_0()); }
		(norm3_Scenario8__FirstAssignment_0)
		{ after(grammarAccess.getScenario8Access().getFirstAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getScenario8Access().getSecondAssignment_1()); }
		(norm3_Scenario8__SecondAssignment_1)
		{ after(grammarAccess.getScenario8Access().getSecondAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getGroup_1()); }
		(norm1_Scenario10__Group_1__0)
		{ after(grammarAccess.getScenario10Access().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getScenario10Access().getGroup_2()); }
		(norm1_Scenario10__Group_2__0)
		{ after(grammarAccess.getScenario10Access().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getScenario10Access().getGroup_3()); }
		(norm1_Scenario10__Group_3__0)
		{ after(grammarAccess.getScenario10Access().getGroup_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getGroup_0()); }
		(norm3_Scenario10__Group_0__0)
		{ after(grammarAccess.getScenario10Access().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getScenario10Access().getGroup_1()); }
		(norm3_Scenario10__Group_1__0)
		{ after(grammarAccess.getScenario10Access().getGroup_1()); }
	)
	|
	(
		{ before(grammarAccess.getScenario10Access().getGroup_2()); }
		(norm3_Scenario10__Group_2__0)
		{ after(grammarAccess.getScenario10Access().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getScenario10Access().getGroup_3()); }
		(norm3_Scenario10__Group_3__0)
		{ after(grammarAccess.getScenario10Access().getGroup_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm5_IdOrKeyword2__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
		'keyword'
		{ after(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm6_IdOrKeyword2__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
		'keyword'
		{ after(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm7_IdOrKeyword2__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
		'keyword'
		{ after(grammarAccess.getIdOrKeyword2Access().getKeywordKeyword_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeyword2Access().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm1_IdOrKeyword__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdOrKeywordAccess().getKeywordKeyword_0_0()); }
		'keyword'
		{ after(grammarAccess.getIdOrKeywordAccess().getKeywordKeyword_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1()); }
		RULE_ID
		{ after(grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group__0__Impl
	rule__ParserRuleParameters__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getParserRuleParametersAction_0()); }
	()
	{ after(grammarAccess.getParserRuleParametersAccess().getParserRuleParametersAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getAlternatives_1()); }
	(rule__ParserRuleParameters__Alternatives_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_0__0__Impl
	rule__ParserRuleParameters__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneKeyword_1_0_0()); }
	'#1'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_0_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_0_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_1__0__Impl
	rule__ParserRuleParameters__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitTwoKeyword_1_1_0()); }
	'#2'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitTwoKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_1_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_1_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_2__0__Impl
	rule__ParserRuleParameters__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitThreeKeyword_1_2_0()); }
	'#3'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitThreeKeyword_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_2_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_2_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_3__0__Impl
	rule__ParserRuleParameters__Group_1_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFourKeyword_1_3_0()); }
	'#4'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFourKeyword_1_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_3_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_3_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_4__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_4_0()); }
	(rule__ParserRuleParameters__Group_1_4_0__0)
	{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_4_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_4_0__0__Impl
	rule__ParserRuleParameters__Group_1_4_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_4_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFiveKeyword_1_4_0_0()); }
	'#5'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFiveKeyword_1_4_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_4_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_4_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_4_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_4_0_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_4_0_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_4_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_5__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getGroup_1_5_0()); }
	(rule__ParserRuleParameters__Group_1_5_0__0)
	{ after(grammarAccess.getParserRuleParametersAccess().getGroup_1_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_5_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_5_0__0__Impl
	rule__ParserRuleParameters__Group_1_5_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_5_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSixKeyword_1_5_0_0()); }
	'#6'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSixKeyword_1_5_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_5_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_5_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_5_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_5_0_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_5_0_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_5_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_6__0__Impl
	rule__ParserRuleParameters__Group_1_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSevenKeyword_1_6_0()); }
	'#7'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSevenKeyword_1_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_6_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_6_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_7__0__Impl
	rule__ParserRuleParameters__Group_1_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitEightKeyword_1_7_0()); }
	'#8'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitEightKeyword_1_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_7_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_7_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_8__0__Impl
	rule__ParserRuleParameters__Group_1_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitNineKeyword_1_8_0()); }
	'#9'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitNineKeyword_1_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_8__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_8_1()); }
	(rule__ParserRuleParameters__Alternatives_1_8_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_8_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_8_1_1__0__Impl
	rule__ParserRuleParameters__Group_1_8_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_8_1_1_0()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_8_1_1_0)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_8_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_8_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_8_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_8_1_1_1()); }
	('trailing')?
	{ after(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_8_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_9__0__Impl
	rule__ParserRuleParameters__Group_1_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitZeroKeyword_1_9_0()); }
	'#10'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitZeroKeyword_1_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_9_1()); }
	(rule__ParserRuleParameters__Alternatives_1_9_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_9_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_9_1_1__0__Impl
	rule__ParserRuleParameters__Group_1_9_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_9_1_1_0()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_9_1_1_0)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_9_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_9_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_9_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_9_1_1_1()); }
	('trailing')?
	{ after(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_9_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_10__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_10__0__Impl
	rule__ParserRuleParameters__Group_1_10__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitOneKeyword_1_10_0()); }
	'#11'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitOneKeyword_1_10_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_10__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_10_1()); }
	(rule__ParserRuleParameters__Alternatives_1_10_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_10_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_10_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_10_1_1__0__Impl
	rule__ParserRuleParameters__Group_1_10_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_10_1_1_0()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_10_1_1_0)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_10_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_10_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_10_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_10_1_1_1()); }
	('trailing')?
	{ after(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_10_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_11__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_11__0__Impl
	rule__ParserRuleParameters__Group_1_11__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitTwoKeyword_1_11_0()); }
	'#12'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitTwoKeyword_1_11_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_11__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_11_1()); }
	(rule__ParserRuleParameters__Alternatives_1_11_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getAlternatives_1_11_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_11_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_11_1_1__0__Impl
	rule__ParserRuleParameters__Group_1_11_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_11_1_1_0()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_11_1_1_0)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_11_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_11_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_11_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_11_1_1_1()); }
	('trailing')?
	{ after(grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_11_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_12__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_12__0__Impl
	rule__ParserRuleParameters__Group_1_12__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_12__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitThreeKeyword_1_12_0()); }
	'#13'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitThreeKeyword_1_12_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_12__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_12__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_12__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_12_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_12_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_12_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__Group_1_13__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_13__0__Impl
	rule__ParserRuleParameters__Group_1_13__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_13__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitFourKeyword_1_13_0()); }
	'#14'
	{ after(grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitFourKeyword_1_13_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_13__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ParserRuleParameters__Group_1_13__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__Group_1_13__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_13_1()); }
	(rule__ParserRuleParameters__ScenarioAssignment_1_13_1)
	{ after(grammarAccess.getParserRuleParametersAccess().getScenarioAssignment_1_13_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Scenario9__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scenario9__Group__0__Impl
	rule__Scenario9__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario9__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario9Access().getSecondAssignment_0()); }
	(rule__Scenario9__SecondAssignment_0)
	{ after(grammarAccess.getScenario9Access().getSecondAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario9__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scenario9__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario9__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario9Access().getScenario4Keyword_1()); }
	'scenario4'
	{ after(grammarAccess.getScenario9Access().getScenario4Keyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm3_Scenario9__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario9__Group__0__Impl
	norm3_Scenario9__Group__1
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario9__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario9Access().getSecondAssignment_0()); }
	(norm3_Scenario9__SecondAssignment_0)
	{ after(grammarAccess.getScenario9Access().getSecondAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario9__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario9__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario9__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario9Access().getScenario4Keyword_1()); }
	'scenario4'
	{ after(grammarAccess.getScenario9Access().getScenario4Keyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm1_Scenario10__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_1__0__Impl
	norm1_Scenario10__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_1_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getTrailingKeyword_1_1()); }
	'trailing'
	{ after(grammarAccess.getScenario10Access().getTrailingKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm1_Scenario10__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_2__0__Impl
	norm1_Scenario10__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_2_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_2__1__Impl
	norm1_Scenario10__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5Keyword_2_1()); }
	'scenario5'
	{ after(grammarAccess.getScenario10Access().getScenario5Keyword_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_2__2__Impl
	norm1_Scenario10__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getFirstAssignment_2_3()); }
	(norm1_Scenario10__FirstAssignment_2_3)
	{ after(grammarAccess.getScenario10Access().getFirstAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getSecondAssignment_2_4()); }
	(norm1_Scenario10__SecondAssignment_2_4)
	{ after(grammarAccess.getScenario10Access().getSecondAssignment_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm1_Scenario10__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_3__0__Impl
	norm1_Scenario10__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_3_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_3__1__Impl
	norm1_Scenario10__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5Keyword_3_1()); }
	'scenario5'
	{ after(grammarAccess.getScenario10Access().getScenario5Keyword_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_3__2__Impl
	norm1_Scenario10__Group_3__3
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getFragmentKeyword_3_2()); }
	'fragment'
	{ after(grammarAccess.getScenario10Access().getFragmentKeyword_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__3
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_3__3__Impl
	norm1_Scenario10__Group_3__4
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5BodyParserRuleCall_3_3()); }
	ruleScenario5Body
	{ after(grammarAccess.getScenario10Access().getScenario5BodyParserRuleCall_3_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__4
	@init {
		int stackSize = keepStackSize();
	}
:
	norm1_Scenario10__Group_3__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__Group_3__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getTrailingKeyword_3_4()); }
	'trailing'
	{ after(grammarAccess.getScenario10Access().getTrailingKeyword_3_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm3_Scenario10__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_0__0__Impl
	norm3_Scenario10__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_0_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getIncludeKeyword_0_1()); }
	'include'
	{ after(grammarAccess.getScenario10Access().getIncludeKeyword_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm3_Scenario10__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_1__0__Impl
	norm3_Scenario10__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_1_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getTrailingKeyword_1_1()); }
	'trailing'
	{ after(grammarAccess.getScenario10Access().getTrailingKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm3_Scenario10__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_2__0__Impl
	norm3_Scenario10__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_2_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_2__1__Impl
	norm3_Scenario10__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5Keyword_2_1()); }
	'scenario5'
	{ after(grammarAccess.getScenario10Access().getScenario5Keyword_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_2__2__Impl
	norm3_Scenario10__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getIncludeKeyword_2_2_0()); }
	('include')?
	{ after(grammarAccess.getScenario10Access().getIncludeKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_2__3__Impl
	norm3_Scenario10__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getFirstAssignment_2_3()); }
	(norm3_Scenario10__FirstAssignment_2_3)
	{ after(grammarAccess.getScenario10Access().getFirstAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_2__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getSecondAssignment_2_4()); }
	(norm3_Scenario10__SecondAssignment_2_4)
	{ after(grammarAccess.getScenario10Access().getSecondAssignment_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


norm3_Scenario10__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_3__0__Impl
	norm3_Scenario10__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenarioAction_3_0()); }
	()
	{ after(grammarAccess.getScenario10Access().getScenarioAction_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_3__1__Impl
	norm3_Scenario10__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5Keyword_3_1()); }
	'scenario5'
	{ after(grammarAccess.getScenario10Access().getScenario5Keyword_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_3__2__Impl
	norm3_Scenario10__Group_3__3
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getFragmentKeyword_3_2()); }
	'fragment'
	{ after(grammarAccess.getScenario10Access().getFragmentKeyword_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__3
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_3__3__Impl
	norm3_Scenario10__Group_3__4
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getScenario5BodyParserRuleCall_3_3()); }
	norm1_Scenario5Body
	{ after(grammarAccess.getScenario10Access().getScenario5BodyParserRuleCall_3_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__4
	@init {
		int stackSize = keepStackSize();
	}
:
	norm3_Scenario10__Group_3__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__Group_3__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScenario10Access().getTrailingKeyword_3_4()); }
	'trailing'
	{ after(grammarAccess.getScenario10Access().getTrailingKeyword_3_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ParserRuleParameters__ScenarioAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario6ParserRuleCall_1_0_1_0()); }
		norm3_Scenario6
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario6ParserRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario6ParserRuleCall_1_1_1_0()); }
		ruleScenario6
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario6ParserRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_2_1_0()); }
		norm3_Scenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_3_1_0()); }
		norm2_Scenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_4_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_4_0_1_0()); }
		norm3_Scenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_4_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_5_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_5_0_1_0()); }
		ruleScenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_5_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario8ParserRuleCall_1_6_1_0()); }
		norm3_Scenario8
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario8ParserRuleCall_1_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario8ParserRuleCall_1_7_1_0()); }
		norm2_Scenario8
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario8ParserRuleCall_1_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_8_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_8_1_0_0()); }
		norm3_Scenario9
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_8_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_8_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_8_1_1_0_0()); }
		norm3_Scenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_8_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_9_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_9_1_0_0()); }
		norm3_Scenario9
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_9_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_9_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_9_1_1_0_0()); }
		ruleScenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_9_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_10_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_10_1_0_0()); }
		ruleScenario9
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_10_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_10_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_10_1_1_0_0()); }
		norm3_Scenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_10_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_11_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_11_1_0_0()); }
		ruleScenario9
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario9ParserRuleCall_1_11_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_11_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_11_1_1_0_0()); }
		ruleScenario7
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario7ParserRuleCall_1_11_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_12_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario10ParserRuleCall_1_12_1_0()); }
		norm1_Scenario10
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario10ParserRuleCall_1_12_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ParserRuleParameters__ScenarioAssignment_1_13_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParserRuleParametersAccess().getScenarioScenario10ParserRuleCall_1_13_1_0()); }
		norm3_Scenario10
		{ after(grammarAccess.getParserRuleParametersAccess().getScenarioScenario10ParserRuleCall_1_13_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario6__SecondAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario6Access().getSecondIDTerminalRuleCall_1_0_0()); }
		RULE_ID
		{ after(grammarAccess.getScenario6Access().getSecondIDTerminalRuleCall_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario6__FirstAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario6Access().getFirstIDTerminalRuleCall_0_0_0()); }
		RULE_ID
		{ after(grammarAccess.getScenario6Access().getFirstIDTerminalRuleCall_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario7__FirstAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
		ruleIdOrKeyword2
		{ after(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm2_Scenario7__FirstAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
		norm2_IdOrKeyword2
		{ after(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario7__FirstAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
		norm7_IdOrKeyword2
		{ after(grammarAccess.getScenario7Access().getFirstIdOrKeyword2ParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm2_Scenario8__FirstAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getFirstIdOrKeyword2ParserRuleCall_0_0()); }
		norm2_IdOrKeyword2
		{ after(grammarAccess.getScenario8Access().getFirstIdOrKeyword2ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm2_Scenario8__SecondAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
		(
			{ before(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
			'scenario3'
			{ after(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
		)
		{ after(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario8__FirstAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getFirstIdOrKeyword2ParserRuleCall_0_0()); }
		norm7_IdOrKeyword2
		{ after(grammarAccess.getScenario8Access().getFirstIdOrKeyword2ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario8__SecondAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
		(
			{ before(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
			'scenario3'
			{ after(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
		)
		{ after(grammarAccess.getScenario8Access().getSecondScenario3Keyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scenario9__SecondAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario9Access().getSecondIdOrKeyword2ParserRuleCall_0_0()); }
		ruleIdOrKeyword2
		{ after(grammarAccess.getScenario9Access().getSecondIdOrKeyword2ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario9__SecondAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario9Access().getSecondIdOrKeyword2ParserRuleCall_0_0()); }
		norm7_IdOrKeyword2
		{ after(grammarAccess.getScenario9Access().getSecondIdOrKeyword2ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__FirstAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getFirstIdOrKeywordParserRuleCall_2_3_0()); }
		norm1_IdOrKeyword
		{ after(grammarAccess.getScenario10Access().getFirstIdOrKeywordParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm1_Scenario10__SecondAssignment_2_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getSecondIdOrKeywordParserRuleCall_2_4_0()); }
		ruleIdOrKeyword
		{ after(grammarAccess.getScenario10Access().getSecondIdOrKeywordParserRuleCall_2_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__FirstAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getFirstIdOrKeywordParserRuleCall_2_3_0()); }
		norm1_IdOrKeyword
		{ after(grammarAccess.getScenario10Access().getFirstIdOrKeywordParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

norm3_Scenario10__SecondAssignment_2_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScenario10Access().getSecondIdOrKeywordParserRuleCall_2_4_0()); }
		ruleIdOrKeyword
		{ after(grammarAccess.getScenario10Access().getSecondIdOrKeywordParserRuleCall_2_4_0()); }
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
