/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalDatatypeRuleTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.DatatypeRuleTestLanguageGrammarAccess;

}

@parser::members {

 	private DatatypeRuleTestLanguageGrammarAccess grammarAccess;

    public InternalDatatypeRuleTestLanguageParser(TokenStream input, DatatypeRuleTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected DatatypeRuleTestLanguageGrammarAccess getGrammarAccess() {
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
	{
		newCompositeNode(grammarAccess.getModelAccess().getTypesParserRuleCall());
	}
	this_Types_0=ruleTypes
	{
		$current = $this_Types_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleTypes
entryRuleTypes returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypesRule()); }
	iv_ruleTypes=ruleTypes
	{ $current=$iv_ruleTypes.current; }
	EOF;

// Rule Types
ruleTypes returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTypesAccess().getTypesAction_0(),
					$current);
			}
		)
		otherlv_1='Types'
		{
			newLeafNode(otherlv_1, grammarAccess.getTypesAccess().getTypesKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTypesAccess().getTypesTypeParserRuleCall_2_0());
				}
				lv_types_2_0=ruleType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTypesRule());
					}
					add(
						$current,
						"types",
						lv_types_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.Type");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleType
entryRuleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeRule()); }
	iv_ruleType=ruleType
	{ $current=$iv_ruleType.current; }
	EOF;

// Rule Type
ruleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getTypeAccess().getSimpleTypeParserRuleCall_0());
		}
		this_SimpleType_0=ruleSimpleType
		{
			$current = $this_SimpleType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getTypeAccess().getCompositeTypeParserRuleCall_1());
		}
		this_CompositeType_1=ruleCompositeType
		{
			$current = $this_CompositeType_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleSimpleType
entryRuleSimpleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleTypeRule()); }
	iv_ruleSimpleType=ruleSimpleType
	{ $current=$iv_ruleSimpleType.current; }
	EOF;

// Rule SimpleType
ruleSimpleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Type'
		{
			newLeafNode(otherlv_0, grammarAccess.getSimpleTypeAccess().getTypeKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getSimpleTypeAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSimpleTypeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getSimpleTypeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRuleCompositeType
entryRuleCompositeType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCompositeTypeRule()); }
	iv_ruleCompositeType=ruleCompositeType
	{ $current=$iv_ruleCompositeType.current; }
	EOF;

// Rule CompositeType
ruleCompositeType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Composite'
		{
			newLeafNode(otherlv_0, grammarAccess.getCompositeTypeAccess().getCompositeKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getCompositeTypeAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCompositeTypeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2='base'
		{
			newLeafNode(otherlv_2, grammarAccess.getCompositeTypeAccess().getBaseKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCompositeTypeAccess().getBaseTypeCompositeTypeEntryParserRuleCall_3_0());
				}
				lv_baseType_3_0=ruleCompositeTypeEntry
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCompositeTypeRule());
					}
					set(
						$current,
						"baseType",
						lv_baseType_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage.CompositeTypeEntry");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getCompositeTypeAccess().getSemicolonKeyword_4());
		}
	)
;

// Entry rule entryRuleCompositeTypeEntry
entryRuleCompositeTypeEntry returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCompositeTypeEntryRule()); }
	iv_ruleCompositeTypeEntry=ruleCompositeTypeEntry
	{ $current=$iv_ruleCompositeTypeEntry.current; }
	EOF;

// Rule CompositeTypeEntry
ruleCompositeTypeEntry returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getCompositeTypeEntryRule());
				}
			}
			{
				newCompositeNode(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeCrossReference_0());
			}
			ruleTypeId
			{
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleTypeId
entryRuleTypeId returns [String current=null]:
	{ newCompositeNode(grammarAccess.getTypeIdRule()); }
	iv_ruleTypeId=ruleTypeId
	{ $current=$iv_ruleTypeId.current.getText(); }
	EOF;

// Rule TypeId
ruleTypeId returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getTypeIdAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='<'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getTypeIdAccess().getLessThanSignKeyword_1_0());
			}
			{
				newCompositeNode(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_1());
			}
			this_TypeId_2=ruleTypeId
			{
				$current.merge(this_TypeId_2);
			}
			{
				afterParserOrEnumRuleCall();
			}
			(
				kw=','
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getTypeIdAccess().getCommaKeyword_1_2_0());
				}
				{
					newCompositeNode(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_2_1());
				}
				this_TypeId_4=ruleTypeId
				{
					$current.merge(this_TypeId_4);
				}
				{
					afterParserOrEnumRuleCall();
				}
			)*
			kw='>'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getTypeIdAccess().getGreaterThanSignKeyword_1_3());
			}
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
