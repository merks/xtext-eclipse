/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug288760TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug288760TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug288760TestLanguageGrammarAccess grammarAccess;

    public InternalBug288760TestLanguageParser(TokenStream input, Bug288760TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "WorkflowElement";
   	}

   	@Override
   	protected Bug288760TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleWorkflowElement
entryRuleWorkflowElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getWorkflowElementRule()); }
	iv_ruleWorkflowElement=ruleWorkflowElement
	{ $current=$iv_ruleWorkflowElement.current; }
	EOF;

// Rule WorkflowElement
ruleWorkflowElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					lv_name_0_0=RULE_START_TAG
					{
						newLeafNode(lv_name_0_0, grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_0_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getWorkflowElementRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_0_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.START_TAG");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_0_1_0());
					}
					lv_attributes_1_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getWorkflowElementRule());
						}
						add(
							$current,
							"attributes",
							lv_attributes_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			this_END_TAG_SHORT_2=RULE_END_TAG_SHORT
			{
				newLeafNode(this_END_TAG_SHORT_2, grammarAccess.getWorkflowElementAccess().getEND_TAG_SHORTTerminalRuleCall_0_2());
			}
		)
		    |
		(
			(
				(
					lv_name_3_0=RULE_START_TAG
					{
						newLeafNode(lv_name_3_0, grammarAccess.getWorkflowElementAccess().getNameSTART_TAGTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getWorkflowElementRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.START_TAG");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getWorkflowElementAccess().getAttributesAttributeParserRuleCall_1_1_0());
					}
					lv_attributes_4_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getWorkflowElementRule());
						}
						add(
							$current,
							"attributes",
							lv_attributes_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			this_GT_5=RULE_GT
			{
				newLeafNode(this_GT_5, grammarAccess.getWorkflowElementAccess().getGTTerminalRuleCall_1_2());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getWorkflowElementAccess().getChildrenWorkflowElementParserRuleCall_1_3_0());
					}
					lv_children_6_0=ruleWorkflowElement
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getWorkflowElementRule());
						}
						add(
							$current,
							"children",
							lv_children_6_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.WorkflowElement");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			(
				(
					lv_end_7_0=RULE_END_TAG
					{
						newLeafNode(lv_end_7_0, grammarAccess.getWorkflowElementAccess().getEndEND_TAGTerminalRuleCall_1_4_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getWorkflowElementRule());
						}
						setWithLastConsumed(
							$current,
							"end",
							lv_end_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.END_TAG");
					}
				)
			)
		)
	)
;

// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.ID");
				}
			)
		)
		this_EQ_1=RULE_EQ
		{
			newLeafNode(this_EQ_1, grammarAccess.getAttributeAccess().getEQTerminalRuleCall_1());
		}
		(
			(
				lv_value_2_0=RULE_STRING
				{
					newLeafNode(lv_value_2_0, grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage.STRING");
				}
			)
		)
	)
;

RULE_ML_COMMENT : '<!--' ( options {greedy=false;} : . )*'-->';

RULE_START_TAG : RULE_LT RULE_ID;

fragment RULE_LT : '<';

RULE_GT : '>';

RULE_EQ : '=';

RULE_END_TAG_SHORT : '/>';

fragment RULE_END_TAG_START : '</';

RULE_END_TAG : RULE_END_TAG_START RULE_ID RULE_GT;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
