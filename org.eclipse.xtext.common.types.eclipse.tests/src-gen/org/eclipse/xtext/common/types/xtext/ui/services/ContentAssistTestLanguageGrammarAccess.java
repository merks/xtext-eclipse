/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.common.types.xtext.ui.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
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
public class ContentAssistTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.Model");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cImportsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cImportsImportParserRuleCall_0_0 = (RuleCall)cImportsAssignment_0.eContents().get(0);
		private final Assignment cGenerateDirectiveAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cGenerateDirectiveGenerateDirectiveParserRuleCall_1_0 = (RuleCall)cGenerateDirectiveAssignment_1.eContents().get(0);
		private final Assignment cReferenceHolderAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cReferenceHolderReferenceHolderParserRuleCall_2_0 = (RuleCall)cReferenceHolderAssignment_2.eContents().get(0);
		
		//Model:
		//  imports+=Import*
		//  generateDirective=GenerateDirective?
		//  referenceHolder=ReferenceHolder?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//imports+=Import*
		//generateDirective=GenerateDirective?
		//referenceHolder=ReferenceHolder?
		public Group getGroup() { return cGroup; }
		
		//imports+=Import*
		public Assignment getImportsAssignment_0() { return cImportsAssignment_0; }
		
		//Import
		public RuleCall getImportsImportParserRuleCall_0_0() { return cImportsImportParserRuleCall_0_0; }
		
		//generateDirective=GenerateDirective?
		public Assignment getGenerateDirectiveAssignment_1() { return cGenerateDirectiveAssignment_1; }
		
		//GenerateDirective
		public RuleCall getGenerateDirectiveGenerateDirectiveParserRuleCall_1_0() { return cGenerateDirectiveGenerateDirectiveParserRuleCall_1_0; }
		
		//referenceHolder=ReferenceHolder?
		public Assignment getReferenceHolderAssignment_2() { return cReferenceHolderAssignment_2; }
		
		//ReferenceHolder
		public RuleCall getReferenceHolderReferenceHolderParserRuleCall_2_0() { return cReferenceHolderReferenceHolderParserRuleCall_2_0; }
	}
	public class ReferenceHolderElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.ReferenceHolder");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Keyword cDefaultKeyword_0_0 = (Keyword)cGroup_0.eContents().get(0);
		private final Assignment cDefaultReferenceAssignment_0_1 = (Assignment)cGroup_0.eContents().get(1);
		private final CrossReference cDefaultReferenceJvmTypeCrossReference_0_1_0 = (CrossReference)cDefaultReferenceAssignment_0_1.eContents().get(0);
		private final RuleCall cDefaultReferenceJvmTypeFQNParserRuleCall_0_1_0_1 = (RuleCall)cDefaultReferenceJvmTypeCrossReference_0_1_0.eContents().get(1);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Keyword cCustomKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cCustomizedReferenceAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final CrossReference cCustomizedReferenceJvmTypeCrossReference_1_1_0 = (CrossReference)cCustomizedReferenceAssignment_1_1.eContents().get(0);
		private final RuleCall cCustomizedReferenceJvmTypeFQNParserRuleCall_1_1_0_1 = (RuleCall)cCustomizedReferenceJvmTypeCrossReference_1_1_0.eContents().get(1);
		private final Group cGroup_2 = (Group)cAlternatives.eContents().get(2);
		private final Keyword cSubtypeKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cSubtypeReferenceAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final CrossReference cSubtypeReferenceJvmTypeCrossReference_2_1_0 = (CrossReference)cSubtypeReferenceAssignment_2_1.eContents().get(0);
		private final RuleCall cSubtypeReferenceJvmTypeFQNParserRuleCall_2_1_0_1 = (RuleCall)cSubtypeReferenceJvmTypeCrossReference_2_1_0.eContents().get(1);
		
		//ReferenceHolder:
		//  (
		//    'default' defaultReference=[types::JvmType|FQN]
		//  | 'custom' customizedReference=[types::JvmType|FQN]
		//  | 'subtype' subtypeReference=[types::JvmType|FQN]
		//  )
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(
		//  'default' defaultReference=[types::JvmType|FQN]
		//| 'custom' customizedReference=[types::JvmType|FQN]
		//| 'subtype' subtypeReference=[types::JvmType|FQN]
		//)
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'default' defaultReference=[types::JvmType|FQN]
		public Group getGroup_0() { return cGroup_0; }
		
		//'default'
		public Keyword getDefaultKeyword_0_0() { return cDefaultKeyword_0_0; }
		
		//defaultReference=[types::JvmType|FQN]
		public Assignment getDefaultReferenceAssignment_0_1() { return cDefaultReferenceAssignment_0_1; }
		
		//[types::JvmType|FQN]
		public CrossReference getDefaultReferenceJvmTypeCrossReference_0_1_0() { return cDefaultReferenceJvmTypeCrossReference_0_1_0; }
		
		//FQN
		public RuleCall getDefaultReferenceJvmTypeFQNParserRuleCall_0_1_0_1() { return cDefaultReferenceJvmTypeFQNParserRuleCall_0_1_0_1; }
		
		//'custom' customizedReference=[types::JvmType|FQN]
		public Group getGroup_1() { return cGroup_1; }
		
		//'custom'
		public Keyword getCustomKeyword_1_0() { return cCustomKeyword_1_0; }
		
		//customizedReference=[types::JvmType|FQN]
		public Assignment getCustomizedReferenceAssignment_1_1() { return cCustomizedReferenceAssignment_1_1; }
		
		//[types::JvmType|FQN]
		public CrossReference getCustomizedReferenceJvmTypeCrossReference_1_1_0() { return cCustomizedReferenceJvmTypeCrossReference_1_1_0; }
		
		//FQN
		public RuleCall getCustomizedReferenceJvmTypeFQNParserRuleCall_1_1_0_1() { return cCustomizedReferenceJvmTypeFQNParserRuleCall_1_1_0_1; }
		
		//'subtype' subtypeReference=[types::JvmType|FQN]
		public Group getGroup_2() { return cGroup_2; }
		
		//'subtype'
		public Keyword getSubtypeKeyword_2_0() { return cSubtypeKeyword_2_0; }
		
		//subtypeReference=[types::JvmType|FQN]
		public Assignment getSubtypeReferenceAssignment_2_1() { return cSubtypeReferenceAssignment_2_1; }
		
		//[types::JvmType|FQN]
		public CrossReference getSubtypeReferenceJvmTypeCrossReference_2_1_0() { return cSubtypeReferenceJvmTypeCrossReference_2_1_0; }
		
		//FQN
		public RuleCall getSubtypeReferenceJvmTypeFQNParserRuleCall_2_1_0_1() { return cSubtypeReferenceJvmTypeFQNParserRuleCall_2_1_0_1; }
	}
	public class GenerateDirectiveElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.GenerateDirective");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cGenerateKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTypeNameQNParserRuleCall_1_0 = (RuleCall)cTypeNameAssignment_1.eContents().get(0);
		
		//GenerateDirective:
		//    'generate' typeName=QN
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'generate' typeName=QN
		public Group getGroup() { return cGroup; }
		
		//'generate'
		public Keyword getGenerateKeyword_0() { return cGenerateKeyword_0; }
		
		//typeName=QN
		public Assignment getTypeNameAssignment_1() { return cTypeNameAssignment_1; }
		
		//QN
		public RuleCall getTypeNameQNParserRuleCall_1_0() { return cTypeNameQNParserRuleCall_1_0; }
	}
	public class ImportElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.Import");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cImportKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cImportedNamespaceAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cImportedNamespaceImportedFQNParserRuleCall_1_0 = (RuleCall)cImportedNamespaceAssignment_1.eContents().get(0);
		
		//Import:
		//    'import' importedNamespace=ImportedFQN
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'import' importedNamespace=ImportedFQN
		public Group getGroup() { return cGroup; }
		
		//'import'
		public Keyword getImportKeyword_0() { return cImportKeyword_0; }
		
		//importedNamespace=ImportedFQN
		public Assignment getImportedNamespaceAssignment_1() { return cImportedNamespaceAssignment_1; }
		
		//ImportedFQN
		public RuleCall getImportedNamespaceImportedFQNParserRuleCall_1_0() { return cImportedNamespaceImportedFQNParserRuleCall_1_0; }
	}
	public class ImportedFQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.ImportedFQN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cFQNParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Keyword cFullStopAsteriskKeyword_1 = (Keyword)cGroup.eContents().get(1);
		
		//ImportedFQN: FQN '.*'?;
		@Override public ParserRule getRule() { return rule; }
		
		//FQN '.*'?
		public Group getGroup() { return cGroup; }
		
		//FQN
		public RuleCall getFQNParserRuleCall_0() { return cFQNParserRuleCall_0; }
		
		//'.*'?
		public Keyword getFullStopAsteriskKeyword_1() { return cFullStopAsteriskKeyword_1; }
	}
	public class FQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.FQN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cQNParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cDollarSignKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//FQN: QN ('$' ID)*;
		@Override public ParserRule getRule() { return rule; }
		
		//QN ('$' ID)*
		public Group getGroup() { return cGroup; }
		
		//QN
		public RuleCall getQNParserRuleCall_0() { return cQNParserRuleCall_0; }
		
		//('$' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'$'
		public Keyword getDollarSignKeyword_1_0() { return cDollarSignKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
	}
	public class QNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage.QN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//QN: ID ('.' ID)*;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('.' ID)*
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('.' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'.'
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
	}
	
	
	private final ModelElements pModel;
	private final ReferenceHolderElements pReferenceHolder;
	private final GenerateDirectiveElements pGenerateDirective;
	private final ImportElements pImport;
	private final ImportedFQNElements pImportedFQN;
	private final FQNElements pFQN;
	private final QNElements pQN;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public ContentAssistTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pReferenceHolder = new ReferenceHolderElements();
		this.pGenerateDirective = new GenerateDirectiveElements();
		this.pImport = new ImportElements();
		this.pImportedFQN = new ImportedFQNElements();
		this.pFQN = new FQNElements();
		this.pQN = new QNElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.common.types.xtext.ui.ContentAssistTestLanguage".equals(grammar.getName())) {
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
	//  imports+=Import*
	//  generateDirective=GenerateDirective?
	//  referenceHolder=ReferenceHolder?
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//ReferenceHolder:
	//  (
	//    'default' defaultReference=[types::JvmType|FQN]
	//  | 'custom' customizedReference=[types::JvmType|FQN]
	//  | 'subtype' subtypeReference=[types::JvmType|FQN]
	//  )
	//;
	public ReferenceHolderElements getReferenceHolderAccess() {
		return pReferenceHolder;
	}
	
	public ParserRule getReferenceHolderRule() {
		return getReferenceHolderAccess().getRule();
	}
	
	//GenerateDirective:
	//    'generate' typeName=QN
	//;
	public GenerateDirectiveElements getGenerateDirectiveAccess() {
		return pGenerateDirective;
	}
	
	public ParserRule getGenerateDirectiveRule() {
		return getGenerateDirectiveAccess().getRule();
	}
	
	//Import:
	//    'import' importedNamespace=ImportedFQN
	//;
	public ImportElements getImportAccess() {
		return pImport;
	}
	
	public ParserRule getImportRule() {
		return getImportAccess().getRule();
	}
	
	//ImportedFQN: FQN '.*'?;
	public ImportedFQNElements getImportedFQNAccess() {
		return pImportedFQN;
	}
	
	public ParserRule getImportedFQNRule() {
		return getImportedFQNAccess().getRule();
	}
	
	//FQN: QN ('$' ID)*;
	public FQNElements getFQNAccess() {
		return pFQN;
	}
	
	public ParserRule getFQNRule() {
		return getFQNAccess().getRule();
	}
	
	//QN: ID ('.' ID)*;
	public QNElements getQNAccess() {
		return pQN;
	}
	
	public ParserRule getQNRule() {
		return getQNAccess().getRule();
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
