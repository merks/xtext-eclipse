/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
import org.eclipse.xtext.EnumLiteralDeclaration;
import org.eclipse.xtext.EnumRule;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug289187TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage.Model");
		private final Assignment cClassesAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cClassesClassParserRuleCall_0 = (RuleCall)cClassesAssignment.eContents().get(0);
		
		//Model:
		//    classes+=Class*
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//classes+=Class*
		public Assignment getClassesAssignment() { return cClassesAssignment; }
		
		//Class
		public RuleCall getClassesClassParserRuleCall_0() { return cClassesClassParserRuleCall_0; }
	}
	public class ClassElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage.Class");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAbstractAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final Keyword cAbstractAbstractKeyword_0_0 = (Keyword)cAbstractAssignment_0.eContents().get(0);
		private final Assignment cTransientAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cTransientTransientKeyword_1_0 = (Keyword)cTransientAssignment_1.eContents().get(0);
		private final Keyword cClassKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final Group cGroup_4 = (Group)cGroup.eContents().get(4);
		private final Keyword cExtendsKeyword_4_0 = (Keyword)cGroup_4.eContents().get(0);
		private final Assignment cSuperClassAssignment_4_1 = (Assignment)cGroup_4.eContents().get(1);
		private final CrossReference cSuperClassClassCrossReference_4_1_0 = (CrossReference)cSuperClassAssignment_4_1.eContents().get(0);
		private final RuleCall cSuperClassClassIDTerminalRuleCall_4_1_0_1 = (RuleCall)cSuperClassClassCrossReference_4_1_0.eContents().get(1);
		private final Group cGroup_5 = (Group)cGroup.eContents().get(5);
		private final Keyword cImplementsKeyword_5_0 = (Keyword)cGroup_5.eContents().get(0);
		private final Assignment cImplementedInterfacesAssignment_5_1 = (Assignment)cGroup_5.eContents().get(1);
		private final CrossReference cImplementedInterfacesClassCrossReference_5_1_0 = (CrossReference)cImplementedInterfacesAssignment_5_1.eContents().get(0);
		private final RuleCall cImplementedInterfacesClassIDTerminalRuleCall_5_1_0_1 = (RuleCall)cImplementedInterfacesClassCrossReference_5_1_0.eContents().get(1);
		private final Group cGroup_5_2 = (Group)cGroup_5.eContents().get(2);
		private final Keyword cCommaKeyword_5_2_0 = (Keyword)cGroup_5_2.eContents().get(0);
		private final Keyword cImplementsKeyword_5_2_1 = (Keyword)cGroup_5_2.eContents().get(1);
		private final Assignment cImplementedInterfacesAssignment_5_2_2 = (Assignment)cGroup_5_2.eContents().get(2);
		private final CrossReference cImplementedInterfacesClassCrossReference_5_2_2_0 = (CrossReference)cImplementedInterfacesAssignment_5_2_2.eContents().get(0);
		private final RuleCall cImplementedInterfacesClassIDTerminalRuleCall_5_2_2_0_1 = (RuleCall)cImplementedInterfacesClassCrossReference_5_2_2_0.eContents().get(1);
		private final Keyword cLeftCurlyBracketKeyword_6 = (Keyword)cGroup.eContents().get(6);
		private final Group cGroup_7 = (Group)cGroup.eContents().get(7);
		private final Keyword cClassNumberKeyword_7_0 = (Keyword)cGroup_7.eContents().get(0);
		private final Keyword cEqualsSignKeyword_7_1 = (Keyword)cGroup_7.eContents().get(1);
		private final Assignment cClassNumberAssignment_7_2 = (Assignment)cGroup_7.eContents().get(2);
		private final RuleCall cClassNumberINTTerminalRuleCall_7_2_0 = (RuleCall)cClassNumberAssignment_7_2.eContents().get(0);
		private final Group cGroup_8 = (Group)cGroup.eContents().get(8);
		private final Keyword cQuidKeyword_8_0 = (Keyword)cGroup_8.eContents().get(0);
		private final Keyword cEqualsSignKeyword_8_1 = (Keyword)cGroup_8.eContents().get(1);
		private final Assignment cQuidAssignment_8_2 = (Assignment)cGroup_8.eContents().get(2);
		private final RuleCall cQuidINTTerminalRuleCall_8_2_0 = (RuleCall)cQuidAssignment_8_2.eContents().get(0);
		private final Group cGroup_9 = (Group)cGroup.eContents().get(9);
		private final Keyword cDocumentationKeyword_9_0 = (Keyword)cGroup_9.eContents().get(0);
		private final Keyword cEqualsSignKeyword_9_1 = (Keyword)cGroup_9.eContents().get(1);
		private final Assignment cDocumentationAssignment_9_2 = (Assignment)cGroup_9.eContents().get(2);
		private final RuleCall cDocumentationSTRINGTerminalRuleCall_9_2_0 = (RuleCall)cDocumentationAssignment_9_2.eContents().get(0);
		private final Assignment cAttributesAssignment_10 = (Assignment)cGroup.eContents().get(10);
		private final RuleCall cAttributesAttributeParserRuleCall_10_0 = (RuleCall)cAttributesAssignment_10.eContents().get(0);
		private final Assignment cOperationsAssignment_11 = (Assignment)cGroup.eContents().get(11);
		private final RuleCall cOperationsOperationParserRuleCall_11_0 = (RuleCall)cOperationsAssignment_11.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_12 = (Keyword)cGroup.eContents().get(12);
		
		//Class:
		//    (abstract?='abstract')?
		//    (transient?='transient')?
		//    'class' name=ID
		//        ('extends' superClass=[Class])?
		//        ('implements' implementedInterfaces+=[Class]
		//            (',' 'implements' implementedInterfaces+=[Class])*
		//        )?
		//    '{'
		//        ('classNumber' '=' classNumber=INT)?
		//        ('quid' '=' quid=INT)?
		//        ('documentation' '=' documentation=STRING)?
		//        attributes+=Attribute*
		//        operations+=Operation*
		//    '}'
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//(abstract?='abstract')?
		//(transient?='transient')?
		//'class' name=ID
		//    ('extends' superClass=[Class])?
		//    ('implements' implementedInterfaces+=[Class]
		//        (',' 'implements' implementedInterfaces+=[Class])*
		//    )?
		//'{'
		//    ('classNumber' '=' classNumber=INT)?
		//    ('quid' '=' quid=INT)?
		//    ('documentation' '=' documentation=STRING)?
		//    attributes+=Attribute*
		//    operations+=Operation*
		//'}'
		public Group getGroup() { return cGroup; }
		
		//(abstract?='abstract')?
		public Assignment getAbstractAssignment_0() { return cAbstractAssignment_0; }
		
		//'abstract'
		public Keyword getAbstractAbstractKeyword_0_0() { return cAbstractAbstractKeyword_0_0; }
		
		//(transient?='transient')?
		public Assignment getTransientAssignment_1() { return cTransientAssignment_1; }
		
		//'transient'
		public Keyword getTransientTransientKeyword_1_0() { return cTransientTransientKeyword_1_0; }
		
		//'class'
		public Keyword getClassKeyword_2() { return cClassKeyword_2; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
		
		//('extends' superClass=[Class])?
		public Group getGroup_4() { return cGroup_4; }
		
		//'extends'
		public Keyword getExtendsKeyword_4_0() { return cExtendsKeyword_4_0; }
		
		//superClass=[Class]
		public Assignment getSuperClassAssignment_4_1() { return cSuperClassAssignment_4_1; }
		
		//[Class]
		public CrossReference getSuperClassClassCrossReference_4_1_0() { return cSuperClassClassCrossReference_4_1_0; }
		
		//ID
		public RuleCall getSuperClassClassIDTerminalRuleCall_4_1_0_1() { return cSuperClassClassIDTerminalRuleCall_4_1_0_1; }
		
		//('implements' implementedInterfaces+=[Class]
		//    (',' 'implements' implementedInterfaces+=[Class])*
		//)?
		public Group getGroup_5() { return cGroup_5; }
		
		//'implements'
		public Keyword getImplementsKeyword_5_0() { return cImplementsKeyword_5_0; }
		
		//implementedInterfaces+=[Class]
		public Assignment getImplementedInterfacesAssignment_5_1() { return cImplementedInterfacesAssignment_5_1; }
		
		//[Class]
		public CrossReference getImplementedInterfacesClassCrossReference_5_1_0() { return cImplementedInterfacesClassCrossReference_5_1_0; }
		
		//ID
		public RuleCall getImplementedInterfacesClassIDTerminalRuleCall_5_1_0_1() { return cImplementedInterfacesClassIDTerminalRuleCall_5_1_0_1; }
		
		//(',' 'implements' implementedInterfaces+=[Class])*
		public Group getGroup_5_2() { return cGroup_5_2; }
		
		//','
		public Keyword getCommaKeyword_5_2_0() { return cCommaKeyword_5_2_0; }
		
		//'implements'
		public Keyword getImplementsKeyword_5_2_1() { return cImplementsKeyword_5_2_1; }
		
		//implementedInterfaces+=[Class]
		public Assignment getImplementedInterfacesAssignment_5_2_2() { return cImplementedInterfacesAssignment_5_2_2; }
		
		//[Class]
		public CrossReference getImplementedInterfacesClassCrossReference_5_2_2_0() { return cImplementedInterfacesClassCrossReference_5_2_2_0; }
		
		//ID
		public RuleCall getImplementedInterfacesClassIDTerminalRuleCall_5_2_2_0_1() { return cImplementedInterfacesClassIDTerminalRuleCall_5_2_2_0_1; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_6() { return cLeftCurlyBracketKeyword_6; }
		
		//('classNumber' '=' classNumber=INT)?
		public Group getGroup_7() { return cGroup_7; }
		
		//'classNumber'
		public Keyword getClassNumberKeyword_7_0() { return cClassNumberKeyword_7_0; }
		
		//'='
		public Keyword getEqualsSignKeyword_7_1() { return cEqualsSignKeyword_7_1; }
		
		//classNumber=INT
		public Assignment getClassNumberAssignment_7_2() { return cClassNumberAssignment_7_2; }
		
		//INT
		public RuleCall getClassNumberINTTerminalRuleCall_7_2_0() { return cClassNumberINTTerminalRuleCall_7_2_0; }
		
		//('quid' '=' quid=INT)?
		public Group getGroup_8() { return cGroup_8; }
		
		//'quid'
		public Keyword getQuidKeyword_8_0() { return cQuidKeyword_8_0; }
		
		//'='
		public Keyword getEqualsSignKeyword_8_1() { return cEqualsSignKeyword_8_1; }
		
		//quid=INT
		public Assignment getQuidAssignment_8_2() { return cQuidAssignment_8_2; }
		
		//INT
		public RuleCall getQuidINTTerminalRuleCall_8_2_0() { return cQuidINTTerminalRuleCall_8_2_0; }
		
		//('documentation' '=' documentation=STRING)?
		public Group getGroup_9() { return cGroup_9; }
		
		//'documentation'
		public Keyword getDocumentationKeyword_9_0() { return cDocumentationKeyword_9_0; }
		
		//'='
		public Keyword getEqualsSignKeyword_9_1() { return cEqualsSignKeyword_9_1; }
		
		//documentation=STRING
		public Assignment getDocumentationAssignment_9_2() { return cDocumentationAssignment_9_2; }
		
		//STRING
		public RuleCall getDocumentationSTRINGTerminalRuleCall_9_2_0() { return cDocumentationSTRINGTerminalRuleCall_9_2_0; }
		
		//attributes+=Attribute*
		public Assignment getAttributesAssignment_10() { return cAttributesAssignment_10; }
		
		//Attribute
		public RuleCall getAttributesAttributeParserRuleCall_10_0() { return cAttributesAttributeParserRuleCall_10_0; }
		
		//operations+=Operation*
		public Assignment getOperationsAssignment_11() { return cOperationsAssignment_11; }
		
		//Operation
		public RuleCall getOperationsOperationParserRuleCall_11_0() { return cOperationsOperationParserRuleCall_11_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_12() { return cRightCurlyBracketKeyword_12; }
	}
	public class AttributeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage.Attribute");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cVisibilityAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cVisibilityVisibilityEnumRuleCall_0_0 = (RuleCall)cVisibilityAssignment_0.eContents().get(0);
		private final Keyword cAttributeKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Attribute:
		//    (visibility=Visibility)? 'attribute' name=ID
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//(visibility=Visibility)? 'attribute' name=ID
		public Group getGroup() { return cGroup; }
		
		//(visibility=Visibility)?
		public Assignment getVisibilityAssignment_0() { return cVisibilityAssignment_0; }
		
		//Visibility
		public RuleCall getVisibilityVisibilityEnumRuleCall_0_0() { return cVisibilityVisibilityEnumRuleCall_0_0; }
		
		//'attribute'
		public Keyword getAttributeKeyword_1() { return cAttributeKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class OperationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage.Operation");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cVisibilityAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cVisibilityVisibilityEnumRuleCall_0_0 = (RuleCall)cVisibilityAssignment_0.eContents().get(0);
		private final Keyword cOperationKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Operation:
		//    (visibility=Visibility)? 'operation' name=ID
		//    ;
		@Override public ParserRule getRule() { return rule; }
		
		//(visibility=Visibility)? 'operation' name=ID
		public Group getGroup() { return cGroup; }
		
		//(visibility=Visibility)?
		public Assignment getVisibilityAssignment_0() { return cVisibilityAssignment_0; }
		
		//Visibility
		public RuleCall getVisibilityVisibilityEnumRuleCall_0_0() { return cVisibilityVisibilityEnumRuleCall_0_0; }
		
		//'operation'
		public Keyword getOperationKeyword_1() { return cOperationKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	
	public class VisibilityElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage.Visibility");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cPRIVATEEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cPRIVATEPRIVATEKeyword_0_0 = (Keyword)cPRIVATEEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cPROTECTEDEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cPROTECTEDPROTECTEDKeyword_1_0 = (Keyword)cPROTECTEDEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cPACKAGE_PRIVATEEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cPACKAGE_PRIVATEPACKAGE_PRIVATEKeyword_2_0 = (Keyword)cPACKAGE_PRIVATEEnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cPUBLICEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cPUBLICPUBLICKeyword_3_0 = (Keyword)cPUBLICEnumLiteralDeclaration_3.eContents().get(0);
		
		//enum Visibility:
		//    PRIVATE | PROTECTED | PACKAGE_PRIVATE | PUBLIC;
		public EnumRule getRule() { return rule; }
		
		//PRIVATE | PROTECTED | PACKAGE_PRIVATE | PUBLIC
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//PRIVATE
		public EnumLiteralDeclaration getPRIVATEEnumLiteralDeclaration_0() { return cPRIVATEEnumLiteralDeclaration_0; }
		
		public Keyword getPRIVATEPRIVATEKeyword_0_0() { return cPRIVATEPRIVATEKeyword_0_0; }
		
		//PROTECTED
		public EnumLiteralDeclaration getPROTECTEDEnumLiteralDeclaration_1() { return cPROTECTEDEnumLiteralDeclaration_1; }
		
		public Keyword getPROTECTEDPROTECTEDKeyword_1_0() { return cPROTECTEDPROTECTEDKeyword_1_0; }
		
		//PACKAGE_PRIVATE
		public EnumLiteralDeclaration getPACKAGE_PRIVATEEnumLiteralDeclaration_2() { return cPACKAGE_PRIVATEEnumLiteralDeclaration_2; }
		
		public Keyword getPACKAGE_PRIVATEPACKAGE_PRIVATEKeyword_2_0() { return cPACKAGE_PRIVATEPACKAGE_PRIVATEKeyword_2_0; }
		
		//PUBLIC
		public EnumLiteralDeclaration getPUBLICEnumLiteralDeclaration_3() { return cPUBLICEnumLiteralDeclaration_3; }
		
		public Keyword getPUBLICPUBLICKeyword_3_0() { return cPUBLICPUBLICKeyword_3_0; }
	}
	
	private final ModelElements pModel;
	private final ClassElements pClass;
	private final AttributeElements pAttribute;
	private final OperationElements pOperation;
	private final VisibilityElements eVisibility;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug289187TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pClass = new ClassElements();
		this.pAttribute = new AttributeElements();
		this.pOperation = new OperationElements();
		this.eVisibility = new VisibilityElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Model:
	//    classes+=Class*
	//    ;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Class:
	//    (abstract?='abstract')?
	//    (transient?='transient')?
	//    'class' name=ID
	//        ('extends' superClass=[Class])?
	//        ('implements' implementedInterfaces+=[Class]
	//            (',' 'implements' implementedInterfaces+=[Class])*
	//        )?
	//    '{'
	//        ('classNumber' '=' classNumber=INT)?
	//        ('quid' '=' quid=INT)?
	//        ('documentation' '=' documentation=STRING)?
	//        attributes+=Attribute*
	//        operations+=Operation*
	//    '}'
	//    ;
	public ClassElements getClassAccess() {
		return pClass;
	}
	
	public ParserRule getClassRule() {
		return getClassAccess().getRule();
	}
	
	//Attribute:
	//    (visibility=Visibility)? 'attribute' name=ID
	//    ;
	public AttributeElements getAttributeAccess() {
		return pAttribute;
	}
	
	public ParserRule getAttributeRule() {
		return getAttributeAccess().getRule();
	}
	
	//Operation:
	//    (visibility=Visibility)? 'operation' name=ID
	//    ;
	public OperationElements getOperationAccess() {
		return pOperation;
	}
	
	public ParserRule getOperationRule() {
		return getOperationAccess().getRule();
	}
	
	//enum Visibility:
	//    PRIVATE | PROTECTED | PACKAGE_PRIVATE | PUBLIC;
	public VisibilityElements getVisibilityAccess() {
		return eVisibility;
	}
	
	public EnumRule getVisibilityRule() {
		return getVisibilityAccess().getRule();
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS         : (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}
