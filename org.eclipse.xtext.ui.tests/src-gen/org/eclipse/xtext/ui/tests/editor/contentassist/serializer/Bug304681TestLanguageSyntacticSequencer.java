/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug304681TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug304681TestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected Bug304681TestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Attribute2_SemicolonKeyword_3_1_or___LeftCurlyBracketKeyword_3_0_0_RightCurlyBracketKeyword_3_0_2__;
	protected AbstractElementAlias match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__a;
	protected AbstractElementAlias match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__p;
	protected AbstractElementAlias match_ConstraintDefinition___SemicolonKeyword_3_0_2_ParametersKeyword_3_0_0__a;
	protected AbstractElementAlias match_Object_OptionalLoopKeyword_5_6_0_a;
	protected AbstractElementAlias match_Object_OptionalLoopKeyword_5_6_0_p;
	protected AbstractElementAlias match_Object___AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a_BeforeKeyword_5_5_0__a;
	protected AbstractElementAlias match_Object___BeforeKeyword_5_5_0_AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a__a;
	protected AbstractElementAlias match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__a;
	protected AbstractElementAlias match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__p;
	protected AbstractElementAlias match_Object___OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p;
	protected AbstractElementAlias match_Object_____BeforeKeyword_5_5_0_or___OptionalLoopKeyword_5_6_0_p_BeforeKeyword_5_5_0_____AfterKeyword_5_5_2__a;
	protected AbstractElementAlias match_Object_____OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p_MandatoryLoopKeyword_5_7_0__q;
	protected AbstractElementAlias match_Reference2_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__;
	protected AbstractElementAlias match_Reference_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (Bug304681TestLanguageGrammarAccess) access;
		match_Attribute2_SemicolonKeyword_3_1_or___LeftCurlyBracketKeyword_3_0_0_RightCurlyBracketKeyword_3_0_2__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getAttribute2Access().getLeftCurlyBracketKeyword_3_0_0()), new TokenAlias(false, false, grammarAccess.getAttribute2Access().getRightCurlyBracketKeyword_3_0_2())), new TokenAlias(false, false, grammarAccess.getAttribute2Access().getSemicolonKeyword_3_1()));
		match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getParametersKeyword_3_0_0()), new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_0_2()));
		match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__p = new GroupAlias(true, false, new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getParametersKeyword_3_0_0()), new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_0_2()));
		match_ConstraintDefinition___SemicolonKeyword_3_0_2_ParametersKeyword_3_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_0_2()), new TokenAlias(false, false, grammarAccess.getConstraintDefinitionAccess().getParametersKeyword_3_0_0()));
		match_Object_OptionalLoopKeyword_5_6_0_a = new TokenAlias(true, true, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0());
		match_Object_OptionalLoopKeyword_5_6_0_p = new TokenAlias(true, false, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0());
		match_Object___AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a_BeforeKeyword_5_5_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()), new TokenAlias(true, true, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()));
		match_Object___BeforeKeyword_5_5_0_AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()), new TokenAlias(true, true, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()));
		match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2())));
		match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__p = new GroupAlias(true, false, new TokenAlias(false, false, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2())));
		match_Object___OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p = new GroupAlias(true, false, new TokenAlias(false, true, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2())));
		match_Object_____BeforeKeyword_5_5_0_or___OptionalLoopKeyword_5_6_0_p_BeforeKeyword_5_5_0_____AfterKeyword_5_5_2__a = new GroupAlias(true, true, new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(true, false, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0())), new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0())), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()));
		match_Object_____OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p_MandatoryLoopKeyword_5_7_0__q = new GroupAlias(false, true, new GroupAlias(true, false, new TokenAlias(false, true, grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()), new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()), new TokenAlias(false, false, grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()))), new TokenAlias(false, false, grammarAccess.getObjectAccess().getMandatoryLoopKeyword_5_7_0()));
		match_Reference2_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getReference2Access().getLeftCurlyBracketKeyword_4_0_0()), new TokenAlias(false, false, grammarAccess.getReference2Access().getRightCurlyBracketKeyword_4_0_2())), new TokenAlias(false, false, grammarAccess.getReference2Access().getSemicolonKeyword_4_1()));
		match_Reference_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getReferenceAccess().getLeftCurlyBracketKeyword_4_0_0()), new TokenAlias(false, false, grammarAccess.getReferenceAccess().getRightCurlyBracketKeyword_4_0_2())), new TokenAlias(false, false, grammarAccess.getReferenceAccess().getSemicolonKeyword_4_1()));
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
			if (match_Attribute2_SemicolonKeyword_3_1_or___LeftCurlyBracketKeyword_3_0_0_RightCurlyBracketKeyword_3_0_2__.equals(syntax))
				emit_Attribute2_SemicolonKeyword_3_1_or___LeftCurlyBracketKeyword_3_0_0_RightCurlyBracketKeyword_3_0_2__(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__a.equals(syntax))
				emit_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__p.equals(syntax))
				emit_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__p(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_ConstraintDefinition___SemicolonKeyword_3_0_2_ParametersKeyword_3_0_0__a.equals(syntax))
				emit_ConstraintDefinition___SemicolonKeyword_3_0_2_ParametersKeyword_3_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object_OptionalLoopKeyword_5_6_0_a.equals(syntax))
				emit_Object_OptionalLoopKeyword_5_6_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object_OptionalLoopKeyword_5_6_0_p.equals(syntax))
				emit_Object_OptionalLoopKeyword_5_6_0_p(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object___AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a_BeforeKeyword_5_5_0__a.equals(syntax))
				emit_Object___AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a_BeforeKeyword_5_5_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object___BeforeKeyword_5_5_0_AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a__a.equals(syntax))
				emit_Object___BeforeKeyword_5_5_0_AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__a.equals(syntax))
				emit_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__p.equals(syntax))
				emit_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__p(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object___OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p.equals(syntax))
				emit_Object___OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object_____BeforeKeyword_5_5_0_or___OptionalLoopKeyword_5_6_0_p_BeforeKeyword_5_5_0_____AfterKeyword_5_5_2__a.equals(syntax))
				emit_Object_____BeforeKeyword_5_5_0_or___OptionalLoopKeyword_5_6_0_p_BeforeKeyword_5_5_0_____AfterKeyword_5_5_2__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Object_____OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p_MandatoryLoopKeyword_5_7_0__q.equals(syntax))
				emit_Object_____OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p_MandatoryLoopKeyword_5_7_0__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Reference2_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__.equals(syntax))
				emit_Reference2_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_Reference_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__.equals(syntax))
				emit_Reference_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('{' '}') | ';'
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_Attribute2_SemicolonKeyword_3_1_or___LeftCurlyBracketKeyword_3_0_0_RightCurlyBracketKeyword_3_0_2__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('parameters' ';')*
	 *
	 * This ambiguous syntax occurs at:
	 *     message=STRING ';' (ambiguity) 'message' message=STRING
	 *     message=STRING ';' (ambiguity) '}' (rule end)
	 *     parameters+=STRING ';' (ambiguity) 'message' message=STRING
	 *     parameters+=STRING ';' (ambiguity) '}' (rule end)
	 *     type=ID '{' (ambiguity) 'message' message=STRING
	 
	 * </pre>
	 */
	protected void emit_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('parameters' ';')+
	 *
	 * This ambiguous syntax occurs at:
	 *     type=ID '{' (ambiguity) '}' (rule end)
	 
	 * </pre>
	 */
	protected void emit_ConstraintDefinition___ParametersKeyword_3_0_0_SemicolonKeyword_3_0_2__p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     (';' 'parameters')*
	 *
	 * This ambiguous syntax occurs at:
	 *     message=STRING ';' 'parameters' (ambiguity) parameters+=STRING
	 *     parameters+=STRING (ambiguity) parameters+=STRING
	 *     type=ID '{' 'parameters' (ambiguity) parameters+=STRING
	 
	 * </pre>
	 */
	protected void emit_ConstraintDefinition___SemicolonKeyword_3_0_2_ParametersKeyword_3_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     'optionalLoop'*
	 *
	 * This ambiguous syntax occurs at:
	 *     cloneable?='cloneable' ';' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* 'longDescription' longDescription=STRING
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* 'mandatoryLoop' features+=Feature
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* 'serialUID' serialVersionUID=INT
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* 'shortDescription' shortDescription=STRING
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* '}' (rule end)
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* cloneable?='cloneable'
	 *     features+=Feature 'after' (ambiguity) ('before' 'after' (ambiguity))* features+=Feature
	 *     features+=Feature (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     longDescription=STRING ';' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     name=ID '{' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     parent=[Object|ID] '{' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     serialVersionUID=INT ';' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 *     shortDescription=STRING ';' (ambiguity) 'before' ('after' (ambiguity) 'before')* features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object_OptionalLoopKeyword_5_6_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     'optionalLoop'+
	 *
	 * This ambiguous syntax occurs at:
	 *     features+=Feature 'after' (('before' | ((ambiguity) 'before')) 'after')* (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object_OptionalLoopKeyword_5_6_0_p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('after' 'optionalLoop'* 'before')*
	 *
	 * This ambiguous syntax occurs at:
	 *     cloneable?='cloneable' ';' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     features+=Feature 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     features+=Feature (ambiguity) features+=Feature
	 *     longDescription=STRING ';' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     name=ID '{' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     parent=[Object|ID] '{' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     serialVersionUID=INT ';' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 *     shortDescription=STRING ';' 'optionalLoop'* 'before' (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object___AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a_BeforeKeyword_5_5_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('before' 'after' 'optionalLoop'*)*
	 *
	 * This ambiguous syntax occurs at:
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) 'longDescription' longDescription=STRING
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) 'mandatoryLoop' features+=Feature
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) 'serialUID' serialVersionUID=INT
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) 'shortDescription' shortDescription=STRING
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) '}' (rule end)
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) cloneable?='cloneable'
	 *     features+=Feature 'after' 'optionalLoop'* (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object___BeforeKeyword_5_5_0_AfterKeyword_5_5_2_OptionalLoopKeyword_5_6_0_a__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('optionalLoop' ('before' 'after')*)*
	 *
	 * This ambiguous syntax occurs at:
	 *     features+=Feature (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('optionalLoop' ('before' 'after')*)+
	 *
	 * This ambiguous syntax occurs at:
	 *     cloneable?='cloneable' ';' (ambiguity) features+=Feature
	 *     features+=Feature (ambiguity) features+=Feature
	 *     longDescription=STRING ';' (ambiguity) features+=Feature
	 *     name=ID '{' (ambiguity) features+=Feature
	 *     parent=[Object|ID] '{' (ambiguity) features+=Feature
	 *     serialVersionUID=INT ';' (ambiguity) features+=Feature
	 *     shortDescription=STRING ';' (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object___OptionalLoopKeyword_5_6_0___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__a__p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('optionalLoop'? ('before' 'after')?)+
	 *
	 * This ambiguous syntax occurs at:
	 *     cloneable?='cloneable' ';' (ambiguity) 'longDescription' longDescription=STRING
	 *     cloneable?='cloneable' ';' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     cloneable?='cloneable' ';' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     cloneable?='cloneable' ';' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     cloneable?='cloneable' ';' (ambiguity) '}' (rule end)
	 *     cloneable?='cloneable' ';' (ambiguity) cloneable?='cloneable'
	 *     cloneable?='cloneable' ';' (ambiguity) features+=Feature
	 *     features+=Feature (ambiguity) 'longDescription' longDescription=STRING
	 *     features+=Feature (ambiguity) 'mandatoryLoop' features+=Feature
	 *     features+=Feature (ambiguity) 'serialUID' serialVersionUID=INT
	 *     features+=Feature (ambiguity) 'shortDescription' shortDescription=STRING
	 *     features+=Feature (ambiguity) '}' (rule end)
	 *     features+=Feature (ambiguity) cloneable?='cloneable'
	 *     features+=Feature (ambiguity) features+=Feature
	 *     longDescription=STRING ';' (ambiguity) 'longDescription' longDescription=STRING
	 *     longDescription=STRING ';' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     longDescription=STRING ';' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     longDescription=STRING ';' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     longDescription=STRING ';' (ambiguity) '}' (rule end)
	 *     longDescription=STRING ';' (ambiguity) cloneable?='cloneable'
	 *     longDescription=STRING ';' (ambiguity) features+=Feature
	 *     name=ID '{' (ambiguity) 'longDescription' longDescription=STRING
	 *     name=ID '{' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     name=ID '{' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     name=ID '{' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     name=ID '{' (ambiguity) '}' (rule end)
	 *     name=ID '{' (ambiguity) cloneable?='cloneable'
	 *     name=ID '{' (ambiguity) features+=Feature
	 *     parent=[Object|ID] '{' (ambiguity) 'longDescription' longDescription=STRING
	 *     parent=[Object|ID] '{' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     parent=[Object|ID] '{' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     parent=[Object|ID] '{' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     parent=[Object|ID] '{' (ambiguity) '}' (rule end)
	 *     parent=[Object|ID] '{' (ambiguity) cloneable?='cloneable'
	 *     parent=[Object|ID] '{' (ambiguity) features+=Feature
	 *     serialVersionUID=INT ';' (ambiguity) 'longDescription' longDescription=STRING
	 *     serialVersionUID=INT ';' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     serialVersionUID=INT ';' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     serialVersionUID=INT ';' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     serialVersionUID=INT ';' (ambiguity) '}' (rule end)
	 *     serialVersionUID=INT ';' (ambiguity) cloneable?='cloneable'
	 *     serialVersionUID=INT ';' (ambiguity) features+=Feature
	 *     shortDescription=STRING ';' (ambiguity) 'longDescription' longDescription=STRING
	 *     shortDescription=STRING ';' (ambiguity) 'mandatoryLoop' features+=Feature
	 *     shortDescription=STRING ';' (ambiguity) 'serialUID' serialVersionUID=INT
	 *     shortDescription=STRING ';' (ambiguity) 'shortDescription' shortDescription=STRING
	 *     shortDescription=STRING ';' (ambiguity) '}' (rule end)
	 *     shortDescription=STRING ';' (ambiguity) cloneable?='cloneable'
	 *     shortDescription=STRING ';' (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object___OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     (('before' | ('optionalLoop'+ 'before')) 'after')*
	 *
	 * This ambiguous syntax occurs at:
	 *     features+=Feature 'after' (ambiguity) 'optionalLoop'+ features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object_____BeforeKeyword_5_5_0_or___OptionalLoopKeyword_5_6_0_p_BeforeKeyword_5_5_0_____AfterKeyword_5_5_2__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     (('optionalLoop'? ('before' 'after')?)+ 'mandatoryLoop')?
	 *
	 * This ambiguous syntax occurs at:
	 *     features+=Feature (ambiguity) features+=Feature
	 
	 * </pre>
	 */
	protected void emit_Object_____OptionalLoopKeyword_5_6_0_q___BeforeKeyword_5_5_0_AfterKeyword_5_5_2__q__p_MandatoryLoopKeyword_5_7_0__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('{' '}') | ';'
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_Reference2_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('{' '}') | ';'
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_Reference_SemicolonKeyword_4_1_or___LeftCurlyBracketKeyword_4_0_0_RightCurlyBracketKeyword_4_0_2__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
