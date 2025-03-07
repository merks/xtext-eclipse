/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.xmleditor.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.xmleditor.services.XmlGrammarAccess;

@SuppressWarnings("all")
public class XmlSyntacticSequencer extends AbstractSyntacticSequencer {

	protected XmlGrammarAccess grammarAccess;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (XmlGrammarAccess) access;
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (ruleCall.getRule() == grammarAccess.getATTR_EQRule())
			return getATTR_EQToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getTAG_CLOSERule())
			return getTAG_CLOSEToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getTAG_EMPTY_CLOSERule())
			return getTAG_EMPTY_CLOSEToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getTAG_END_OPENRule())
			return getTAG_END_OPENToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getTAG_START_OPENRule())
			return getTAG_START_OPENToken(semanticObject, ruleCall, node);
		return "";
	}
	
	/**
	 * terminal ATTR_EQ: '=';
	 */
	protected String getATTR_EQToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "=";
	}
	
	/**
	 * terminal TAG_CLOSE : '>' ;
	 */
	protected String getTAG_CLOSEToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return ">";
	}
	
	/**
	 * terminal TAG_EMPTY_CLOSE: '/>';
	 */
	protected String getTAG_EMPTY_CLOSEToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "/>";
	}
	
	/**
	 * terminal TAG_END_OPEN: '</';
	 */
	protected String getTAG_END_OPENToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "</";
	}
	
	/**
	 * terminal TAG_START_OPEN : '<' ;
	 */
	protected String getTAG_START_OPENToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "<";
	}
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

}
