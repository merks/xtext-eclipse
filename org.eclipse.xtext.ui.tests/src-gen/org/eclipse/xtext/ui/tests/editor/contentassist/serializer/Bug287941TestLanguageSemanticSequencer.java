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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.AliasWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.AndWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanAttributeWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.DoubleWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ElementScope;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.FromEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Import;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.LongWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.MQLquery;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.NullWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.OrWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ReferenceAliasWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ResourceScope;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ScopeClause;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.SelectEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringAttributeWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.SubselectWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.VariableWhereEntry;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug287941TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug287941TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug287941TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug287941TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug287941TestLanguagePackage.ALIAS_WHERE_ENTRY:
				sequence_AliasWhereEntry(context, (AliasWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.AND_WHERE_ENTRY:
				sequence_AndWhereEntry(context, (AndWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.BOOLEAN_ATTRIBUTE_WHERE_ENTRY:
				sequence_BooleanAttributeWhereEntry(context, (BooleanAttributeWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.DOUBLE_WHERE_ENTRY:
				sequence_DoubleWhereEntry(context, (DoubleWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.ELEMENT_SCOPE:
				sequence_ElementScope(context, (ElementScope) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.FROM_ENTRY:
				sequence_FromEntry(context, (FromEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.IMPORT:
				sequence_Import(context, (Import) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.LONG_WHERE_ENTRY:
				sequence_LongWhereEntry(context, (LongWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.MQ_LQUERY:
				sequence_MQLquery(context, (MQLquery) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.NULL_WHERE_ENTRY:
				sequence_NullWhereEntry(context, (NullWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.OR_WHERE_ENTRY:
				sequence_WhereEntry(context, (OrWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.REFERENCE_ALIAS_WHERE_ENTRY:
				sequence_ReferenceAliasWhereEntry(context, (ReferenceAliasWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.RESOURCE_SCOPE:
				sequence_ResourceScope(context, (ResourceScope) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.SCOPE_CLAUSE:
				sequence_ScopeClause(context, (ScopeClause) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.SELECT_ENTRY:
				sequence_SelectEntry(context, (SelectEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.STRING_ATTRIBUTE_WHERE_ENTRY:
				sequence_StringAttributeWhereEntry(context, (StringAttributeWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.SUBSELECT_WHERE_ENTRY:
				sequence_SubselectWhereEntry(context, (SubselectWhereEntry) semanticObject); 
				return; 
			case Bug287941TestLanguagePackage.VARIABLE_WHERE_ENTRY:
				sequence_VariableWhereEntry(context, (VariableWhereEntry) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns AliasWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns AliasWhereEntry
	 *     AndWhereEntry returns AliasWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns AliasWhereEntry
	 *     ConcreteWhereEntry returns AliasWhereEntry
	 *     ParWhereEntry returns AliasWhereEntry
	 *     AliasWhereEntry returns AliasWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] rightAlias=[FromEntry|ID])
	 * </pre>
	 */
	protected void sequence_AliasWhereEntry(ISerializationContext context, AliasWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__RIGHT_ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__RIGHT_ALIAS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ALIAS_WHERE_ENTRY__RIGHT_ALIAS, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns AndWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns AndWhereEntry
	 *     AndWhereEntry returns AndWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns AndWhereEntry
	 *     ConcreteWhereEntry returns AndWhereEntry
	 *     ParWhereEntry returns AndWhereEntry
	 *
	 * Constraint:
	 *     (entries+=AndWhereEntry_AndWhereEntry_1_0 entries+=ConcreteWhereEntry+)
	 * </pre>
	 */
	protected void sequence_AndWhereEntry(ISerializationContext context, AndWhereEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns BooleanAttributeWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns BooleanAttributeWhereEntry
	 *     AndWhereEntry returns BooleanAttributeWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns BooleanAttributeWhereEntry
	 *     ConcreteWhereEntry returns BooleanAttributeWhereEntry
	 *     ParWhereEntry returns BooleanAttributeWhereEntry
	 *     AttributeWhereEntry returns BooleanAttributeWhereEntry
	 *     BooleanAttributeWhereEntry returns BooleanAttributeWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] attribute=[EAttribute|ID] operator=BooleanOperator isTrue?='true'?)
	 * </pre>
	 */
	protected void sequence_BooleanAttributeWhereEntry(ISerializationContext context, BooleanAttributeWhereEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns DoubleWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns DoubleWhereEntry
	 *     AndWhereEntry returns DoubleWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns DoubleWhereEntry
	 *     ConcreteWhereEntry returns DoubleWhereEntry
	 *     ParWhereEntry returns DoubleWhereEntry
	 *     AttributeWhereEntry returns DoubleWhereEntry
	 *     NumericAttributeWhereEntry returns DoubleWhereEntry
	 *     DoubleWhereEntry returns DoubleWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] attribute=[EAttribute|ID] operator=NumericOperator value=SIGNED_DOUBLE)
	 * </pre>
	 */
	protected void sequence_DoubleWhereEntry(ISerializationContext context, DoubleWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.NUMERIC_ATTRIBUTE_WHERE_ENTRY__OPERATOR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.NUMERIC_ATTRIBUTE_WHERE_ENTRY__OPERATOR));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.DOUBLE_WHERE_ENTRY__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.DOUBLE_WHERE_ENTRY__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getDoubleWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getDoubleWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE, false));
		feeder.accept(grammarAccess.getDoubleWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0(), semanticObject.getOperator());
		feeder.accept(grammarAccess.getDoubleWhereEntryAccess().getValueSIGNED_DOUBLETerminalRuleCall_4_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scope returns ElementScope
	 *     ElementScope returns ElementScope
	 *
	 * Constraint:
	 *     (uris+=STRING uris+=STRING*)
	 * </pre>
	 */
	protected void sequence_ElementScope(ISerializationContext context, ElementScope semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     FromEntry returns FromEntry
	 *
	 * Constraint:
	 *     (type=[EClass|ID] withoutsubtypes?='withoutsubtypes'? alias=ID scopeClause=ScopeClause?)
	 * </pre>
	 */
	protected void sequence_FromEntry(ISerializationContext context, FromEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Import returns Import
	 *
	 * Constraint:
	 *     importURI=STRING
	 * </pre>
	 */
	protected void sequence_Import(ISerializationContext context, Import semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.IMPORT__IMPORT_URI) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.IMPORT__IMPORT_URI));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getImportAccess().getImportURISTRINGTerminalRuleCall_1_0(), semanticObject.getImportURI());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns LongWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns LongWhereEntry
	 *     AndWhereEntry returns LongWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns LongWhereEntry
	 *     ConcreteWhereEntry returns LongWhereEntry
	 *     ParWhereEntry returns LongWhereEntry
	 *     AttributeWhereEntry returns LongWhereEntry
	 *     NumericAttributeWhereEntry returns LongWhereEntry
	 *     LongWhereEntry returns LongWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] attribute=[EAttribute|ID] operator=NumericOperator value=SINGED_LONG)
	 * </pre>
	 */
	protected void sequence_LongWhereEntry(ISerializationContext context, LongWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.NUMERIC_ATTRIBUTE_WHERE_ENTRY__OPERATOR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.NUMERIC_ATTRIBUTE_WHERE_ENTRY__OPERATOR));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.LONG_WHERE_ENTRY__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.LONG_WHERE_ENTRY__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getLongWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getLongWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE, false));
		feeder.accept(grammarAccess.getLongWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0(), semanticObject.getOperator());
		feeder.accept(grammarAccess.getLongWhereEntryAccess().getValueSINGED_LONGTerminalRuleCall_4_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     MQLquery returns MQLquery
	 *
	 * Constraint:
	 *     (selectEntries+=SelectEntry selectEntries+=SelectEntry* fromEntries+=FromEntry fromEntries+=FromEntry* whereEntries+=WhereEntry*)
	 * </pre>
	 */
	protected void sequence_MQLquery(ISerializationContext context, MQLquery semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     (imports+=Import* query=MQLquery)
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns NullWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns NullWhereEntry
	 *     AndWhereEntry returns NullWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns NullWhereEntry
	 *     ConcreteWhereEntry returns NullWhereEntry
	 *     ParWhereEntry returns NullWhereEntry
	 *     NullWhereEntry returns NullWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] feature=[EStructuralFeature|ID] operator=BooleanOperator)
	 * </pre>
	 */
	protected void sequence_NullWhereEntry(ISerializationContext context, NullWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__FEATURE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__FEATURE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__OPERATOR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__OPERATOR));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getNullWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getNullWhereEntryAccess().getFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.NULL_WHERE_ENTRY__FEATURE, false));
		feeder.accept(grammarAccess.getNullWhereEntryAccess().getOperatorBooleanOperatorEnumRuleCall_3_0(), semanticObject.getOperator());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns ReferenceAliasWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns ReferenceAliasWhereEntry
	 *     AndWhereEntry returns ReferenceAliasWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns ReferenceAliasWhereEntry
	 *     ConcreteWhereEntry returns ReferenceAliasWhereEntry
	 *     ParWhereEntry returns ReferenceAliasWhereEntry
	 *     ReferenceAliasWhereEntry returns ReferenceAliasWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] reference=[EReference|ID] rightAlias=[FromEntry|ID])
	 * </pre>
	 */
	protected void sequence_ReferenceAliasWhereEntry(ISerializationContext context, ReferenceAliasWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__REFERENCE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__REFERENCE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__RIGHT_ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__RIGHT_ALIAS));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getReferenceAliasWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getReferenceAliasWhereEntryAccess().getReferenceEReferenceIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__REFERENCE, false));
		feeder.accept(grammarAccess.getReferenceAliasWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.REFERENCE_ALIAS_WHERE_ENTRY__RIGHT_ALIAS, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scope returns ResourceScope
	 *     ResourceScope returns ResourceScope
	 *
	 * Constraint:
	 *     (uris+=STRING uris+=STRING*)
	 * </pre>
	 */
	protected void sequence_ResourceScope(ISerializationContext context, ResourceScope semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ScopeClause returns ScopeClause
	 *
	 * Constraint:
	 *     (notIn?='not'? scope=Scope)
	 * </pre>
	 */
	protected void sequence_ScopeClause(ISerializationContext context, ScopeClause semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     SelectEntry returns SelectEntry
	 *
	 * Constraint:
	 *     (select=[FromEntry|ID] attribute=[EAttribute|ID]?)
	 * </pre>
	 */
	protected void sequence_SelectEntry(ISerializationContext context, SelectEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns StringAttributeWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns StringAttributeWhereEntry
	 *     AndWhereEntry returns StringAttributeWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns StringAttributeWhereEntry
	 *     ConcreteWhereEntry returns StringAttributeWhereEntry
	 *     ParWhereEntry returns StringAttributeWhereEntry
	 *     AttributeWhereEntry returns StringAttributeWhereEntry
	 *     StringAttributeWhereEntry returns StringAttributeWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] attribute=[EAttribute|ID] operator=StringOperator pattern=STRING)
	 * </pre>
	 */
	protected void sequence_StringAttributeWhereEntry(ISerializationContext context, StringAttributeWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.STRING_ATTRIBUTE_WHERE_ENTRY__OPERATOR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.STRING_ATTRIBUTE_WHERE_ENTRY__OPERATOR));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.STRING_ATTRIBUTE_WHERE_ENTRY__PATTERN) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.STRING_ATTRIBUTE_WHERE_ENTRY__PATTERN));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getStringAttributeWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getStringAttributeWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE, false));
		feeder.accept(grammarAccess.getStringAttributeWhereEntryAccess().getOperatorStringOperatorEnumRuleCall_3_0(), semanticObject.getOperator());
		feeder.accept(grammarAccess.getStringAttributeWhereEntryAccess().getPatternSTRINGTerminalRuleCall_4_0(), semanticObject.getPattern());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns SubselectWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns SubselectWhereEntry
	 *     AndWhereEntry returns SubselectWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns SubselectWhereEntry
	 *     ConcreteWhereEntry returns SubselectWhereEntry
	 *     ParWhereEntry returns SubselectWhereEntry
	 *     SubselectWhereEntry returns SubselectWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] reference=[EReference|ID] notIn?='not'? subQuery=MQLquery)
	 * </pre>
	 */
	protected void sequence_SubselectWhereEntry(ISerializationContext context, SubselectWhereEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns VariableWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns VariableWhereEntry
	 *     AndWhereEntry returns VariableWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns VariableWhereEntry
	 *     ConcreteWhereEntry returns VariableWhereEntry
	 *     ParWhereEntry returns VariableWhereEntry
	 *     AttributeWhereEntry returns VariableWhereEntry
	 *     VariableWhereEntry returns VariableWhereEntry
	 *
	 * Constraint:
	 *     (alias=[FromEntry|ID] attribute=[EAttribute|ID] operator=NumericOperator rightAlias=[FromEntry|ID] rightAttribute=[EAttribute|ID])
	 * </pre>
	 */
	protected void sequence_VariableWhereEntry(ISerializationContext context, VariableWhereEntry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__OPERATOR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__OPERATOR));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ALIAS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ALIAS));
			if (transientValues.isValueTransient(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ATTRIBUTE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ATTRIBUTE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getVariableWhereEntryAccess().getAliasFromEntryIDTerminalRuleCall_0_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ALIAS, false));
		feeder.accept(grammarAccess.getVariableWhereEntryAccess().getAttributeEAttributeIDTerminalRuleCall_2_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.ATTRIBUTE_WHERE_ENTRY__ATTRIBUTE, false));
		feeder.accept(grammarAccess.getVariableWhereEntryAccess().getOperatorNumericOperatorEnumRuleCall_3_0(), semanticObject.getOperator());
		feeder.accept(grammarAccess.getVariableWhereEntryAccess().getRightAliasFromEntryIDTerminalRuleCall_4_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ALIAS, false));
		feeder.accept(grammarAccess.getVariableWhereEntryAccess().getRightAttributeEAttributeIDTerminalRuleCall_6_0_1(), semanticObject.eGet(Bug287941TestLanguagePackage.Literals.VARIABLE_WHERE_ENTRY__RIGHT_ATTRIBUTE, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     WhereEntry returns OrWhereEntry
	 *     WhereEntry.OrWhereEntry_1_0 returns OrWhereEntry
	 *     AndWhereEntry returns OrWhereEntry
	 *     AndWhereEntry.AndWhereEntry_1_0 returns OrWhereEntry
	 *     ConcreteWhereEntry returns OrWhereEntry
	 *     ParWhereEntry returns OrWhereEntry
	 *
	 * Constraint:
	 *     (entries+=WhereEntry_OrWhereEntry_1_0 entries+=AndWhereEntry+)
	 * </pre>
	 */
	protected void sequence_WhereEntry(ISerializationContext context, OrWhereEntry semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
