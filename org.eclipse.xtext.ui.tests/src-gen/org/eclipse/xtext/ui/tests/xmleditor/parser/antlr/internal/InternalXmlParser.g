/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
parser grammar InternalXmlParser;

options {
	tokenVocab=InternalXmlLexer;
	superClass=AbstractInternalAntlrParser;
}

@header {
package org.eclipse.xtext.ui.tests.xmleditor.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.xmleditor.services.XmlGrammarAccess;

}

@members {

 	private XmlGrammarAccess grammarAccess;

    public InternalXmlParser(TokenStream input, XmlGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "XmlDocument";
   	}

   	@Override
   	protected XmlGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleXmlDocument
entryRuleXmlDocument returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXmlDocumentRule()); }
	iv_ruleXmlDocument=ruleXmlDocument
	{ $current=$iv_ruleXmlDocument.current; }
	EOF;

// Rule XmlDocument
ruleXmlDocument returns [EObject current=null]
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
					grammarAccess.getXmlDocumentAccess().getXmlDocumentAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getXmlDocumentAccess().getContentsContentParserRuleCall_1_0());
				}
				lv_contents_1_0=ruleContent
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getXmlDocumentRule());
					}
					add(
						$current,
						"contents",
						lv_contents_1_0,
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.Content");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleContent
entryRuleContent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getContentRule()); }
	iv_ruleContent=ruleContent
	{ $current=$iv_ruleContent.current; }
	EOF;

// Rule Content
ruleContent returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getContentAccess().getTagTagParserRuleCall_0_0());
				}
				lv_tag_0_0=ruleTag
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getContentRule());
					}
					set(
						$current,
						"tag",
						lv_tag_0_0,
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.Tag");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				lv_text_1_0=RULE_PCDATA
				{
					newLeafNode(lv_text_1_0, grammarAccess.getContentAccess().getTextPCDATATerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getContentRule());
					}
					setWithLastConsumed(
						$current,
						"text",
						lv_text_1_0,
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.PCDATA");
				}
			)
		)
	)
;

// Entry rule entryRuleTag
entryRuleTag returns [EObject current=null]@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}:
	{ newCompositeNode(grammarAccess.getTagRule()); }
	iv_ruleTag=ruleTag
	{ $current=$iv_ruleTag.current; }
	EOF;
finally {
	myHiddenTokenState.restore();
}

// Rule Tag
ruleTag returns [EObject current=null]
@init {
	enterRule();
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}
@after {
	leaveRule();
}:
	(
		this_TAG_START_OPEN_0=RULE_TAG_START_OPEN
		{
			newLeafNode(this_TAG_START_OPEN_0, grammarAccess.getTagAccess().getTAG_START_OPENTerminalRuleCall_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getTagAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTagRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getTagAccess().getAttributesAttributeParserRuleCall_2_0());
				}
				lv_attributes_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTagRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_2_0,
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			this_TAG_EMPTY_CLOSE_3=RULE_TAG_EMPTY_CLOSE
			{
				newLeafNode(this_TAG_EMPTY_CLOSE_3, grammarAccess.getTagAccess().getTAG_EMPTY_CLOSETerminalRuleCall_3_0());
			}
			    |
			(
				this_TAG_CLOSE_4=RULE_TAG_CLOSE
				{
					newLeafNode(this_TAG_CLOSE_4, grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getTagAccess().getContentsContentParserRuleCall_3_1_1_0());
						}
						lv_contents_5_0=ruleContent
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getTagRule());
							}
							add(
								$current,
								"contents",
								lv_contents_5_0,
								"org.eclipse.xtext.ui.tests.xmleditor.Xml.Content");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				this_TAG_END_OPEN_6=RULE_TAG_END_OPEN
				{
					newLeafNode(this_TAG_END_OPEN_6, grammarAccess.getTagAccess().getTAG_END_OPENTerminalRuleCall_3_1_2());
				}
				(
					(
						lv_closeName_7_0=RULE_ID
						{
							newLeafNode(lv_closeName_7_0, grammarAccess.getTagAccess().getCloseNameIDTerminalRuleCall_3_1_3_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getTagRule());
							}
							setWithLastConsumed(
								$current,
								"closeName",
								lv_closeName_7_0,
								"org.eclipse.xtext.ui.tests.xmleditor.Xml.ID");
						}
					)
				)
				this_TAG_CLOSE_8=RULE_TAG_CLOSE
				{
					newLeafNode(this_TAG_CLOSE_8, grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_4());
				}
			)
		)
	)
;
finally {
	myHiddenTokenState.restore();
}

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
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.ID");
				}
			)
		)
		this_ATTR_EQ_1=RULE_ATTR_EQ
		{
			newLeafNode(this_ATTR_EQ_1, grammarAccess.getAttributeAccess().getATTR_EQTerminalRuleCall_1());
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
						"org.eclipse.xtext.ui.tests.xmleditor.Xml.STRING");
				}
			)
		)
	)
;
