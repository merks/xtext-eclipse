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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.Bug288734TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.TAnnotation;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.TBooleanConstant;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.TIntegerConstant;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.TStringConstant;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug288734TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug288734TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug288734TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug288734TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug288734TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug288734TestLanguagePackage.TANNOTATION:
				sequence_TAnnotation(context, (TAnnotation) semanticObject); 
				return; 
			case Bug288734TestLanguagePackage.TBOOLEAN_CONSTANT:
				sequence_TBooleanConstant(context, (TBooleanConstant) semanticObject); 
				return; 
			case Bug288734TestLanguagePackage.TINTEGER_CONSTANT:
				sequence_TIntegerConstant(context, (TIntegerConstant) semanticObject); 
				return; 
			case Bug288734TestLanguagePackage.TSTRING_CONSTANT:
				sequence_TStringConstant(context, (TStringConstant) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     constants+=TConstant
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TAnnotation returns TAnnotation
	 *
	 * Constraint:
	 *     description=STRING
	 * </pre>
	 */
	protected void sequence_TAnnotation(ISerializationContext context, TAnnotation semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug288734TestLanguagePackage.Literals.TANNOTATION__DESCRIPTION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug288734TestLanguagePackage.Literals.TANNOTATION__DESCRIPTION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTAnnotationAccess().getDescriptionSTRINGTerminalRuleCall_1_0(), semanticObject.getDescription());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TConstant returns TBooleanConstant
	 *     TBooleanConstant returns TBooleanConstant
	 *
	 * Constraint:
	 *     (annotations+=TAnnotation* name=ID)
	 * </pre>
	 */
	protected void sequence_TBooleanConstant(ISerializationContext context, TBooleanConstant semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TConstant returns TIntegerConstant
	 *     TIntegerConstant returns TIntegerConstant
	 *
	 * Constraint:
	 *     (annotations+=TAnnotation* name=ID)
	 * </pre>
	 */
	protected void sequence_TIntegerConstant(ISerializationContext context, TIntegerConstant semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TConstant returns TStringConstant
	 *     TStringConstant returns TStringConstant
	 *
	 * Constraint:
	 *     (annotations+=TAnnotation* name=ID)
	 * </pre>
	 */
	protected void sequence_TStringConstant(ISerializationContext context, TStringConstant semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
