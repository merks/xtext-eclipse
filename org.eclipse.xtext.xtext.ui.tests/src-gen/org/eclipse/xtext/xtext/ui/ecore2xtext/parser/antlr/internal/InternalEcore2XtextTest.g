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
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.xtext.ui.ecore2xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.xtext.ui.ecore2xtext.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.xtext.ui.ecore2xtext.services.Ecore2XtextTestGrammarAccess;

}

@parser::members {

 	private Ecore2XtextTestGrammarAccess grammarAccess;

    public InternalEcore2XtextTestParser(TokenStream input, Ecore2XtextTestGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Root";
   	}

   	@Override
   	protected Ecore2XtextTestGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleRoot
entryRuleRoot returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRootRule()); }
	iv_ruleRoot=ruleRoot
	{ $current=$iv_ruleRoot.current; }
	EOF;

// Rule Root
ruleRoot returns [EObject current=null]
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
					grammarAccess.getRootAccess().getRootAction_0(),
					$current);
			}
		)
		otherlv_1='Root'
		{
			newLeafNode(otherlv_1, grammarAccess.getRootAccess().getRootKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRootAccess().getNameINT0ParserRuleCall_2_0());
				}
				lv_name_2_0=ruleINT0
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRootRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.INT0");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			otherlv_4='classes'
			{
				newLeafNode(otherlv_4, grammarAccess.getRootAccess().getClassesKeyword_4_0());
			}
			otherlv_5='{'
			{
				newLeafNode(otherlv_5, grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_4_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_2_0());
					}
					lv_classes_6_0=ruleAbstract
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRootRule());
						}
						add(
							$current,
							"classes",
							lv_classes_6_0,
							"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Abstract");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_7=','
				{
					newLeafNode(otherlv_7, grammarAccess.getRootAccess().getCommaKeyword_4_3_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_3_1_0());
						}
						lv_classes_8_0=ruleAbstract
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getRootRule());
							}
							add(
								$current,
								"classes",
								lv_classes_8_0,
								"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Abstract");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_9='}'
			{
				newLeafNode(otherlv_9, grammarAccess.getRootAccess().getRightCurlyBracketKeyword_4_4());
			}
		)?
		(
			otherlv_10='concrete0'
			{
				newLeafNode(otherlv_10, grammarAccess.getRootAccess().getConcrete0Keyword_5_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getRootAccess().getConcrete0Concrete0ParserRuleCall_5_1_0());
					}
					lv_concrete0_11_0=ruleConcrete0
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRootRule());
						}
						set(
							$current,
							"concrete0",
							lv_concrete0_11_0,
							"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Concrete0");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_12='}'
		{
			newLeafNode(otherlv_12, grammarAccess.getRootAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRuleAbstract
entryRuleAbstract returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAbstractRule()); }
	iv_ruleAbstract=ruleAbstract
	{ $current=$iv_ruleAbstract.current; }
	EOF;

// Rule Abstract
ruleAbstract returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAbstractAccess().getConcrete0_ImplParserRuleCall_0());
		}
		this_Concrete0_Impl_0=ruleConcrete0_Impl
		{
			$current = $this_Concrete0_Impl_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractAccess().getConcrete1_ImplParserRuleCall_1());
		}
		this_Concrete1_Impl_1=ruleConcrete1_Impl
		{
			$current = $this_Concrete1_Impl_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractAccess().getDiamondInheritanceParserRuleCall_2());
		}
		this_DiamondInheritance_2=ruleDiamondInheritance
		{
			$current = $this_DiamondInheritance_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleConcrete0
entryRuleConcrete0 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConcrete0Rule()); }
	iv_ruleConcrete0=ruleConcrete0
	{ $current=$iv_ruleConcrete0.current; }
	EOF;

// Rule Concrete0
ruleConcrete0 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getConcrete0Access().getConcrete0_ImplParserRuleCall_0());
		}
		this_Concrete0_Impl_0=ruleConcrete0_Impl
		{
			$current = $this_Concrete0_Impl_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getConcrete0Access().getDiamondInheritanceParserRuleCall_1());
		}
		this_DiamondInheritance_1=ruleDiamondInheritance
		{
			$current = $this_DiamondInheritance_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleINT0
entryRuleINT0 returns [String current=null]:
	{ newCompositeNode(grammarAccess.getINT0Rule()); }
	iv_ruleINT0=ruleINT0
	{ $current=$iv_ruleINT0.current.getText(); }
	EOF;

// Rule INT0
ruleINT0 returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	kw='INT'
	{
		$current.merge(kw);
		newLeafNode(kw, grammarAccess.getINT0Access().getINTKeyword());
	}
;

// Entry rule entryRuleConcrete0_Impl
entryRuleConcrete0_Impl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConcrete0_ImplRule()); }
	iv_ruleConcrete0_Impl=ruleConcrete0_Impl
	{ $current=$iv_ruleConcrete0_Impl.current; }
	EOF;

// Rule Concrete0_Impl
ruleConcrete0_Impl returns [EObject current=null]
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
					grammarAccess.getConcrete0_ImplAccess().getConcrete0Action_0(),
					$current);
			}
		)
		otherlv_1='Concrete0'
		{
			newLeafNode(otherlv_1, grammarAccess.getConcrete0_ImplAccess().getConcrete0Keyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getConcrete0_ImplAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getConcrete0_ImplRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleEString
entryRuleEString returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEStringRule()); }
	iv_ruleEString=ruleEString
	{ $current=$iv_ruleEString.current.getText(); }
	EOF;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_STRING_0=RULE_STRING
		{
			$current.merge(this_STRING_0);
		}
		{
			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRuleConcrete1_Impl
entryRuleConcrete1_Impl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConcrete1_ImplRule()); }
	iv_ruleConcrete1_Impl=ruleConcrete1_Impl
	{ $current=$iv_ruleConcrete1_Impl.current; }
	EOF;

// Rule Concrete1_Impl
ruleConcrete1_Impl returns [EObject current=null]
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
					grammarAccess.getConcrete1_ImplAccess().getConcrete1Action_0(),
					$current);
			}
		)
		otherlv_1='Concrete1'
		{
			newLeafNode(otherlv_1, grammarAccess.getConcrete1_ImplAccess().getConcrete1Keyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getConcrete1_ImplAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getConcrete1_ImplRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleDiamondInheritance
entryRuleDiamondInheritance returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDiamondInheritanceRule()); }
	iv_ruleDiamondInheritance=ruleDiamondInheritance
	{ $current=$iv_ruleDiamondInheritance.current; }
	EOF;

// Rule DiamondInheritance
ruleDiamondInheritance returns [EObject current=null]
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
					grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceAction_0(),
					$current);
			}
		)
		otherlv_1='DiamondInheritance'
		{
			newLeafNode(otherlv_1, grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDiamondInheritanceAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDiamondInheritanceRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
					afterParserOrEnumRuleCall();
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
