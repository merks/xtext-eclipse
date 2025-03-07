/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug360834TestLanguage;

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
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug360834TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug360834TestLanguageGrammarAccess grammarAccess;

    public InternalBug360834TestLanguageParser(TokenStream input, Bug360834TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug360834TestLanguageGrammarAccess getGrammarAccess() {
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
			otherlv_0='alternative'
			{
				newLeafNode(otherlv_0, grammarAccess.getModelAccess().getAlternativeKeyword_0_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getElementAlternativeParserRuleCall_0_1_0());
					}
					lv_element_1_0=ruleAlternative
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"element",
							lv_element_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Alternative");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_2='unordered'
			{
				newLeafNode(otherlv_2, grammarAccess.getModelAccess().getUnorderedKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getElementUnorderedParserRuleCall_1_1_0());
					}
					lv_element_3_0=ruleUnordered
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"element",
							lv_element_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Unordered");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

// Entry rule entryRuleAlternative
entryRuleAlternative returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAlternativeRule()); }
	iv_ruleAlternative=ruleAlternative
	{ $current=$iv_ruleAlternative.current; }
	EOF;

// Rule Alternative
ruleAlternative returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='package'
		{
			newLeafNode(otherlv_0, grammarAccess.getAlternativeAccess().getPackageKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getAlternativeAccess().getNameFQNParserRuleCall_1_0());
				}
				lv_name_1_0=ruleFQN
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAlternativeRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.FQN");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getAlternativeAccess().getSemicolonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getAlternativeAccess().getRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0());
				}
				lv_rootDeclaration_3_0=ruleRecursiveClassDeclaration
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAlternativeRule());
					}
					set(
						$current,
						"rootDeclaration",
						lv_rootDeclaration_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.RecursiveClassDeclaration");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null]:
	{ newCompositeNode(grammarAccess.getFQNRule()); }
	iv_ruleFQN=ruleFQN
	{ $current=$iv_ruleFQN.current.getText(); }
	EOF;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
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
			newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;

// Entry rule entryRuleRecursiveClassDeclaration
entryRuleRecursiveClassDeclaration returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRecursiveClassDeclarationRule()); }
	iv_ruleRecursiveClassDeclaration=ruleRecursiveClassDeclaration
	{ $current=$iv_ruleRecursiveClassDeclaration.current; }
	EOF;

// Rule RecursiveClassDeclaration
ruleRecursiveClassDeclaration returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getRecursiveClassDeclarationAccess().getModifiersAlternativeClassModifiersParserRuleCall_0_0());
				}
				lv_modifiers_0_0=ruleAlternativeClassModifiers
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRecursiveClassDeclarationRule());
					}
					set(
						$current,
						"modifiers",
						lv_modifiers_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.AlternativeClassModifiers");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='class'
		{
			newLeafNode(otherlv_1, grammarAccess.getRecursiveClassDeclarationAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getRecursiveClassDeclarationAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRecursiveClassDeclarationRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getRecursiveClassDeclarationAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRecursiveClassDeclarationAccess().getMembersRecursiveClassDeclarationParserRuleCall_4_0());
				}
				lv_members_4_0=ruleRecursiveClassDeclaration
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRecursiveClassDeclarationRule());
					}
					add(
						$current,
						"members",
						lv_members_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.RecursiveClassDeclaration");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getRecursiveClassDeclarationAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleAlternativeClassModifiers
entryRuleAlternativeClassModifiers returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAlternativeClassModifiersRule()); }
	iv_ruleAlternativeClassModifiers=ruleAlternativeClassModifiers
	{ $current=$iv_ruleAlternativeClassModifiers.current; }
	EOF;

// Rule AlternativeClassModifiers
ruleAlternativeClassModifiers returns [EObject current=null]
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
					grammarAccess.getAlternativeClassModifiersAccess().getModifiersAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_final_1_0='final'
					{
						newLeafNode(lv_final_1_0, grammarAccess.getAlternativeClassModifiersAccess().getFinalFinalKeyword_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAlternativeClassModifiersRule());
						}
						setWithLastConsumed($current, "final", lv_final_1_0 != null, "final");
					}
				)
			)
			    |
			(
				(
					lv_abstract_2_0='abstract'
					{
						newLeafNode(lv_abstract_2_0, grammarAccess.getAlternativeClassModifiersAccess().getAbstractAbstractKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAlternativeClassModifiersRule());
						}
						setWithLastConsumed($current, "abstract", lv_abstract_2_0 != null, "abstract");
					}
				)
			)
			    |
			(
				(
					lv_extern_3_0='extern'
					{
						newLeafNode(lv_extern_3_0, grammarAccess.getAlternativeClassModifiersAccess().getExternExternKeyword_1_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAlternativeClassModifiersRule());
						}
						setWithLastConsumed($current, "extern", lv_extern_3_0 != null, "extern");
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getAlternativeClassModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0());
					}
					lv_visibility_4_0=ruleVisibility
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAlternativeClassModifiersRule());
						}
						set(
							$current,
							"visibility",
							lv_visibility_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Visibility");
						afterParserOrEnumRuleCall();
					}
				)
			)?
		)
	)
;

