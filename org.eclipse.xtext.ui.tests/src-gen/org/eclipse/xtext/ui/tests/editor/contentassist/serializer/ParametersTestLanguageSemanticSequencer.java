/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

import com.google.common.collect.ImmutableSet;
import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParametersTestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParserRuleParameters;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.Scenario;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ParametersTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class ParametersTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ParametersTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == ParametersTestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case ParametersTestLanguagePackage.PARSER_RULE_PARAMETERS:
				sequence_ParserRuleParameters(context, (ParserRuleParameters) semanticObject); 
				return; 
			case ParametersTestLanguagePackage.SCENARIO:
				if (rule == grammarAccess.getScenario1Rule() && (parameters.isEmpty())) {
					sequence_Scenario1$Param$false$(context, (Scenario) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario1Rule() && (ImmutableSet.of(grammarAccess.getScenario1Rule().getParameters().get(0/*Param*/)).equals(parameters))) {
					sequence_Scenario1$Param$true$(context, (Scenario) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2Rule()) {
					sequence_Scenario2(context, (Scenario) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario3Rule()) {
					sequence_Scenario3(context, (Scenario) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario4Rule()) {
					sequence_Scenario4(context, (Scenario) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario5Rule()) {
					sequence_Scenario5(context, (Scenario) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     ParserRuleParameters returns ParserRuleParameters
	 *
	 * Constraint:
	 *     (
	 *         scenario=Scenario1 | 
	 *         scenario=Scenario1 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario3 | 
	 *         scenario=Scenario3 | 
	 *         scenario=Scenario4 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario4 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario4 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario4 | 
	 *         scenario=Scenario2 | 
	 *         scenario=Scenario5 | 
	 *         scenario=Scenario5
	 *     )
	 * </pre>
	 */
	protected void sequence_ParserRuleParameters(ISerializationContext context, ParserRuleParameters semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1 returns Scenario
	 *
	 * Constraint:
	 *     second=ID
	 * </pre>
	 */
	protected void sequence_Scenario1$Param$false$(ISerializationContext context, Scenario semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__SECOND) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__SECOND));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getScenario1Access().getSecondIDTerminalRuleCall_1_0_0(), semanticObject.getSecond());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1<Param> returns Scenario
	 *
	 * Constraint:
	 *     first=ID
	 * </pre>
	 */
	protected void sequence_Scenario1$Param$true$(ISerializationContext context, Scenario semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__FIRST) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__FIRST));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getScenario1Access().getFirstIDTerminalRuleCall_0_0_0(), semanticObject.getFirst());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2<AllowKeyword> returns Scenario
	 *     Scenario2 returns Scenario
	 *
	 * Constraint:
	 *     first=IdOrKeyword
	 * </pre>
	 */
	protected void sequence_Scenario2(ISerializationContext context, Scenario semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__FIRST) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__FIRST));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getScenario2Access().getFirstIdOrKeywordParserRuleCall_0(), semanticObject.getFirst());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario3<AllowKeyword> returns Scenario
	 *     Scenario3 returns Scenario
	 *
	 * Constraint:
	 *     (first=IdOrKeyword | second='scenario3')
	 * </pre>
	 */
	protected void sequence_Scenario3(ISerializationContext context, Scenario semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario4<AllowKeyword> returns Scenario
	 *     Scenario4 returns Scenario
	 *
	 * Constraint:
	 *     second=IdOrKeyword
	 * </pre>
	 */
	protected void sequence_Scenario4(ISerializationContext context, Scenario semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__SECOND) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParametersTestLanguagePackage.Literals.SCENARIO__SECOND));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getScenario4Access().getSecondIdOrKeywordParserRuleCall_0_0(), semanticObject.getSecond());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario5<Include> returns Scenario
	 *     Scenario5 returns Scenario
	 *
	 * Constraint:
	 *     (first=IdOrKeyword second=IdOrKeyword)?
	 * </pre>
	 */
	protected void sequence_Scenario5(ISerializationContext context, Scenario semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
