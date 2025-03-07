/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.bracketmatching.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AlternativeAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.GroupAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.editor.bracketmatching.services.BmTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class BmTestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected BmTestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Expression_LeftSquareBracketKeyword_2_0_a;
	protected AbstractElementAlias match_SExpression___BeginKeyword_1_1_0_EndKeyword_1_1_2___or___LeftParenthesisKeyword_1_0_0_RightParenthesisKeyword_1_0_2__;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (BmTestLanguageGrammarAccess) access;
		match_Expression_LeftSquareBracketKeyword_2_0_a = new TokenAlias(true, true, grammarAccess.getExpressionAccess().getLeftSquareBracketKeyword_2_0());
		match_SExpression___BeginKeyword_1_1_0_EndKeyword_1_1_2___or___LeftParenthesisKeyword_1_0_0_RightParenthesisKeyword_1_0_2__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getSExpressionAccess().getBeginKeyword_1_1_0()), new TokenAlias(false, false, grammarAccess.getSExpressionAccess().getEndKeyword_1_1_2())), new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getSExpressionAccess().getLeftParenthesisKeyword_1_0_0()), new TokenAlias(false, false, grammarAccess.getSExpressionAccess().getRightParenthesisKeyword_1_0_2())));
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		return "";
	}
	
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_Expression_LeftSquareBracketKeyword_2_0_a.equals(syntax))
				emit_Expression_LeftSquareBracketKeyword_2_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_SExpression___BeginKeyword_1_1_0_EndKeyword_1_1_2___or___LeftParenthesisKeyword_1_0_0_RightParenthesisKeyword_1_0_2__.equals(syntax))
				emit_SExpression___BeginKeyword_1_1_0_EndKeyword_1_1_2___or___LeftParenthesisKeyword_1_0_0_RightParenthesisKeyword_1_0_2__(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     '['*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) '(' element+=Expression
	 *     (rule start) (ambiguity) 'begin' element+=Expression
	 *     (rule start) (ambiguity) (('(' ')') | ('begin' 'end')) (rule start)
	 *     (rule start) (ambiguity) value=VALUE
	 
	 * </pre>
	 */
	protected void emit_Expression_LeftSquareBracketKeyword_2_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('(' ')') | ('begin' 'end')
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) '['* (ambiguity) (rule start)
	 *     (rule start) (ambiguity) (rule start)
	 
	 * </pre>
	 */
	protected void emit_SExpression___BeginKeyword_1_1_0_EndKeyword_1_1_2___or___LeftParenthesisKeyword_1_0_0_RightParenthesisKeyword_1_0_2__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