// Entry rule entryRuleUnordered
entryRuleUnordered returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getUnorderedRule()); }
	iv_ruleUnordered=ruleUnordered
	{ $current=$iv_ruleUnordered.current; }
	EOF;

// Rule Unordered
ruleUnordered returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='package'
		{
			newLeafNode(otherlv_0, grammarAccess.getUnorderedAccess().getPackageKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getUnorderedAccess().getNameFQNParserRuleCall_1_0());
				}
				lv_name_1_0=ruleFQN
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getUnorderedRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.FQN");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getUnorderedAccess().getSemicolonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getUnorderedAccess().getRootDeclarationSimpleClassDeclarationParserRuleCall_3_0());
				}
				lv_rootDeclaration_3_0=ruleSimpleClassDeclaration
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getUnorderedRule());
					}
					set(
						$current,
						"rootDeclaration",
						lv_rootDeclaration_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.SimpleClassDeclaration");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleSimpleClassDeclaration
entryRuleSimpleClassDeclaration returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleClassDeclarationRule()); }
	iv_ruleSimpleClassDeclaration=ruleSimpleClassDeclaration
	{ $current=$iv_ruleSimpleClassDeclaration.current; }
	EOF;

// Rule SimpleClassDeclaration
ruleSimpleClassDeclaration returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getSimpleClassDeclarationAccess().getModifiersUnorderedModifiersParserRuleCall_0_0());
				}
				lv_modifiers_0_0=ruleUnorderedModifiers
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSimpleClassDeclarationRule());
					}
					set(
						$current,
						"modifiers",
						lv_modifiers_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.UnorderedModifiers");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='class'
		{
			newLeafNode(otherlv_1, grammarAccess.getSimpleClassDeclarationAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getSimpleClassDeclarationAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSimpleClassDeclarationRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getSimpleClassDeclarationAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSimpleClassDeclarationAccess().getMembersClassMemberParserRuleCall_4_0());
				}
				lv_members_4_0=ruleClassMember
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSimpleClassDeclarationRule());
					}
					add(
						$current,
						"members",
						lv_members_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.ClassMember");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getSimpleClassDeclarationAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleClassMember
entryRuleClassMember returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getClassMemberRule()); }
	iv_ruleClassMember=ruleClassMember
	{ $current=$iv_ruleClassMember.current; }
	EOF;

// Rule ClassMember
ruleClassMember returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getClassMemberAccess().getModifiersUnorderedModifiersParserRuleCall_0_0());
				}
				lv_modifiers_0_0=ruleUnorderedModifiers
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getClassMemberRule());
					}
					set(
						$current,
						"modifiers",
						lv_modifiers_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.UnorderedModifiers");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='var'
		{
			newLeafNode(otherlv_1, grammarAccess.getClassMemberAccess().getVarKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getClassMemberAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getClassMemberRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3=';'
		{
			newLeafNode(otherlv_3, grammarAccess.getClassMemberAccess().getSemicolonKeyword_3());
		}
	)
;

// Entry rule entryRuleUnorderedModifiers
entryRuleUnorderedModifiers returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getUnorderedModifiersRule()); }
	iv_ruleUnorderedModifiers=ruleUnorderedModifiers
	{ $current=$iv_ruleUnorderedModifiers.current; }
	EOF;

// Rule UnorderedModifiers
ruleUnorderedModifiers returns [EObject current=null]
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
					grammarAccess.getUnorderedModifiersAccess().getModifiersAction_0(),
					$current);
			}
		)
		(
			(
				{ 
				  getUnorderedGroupHelper().enter(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 0);
					}
								({true}?=>((
									lv_final_2_0='final'
									{
										newLeafNode(lv_final_2_0, grammarAccess.getUnorderedModifiersAccess().getFinalFinalKeyword_1_0_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getUnorderedModifiersRule());
										}
										setWithLastConsumed($current, "final", lv_final_2_0 != null, "final");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 1);
					}
								({true}?=>((
									lv_abstract_3_0='abstract'
									{
										newLeafNode(lv_abstract_3_0, grammarAccess.getUnorderedModifiersAccess().getAbstractAbstractKeyword_1_1_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getUnorderedModifiersRule());
										}
										setWithLastConsumed($current, "abstract", lv_abstract_3_0 != null, "abstract");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 2);
					}
								({true}?=>((
									lv_extern_4_0='extern'
									{
										newLeafNode(lv_extern_4_0, grammarAccess.getUnorderedModifiersAccess().getExternExternKeyword_1_2_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getUnorderedModifiersRule());
										}
										setWithLastConsumed($current, "extern", lv_extern_4_0 != null, "extern");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 3);
					}
								({true}?=>((
									{
										newCompositeNode(grammarAccess.getUnorderedModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0());
									}
									lv_visibility_5_0=ruleVisibility
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getUnorderedModifiersRule());
										}
										set(
											$current,
											"visibility",
											lv_visibility_5_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage.Visibility");
										afterParserOrEnumRuleCall();
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
				}
		)
	)
;

// Rule Visibility
ruleVisibility returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='public'
			{
				$current = grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='protected'
			{
				$current = grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='private'
			{
				$current = grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_2());
			}
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
