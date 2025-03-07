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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348199TestLanguage.Bug348199TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348199TestLanguage.TimeDef;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348199TestLanguage.Timeperiod;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug348199TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug348199TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug348199TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug348199TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug348199TestLanguagePackage.TIME_DEF:
				if (rule == grammarAccess.getTimeDef1Rule()) {
					sequence_TimeDef1(context, (TimeDef) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getTimeDef2Rule()) {
					sequence_TimeDef2(context, (TimeDef) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getTimeDef3Rule()) {
					sequence_TimeDef3(context, (TimeDef) semanticObject); 
					return; 
				}
				else break;
			case Bug348199TestLanguagePackage.TIMEPERIOD:
				sequence_Timeperiod(context, (Timeperiod) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     TimeDef1 returns TimeDef
	 *
	 * Constraint:
	 *     day=INT
	 * </pre>
	 */
	protected void sequence_TimeDef1(ISerializationContext context, TimeDef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTimeDef1Access().getDayINTTerminalRuleCall_1_0(), semanticObject.getDay());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TimeDef2 returns TimeDef
	 *
	 * Constraint:
	 *     day=INT
	 * </pre>
	 */
	protected void sequence_TimeDef2(ISerializationContext context, TimeDef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTimeDef2Access().getDayINTTerminalRuleCall_1_0(), semanticObject.getDay());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TimeDef3 returns TimeDef
	 *
	 * Constraint:
	 *     day=INT
	 * </pre>
	 */
	protected void sequence_TimeDef3(ISerializationContext context, TimeDef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug348199TestLanguagePackage.Literals.TIME_DEF__DAY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTimeDef3Access().getDayINTTerminalRuleCall_1_0(), semanticObject.getDay());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Timeperiod returns Timeperiod
	 *
	 * Constraint:
	 *     (
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))*) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))?) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))+) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))*) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))*) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))?) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))+) | 
	 *         (time+=TimeDef1* ((name+=ID time+=TimeDef2*) | (alias+=ID time+=TimeDef3*))*)
	 *     )
	 * </pre>
	 */
	protected void sequence_Timeperiod(ISerializationContext context, Timeperiod semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
