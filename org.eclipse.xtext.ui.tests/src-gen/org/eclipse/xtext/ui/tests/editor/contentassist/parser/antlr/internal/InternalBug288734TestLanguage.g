/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug288734TestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug288734TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug288734TestLanguageGrammarAccess grammarAccess;

    public InternalBug288734TestLanguageParser(TokenStream input, Bug288734TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug288734TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getConstantsTConstantParserRuleCall_0());
			}
			lv_constants_0_0=ruleTConstant
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"constants",
					lv_constants_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TConstant");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleTConstant
entryRuleTConstant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTConstantRule()); }
	iv_ruleTConstant=ruleTConstant
	{ $current=$iv_ruleTConstant.current; }
	EOF;

// Rule TConstant
ruleTConstant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getTConstantAccess().getTStringConstantParserRuleCall_0());
		}
		this_TStringConstant_0=ruleTStringConstant
		{
			$current = $this_TStringConstant_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getTConstantAccess().getTIntegerConstantParserRuleCall_1());
		}
		this_TIntegerConstant_1=ruleTIntegerConstant
		{
			$current = $this_TIntegerConstant_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getTConstantAccess().getTBooleanConstantParserRuleCall_2());
		}
		this_TBooleanConstant_2=ruleTBooleanConstant
		{
			$current = $this_TBooleanConstant_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleTStringConstant
entryRuleTStringConstant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTStringConstantRule()); }
	iv_ruleTStringConstant=ruleTStringConstant
	{ $current=$iv_ruleTStringConstant.current; }
	EOF;

// Rule TStringConstant
ruleTStringConstant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getTStringConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleTAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTStringConstantRule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TAnnotation");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='constant'
		{
			newLeafNode(otherlv_1, grammarAccess.getTStringConstantAccess().getConstantKeyword_1());
		}
		otherlv_2='string'
		{
			newLeafNode(otherlv_2, grammarAccess.getTStringConstantAccess().getStringKeyword_2());
		}
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getTStringConstantAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTStringConstantRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleTIntegerConstant
entryRuleTIntegerConstant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTIntegerConstantRule()); }
	iv_ruleTIntegerConstant=ruleTIntegerConstant
	{ $current=$iv_ruleTIntegerConstant.current; }
	EOF;

// Rule TIntegerConstant
ruleTIntegerConstant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getTIntegerConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleTAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTIntegerConstantRule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TAnnotation");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='constant'
		{
			newLeafNode(otherlv_1, grammarAccess.getTIntegerConstantAccess().getConstantKeyword_1());
		}
		otherlv_2='integer'
		{
			newLeafNode(otherlv_2, grammarAccess.getTIntegerConstantAccess().getIntegerKeyword_2());
		}
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getTIntegerConstantAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTIntegerConstantRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleTBooleanConstant
entryRuleTBooleanConstant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTBooleanConstantRule()); }
	iv_ruleTBooleanConstant=ruleTBooleanConstant
	{ $current=$iv_ruleTBooleanConstant.current; }
	EOF;

// Rule TBooleanConstant
ruleTBooleanConstant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getTBooleanConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0());
				}
				lv_annotations_0_0=ruleTAnnotation
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTBooleanConstantRule());
					}
					add(
						$current,
						"annotations",
						lv_annotations_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TAnnotation");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='constant'
		{
			newLeafNode(otherlv_1, grammarAccess.getTBooleanConstantAccess().getConstantKeyword_1());
		}
		otherlv_2='boolean'
		{
			newLeafNode(otherlv_2, grammarAccess.getTBooleanConstantAccess().getBooleanKeyword_2());
		}
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getTBooleanConstantAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTBooleanConstantRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleTAnnotation
entryRuleTAnnotation returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTAnnotationRule()); }
	iv_ruleTAnnotation=ruleTAnnotation
	{ $current=$iv_ruleTAnnotation.current; }
	EOF;

// Rule TAnnotation
ruleTAnnotation returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='@desc'
		{
			newLeafNode(otherlv_0, grammarAccess.getTAnnotationAccess().getDescKeyword_0());
		}
		(
			(
				lv_description_1_0=RULE_STRING
				{
					newLeafNode(lv_description_1_0, grammarAccess.getTAnnotationAccess().getDescriptionSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTAnnotationRule());
					}
					setWithLastConsumed(
						$current,
						"description",
						lv_description_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
