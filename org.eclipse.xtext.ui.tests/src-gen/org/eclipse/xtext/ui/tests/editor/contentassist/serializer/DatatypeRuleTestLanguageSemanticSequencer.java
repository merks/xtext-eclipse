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
import org.eclipse.xtext.ui.tests.editor.contentassist.datatypeRuleTest.CompositeType;
import org.eclipse.xtext.ui.tests.editor.contentassist.datatypeRuleTest.CompositeTypeEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.datatypeRuleTest.DatatypeRuleTestPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.datatypeRuleTest.SimpleType;
import org.eclipse.xtext.ui.tests.editor.contentassist.datatypeRuleTest.Types;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.DatatypeRuleTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class DatatypeRuleTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private DatatypeRuleTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == DatatypeRuleTestPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case DatatypeRuleTestPackage.COMPOSITE_TYPE:
				sequence_CompositeType(context, (CompositeType) semanticObject); 
				return; 
			case DatatypeRuleTestPackage.COMPOSITE_TYPE_ENTRY:
				sequence_CompositeTypeEntry(context, (CompositeTypeEntry) semanticObject); 
				return; 
			case DatatypeRuleTestPackage.SIMPLE_TYPE:
				sequence_SimpleType(context, (SimpleType) semanticObject); 
				return; 
			case DatatypeRuleTestPackage.TYPES:
				sequence_Types(context, (Types) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     CompositeTypeEntry returns CompositeTypeEntry
	 *
	 * Constraint:
	 *     dataType=[Type|TypeId]
	 * </pre>
	 */
	protected void sequence_CompositeTypeEntry(ISerializationContext context, CompositeTypeEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DatatypeRuleTestPackage.Literals.COMPOSITE_TYPE_ENTRY__DATA_TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DatatypeRuleTestPackage.Literals.COMPOSITE_TYPE_ENTRY__DATA_TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeTypeIdParserRuleCall_0_1(), semanticObject.eGet(DatatypeRuleTestPackage.Literals.COMPOSITE_TYPE_ENTRY__DATA_TYPE, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Type returns CompositeType
	 *     CompositeType returns CompositeType
	 *
	 * Constraint:
	 *     (name=ID baseType=CompositeTypeEntry)
	 * </pre>
	 */
	protected void sequence_CompositeType(ISerializationContext context, CompositeType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DatatypeRuleTestPackage.Literals.TYPE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DatatypeRuleTestPackage.Literals.TYPE__NAME));
			if (transientValues.isValueTransient(semanticObject, DatatypeRuleTestPackage.Literals.COMPOSITE_TYPE__BASE_TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DatatypeRuleTestPackage.Literals.COMPOSITE_TYPE__BASE_TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getCompositeTypeAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getCompositeTypeAccess().getBaseTypeCompositeTypeEntryParserRuleCall_3_0(), semanticObject.getBaseType());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Type returns SimpleType
	 *     SimpleType returns SimpleType
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_SimpleType(ISerializationContext context, SimpleType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DatatypeRuleTestPackage.Literals.TYPE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DatatypeRuleTestPackage.Literals.TYPE__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimpleTypeAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Types
	 *     Types returns Types
	 *
	 * Constraint:
	 *     types+=Type*
	 * </pre>
	 */
	protected void sequence_Types(ISerializationContext context, Types semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
