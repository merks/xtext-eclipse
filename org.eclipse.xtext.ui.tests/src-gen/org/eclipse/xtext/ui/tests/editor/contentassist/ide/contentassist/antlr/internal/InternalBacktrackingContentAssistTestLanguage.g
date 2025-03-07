/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBacktrackingContentAssistTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.BacktrackingContentAssistTestLanguageGrammarAccess;

}
@parser::members {
	private BacktrackingContentAssistTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(BacktrackingContentAssistTestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleDocument
entryRuleDocument
:
{ before(grammarAccess.getDocumentRule()); }
	 ruleDocument
{ after(grammarAccess.getDocumentRule()); } 
	 EOF 
;

// Rule Document
ruleDocument 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDocumentAccess().getAlternatives()); }
		(rule__Document__Alternatives)*
		{ after(grammarAccess.getDocumentAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBody
entryRuleBody
:
{ before(grammarAccess.getBodyRule()); }
	 ruleBody
{ after(grammarAccess.getBodyRule()); } 
	 EOF 
;

// Rule Body
ruleBody 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBodyAccess().getGroup()); }
		(rule__Body__Group__0)
		{ after(grammarAccess.getBodyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassifierContextDecl
entryRuleClassifierContextDecl
:
{ before(grammarAccess.getClassifierContextDeclRule()); }
	 ruleClassifierContextDecl
{ after(grammarAccess.getClassifierContextDeclRule()); } 
	 EOF 
;

// Rule ClassifierContextDecl
ruleClassifierContextDecl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getGroup()); }
		(rule__ClassifierContextDecl__Group__0)
		{ after(grammarAccess.getClassifierContextDeclAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassifierRef
entryRuleClassifierRef
:
{ before(grammarAccess.getClassifierRefRule()); }
	 ruleClassifierRef
{ after(grammarAccess.getClassifierRefRule()); } 
	 EOF 
;

// Rule ClassifierRef
ruleClassifierRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierRefAccess().getAlternatives()); }
		(rule__ClassifierRef__Alternatives)
		{ after(grammarAccess.getClassifierRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleContextDecl
entryRuleContextDecl
:
{ before(grammarAccess.getContextDeclRule()); }
	 ruleContextDecl
{ after(grammarAccess.getContextDeclRule()); } 
	 EOF 
;

// Rule ContextDecl
ruleContextDecl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getContextDeclAccess().getAlternatives()); }
		(rule__ContextDecl__Alternatives)
		{ after(grammarAccess.getContextDeclAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDefinition
entryRuleDefinition
:
{ before(grammarAccess.getDefinitionRule()); }
	 ruleDefinition
{ after(grammarAccess.getDefinitionRule()); } 
	 EOF 
;

// Rule Definition
ruleDefinition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDefinitionAccess().getGroup()); }
		(rule__Definition__Group__0)
		{ after(grammarAccess.getDefinitionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDer
entryRuleDer
:
{ before(grammarAccess.getDerRule()); }
	 ruleDer
{ after(grammarAccess.getDerRule()); } 
	 EOF 
;

// Rule Der
ruleDer 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDerAccess().getGroup()); }
		(rule__Der__Group__0)
		{ after(grammarAccess.getDerAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInit
entryRuleInit
:
{ before(grammarAccess.getInitRule()); }
	 ruleInit
{ after(grammarAccess.getInitRule()); } 
	 EOF 
;

// Rule Init
ruleInit 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInitAccess().getGroup()); }
		(rule__Init__Group__0)
		{ after(grammarAccess.getInitAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInvariant
entryRuleInvariant
:
{ before(grammarAccess.getInvariantRule()); }
	 ruleInvariant
{ after(grammarAccess.getInvariantRule()); } 
	 EOF 
;

// Rule Invariant
ruleInvariant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInvariantAccess().getGroup()); }
		(rule__Invariant__Group__0)
		{ after(grammarAccess.getInvariantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperationContextDecl
entryRuleOperationContextDecl
:
{ before(grammarAccess.getOperationContextDeclRule()); }
	 ruleOperationContextDecl
{ after(grammarAccess.getOperationContextDeclRule()); } 
	 EOF 
;

// Rule OperationContextDecl
ruleOperationContextDecl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getGroup()); }
		(rule__OperationContextDecl__Group__0)
		{ after(grammarAccess.getOperationContextDeclAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperationRef
entryRuleOperationRef
:
{ before(grammarAccess.getOperationRefRule()); }
	 ruleOperationRef
{ after(grammarAccess.getOperationRefRule()); } 
	 EOF 
;

// Rule OperationRef
ruleOperationRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperationRefAccess().getAlternatives()); }
		(rule__OperationRef__Alternatives)
		{ after(grammarAccess.getOperationRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePackageDeclaration
entryRulePackageDeclaration
:
{ before(grammarAccess.getPackageDeclarationRule()); }
	 rulePackageDeclaration
{ after(grammarAccess.getPackageDeclarationRule()); } 
	 EOF 
;

// Rule PackageDeclaration
rulePackageDeclaration 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPackageDeclarationAccess().getGroup()); }
		(rule__PackageDeclaration__Group__0)
		{ after(grammarAccess.getPackageDeclarationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePackageRef
entryRulePackageRef
:
{ before(grammarAccess.getPackageRefRule()); }
	 rulePackageRef
{ after(grammarAccess.getPackageRefRule()); } 
	 EOF 
;

// Rule PackageRef
rulePackageRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPackageRefAccess().getAlternatives()); }
		(rule__PackageRef__Alternatives)
		{ after(grammarAccess.getPackageRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleParameter
entryRuleParameter
:
{ before(grammarAccess.getParameterRule()); }
	 ruleParameter
{ after(grammarAccess.getParameterRule()); } 
	 EOF 
;

// Rule Parameter
ruleParameter 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getParameterAccess().getGroup()); }
		(rule__Parameter__Group__0)
		{ after(grammarAccess.getParameterAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePost
entryRulePost
:
{ before(grammarAccess.getPostRule()); }
	 rulePost
{ after(grammarAccess.getPostRule()); } 
	 EOF 
;

// Rule Post
rulePost 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPostAccess().getGroup()); }
		(rule__Post__Group__0)
		{ after(grammarAccess.getPostAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePre
entryRulePre
:
{ before(grammarAccess.getPreRule()); }
	 rulePre
{ after(grammarAccess.getPreRule()); } 
	 EOF 
;

// Rule Pre
rulePre 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPreAccess().getGroup()); }
		(rule__Pre__Group__0)
		{ after(grammarAccess.getPreAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyContextDecl
entryRulePropertyContextDecl
:
{ before(grammarAccess.getPropertyContextDeclRule()); }
	 rulePropertyContextDecl
{ after(grammarAccess.getPropertyContextDeclRule()); } 
	 EOF 
;

// Rule PropertyContextDecl
rulePropertyContextDecl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getGroup()); }
		(rule__PropertyContextDecl__Group__0)
		{ after(grammarAccess.getPropertyContextDeclAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyRef
entryRulePropertyRef
:
{ before(grammarAccess.getPropertyRefRule()); }
	 rulePropertyRef
{ after(grammarAccess.getPropertyRefRule()); } 
	 EOF 
;

// Rule PropertyRef
rulePropertyRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyRefAccess().getAlternatives()); }
		(rule__PropertyRef__Alternatives)
		{ after(grammarAccess.getPropertyRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedClassifierRef
entryRuleQualifiedClassifierRef
:
{ before(grammarAccess.getQualifiedClassifierRefRule()); }
	 ruleQualifiedClassifierRef
{ after(grammarAccess.getQualifiedClassifierRefRule()); } 
	 EOF 
;

// Rule QualifiedClassifierRef
ruleQualifiedClassifierRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedClassifierRefAccess().getGroup()); }
		(rule__QualifiedClassifierRef__Group__0)
		{ after(grammarAccess.getQualifiedClassifierRefAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedOperationRef
entryRuleQualifiedOperationRef
:
{ before(grammarAccess.getQualifiedOperationRefRule()); }
	 ruleQualifiedOperationRef
{ after(grammarAccess.getQualifiedOperationRefRule()); } 
	 EOF 
;

// Rule QualifiedOperationRef
ruleQualifiedOperationRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedOperationRefAccess().getGroup()); }
		(rule__QualifiedOperationRef__Group__0)
		{ after(grammarAccess.getQualifiedOperationRefAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedPropertyRef
entryRuleQualifiedPropertyRef
:
{ before(grammarAccess.getQualifiedPropertyRefRule()); }
	 ruleQualifiedPropertyRef
{ after(grammarAccess.getQualifiedPropertyRefRule()); } 
	 EOF 
;

// Rule QualifiedPropertyRef
ruleQualifiedPropertyRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedPropertyRefAccess().getGroup()); }
		(rule__QualifiedPropertyRef__Group__0)
		{ after(grammarAccess.getQualifiedPropertyRefAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedPackageRef
entryRuleQualifiedPackageRef
:
{ before(grammarAccess.getQualifiedPackageRefRule()); }
	 ruleQualifiedPackageRef
{ after(grammarAccess.getQualifiedPackageRefRule()); } 
	 EOF 
;

// Rule QualifiedPackageRef
ruleQualifiedPackageRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedPackageRefAccess().getGroup()); }
		(rule__QualifiedPackageRef__Group__0)
		{ after(grammarAccess.getQualifiedPackageRefAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimpleClassifierRef
entryRuleSimpleClassifierRef
:
{ before(grammarAccess.getSimpleClassifierRefRule()); }
	 ruleSimpleClassifierRef
{ after(grammarAccess.getSimpleClassifierRefRule()); } 
	 EOF 
;

// Rule SimpleClassifierRef
ruleSimpleClassifierRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleClassifierRefAccess().getClassifierAssignment()); }
		(rule__SimpleClassifierRef__ClassifierAssignment)
		{ after(grammarAccess.getSimpleClassifierRefAccess().getClassifierAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimpleOperationRef
entryRuleSimpleOperationRef
:
{ before(grammarAccess.getSimpleOperationRefRule()); }
	 ruleSimpleOperationRef
{ after(grammarAccess.getSimpleOperationRefRule()); } 
	 EOF 
;

// Rule SimpleOperationRef
ruleSimpleOperationRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleOperationRefAccess().getOperationAssignment()); }
		(rule__SimpleOperationRef__OperationAssignment)
		{ after(grammarAccess.getSimpleOperationRefAccess().getOperationAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimplePackageRef
entryRuleSimplePackageRef
:
{ before(grammarAccess.getSimplePackageRefRule()); }
	 ruleSimplePackageRef
{ after(grammarAccess.getSimplePackageRefRule()); } 
	 EOF 
;

// Rule SimplePackageRef
ruleSimplePackageRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimplePackageRefAccess().getPackageAssignment()); }
		(rule__SimplePackageRef__PackageAssignment)
		{ after(grammarAccess.getSimplePackageRefAccess().getPackageAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimplePropertyRef
entryRuleSimplePropertyRef
:
{ before(grammarAccess.getSimplePropertyRefRule()); }
	 ruleSimplePropertyRef
{ after(grammarAccess.getSimplePropertyRefRule()); } 
	 EOF 
;

// Rule SimplePropertyRef
ruleSimplePropertyRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimplePropertyRefAccess().getFeatureAssignment()); }
		(rule__SimplePropertyRef__FeatureAssignment)
		{ after(grammarAccess.getSimplePropertyRefAccess().getFeatureAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNavigationExp
entryRuleNavigationExp
:
{ before(grammarAccess.getNavigationExpRule()); }
	 ruleNavigationExp
{ after(grammarAccess.getNavigationExpRule()); } 
	 EOF 
;

// Rule NavigationExp
ruleNavigationExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNavigationExpAccess().getGroup()); }
		(rule__NavigationExp__Group__0)
		{ after(grammarAccess.getNavigationExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNavigatingExp
entryRuleNavigatingExp
:
{ before(grammarAccess.getNavigatingExpRule()); }
	 ruleNavigatingExp
{ after(grammarAccess.getNavigatingExpRule()); } 
	 EOF 
;

// Rule NavigatingExp
ruleNavigatingExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getGroup()); }
		(rule__NavigatingExp__Group__0)
		{ after(grammarAccess.getNavigatingExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOclMessageArg
entryRuleOclMessageArg
:
{ before(grammarAccess.getOclMessageArgRule()); }
	 ruleOclMessageArg
{ after(grammarAccess.getOclMessageArgRule()); } 
	 EOF 
;

// Rule OclMessageArg
ruleOclMessageArg 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOclMessageArgAccess().getAlternatives()); }
		(rule__OclMessageArg__Alternatives)
		{ after(grammarAccess.getOclMessageArgAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNUMBER_LITERAL
entryRuleNUMBER_LITERAL
:
{ before(grammarAccess.getNUMBER_LITERALRule()); }
	 ruleNUMBER_LITERAL
{ after(grammarAccess.getNUMBER_LITERALRule()); } 
	 EOF 
;

// Rule NUMBER_LITERAL
ruleNUMBER_LITERAL 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNUMBER_LITERALAccess().getGroup()); }
		(rule__NUMBER_LITERAL__Group__0)
		{ after(grammarAccess.getNUMBER_LITERALAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEssentialOCLRestrictedKeywords
entryRuleEssentialOCLRestrictedKeywords
:
{ before(grammarAccess.getEssentialOCLRestrictedKeywordsRule()); }
	 ruleEssentialOCLRestrictedKeywords
{ after(grammarAccess.getEssentialOCLRestrictedKeywordsRule()); } 
	 EOF 
;

// Rule EssentialOCLRestrictedKeywords
ruleEssentialOCLRestrictedKeywords 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getAlternatives()); }
		(rule__EssentialOCLRestrictedKeywords__Alternatives)
		{ after(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRestrictedKeywords
entryRuleRestrictedKeywords
:
{ before(grammarAccess.getRestrictedKeywordsRule()); }
	 ruleRestrictedKeywords
{ after(grammarAccess.getRestrictedKeywordsRule()); } 
	 EOF 
;

// Rule RestrictedKeywords
ruleRestrictedKeywords 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRestrictedKeywordsAccess().getEssentialOCLRestrictedKeywordsParserRuleCall()); }
		ruleEssentialOCLRestrictedKeywords
		{ after(grammarAccess.getRestrictedKeywordsAccess().getEssentialOCLRestrictedKeywordsParserRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIdentifier
entryRuleIdentifier
:
{ before(grammarAccess.getIdentifierRule()); }
	 ruleIdentifier
{ after(grammarAccess.getIdentifierRule()); } 
	 EOF 
;

// Rule Identifier
ruleIdentifier 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdentifierAccess().getAlternatives()); }
		(rule__Identifier__Alternatives)
		{ after(grammarAccess.getIdentifierAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStringLiteral
entryRuleStringLiteral
:
{ before(grammarAccess.getStringLiteralRule()); }
	 ruleStringLiteral
{ after(grammarAccess.getStringLiteralRule()); } 
	 EOF 
;

// Rule StringLiteral
ruleStringLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStringLiteralAccess().getSTRINGTerminalRuleCall()); }
		RULE_STRING
		{ after(grammarAccess.getStringLiteralAccess().getSTRINGTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimitiveTypeIdentifier
entryRulePrimitiveTypeIdentifier
:
{ before(grammarAccess.getPrimitiveTypeIdentifierRule()); }
	 rulePrimitiveTypeIdentifier
{ after(grammarAccess.getPrimitiveTypeIdentifierRule()); } 
	 EOF 
;

// Rule PrimitiveTypeIdentifier
rulePrimitiveTypeIdentifier 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getAlternatives()); }
		(rule__PrimitiveTypeIdentifier__Alternatives)
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimitiveType
entryRulePrimitiveType
:
{ before(grammarAccess.getPrimitiveTypeRule()); }
	 rulePrimitiveType
{ after(grammarAccess.getPrimitiveTypeRule()); } 
	 EOF 
;

// Rule PrimitiveType
rulePrimitiveType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimitiveTypeAccess().getNameAssignment()); }
		(rule__PrimitiveType__NameAssignment)
		{ after(grammarAccess.getPrimitiveTypeAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCollectionTypeIdentifier
entryRuleCollectionTypeIdentifier
:
{ before(grammarAccess.getCollectionTypeIdentifierRule()); }
	 ruleCollectionTypeIdentifier
{ after(grammarAccess.getCollectionTypeIdentifierRule()); } 
	 EOF 
;

// Rule CollectionTypeIdentifier
ruleCollectionTypeIdentifier 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getAlternatives()); }
		(rule__CollectionTypeIdentifier__Alternatives)
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTypeExp
entryRuleTypeExp
:
{ before(grammarAccess.getTypeExpRule()); }
	 ruleTypeExp
{ after(grammarAccess.getTypeExpRule()); } 
	 EOF 
;

// Rule TypeExp
ruleTypeExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeExpAccess().getAlternatives()); }
		(rule__TypeExp__Alternatives)
		{ after(grammarAccess.getTypeExpAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCollectionType
entryRuleCollectionType
:
{ before(grammarAccess.getCollectionTypeRule()); }
	 ruleCollectionType
{ after(grammarAccess.getCollectionTypeRule()); } 
	 EOF 
;

// Rule CollectionType
ruleCollectionType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCollectionTypeAccess().getGroup()); }
		(rule__CollectionType__Group__0)
		{ after(grammarAccess.getCollectionTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTupleType
entryRuleTupleType
:
{ before(grammarAccess.getTupleTypeRule()); }
	 ruleTupleType
{ after(grammarAccess.getTupleTypeRule()); } 
	 EOF 
;

// Rule TupleType
ruleTupleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTupleTypeAccess().getGroup()); }
		(rule__TupleType__Group__0)
		{ after(grammarAccess.getTupleTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuletuplePart
entryRuletuplePart
:
{ before(grammarAccess.getTuplePartRule()); }
	 ruletuplePart
{ after(grammarAccess.getTuplePartRule()); } 
	 EOF 
;

// Rule tuplePart
ruletuplePart 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTuplePartAccess().getGroup()); }
		(rule__TuplePart__Group__0)
		{ after(grammarAccess.getTuplePartAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCollectionLiteralExp
entryRuleCollectionLiteralExp
:
{ before(grammarAccess.getCollectionLiteralExpRule()); }
	 ruleCollectionLiteralExp
{ after(grammarAccess.getCollectionLiteralExpRule()); } 
	 EOF 
;

// Rule CollectionLiteralExp
ruleCollectionLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCollectionLiteralExpAccess().getGroup()); }
		(rule__CollectionLiteralExp__Group__0)
		{ after(grammarAccess.getCollectionLiteralExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCollectionLiteralPart
entryRuleCollectionLiteralPart
:
{ before(grammarAccess.getCollectionLiteralPartRule()); }
	 ruleCollectionLiteralPart
{ after(grammarAccess.getCollectionLiteralPartRule()); } 
	 EOF 
;

// Rule CollectionLiteralPart
ruleCollectionLiteralPart 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCollectionLiteralPartAccess().getGroup()); }
		(rule__CollectionLiteralPart__Group__0)
		{ after(grammarAccess.getCollectionLiteralPartAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimitiveLiteralExp
entryRulePrimitiveLiteralExp
:
{ before(grammarAccess.getPrimitiveLiteralExpRule()); }
	 rulePrimitiveLiteralExp
{ after(grammarAccess.getPrimitiveLiteralExpRule()); } 
	 EOF 
;

// Rule PrimitiveLiteralExp
rulePrimitiveLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getAlternatives()); }
		(rule__PrimitiveLiteralExp__Alternatives)
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTupleLiteralExp
entryRuleTupleLiteralExp
:
{ before(grammarAccess.getTupleLiteralExpRule()); }
	 ruleTupleLiteralExp
{ after(grammarAccess.getTupleLiteralExpRule()); } 
	 EOF 
;

// Rule TupleLiteralExp
ruleTupleLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTupleLiteralExpAccess().getGroup()); }
		(rule__TupleLiteralExp__Group__0)
		{ after(grammarAccess.getTupleLiteralExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTupleLiteralPart
entryRuleTupleLiteralPart
:
{ before(grammarAccess.getTupleLiteralPartRule()); }
	 ruleTupleLiteralPart
{ after(grammarAccess.getTupleLiteralPartRule()); } 
	 EOF 
;

// Rule TupleLiteralPart
ruleTupleLiteralPart 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTupleLiteralPartAccess().getGroup()); }
		(rule__TupleLiteralPart__Group__0)
		{ after(grammarAccess.getTupleLiteralPartAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNumberLiteralExp
entryRuleNumberLiteralExp
:
{ before(grammarAccess.getNumberLiteralExpRule()); }
	 ruleNumberLiteralExp
{ after(grammarAccess.getNumberLiteralExpRule()); } 
	 EOF 
;

// Rule NumberLiteralExp
ruleNumberLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNumberLiteralExpAccess().getNameAssignment()); }
		(rule__NumberLiteralExp__NameAssignment)
		{ after(grammarAccess.getNumberLiteralExpAccess().getNameAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStringLiteralExp
entryRuleStringLiteralExp
:
{ before(grammarAccess.getStringLiteralExpRule()); }
	 ruleStringLiteralExp
{ after(grammarAccess.getStringLiteralExpRule()); } 
	 EOF 
;

// Rule StringLiteralExp
ruleStringLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		(
			{ before(grammarAccess.getStringLiteralExpAccess().getValuesAssignment()); }
			(rule__StringLiteralExp__ValuesAssignment)
			{ after(grammarAccess.getStringLiteralExpAccess().getValuesAssignment()); }
		)
		(
			{ before(grammarAccess.getStringLiteralExpAccess().getValuesAssignment()); }
			(rule__StringLiteralExp__ValuesAssignment)*
			{ after(grammarAccess.getStringLiteralExpAccess().getValuesAssignment()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBooleanLiteralExp
entryRuleBooleanLiteralExp
:
{ before(grammarAccess.getBooleanLiteralExpRule()); }
	 ruleBooleanLiteralExp
{ after(grammarAccess.getBooleanLiteralExpRule()); } 
	 EOF 
;

// Rule BooleanLiteralExp
ruleBooleanLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBooleanLiteralExpAccess().getGroup()); }
		(rule__BooleanLiteralExp__Group__0)
		{ after(grammarAccess.getBooleanLiteralExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInvalidLiteralExp
entryRuleInvalidLiteralExp
:
{ before(grammarAccess.getInvalidLiteralExpRule()); }
	 ruleInvalidLiteralExp
{ after(grammarAccess.getInvalidLiteralExpRule()); } 
	 EOF 
;

// Rule InvalidLiteralExp
ruleInvalidLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInvalidLiteralExpAccess().getGroup()); }
		(rule__InvalidLiteralExp__Group__0)
		{ after(grammarAccess.getInvalidLiteralExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNullLiteralExp
entryRuleNullLiteralExp
:
{ before(grammarAccess.getNullLiteralExpRule()); }
	 ruleNullLiteralExp
{ after(grammarAccess.getNullLiteralExpRule()); } 
	 EOF 
;

// Rule NullLiteralExp
ruleNullLiteralExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNullLiteralExpAccess().getGroup()); }
		(rule__NullLiteralExp__Group__0)
		{ after(grammarAccess.getNullLiteralExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExpression
entryRuleExpression
:
{ before(grammarAccess.getExpressionRule()); }
	 ruleExpression
{ after(grammarAccess.getExpressionRule()); } 
	 EOF 
;

// Rule Expression
ruleExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExpressionAccess().getAlternatives()); }
		(rule__Expression__Alternatives)
		{ after(grammarAccess.getExpressionAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleimplies
entryRuleimplies
:
{ before(grammarAccess.getImpliesRule()); }
	 ruleimplies
{ after(grammarAccess.getImpliesRule()); } 
	 EOF 
;

// Rule implies
ruleimplies 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getImpliesAccess().getGroup()); }
		(rule__Implies__Group__0)
		{ after(grammarAccess.getImpliesAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulexor
entryRulexor
:
{ before(grammarAccess.getXorRule()); }
	 rulexor
{ after(grammarAccess.getXorRule()); } 
	 EOF 
;

// Rule xor
rulexor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXorAccess().getGroup()); }
		(rule__Xor__Group__0)
		{ after(grammarAccess.getXorAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleor
entryRuleor
:
{ before(grammarAccess.getOrRule()); }
	 ruleor
{ after(grammarAccess.getOrRule()); } 
	 EOF 
;

// Rule or
ruleor 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOrAccess().getGroup()); }
		(rule__Or__Group__0)
		{ after(grammarAccess.getOrAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleand
entryRuleand
:
{ before(grammarAccess.getAndRule()); }
	 ruleand
{ after(grammarAccess.getAndRule()); } 
	 EOF 
;

// Rule and
ruleand 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAndAccess().getGroup()); }
		(rule__And__Group__0)
		{ after(grammarAccess.getAndAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleequality
entryRuleequality
:
{ before(grammarAccess.getEqualityRule()); }
	 ruleequality
{ after(grammarAccess.getEqualityRule()); } 
	 EOF 
;

// Rule equality
ruleequality 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEqualityAccess().getGroup()); }
		(rule__Equality__Group__0)
		{ after(grammarAccess.getEqualityAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulerelational
entryRulerelational
:
{ before(grammarAccess.getRelationalRule()); }
	 rulerelational
{ after(grammarAccess.getRelationalRule()); } 
	 EOF 
;

// Rule relational
rulerelational 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationalAccess().getGroup()); }
		(rule__Relational__Group__0)
		{ after(grammarAccess.getRelationalAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleadditive
entryRuleadditive
:
{ before(grammarAccess.getAdditiveRule()); }
	 ruleadditive
{ after(grammarAccess.getAdditiveRule()); } 
	 EOF 
;

// Rule additive
ruleadditive 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAdditiveAccess().getGroup()); }
		(rule__Additive__Group__0)
		{ after(grammarAccess.getAdditiveAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulemultiplicative
entryRulemultiplicative
:
{ before(grammarAccess.getMultiplicativeRule()); }
	 rulemultiplicative
{ after(grammarAccess.getMultiplicativeRule()); } 
	 EOF 
;

// Rule multiplicative
rulemultiplicative 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMultiplicativeAccess().getGroup()); }
		(rule__Multiplicative__Group__0)
		{ after(grammarAccess.getMultiplicativeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleunary
entryRuleunary
:
{ before(grammarAccess.getUnaryRule()); }
	 ruleunary
{ after(grammarAccess.getUnaryRule()); } 
	 EOF 
;

// Rule unary
ruleunary 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnaryAccess().getAlternatives()); }
		(rule__Unary__Alternatives)
		{ after(grammarAccess.getUnaryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSubNavigationExp
entryRuleSubNavigationExp
:
{ before(grammarAccess.getSubNavigationExpRule()); }
	 ruleSubNavigationExp
{ after(grammarAccess.getSubNavigationExpRule()); } 
	 EOF 
;

// Rule SubNavigationExp
ruleSubNavigationExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getAlternatives()); }
		(rule__SubNavigationExp__Alternatives)
		{ after(grammarAccess.getSubNavigationExpAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSubNavigatingExp
entryRuleSubNavigatingExp
:
{ before(grammarAccess.getSubNavigatingExpRule()); }
	 ruleSubNavigatingExp
{ after(grammarAccess.getSubNavigatingExpRule()); } 
	 EOF 
;

// Rule SubNavigatingExp
ruleSubNavigatingExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSubNavigatingExpAccess().getAlternatives()); }
		(rule__SubNavigatingExp__Alternatives)
		{ after(grammarAccess.getSubNavigatingExpAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleiteratorVariable
entryRuleiteratorVariable
:
{ before(grammarAccess.getIteratorVariableRule()); }
	 ruleiteratorVariable
{ after(grammarAccess.getIteratorVariableRule()); } 
	 EOF 
;

// Rule iteratorVariable
ruleiteratorVariable 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIteratorVariableAccess().getGroup()); }
		(rule__IteratorVariable__Group__0)
		{ after(grammarAccess.getIteratorVariableAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleiteratorAccumulator
entryRuleiteratorAccumulator
:
{ before(grammarAccess.getIteratorAccumulatorRule()); }
	 ruleiteratorAccumulator
{ after(grammarAccess.getIteratorAccumulatorRule()); } 
	 EOF 
;

// Rule iteratorAccumulator
ruleiteratorAccumulator 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIteratorAccumulatorAccess().getGroup()); }
		(rule__IteratorAccumulator__Group__0)
		{ after(grammarAccess.getIteratorAccumulatorAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRoundBracketExp
entryRuleRoundBracketExp
:
{ before(grammarAccess.getRoundBracketExpRule()); }
	 ruleRoundBracketExp
{ after(grammarAccess.getRoundBracketExpRule()); } 
	 EOF 
;

// Rule RoundBracketExp
ruleRoundBracketExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getGroup()); }
		(rule__RoundBracketExp__Group__0)
		{ after(grammarAccess.getRoundBracketExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSquareBracketExp
entryRuleSquareBracketExp
:
{ before(grammarAccess.getSquareBracketExpRule()); }
	 ruleSquareBracketExp
{ after(grammarAccess.getSquareBracketExpRule()); } 
	 EOF 
;

// Rule SquareBracketExp
ruleSquareBracketExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSquareBracketExpAccess().getGroup()); }
		(rule__SquareBracketExp__Group__0)
		{ after(grammarAccess.getSquareBracketExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePreExp
entryRulePreExp
:
{ before(grammarAccess.getPreExpRule()); }
	 rulePreExp
{ after(grammarAccess.getPreExpRule()); } 
	 EOF 
;

// Rule PreExp
rulePreExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPreExpAccess().getGroup()); }
		(rule__PreExp__Group__0)
		{ after(grammarAccess.getPreExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSelfExp
entryRuleSelfExp
:
{ before(grammarAccess.getSelfExpRule()); }
	 ruleSelfExp
{ after(grammarAccess.getSelfExpRule()); } 
	 EOF 
;

// Rule SelfExp
ruleSelfExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSelfExpAccess().getGroup()); }
		(rule__SelfExp__Group__0)
		{ after(grammarAccess.getSelfExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNameExp
entryRuleNameExp
:
{ before(grammarAccess.getNameExpRule()); }
	 ruleNameExp
{ after(grammarAccess.getNameExpRule()); } 
	 EOF 
;

// Rule NameExp
ruleNameExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNameExpAccess().getAlternatives()); }
		(rule__NameExp__Alternatives)
		{ after(grammarAccess.getNameExpAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePathNameExp
entryRulePathNameExp
:
{ before(grammarAccess.getPathNameExpRule()); }
	 rulePathNameExp
{ after(grammarAccess.getPathNameExpRule()); } 
	 EOF 
;

// Rule PathNameExp
rulePathNameExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPathNameExpAccess().getGroup()); }
		(rule__PathNameExp__Group__0)
		{ after(grammarAccess.getPathNameExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimpleNameExp
entryRuleSimpleNameExp
:
{ before(grammarAccess.getSimpleNameExpRule()); }
	 ruleSimpleNameExp
{ after(grammarAccess.getSimpleNameExpRule()); } 
	 EOF 
;

// Rule SimpleNameExp
ruleSimpleNameExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleNameExpAccess().getElementAssignment()); }
		(rule__SimpleNameExp__ElementAssignment)
		{ after(grammarAccess.getSimpleNameExpAccess().getElementAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIfExp
entryRuleIfExp
:
{ before(grammarAccess.getIfExpRule()); }
	 ruleIfExp
{ after(grammarAccess.getIfExpRule()); } 
	 EOF 
;

// Rule IfExp
ruleIfExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIfExpAccess().getGroup()); }
		(rule__IfExp__Group__0)
		{ after(grammarAccess.getIfExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLetExp
entryRuleLetExp
:
{ before(grammarAccess.getLetExpRule()); }
	 ruleLetExp
{ after(grammarAccess.getLetExpRule()); } 
	 EOF 
;

// Rule LetExp
ruleLetExp 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLetExpAccess().getGroup()); }
		(rule__LetExp__Group__0)
		{ after(grammarAccess.getLetExpAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLetVariable
entryRuleLetVariable
:
{ before(grammarAccess.getLetVariableRule()); }
	 ruleLetVariable
{ after(grammarAccess.getLetVariableRule()); } 
	 EOF 
;

// Rule LetVariable
ruleLetVariable 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLetVariableAccess().getGroup()); }
		(rule__LetVariable__Group__0)
		{ after(grammarAccess.getLetVariableAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Document__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDocumentAccess().getPackagesAssignment_0()); }
		(rule__Document__PackagesAssignment_0)
		{ after(grammarAccess.getDocumentAccess().getPackagesAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getDocumentAccess().getContextsAssignment_1()); }
		(rule__Document__ContextsAssignment_1)
		{ after(grammarAccess.getDocumentAccess().getContextsAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Alternatives_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getInvariantsAssignment_3_0()); }
		(rule__ClassifierContextDecl__InvariantsAssignment_3_0)
		{ after(grammarAccess.getClassifierContextDeclAccess().getInvariantsAssignment_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getDefinitionsAssignment_3_1()); }
		(rule__ClassifierContextDecl__DefinitionsAssignment_3_1)
		{ after(grammarAccess.getClassifierContextDeclAccess().getDefinitionsAssignment_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierRef__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierRefAccess().getQualifiedClassifierRefParserRuleCall_0()); }
		ruleQualifiedClassifierRef
		{ after(grammarAccess.getClassifierRefAccess().getQualifiedClassifierRefParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getClassifierRefAccess().getSimpleClassifierRefParserRuleCall_1()); }
		ruleSimpleClassifierRef
		{ after(grammarAccess.getClassifierRefAccess().getSimpleClassifierRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ContextDecl__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getContextDeclAccess().getPropertyContextDeclParserRuleCall_0()); }
		rulePropertyContextDecl
		{ after(grammarAccess.getContextDeclAccess().getPropertyContextDeclParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getContextDeclAccess().getClassifierContextDeclParserRuleCall_1()); }
		ruleClassifierContextDecl
		{ after(grammarAccess.getContextDeclAccess().getClassifierContextDeclParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getContextDeclAccess().getOperationContextDeclParserRuleCall_2()); }
		ruleOperationContextDecl
		{ after(grammarAccess.getContextDeclAccess().getOperationContextDeclParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Alternatives_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getPresAssignment_7_0()); }
		(rule__OperationContextDecl__PresAssignment_7_0)
		{ after(grammarAccess.getOperationContextDeclAccess().getPresAssignment_7_0()); }
	)
	|
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getPostsAssignment_7_1()); }
		(rule__OperationContextDecl__PostsAssignment_7_1)
		{ after(grammarAccess.getOperationContextDeclAccess().getPostsAssignment_7_1()); }
	)
	|
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getBodiesAssignment_7_2()); }
		(rule__OperationContextDecl__BodiesAssignment_7_2)
		{ after(grammarAccess.getOperationContextDeclAccess().getBodiesAssignment_7_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationRef__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationRefAccess().getQualifiedOperationRefParserRuleCall_0()); }
		ruleQualifiedOperationRef
		{ after(grammarAccess.getOperationRefAccess().getQualifiedOperationRefParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getOperationRefAccess().getSimpleOperationRefParserRuleCall_1()); }
		ruleSimpleOperationRef
		{ after(grammarAccess.getOperationRefAccess().getSimpleOperationRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageRef__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageRefAccess().getQualifiedPackageRefParserRuleCall_0()); }
		ruleQualifiedPackageRef
		{ after(grammarAccess.getPackageRefAccess().getQualifiedPackageRefParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getPackageRefAccess().getSimplePackageRefParserRuleCall_1()); }
		ruleSimplePackageRef
		{ after(grammarAccess.getPackageRefAccess().getSimplePackageRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getGroup_4_0()); }
		(rule__PropertyContextDecl__Group_4_0__0)?
		{ after(grammarAccess.getPropertyContextDeclAccess().getGroup_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getGroup_4_1()); }
		(rule__PropertyContextDecl__Group_4_1__0)
		{ after(grammarAccess.getPropertyContextDeclAccess().getGroup_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRef__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyRefAccess().getQualifiedPropertyRefParserRuleCall_0()); }
		ruleQualifiedPropertyRef
		{ after(grammarAccess.getPropertyRefAccess().getQualifiedPropertyRefParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyRefAccess().getSimplePropertyRefParserRuleCall_1()); }
		ruleSimplePropertyRef
		{ after(grammarAccess.getPropertyRefAccess().getSimplePropertyRefParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getGroup_1_0()); }
		(rule__NavigationExp__Group_1_0__0)
		{ after(grammarAccess.getNavigationExpAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigationExpAccess().getGroup_1_1()); }
		(rule__NavigationExp__Group_1_1__0)
		{ after(grammarAccess.getNavigationExpAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__OpAlternatives_1_0_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpFullStopKeyword_1_0_1_0_0()); }
		'.'
		{ after(grammarAccess.getNavigationExpAccess().getOpFullStopKeyword_1_0_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1()); }
		'->'
		{ after(grammarAccess.getNavigationExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__OpAlternatives_1_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0()); }
		'^^'
		{ after(grammarAccess.getNavigationExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1()); }
		'^'
		{ after(grammarAccess.getNavigationExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getGroup_1_0()); }
		(rule__NavigatingExp__Group_1_0__0)
		{ after(grammarAccess.getNavigatingExpAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigatingExpAccess().getGroup_1_1()); }
		(rule__NavigatingExp__Group_1_1__0)
		{ after(grammarAccess.getNavigatingExpAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__OpAlternatives_1_0_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpFullStopKeyword_1_0_1_0_0()); }
		'.'
		{ after(grammarAccess.getNavigatingExpAccess().getOpFullStopKeyword_1_0_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1()); }
		'->'
		{ after(grammarAccess.getNavigatingExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__OpAlternatives_1_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0()); }
		'^^'
		{ after(grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1()); }
		'^'
		{ after(grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOclMessageArgAccess().getGroup_0()); }
		(rule__OclMessageArg__Group_0__0)
		{ after(grammarAccess.getOclMessageArgAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getOclMessageArgAccess().getExpressionParserRuleCall_1()); }
		ruleExpression
		{ after(grammarAccess.getOclMessageArgAccess().getExpressionParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Alternatives_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_0()); }
		'e'
		{ after(grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_1()); }
		'E'
		{ after(grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Alternatives_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNUMBER_LITERALAccess().getPlusSignKeyword_2_1_0()); }
		'+'
		{ after(grammarAccess.getNUMBER_LITERALAccess().getPlusSignKeyword_2_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getNUMBER_LITERALAccess().getHyphenMinusKeyword_2_1_1()); }
		'-'
		{ after(grammarAccess.getNUMBER_LITERALAccess().getHyphenMinusKeyword_2_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EssentialOCLRestrictedKeywords__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_0()); }
		'e'
		{ after(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_1()); }
		'E'
		{ after(grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Identifier__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdentifierAccess().getIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getIdentifierAccess().getIDTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getIdentifierAccess().getRestrictedKeywordsParserRuleCall_1()); }
		ruleRestrictedKeywords
		{ after(grammarAccess.getIdentifierAccess().getRestrictedKeywordsParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveTypeIdentifier__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getBooleanKeyword_0()); }
		'Boolean'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getBooleanKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getIntegerKeyword_1()); }
		'Integer'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getIntegerKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getRealKeyword_2()); }
		'Real'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getRealKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getStringKeyword_3()); }
		'String'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getStringKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getUnlimitedNaturalKeyword_4()); }
		'UnlimitedNatural'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getUnlimitedNaturalKeyword_4()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclAnyKeyword_5()); }
		'OclAny'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclAnyKeyword_5()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclInvalidKeyword_6()); }
		'OclInvalid'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclInvalidKeyword_6()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclVoidKeyword_7()); }
		'OclVoid'
		{ after(grammarAccess.getPrimitiveTypeIdentifierAccess().getOclVoidKeyword_7()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionTypeIdentifier__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getSetKeyword_0()); }
		'Set'
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getSetKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getBagKeyword_1()); }
		'Bag'
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getBagKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getSequenceKeyword_2()); }
		'Sequence'
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getSequenceKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getCollectionKeyword_3()); }
		'Collection'
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getCollectionKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getCollectionTypeIdentifierAccess().getOrderedSetKeyword_4()); }
		'OrderedSet'
		{ after(grammarAccess.getCollectionTypeIdentifierAccess().getOrderedSetKeyword_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeExp__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeExpAccess().getPrimitiveTypeParserRuleCall_0()); }
		rulePrimitiveType
		{ after(grammarAccess.getTypeExpAccess().getPrimitiveTypeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeExpAccess().getNameExpParserRuleCall_1()); }
		ruleNameExp
		{ after(grammarAccess.getTypeExpAccess().getNameExpParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getTypeExpAccess().getCollectionTypeParserRuleCall_2()); }
		ruleCollectionType
		{ after(grammarAccess.getTypeExpAccess().getCollectionTypeParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getTypeExpAccess().getTupleTypeParserRuleCall_3()); }
		ruleTupleType
		{ after(grammarAccess.getTypeExpAccess().getTupleTypeParserRuleCall_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveLiteralExp__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getNumberLiteralExpParserRuleCall_0()); }
		ruleNumberLiteralExp
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getNumberLiteralExpParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getStringLiteralExpParserRuleCall_1()); }
		ruleStringLiteralExp
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getStringLiteralExpParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getBooleanLiteralExpParserRuleCall_2()); }
		ruleBooleanLiteralExp
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getBooleanLiteralExpParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getInvalidLiteralExpParserRuleCall_3()); }
		ruleInvalidLiteralExp
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getInvalidLiteralExpParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getPrimitiveLiteralExpAccess().getNullLiteralExpParserRuleCall_4()); }
		ruleNullLiteralExp
		{ after(grammarAccess.getPrimitiveLiteralExpAccess().getNullLiteralExpParserRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExp__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanLiteralExpAccess().getIsTrueAssignment_1_0()); }
		(rule__BooleanLiteralExp__IsTrueAssignment_1_0)
		{ after(grammarAccess.getBooleanLiteralExpAccess().getIsTrueAssignment_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getBooleanLiteralExpAccess().getFalseKeyword_1_1()); }
		'false'
		{ after(grammarAccess.getBooleanLiteralExpAccess().getFalseKeyword_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Expression__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExpressionAccess().getImpliesParserRuleCall_0()); }
		ruleimplies
		{ after(grammarAccess.getExpressionAccess().getImpliesParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getExpressionAccess().getLetExpParserRuleCall_1()); }
		ruleLetExp
		{ after(grammarAccess.getExpressionAccess().getLetExpParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImpliesAccess().getArgumentXorParserRuleCall_1_2_0_0()); }
		rulexor
		{ after(grammarAccess.getImpliesAccess().getArgumentXorParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getImpliesAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getImpliesAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXorAccess().getArgumentOrParserRuleCall_1_2_0_0()); }
		ruleor
		{ after(grammarAccess.getXorAccess().getArgumentOrParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getXorAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getXorAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOrAccess().getArgumentAndParserRuleCall_1_2_0_0()); }
		ruleand
		{ after(grammarAccess.getOrAccess().getArgumentAndParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getOrAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getOrAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAndAccess().getArgumentEqualityParserRuleCall_1_2_0_0()); }
		ruleequality
		{ after(grammarAccess.getAndAccess().getArgumentEqualityParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getAndAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getAndAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__OpAlternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEqualityAccess().getOpEqualsSignKeyword_1_1_0_0()); }
		'='
		{ after(grammarAccess.getEqualityAccess().getOpEqualsSignKeyword_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getEqualityAccess().getOpLessThanSignGreaterThanSignKeyword_1_1_0_1()); }
		'<>'
		{ after(grammarAccess.getEqualityAccess().getOpLessThanSignGreaterThanSignKeyword_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEqualityAccess().getArgumentRelationalParserRuleCall_1_2_0_0()); }
		rulerelational
		{ after(grammarAccess.getEqualityAccess().getArgumentRelationalParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getEqualityAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getEqualityAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__OpAlternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalAccess().getOpGreaterThanSignKeyword_1_1_0_0()); }
		'>'
		{ after(grammarAccess.getRelationalAccess().getOpGreaterThanSignKeyword_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalAccess().getOpLessThanSignKeyword_1_1_0_1()); }
		'<'
		{ after(grammarAccess.getRelationalAccess().getOpLessThanSignKeyword_1_1_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalAccess().getOpGreaterThanSignEqualsSignKeyword_1_1_0_2()); }
		'>='
		{ after(grammarAccess.getRelationalAccess().getOpGreaterThanSignEqualsSignKeyword_1_1_0_2()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalAccess().getOpLessThanSignEqualsSignKeyword_1_1_0_3()); }
		'<='
		{ after(grammarAccess.getRelationalAccess().getOpLessThanSignEqualsSignKeyword_1_1_0_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalAccess().getArgumentAdditiveParserRuleCall_1_2_0_0()); }
		ruleadditive
		{ after(grammarAccess.getRelationalAccess().getArgumentAdditiveParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationalAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getRelationalAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__OpAlternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAdditiveAccess().getOpPlusSignKeyword_1_1_0_0()); }
		'+'
		{ after(grammarAccess.getAdditiveAccess().getOpPlusSignKeyword_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getAdditiveAccess().getOpHyphenMinusKeyword_1_1_0_1()); }
		'-'
		{ after(grammarAccess.getAdditiveAccess().getOpHyphenMinusKeyword_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAdditiveAccess().getArgumentMultiplicativeParserRuleCall_1_2_0_0()); }
		rulemultiplicative
		{ after(grammarAccess.getAdditiveAccess().getArgumentMultiplicativeParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getAdditiveAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getAdditiveAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__OpAlternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMultiplicativeAccess().getOpAsteriskKeyword_1_1_0_0()); }
		'*'
		{ after(grammarAccess.getMultiplicativeAccess().getOpAsteriskKeyword_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getMultiplicativeAccess().getOpSolidusKeyword_1_1_0_1()); }
		'/'
		{ after(grammarAccess.getMultiplicativeAccess().getOpSolidusKeyword_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__ArgumentAlternatives_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMultiplicativeAccess().getArgumentUnaryParserRuleCall_1_2_0_0()); }
		ruleunary
		{ after(grammarAccess.getMultiplicativeAccess().getArgumentUnaryParserRuleCall_1_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getMultiplicativeAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
		ruleLetExp
		{ after(grammarAccess.getMultiplicativeAccess().getArgumentLetExpParserRuleCall_1_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnaryAccess().getNavigationExpParserRuleCall_0()); }
		ruleNavigationExp
		{ after(grammarAccess.getUnaryAccess().getNavigationExpParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getUnaryAccess().getGroup_1()); }
		(rule__Unary__Group_1__0)
		{ after(grammarAccess.getUnaryAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__OpAlternatives_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnaryAccess().getOpHyphenMinusKeyword_1_1_0_0()); }
		'-'
		{ after(grammarAccess.getUnaryAccess().getOpHyphenMinusKeyword_1_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getUnaryAccess().getOpNotKeyword_1_1_0_1()); }
		'not'
		{ after(grammarAccess.getUnaryAccess().getOpNotKeyword_1_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getRoundBracketExpParserRuleCall_0()); }
		ruleRoundBracketExp
		{ after(grammarAccess.getSubNavigationExpAccess().getRoundBracketExpParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getSquareBracketExpParserRuleCall_1()); }
		ruleSquareBracketExp
		{ after(grammarAccess.getSubNavigationExpAccess().getSquareBracketExpParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getSelfExpParserRuleCall_2()); }
		ruleSelfExp
		{ after(grammarAccess.getSubNavigationExpAccess().getSelfExpParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getPrimitiveLiteralExpParserRuleCall_3()); }
		rulePrimitiveLiteralExp
		{ after(grammarAccess.getSubNavigationExpAccess().getPrimitiveLiteralExpParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getTupleLiteralExpParserRuleCall_4()); }
		ruleTupleLiteralExp
		{ after(grammarAccess.getSubNavigationExpAccess().getTupleLiteralExpParserRuleCall_4()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getCollectionLiteralExpParserRuleCall_5()); }
		ruleCollectionLiteralExp
		{ after(grammarAccess.getSubNavigationExpAccess().getCollectionLiteralExpParserRuleCall_5()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getPreExpParserRuleCall_6()); }
		rulePreExp
		{ after(grammarAccess.getSubNavigationExpAccess().getPreExpParserRuleCall_6()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getTypeExpParserRuleCall_7()); }
		ruleTypeExp
		{ after(grammarAccess.getSubNavigationExpAccess().getTypeExpParserRuleCall_7()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getIfExpParserRuleCall_8()); }
		ruleIfExp
		{ after(grammarAccess.getSubNavigationExpAccess().getIfExpParserRuleCall_8()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getGroup_9()); }
		(rule__SubNavigationExp__Group_9__0)
		{ after(grammarAccess.getSubNavigationExpAccess().getGroup_9()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigatingExp__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubNavigatingExpAccess().getRoundBracketExpParserRuleCall_0()); }
		ruleRoundBracketExp
		{ after(grammarAccess.getSubNavigatingExpAccess().getRoundBracketExpParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigatingExpAccess().getSquareBracketExpParserRuleCall_1()); }
		ruleSquareBracketExp
		{ after(grammarAccess.getSubNavigatingExpAccess().getSquareBracketExpParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigatingExpAccess().getPreExpParserRuleCall_2()); }
		rulePreExp
		{ after(grammarAccess.getSubNavigatingExpAccess().getPreExpParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getSubNavigatingExpAccess().getNameExpParserRuleCall_3()); }
		ruleNameExp
		{ after(grammarAccess.getSubNavigatingExpAccess().getNameExpParserRuleCall_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Alternatives_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getGroup_3_1_0()); }
		(rule__RoundBracketExp__Group_3_1_0__0)
		{ after(grammarAccess.getRoundBracketExpAccess().getGroup_3_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getGroup_3_1_1()); }
		(rule__RoundBracketExp__Group_3_1_1__0)
		{ after(grammarAccess.getRoundBracketExpAccess().getGroup_3_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NameExp__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNameExpAccess().getPathNameExpParserRuleCall_0()); }
		rulePathNameExp
		{ after(grammarAccess.getNameExpAccess().getPathNameExpParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getNameExpAccess().getSimpleNameExpParserRuleCall_1()); }
		ruleSimpleNameExp
		{ after(grammarAccess.getNameExpAccess().getSimpleNameExpParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Body__Group__0__Impl
	rule__Body__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBodyAccess().getBodyKeyword_0()); }
	'body'
	{ after(grammarAccess.getBodyAccess().getBodyKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Body__Group__1__Impl
	rule__Body__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBodyAccess().getConstraintNameAssignment_1()); }
	(rule__Body__ConstraintNameAssignment_1)?
	{ after(grammarAccess.getBodyAccess().getConstraintNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Body__Group__2__Impl
	rule__Body__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBodyAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getBodyAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Body__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBodyAccess().getExpressionAssignment_3()); }
	(rule__Body__ExpressionAssignment_3)
	{ after(grammarAccess.getBodyAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierContextDecl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group__0__Impl
	rule__ClassifierContextDecl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getContextKeyword_0()); }
	'context'
	{ after(grammarAccess.getClassifierContextDeclAccess().getContextKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group__1__Impl
	rule__ClassifierContextDecl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getGroup_1()); }
	(rule__ClassifierContextDecl__Group_1__0)?
	{ after(grammarAccess.getClassifierContextDeclAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group__2__Impl
	rule__ClassifierContextDecl__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getClassifierAssignment_2()); }
	(rule__ClassifierContextDecl__ClassifierAssignment_2)
	{ after(grammarAccess.getClassifierContextDeclAccess().getClassifierAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getAlternatives_3()); }
	(rule__ClassifierContextDecl__Alternatives_3)*
	{ after(grammarAccess.getClassifierContextDeclAccess().getAlternatives_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierContextDecl__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group_1__0__Impl
	rule__ClassifierContextDecl__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getSelfNameAssignment_1_0()); }
	(rule__ClassifierContextDecl__SelfNameAssignment_1_0)
	{ after(grammarAccess.getClassifierContextDeclAccess().getSelfNameAssignment_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierContextDecl__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierContextDeclAccess().getColonKeyword_1_1()); }
	':'
	{ after(grammarAccess.getClassifierContextDeclAccess().getColonKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Definition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__0__Impl
	rule__Definition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getStaticAssignment_0()); }
	(rule__Definition__StaticAssignment_0)?
	{ after(grammarAccess.getDefinitionAccess().getStaticAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__1__Impl
	rule__Definition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getDefKeyword_1()); }
	'def'
	{ after(grammarAccess.getDefinitionAccess().getDefKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__2__Impl
	rule__Definition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getConstraintNameAssignment_2()); }
	(rule__Definition__ConstraintNameAssignment_2)?
	{ after(grammarAccess.getDefinitionAccess().getConstraintNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__3__Impl
	rule__Definition__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getColonKeyword_3()); }
	':'
	{ after(grammarAccess.getDefinitionAccess().getColonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__4__Impl
	rule__Definition__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getConstrainedNameAssignment_4()); }
	(rule__Definition__ConstrainedNameAssignment_4)
	{ after(grammarAccess.getDefinitionAccess().getConstrainedNameAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__5__Impl
	rule__Definition__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getGroup_5()); }
	(rule__Definition__Group_5__0)?
	{ after(grammarAccess.getDefinitionAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__6__Impl
	rule__Definition__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getColonKeyword_6()); }
	':'
	{ after(grammarAccess.getDefinitionAccess().getColonKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__7__Impl
	rule__Definition__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getTypeAssignment_7()); }
	(rule__Definition__TypeAssignment_7)?
	{ after(grammarAccess.getDefinitionAccess().getTypeAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__8__Impl
	rule__Definition__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getEqualsSignKeyword_8()); }
	'='
	{ after(grammarAccess.getDefinitionAccess().getEqualsSignKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group__9__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getExpressionAssignment_9()); }
	(rule__Definition__ExpressionAssignment_9)
	{ after(grammarAccess.getDefinitionAccess().getExpressionAssignment_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Definition__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5__0__Impl
	rule__Definition__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getLeftParenthesisKeyword_5_0()); }
	'('
	{ after(grammarAccess.getDefinitionAccess().getLeftParenthesisKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5__1__Impl
	rule__Definition__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getGroup_5_1()); }
	(rule__Definition__Group_5_1__0)?
	{ after(grammarAccess.getDefinitionAccess().getGroup_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getRightParenthesisKeyword_5_2()); }
	')'
	{ after(grammarAccess.getDefinitionAccess().getRightParenthesisKeyword_5_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Definition__Group_5_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5_1__0__Impl
	rule__Definition__Group_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getParametersAssignment_5_1_0()); }
	(rule__Definition__ParametersAssignment_5_1_0)
	{ after(grammarAccess.getDefinitionAccess().getParametersAssignment_5_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getGroup_5_1_1()); }
	(rule__Definition__Group_5_1_1__0)*
	{ after(grammarAccess.getDefinitionAccess().getGroup_5_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Definition__Group_5_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5_1_1__0__Impl
	rule__Definition__Group_5_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getCommaKeyword_5_1_1_0()); }
	','
	{ after(grammarAccess.getDefinitionAccess().getCommaKeyword_5_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Definition__Group_5_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__Group_5_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDefinitionAccess().getParametersAssignment_5_1_1_1()); }
	(rule__Definition__ParametersAssignment_5_1_1_1)
	{ after(grammarAccess.getDefinitionAccess().getParametersAssignment_5_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Der__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Der__Group__0__Impl
	rule__Der__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDerAccess().getDeriveKeyword_0()); }
	'derive'
	{ after(grammarAccess.getDerAccess().getDeriveKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Der__Group__1__Impl
	rule__Der__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDerAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getDerAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Der__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDerAccess().getExpressionAssignment_2()); }
	(rule__Der__ExpressionAssignment_2)
	{ after(grammarAccess.getDerAccess().getExpressionAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Init__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Init__Group__0__Impl
	rule__Init__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInitAccess().getInitKeyword_0()); }
	'init'
	{ after(grammarAccess.getInitAccess().getInitKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Init__Group__1__Impl
	rule__Init__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInitAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getInitAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Init__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInitAccess().getExpressionAssignment_2()); }
	(rule__Init__ExpressionAssignment_2)
	{ after(grammarAccess.getInitAccess().getExpressionAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Invariant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Invariant__Group__0__Impl
	rule__Invariant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvariantAccess().getInvKeyword_0()); }
	'inv'
	{ after(grammarAccess.getInvariantAccess().getInvKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Invariant__Group__1__Impl
	rule__Invariant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvariantAccess().getConstraintNameAssignment_1()); }
	(rule__Invariant__ConstraintNameAssignment_1)?
	{ after(grammarAccess.getInvariantAccess().getConstraintNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Invariant__Group__2__Impl
	rule__Invariant__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvariantAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getInvariantAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Invariant__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvariantAccess().getExpressionAssignment_3()); }
	(rule__Invariant__ExpressionAssignment_3)
	{ after(grammarAccess.getInvariantAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OperationContextDecl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__0__Impl
	rule__OperationContextDecl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getContextKeyword_0()); }
	'context'
	{ after(grammarAccess.getOperationContextDeclAccess().getContextKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__1__Impl
	rule__OperationContextDecl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getOperationAssignment_1()); }
	(rule__OperationContextDecl__OperationAssignment_1)
	{ after(grammarAccess.getOperationContextDeclAccess().getOperationAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__2__Impl
	rule__OperationContextDecl__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getLeftParenthesisKeyword_2()); }
	'('
	{ after(grammarAccess.getOperationContextDeclAccess().getLeftParenthesisKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__3__Impl
	rule__OperationContextDecl__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getGroup_3()); }
	(rule__OperationContextDecl__Group_3__0)?
	{ after(grammarAccess.getOperationContextDeclAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__4__Impl
	rule__OperationContextDecl__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getOperationContextDeclAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__5__Impl
	rule__OperationContextDecl__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getColonKeyword_5()); }
	':'
	{ after(grammarAccess.getOperationContextDeclAccess().getColonKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__6__Impl
	rule__OperationContextDecl__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getTypeAssignment_6()); }
	(rule__OperationContextDecl__TypeAssignment_6)?
	{ after(grammarAccess.getOperationContextDeclAccess().getTypeAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getAlternatives_7()); }
	(rule__OperationContextDecl__Alternatives_7)*
	{ after(grammarAccess.getOperationContextDeclAccess().getAlternatives_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OperationContextDecl__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group_3__0__Impl
	rule__OperationContextDecl__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getParametersAssignment_3_0()); }
	(rule__OperationContextDecl__ParametersAssignment_3_0)
	{ after(grammarAccess.getOperationContextDeclAccess().getParametersAssignment_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getGroup_3_1()); }
	(rule__OperationContextDecl__Group_3_1__0)*
	{ after(grammarAccess.getOperationContextDeclAccess().getGroup_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OperationContextDecl__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group_3_1__0__Impl
	rule__OperationContextDecl__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getCommaKeyword_3_1_0()); }
	','
	{ after(grammarAccess.getOperationContextDeclAccess().getCommaKeyword_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OperationContextDecl__Group_3_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationContextDeclAccess().getParametersAssignment_3_1_1()); }
	(rule__OperationContextDecl__ParametersAssignment_3_1_1)
	{ after(grammarAccess.getOperationContextDeclAccess().getParametersAssignment_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDeclaration__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDeclaration__Group__0__Impl
	rule__PackageDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDeclarationAccess().getPackageKeyword_0()); }
	'package'
	{ after(grammarAccess.getPackageDeclarationAccess().getPackageKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDeclaration__Group__1__Impl
	rule__PackageDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDeclarationAccess().getPackageAssignment_1()); }
	(rule__PackageDeclaration__PackageAssignment_1)
	{ after(grammarAccess.getPackageDeclarationAccess().getPackageAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDeclaration__Group__2__Impl
	rule__PackageDeclaration__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDeclarationAccess().getContextsAssignment_2()); }
	(rule__PackageDeclaration__ContextsAssignment_2)*
	{ after(grammarAccess.getPackageDeclarationAccess().getContextsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDeclaration__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDeclarationAccess().getEndpackageKeyword_3()); }
	'endpackage'
	{ after(grammarAccess.getPackageDeclarationAccess().getEndpackageKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parameter__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameter__Group__0__Impl
	rule__Parameter__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParameterAccess().getGroup_0()); }
	(rule__Parameter__Group_0__0)?
	{ after(grammarAccess.getParameterAccess().getGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameter__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParameterAccess().getTypeAssignment_1()); }
	(rule__Parameter__TypeAssignment_1)
	{ after(grammarAccess.getParameterAccess().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parameter__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameter__Group_0__0__Impl
	rule__Parameter__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParameterAccess().getNameAssignment_0_0()); }
	(rule__Parameter__NameAssignment_0_0)
	{ after(grammarAccess.getParameterAccess().getNameAssignment_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameter__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParameterAccess().getColonKeyword_0_1()); }
	':'
	{ after(grammarAccess.getParameterAccess().getColonKeyword_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Post__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Post__Group__0__Impl
	rule__Post__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostAccess().getPostKeyword_0()); }
	'post'
	{ after(grammarAccess.getPostAccess().getPostKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Post__Group__1__Impl
	rule__Post__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostAccess().getConstraintNameAssignment_1()); }
	(rule__Post__ConstraintNameAssignment_1)?
	{ after(grammarAccess.getPostAccess().getConstraintNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Post__Group__2__Impl
	rule__Post__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getPostAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Post__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostAccess().getExpressionAssignment_3()); }
	(rule__Post__ExpressionAssignment_3)
	{ after(grammarAccess.getPostAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Pre__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pre__Group__0__Impl
	rule__Pre__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreAccess().getPreKeyword_0()); }
	'pre'
	{ after(grammarAccess.getPreAccess().getPreKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pre__Group__1__Impl
	rule__Pre__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreAccess().getConstraintNameAssignment_1()); }
	(rule__Pre__ConstraintNameAssignment_1)?
	{ after(grammarAccess.getPreAccess().getConstraintNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pre__Group__2__Impl
	rule__Pre__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getPreAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Pre__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreAccess().getExpressionAssignment_3()); }
	(rule__Pre__ExpressionAssignment_3)
	{ after(grammarAccess.getPreAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyContextDecl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group__0__Impl
	rule__PropertyContextDecl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getContextKeyword_0()); }
	'context'
	{ after(grammarAccess.getPropertyContextDeclAccess().getContextKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group__1__Impl
	rule__PropertyContextDecl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getPropertyAssignment_1()); }
	(rule__PropertyContextDecl__PropertyAssignment_1)
	{ after(grammarAccess.getPropertyContextDeclAccess().getPropertyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group__2__Impl
	rule__PropertyContextDecl__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getPropertyContextDeclAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group__3__Impl
	rule__PropertyContextDecl__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getTypeAssignment_3()); }
	(rule__PropertyContextDecl__TypeAssignment_3)
	{ after(grammarAccess.getPropertyContextDeclAccess().getTypeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getAlternatives_4()); }
	(rule__PropertyContextDecl__Alternatives_4)
	{ after(grammarAccess.getPropertyContextDeclAccess().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyContextDecl__Group_4_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group_4_0__0__Impl
	rule__PropertyContextDecl__Group_4_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getInitAssignment_4_0_0()); }
	(rule__PropertyContextDecl__InitAssignment_4_0_0)
	{ after(grammarAccess.getPropertyContextDeclAccess().getInitAssignment_4_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group_4_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getDerAssignment_4_0_1()); }
	(rule__PropertyContextDecl__DerAssignment_4_0_1)?
	{ after(grammarAccess.getPropertyContextDeclAccess().getDerAssignment_4_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyContextDecl__Group_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group_4_1__0__Impl
	rule__PropertyContextDecl__Group_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getDerAssignment_4_1_0()); }
	(rule__PropertyContextDecl__DerAssignment_4_1_0)
	{ after(grammarAccess.getPropertyContextDeclAccess().getDerAssignment_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyContextDecl__Group_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__Group_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyContextDeclAccess().getInitAssignment_4_1_1()); }
	(rule__PropertyContextDecl__InitAssignment_4_1_1)?
	{ after(grammarAccess.getPropertyContextDeclAccess().getInitAssignment_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedClassifierRef__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedClassifierRef__Group__0__Impl
	rule__QualifiedClassifierRef__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceAssignment_0()); }
	(rule__QualifiedClassifierRef__NamespaceAssignment_0)
	{ after(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedClassifierRef__Group__1__Impl
	rule__QualifiedClassifierRef__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedClassifierRefAccess().getColonColonKeyword_1()); }
	'::'
	{ after(grammarAccess.getQualifiedClassifierRefAccess().getColonColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedClassifierRef__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedClassifierRefAccess().getElementAssignment_2()); }
	(rule__QualifiedClassifierRef__ElementAssignment_2)
	{ after(grammarAccess.getQualifiedClassifierRefAccess().getElementAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedOperationRef__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedOperationRef__Group__0__Impl
	rule__QualifiedOperationRef__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedOperationRefAccess().getNamespaceAssignment_0()); }
	(rule__QualifiedOperationRef__NamespaceAssignment_0)
	{ after(grammarAccess.getQualifiedOperationRefAccess().getNamespaceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedOperationRef__Group__1__Impl
	rule__QualifiedOperationRef__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedOperationRefAccess().getColonColonKeyword_1()); }
	'::'
	{ after(grammarAccess.getQualifiedOperationRefAccess().getColonColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedOperationRef__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedOperationRefAccess().getElementAssignment_2()); }
	(rule__QualifiedOperationRef__ElementAssignment_2)
	{ after(grammarAccess.getQualifiedOperationRefAccess().getElementAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedPropertyRef__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPropertyRef__Group__0__Impl
	rule__QualifiedPropertyRef__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceAssignment_0()); }
	(rule__QualifiedPropertyRef__NamespaceAssignment_0)
	{ after(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPropertyRef__Group__1__Impl
	rule__QualifiedPropertyRef__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPropertyRefAccess().getColonColonKeyword_1()); }
	'::'
	{ after(grammarAccess.getQualifiedPropertyRefAccess().getColonColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPropertyRef__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPropertyRefAccess().getElementAssignment_2()); }
	(rule__QualifiedPropertyRef__ElementAssignment_2)
	{ after(grammarAccess.getQualifiedPropertyRefAccess().getElementAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedPackageRef__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPackageRef__Group__0__Impl
	rule__QualifiedPackageRef__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPackageRefAccess().getNamespaceAssignment_0()); }
	(rule__QualifiedPackageRef__NamespaceAssignment_0)
	{ after(grammarAccess.getQualifiedPackageRefAccess().getNamespaceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPackageRef__Group__1__Impl
	rule__QualifiedPackageRef__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPackageRefAccess().getColonColonKeyword_1()); }
	'::'
	{ after(grammarAccess.getQualifiedPackageRefAccess().getColonColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedPackageRef__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedPackageRefAccess().getElementAssignment_2()); }
	(rule__QualifiedPackageRef__ElementAssignment_2)
	{ after(grammarAccess.getQualifiedPackageRefAccess().getElementAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigationExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group__0__Impl
	rule__NavigationExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getSubNavigationExpParserRuleCall_0()); }
	ruleSubNavigationExp
	{ after(grammarAccess.getNavigationExpAccess().getSubNavigationExpParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getAlternatives_1()); }
	(rule__NavigationExp__Alternatives_1)?
	{ after(grammarAccess.getNavigationExpAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigationExp__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_0__0__Impl
	rule__NavigationExp__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getInfixExpSourceAction_1_0_0()); }
	()
	{ after(grammarAccess.getNavigationExpAccess().getInfixExpSourceAction_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_0__1__Impl
	rule__NavigationExp__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getOpAssignment_1_0_1()); }
	(rule__NavigationExp__OpAssignment_1_0_1)
	{ after(grammarAccess.getNavigationExpAccess().getOpAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getArgumentAssignment_1_0_2()); }
	(rule__NavigationExp__ArgumentAssignment_1_0_2)
	{ after(grammarAccess.getNavigationExpAccess().getArgumentAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigationExp__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__0__Impl
	rule__NavigationExp__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getOclMessageSourceAction_1_1_0()); }
	()
	{ after(grammarAccess.getNavigationExpAccess().getOclMessageSourceAction_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__1__Impl
	rule__NavigationExp__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getOpAssignment_1_1_1()); }
	(rule__NavigationExp__OpAssignment_1_1_1)
	{ after(grammarAccess.getNavigationExpAccess().getOpAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__2__Impl
	rule__NavigationExp__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getMessageNameAssignment_1_1_2()); }
	(rule__NavigationExp__MessageNameAssignment_1_1_2)
	{ after(grammarAccess.getNavigationExpAccess().getMessageNameAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__3__Impl
	rule__NavigationExp__Group_1_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getLeftParenthesisKeyword_1_1_3()); }
	'('
	{ after(grammarAccess.getNavigationExpAccess().getLeftParenthesisKeyword_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__4__Impl
	rule__NavigationExp__Group_1_1__5
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getGroup_1_1_4()); }
	(rule__NavigationExp__Group_1_1_4__0)?
	{ after(grammarAccess.getNavigationExpAccess().getGroup_1_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getRightParenthesisKeyword_1_1_5()); }
	')'
	{ after(grammarAccess.getNavigationExpAccess().getRightParenthesisKeyword_1_1_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigationExp__Group_1_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1_4__0__Impl
	rule__NavigationExp__Group_1_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getArgumentsAssignment_1_1_4_0()); }
	(rule__NavigationExp__ArgumentsAssignment_1_1_4_0)
	{ after(grammarAccess.getNavigationExpAccess().getArgumentsAssignment_1_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getGroup_1_1_4_1()); }
	(rule__NavigationExp__Group_1_1_4_1__0)*
	{ after(grammarAccess.getNavigationExpAccess().getGroup_1_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigationExp__Group_1_1_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1_4_1__0__Impl
	rule__NavigationExp__Group_1_1_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getCommaKeyword_1_1_4_1_0()); }
	','
	{ after(grammarAccess.getNavigationExpAccess().getCommaKeyword_1_1_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigationExp__Group_1_1_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__Group_1_1_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigationExpAccess().getArgumentsAssignment_1_1_4_1_1()); }
	(rule__NavigationExp__ArgumentsAssignment_1_1_4_1_1)
	{ after(grammarAccess.getNavigationExpAccess().getArgumentsAssignment_1_1_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group__0__Impl
	rule__NavigatingExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getSubNavigatingExpParserRuleCall_0()); }
	ruleSubNavigatingExp
	{ after(grammarAccess.getNavigatingExpAccess().getSubNavigatingExpParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getAlternatives_1()); }
	(rule__NavigatingExp__Alternatives_1)?
	{ after(grammarAccess.getNavigatingExpAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingExp__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_0__0__Impl
	rule__NavigatingExp__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getInfixExpSourceAction_1_0_0()); }
	()
	{ after(grammarAccess.getNavigatingExpAccess().getInfixExpSourceAction_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_0__1__Impl
	rule__NavigatingExp__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getOpAssignment_1_0_1()); }
	(rule__NavigatingExp__OpAssignment_1_0_1)
	{ after(grammarAccess.getNavigatingExpAccess().getOpAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getArgumentAssignment_1_0_2()); }
	(rule__NavigatingExp__ArgumentAssignment_1_0_2)
	{ after(grammarAccess.getNavigatingExpAccess().getArgumentAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingExp__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__0__Impl
	rule__NavigatingExp__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getOclMessageSourceAction_1_1_0()); }
	()
	{ after(grammarAccess.getNavigatingExpAccess().getOclMessageSourceAction_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__1__Impl
	rule__NavigatingExp__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getOpAssignment_1_1_1()); }
	(rule__NavigatingExp__OpAssignment_1_1_1)
	{ after(grammarAccess.getNavigatingExpAccess().getOpAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__2__Impl
	rule__NavigatingExp__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getMessageNameAssignment_1_1_2()); }
	(rule__NavigatingExp__MessageNameAssignment_1_1_2)
	{ after(grammarAccess.getNavigatingExpAccess().getMessageNameAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__3__Impl
	rule__NavigatingExp__Group_1_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getLeftParenthesisKeyword_1_1_3()); }
	'('
	{ after(grammarAccess.getNavigatingExpAccess().getLeftParenthesisKeyword_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__4__Impl
	rule__NavigatingExp__Group_1_1__5
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getGroup_1_1_4()); }
	(rule__NavigatingExp__Group_1_1_4__0)?
	{ after(grammarAccess.getNavigatingExpAccess().getGroup_1_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getRightParenthesisKeyword_1_1_5()); }
	')'
	{ after(grammarAccess.getNavigatingExpAccess().getRightParenthesisKeyword_1_1_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingExp__Group_1_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1_4__0__Impl
	rule__NavigatingExp__Group_1_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getArgumentsAssignment_1_1_4_0()); }
	(rule__NavigatingExp__ArgumentsAssignment_1_1_4_0)
	{ after(grammarAccess.getNavigatingExpAccess().getArgumentsAssignment_1_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getGroup_1_1_4_1()); }
	(rule__NavigatingExp__Group_1_1_4_1__0)*
	{ after(grammarAccess.getNavigatingExpAccess().getGroup_1_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NavigatingExp__Group_1_1_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1_4_1__0__Impl
	rule__NavigatingExp__Group_1_1_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getCommaKeyword_1_1_4_1_0()); }
	','
	{ after(grammarAccess.getNavigatingExpAccess().getCommaKeyword_1_1_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NavigatingExp__Group_1_1_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__Group_1_1_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNavigatingExpAccess().getArgumentsAssignment_1_1_4_1_1()); }
	(rule__NavigatingExp__ArgumentsAssignment_1_1_4_1_1)
	{ after(grammarAccess.getNavigatingExpAccess().getArgumentsAssignment_1_1_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OclMessageArg__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OclMessageArg__Group_0__0__Impl
	rule__OclMessageArg__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOclMessageArgAccess().getOclMessageArgAction_0_0()); }
	()
	{ after(grammarAccess.getOclMessageArgAccess().getOclMessageArgAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OclMessageArg__Group_0__1__Impl
	rule__OclMessageArg__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOclMessageArgAccess().getQuestionMarkKeyword_0_1()); }
	'?'
	{ after(grammarAccess.getOclMessageArgAccess().getQuestionMarkKeyword_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OclMessageArg__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOclMessageArgAccess().getGroup_0_2()); }
	(rule__OclMessageArg__Group_0_2__0)?
	{ after(grammarAccess.getOclMessageArgAccess().getGroup_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OclMessageArg__Group_0_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OclMessageArg__Group_0_2__0__Impl
	rule__OclMessageArg__Group_0_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOclMessageArgAccess().getColonKeyword_0_2_0()); }
	':'
	{ after(grammarAccess.getOclMessageArgAccess().getColonKeyword_0_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OclMessageArg__Group_0_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__Group_0_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOclMessageArgAccess().getTypeAssignment_0_2_1()); }
	(rule__OclMessageArg__TypeAssignment_0_2_1)
	{ after(grammarAccess.getOclMessageArgAccess().getTypeAssignment_0_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NUMBER_LITERAL__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group__0__Impl
	rule__NUMBER_LITERAL__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_0()); }
	RULE_INT
	{ after(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group__1__Impl
	rule__NUMBER_LITERAL__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getGroup_1()); }
	(rule__NUMBER_LITERAL__Group_1__0)?
	{ after(grammarAccess.getNUMBER_LITERALAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getGroup_2()); }
	(rule__NUMBER_LITERAL__Group_2__0)?
	{ after(grammarAccess.getNUMBER_LITERALAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NUMBER_LITERAL__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group_1__0__Impl
	rule__NUMBER_LITERAL__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getNUMBER_LITERALAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_1_1()); }
	RULE_INT
	{ after(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NUMBER_LITERAL__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group_2__0__Impl
	rule__NUMBER_LITERAL__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getAlternatives_2_0()); }
	(rule__NUMBER_LITERAL__Alternatives_2_0)
	{ after(grammarAccess.getNUMBER_LITERALAccess().getAlternatives_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group_2__1__Impl
	rule__NUMBER_LITERAL__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getAlternatives_2_1()); }
	(rule__NUMBER_LITERAL__Alternatives_2_1)?
	{ after(grammarAccess.getNUMBER_LITERALAccess().getAlternatives_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NUMBER_LITERAL__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NUMBER_LITERAL__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_2_2()); }
	RULE_INT
	{ after(grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionType__Group__0__Impl
	rule__CollectionType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionTypeAccess().getTypeIdentifierAssignment_0()); }
	(rule__CollectionType__TypeIdentifierAssignment_0)
	{ after(grammarAccess.getCollectionTypeAccess().getTypeIdentifierAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionType__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionTypeAccess().getGroup_1()); }
	(rule__CollectionType__Group_1__0)?
	{ after(grammarAccess.getCollectionTypeAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionType__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionType__Group_1__0__Impl
	rule__CollectionType__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionTypeAccess().getLeftParenthesisKeyword_1_0()); }
	'('
	{ after(grammarAccess.getCollectionTypeAccess().getLeftParenthesisKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionType__Group_1__1__Impl
	rule__CollectionType__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionTypeAccess().getTypeAssignment_1_1()); }
	(rule__CollectionType__TypeAssignment_1_1)
	{ after(grammarAccess.getCollectionTypeAccess().getTypeAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionType__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionTypeAccess().getRightParenthesisKeyword_1_2()); }
	')'
	{ after(grammarAccess.getCollectionTypeAccess().getRightParenthesisKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group__0__Impl
	rule__TupleType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getNameAssignment_0()); }
	(rule__TupleType__NameAssignment_0)
	{ after(grammarAccess.getTupleTypeAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group__1__Impl
	rule__TupleType__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getTupleTypeAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group__2__Impl
	rule__TupleType__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getGroup_2()); }
	(rule__TupleType__Group_2__0)?
	{ after(grammarAccess.getTupleTypeAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getTupleTypeAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleType__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group_2__0__Impl
	rule__TupleType__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getPartAssignment_2_0()); }
	(rule__TupleType__PartAssignment_2_0)
	{ after(grammarAccess.getTupleTypeAccess().getPartAssignment_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getGroup_2_1()); }
	(rule__TupleType__Group_2_1__0)*
	{ after(grammarAccess.getTupleTypeAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleType__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group_2_1__0__Impl
	rule__TupleType__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getCommaKeyword_2_1_0()); }
	','
	{ after(grammarAccess.getTupleTypeAccess().getCommaKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleType__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleTypeAccess().getPartAssignment_2_1_1()); }
	(rule__TupleType__PartAssignment_2_1_1)
	{ after(grammarAccess.getTupleTypeAccess().getPartAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TuplePart__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TuplePart__Group__0__Impl
	rule__TuplePart__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTuplePartAccess().getNameAssignment_0()); }
	(rule__TuplePart__NameAssignment_0)
	{ after(grammarAccess.getTuplePartAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TuplePart__Group__1__Impl
	rule__TuplePart__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTuplePartAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getTuplePartAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TuplePart__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTuplePartAccess().getTypeAssignment_2()); }
	(rule__TuplePart__TypeAssignment_2)
	{ after(grammarAccess.getTuplePartAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group__0__Impl
	rule__CollectionLiteralExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionTypeParserRuleCall_0()); }
	ruleCollectionType
	{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionTypeParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getGroup_1()); }
	(rule__CollectionLiteralExp__Group_1__0)?
	{ after(grammarAccess.getCollectionLiteralExpAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExp__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1__0__Impl
	rule__CollectionLiteralExp__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralExpTypeAction_1_0()); }
	()
	{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralExpTypeAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1__1__Impl
	rule__CollectionLiteralExp__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getLeftCurlyBracketKeyword_1_1()); }
	'{'
	{ after(grammarAccess.getCollectionLiteralExpAccess().getLeftCurlyBracketKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1__2__Impl
	rule__CollectionLiteralExp__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getGroup_1_2()); }
	(rule__CollectionLiteralExp__Group_1_2__0)?
	{ after(grammarAccess.getCollectionLiteralExpAccess().getGroup_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getRightCurlyBracketKeyword_1_3()); }
	'}'
	{ after(grammarAccess.getCollectionLiteralExpAccess().getRightCurlyBracketKeyword_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExp__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1_2__0__Impl
	rule__CollectionLiteralExp__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsAssignment_1_2_0()); }
	(rule__CollectionLiteralExp__CollectionLiteralPartsAssignment_1_2_0)
	{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsAssignment_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getGroup_1_2_1()); }
	(rule__CollectionLiteralExp__Group_1_2_1__0)*
	{ after(grammarAccess.getCollectionLiteralExpAccess().getGroup_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralExp__Group_1_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1_2_1__0__Impl
	rule__CollectionLiteralExp__Group_1_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getCommaKeyword_1_2_1_0()); }
	','
	{ after(grammarAccess.getCollectionLiteralExpAccess().getCommaKeyword_1_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralExp__Group_1_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__Group_1_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsAssignment_1_2_1_1()); }
	(rule__CollectionLiteralExp__CollectionLiteralPartsAssignment_1_2_1_1)
	{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsAssignment_1_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralPart__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralPart__Group__0__Impl
	rule__CollectionLiteralPart__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralPartAccess().getExpressionAssignment_0()); }
	(rule__CollectionLiteralPart__ExpressionAssignment_0)
	{ after(grammarAccess.getCollectionLiteralPartAccess().getExpressionAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralPart__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralPartAccess().getGroup_1()); }
	(rule__CollectionLiteralPart__Group_1__0)?
	{ after(grammarAccess.getCollectionLiteralPartAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CollectionLiteralPart__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralPart__Group_1__0__Impl
	rule__CollectionLiteralPart__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralPartAccess().getFullStopFullStopKeyword_1_0()); }
	'..'
	{ after(grammarAccess.getCollectionLiteralPartAccess().getFullStopFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CollectionLiteralPart__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCollectionLiteralPartAccess().getLastExpressionAssignment_1_1()); }
	(rule__CollectionLiteralPart__LastExpressionAssignment_1_1)
	{ after(grammarAccess.getCollectionLiteralPartAccess().getLastExpressionAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group__0__Impl
	rule__TupleLiteralExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getTupleLiteralExpAction_0()); }
	()
	{ after(grammarAccess.getTupleLiteralExpAccess().getTupleLiteralExpAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group__1__Impl
	rule__TupleLiteralExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getTupleKeyword_1()); }
	'Tuple'
	{ after(grammarAccess.getTupleLiteralExpAccess().getTupleKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getGroup_2()); }
	(rule__TupleLiteralExp__Group_2__0)?
	{ after(grammarAccess.getTupleLiteralExpAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExp__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2__0__Impl
	rule__TupleLiteralExp__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getLeftCurlyBracketKeyword_2_0()); }
	'{'
	{ after(grammarAccess.getTupleLiteralExpAccess().getLeftCurlyBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2__1__Impl
	rule__TupleLiteralExp__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getPartAssignment_2_1()); }
	(rule__TupleLiteralExp__PartAssignment_2_1)
	{ after(grammarAccess.getTupleLiteralExpAccess().getPartAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2__2__Impl
	rule__TupleLiteralExp__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getGroup_2_2()); }
	(rule__TupleLiteralExp__Group_2_2__0)*
	{ after(grammarAccess.getTupleLiteralExpAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getRightCurlyBracketKeyword_2_3()); }
	'}'
	{ after(grammarAccess.getTupleLiteralExpAccess().getRightCurlyBracketKeyword_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralExp__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2_2__0__Impl
	rule__TupleLiteralExp__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getCommaKeyword_2_2_0()); }
	','
	{ after(grammarAccess.getTupleLiteralExpAccess().getCommaKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralExp__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralExpAccess().getPartAssignment_2_2_1()); }
	(rule__TupleLiteralExp__PartAssignment_2_2_1)
	{ after(grammarAccess.getTupleLiteralExpAccess().getPartAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPart__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group__0__Impl
	rule__TupleLiteralPart__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getNameAssignment_0()); }
	(rule__TupleLiteralPart__NameAssignment_0)
	{ after(grammarAccess.getTupleLiteralPartAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group__1__Impl
	rule__TupleLiteralPart__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getGroup_1()); }
	(rule__TupleLiteralPart__Group_1__0)?
	{ after(grammarAccess.getTupleLiteralPartAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group__2__Impl
	rule__TupleLiteralPart__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getEqualsSignKeyword_2()); }
	'='
	{ after(grammarAccess.getTupleLiteralPartAccess().getEqualsSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getInitExpressionAssignment_3()); }
	(rule__TupleLiteralPart__InitExpressionAssignment_3)
	{ after(grammarAccess.getTupleLiteralPartAccess().getInitExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TupleLiteralPart__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group_1__0__Impl
	rule__TupleLiteralPart__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getColonKeyword_1_0()); }
	':'
	{ after(grammarAccess.getTupleLiteralPartAccess().getColonKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TupleLiteralPart__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTupleLiteralPartAccess().getTypeAssignment_1_1()); }
	(rule__TupleLiteralPart__TypeAssignment_1_1)
	{ after(grammarAccess.getTupleLiteralPartAccess().getTypeAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BooleanLiteralExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanLiteralExp__Group__0__Impl
	rule__BooleanLiteralExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanLiteralExpAccess().getBooleanLiteralExpAction_0()); }
	()
	{ after(grammarAccess.getBooleanLiteralExpAccess().getBooleanLiteralExpAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BooleanLiteralExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBooleanLiteralExpAccess().getAlternatives_1()); }
	(rule__BooleanLiteralExp__Alternatives_1)
	{ after(grammarAccess.getBooleanLiteralExpAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InvalidLiteralExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InvalidLiteralExp__Group__0__Impl
	rule__InvalidLiteralExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InvalidLiteralExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvalidLiteralExpAccess().getInvalidLiteralExpAction_0()); }
	()
	{ after(grammarAccess.getInvalidLiteralExpAccess().getInvalidLiteralExpAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InvalidLiteralExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InvalidLiteralExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InvalidLiteralExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInvalidLiteralExpAccess().getInvalidKeyword_1()); }
	'invalid'
	{ after(grammarAccess.getInvalidLiteralExpAccess().getInvalidKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__NullLiteralExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullLiteralExp__Group__0__Impl
	rule__NullLiteralExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__NullLiteralExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullLiteralExpAccess().getNullLiteralExpAction_0()); }
	()
	{ after(grammarAccess.getNullLiteralExpAccess().getNullLiteralExpAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__NullLiteralExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__NullLiteralExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__NullLiteralExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNullLiteralExpAccess().getNullKeyword_1()); }
	'null'
	{ after(grammarAccess.getNullLiteralExpAccess().getNullKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Implies__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Implies__Group__0__Impl
	rule__Implies__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImpliesAccess().getXorParserRuleCall_0()); }
	rulexor
	{ after(grammarAccess.getImpliesAccess().getXorParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Implies__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImpliesAccess().getGroup_1()); }
	(rule__Implies__Group_1__0)*
	{ after(grammarAccess.getImpliesAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Implies__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Implies__Group_1__0__Impl
	rule__Implies__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImpliesAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getImpliesAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Implies__Group_1__1__Impl
	rule__Implies__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImpliesAccess().getOpAssignment_1_1()); }
	(rule__Implies__OpAssignment_1_1)
	{ after(grammarAccess.getImpliesAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Implies__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImpliesAccess().getArgumentAssignment_1_2()); }
	(rule__Implies__ArgumentAssignment_1_2)
	{ after(grammarAccess.getImpliesAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Xor__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Xor__Group__0__Impl
	rule__Xor__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXorAccess().getOrParserRuleCall_0()); }
	ruleor
	{ after(grammarAccess.getXorAccess().getOrParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Xor__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXorAccess().getGroup_1()); }
	(rule__Xor__Group_1__0)*
	{ after(grammarAccess.getXorAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Xor__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Xor__Group_1__0__Impl
	rule__Xor__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXorAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getXorAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Xor__Group_1__1__Impl
	rule__Xor__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXorAccess().getOpAssignment_1_1()); }
	(rule__Xor__OpAssignment_1_1)
	{ after(grammarAccess.getXorAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Xor__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXorAccess().getArgumentAssignment_1_2()); }
	(rule__Xor__ArgumentAssignment_1_2)
	{ after(grammarAccess.getXorAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Or__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Or__Group__0__Impl
	rule__Or__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOrAccess().getAndParserRuleCall_0()); }
	ruleand
	{ after(grammarAccess.getOrAccess().getAndParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Or__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOrAccess().getGroup_1()); }
	(rule__Or__Group_1__0)*
	{ after(grammarAccess.getOrAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Or__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Or__Group_1__0__Impl
	rule__Or__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOrAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getOrAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Or__Group_1__1__Impl
	rule__Or__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOrAccess().getOpAssignment_1_1()); }
	(rule__Or__OpAssignment_1_1)
	{ after(grammarAccess.getOrAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Or__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOrAccess().getArgumentAssignment_1_2()); }
	(rule__Or__ArgumentAssignment_1_2)
	{ after(grammarAccess.getOrAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__And__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__And__Group__0__Impl
	rule__And__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndAccess().getEqualityParserRuleCall_0()); }
	ruleequality
	{ after(grammarAccess.getAndAccess().getEqualityParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__And__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndAccess().getGroup_1()); }
	(rule__And__Group_1__0)*
	{ after(grammarAccess.getAndAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__And__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__And__Group_1__0__Impl
	rule__And__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getAndAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__And__Group_1__1__Impl
	rule__And__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndAccess().getOpAssignment_1_1()); }
	(rule__And__OpAssignment_1_1)
	{ after(grammarAccess.getAndAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__And__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__And__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAndAccess().getArgumentAssignment_1_2()); }
	(rule__And__ArgumentAssignment_1_2)
	{ after(grammarAccess.getAndAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Equality__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Equality__Group__0__Impl
	rule__Equality__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEqualityAccess().getRelationalParserRuleCall_0()); }
	rulerelational
	{ after(grammarAccess.getEqualityAccess().getRelationalParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Equality__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEqualityAccess().getGroup_1()); }
	(rule__Equality__Group_1__0)*
	{ after(grammarAccess.getEqualityAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Equality__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Equality__Group_1__0__Impl
	rule__Equality__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEqualityAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getEqualityAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Equality__Group_1__1__Impl
	rule__Equality__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEqualityAccess().getOpAssignment_1_1()); }
	(rule__Equality__OpAssignment_1_1)
	{ after(grammarAccess.getEqualityAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Equality__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEqualityAccess().getArgumentAssignment_1_2()); }
	(rule__Equality__ArgumentAssignment_1_2)
	{ after(grammarAccess.getEqualityAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relational__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relational__Group__0__Impl
	rule__Relational__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationalAccess().getAdditiveParserRuleCall_0()); }
	ruleadditive
	{ after(grammarAccess.getRelationalAccess().getAdditiveParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relational__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationalAccess().getGroup_1()); }
	(rule__Relational__Group_1__0)*
	{ after(grammarAccess.getRelationalAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relational__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relational__Group_1__0__Impl
	rule__Relational__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationalAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getRelationalAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relational__Group_1__1__Impl
	rule__Relational__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationalAccess().getOpAssignment_1_1()); }
	(rule__Relational__OpAssignment_1_1)
	{ after(grammarAccess.getRelationalAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relational__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationalAccess().getArgumentAssignment_1_2()); }
	(rule__Relational__ArgumentAssignment_1_2)
	{ after(grammarAccess.getRelationalAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Additive__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Additive__Group__0__Impl
	rule__Additive__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAdditiveAccess().getMultiplicativeParserRuleCall_0()); }
	rulemultiplicative
	{ after(grammarAccess.getAdditiveAccess().getMultiplicativeParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Additive__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAdditiveAccess().getGroup_1()); }
	(rule__Additive__Group_1__0)*
	{ after(grammarAccess.getAdditiveAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Additive__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Additive__Group_1__0__Impl
	rule__Additive__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAdditiveAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getAdditiveAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Additive__Group_1__1__Impl
	rule__Additive__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAdditiveAccess().getOpAssignment_1_1()); }
	(rule__Additive__OpAssignment_1_1)
	{ after(grammarAccess.getAdditiveAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Additive__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAdditiveAccess().getArgumentAssignment_1_2()); }
	(rule__Additive__ArgumentAssignment_1_2)
	{ after(grammarAccess.getAdditiveAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Multiplicative__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Multiplicative__Group__0__Impl
	rule__Multiplicative__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMultiplicativeAccess().getUnaryParserRuleCall_0()); }
	ruleunary
	{ after(grammarAccess.getMultiplicativeAccess().getUnaryParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Multiplicative__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMultiplicativeAccess().getGroup_1()); }
	(rule__Multiplicative__Group_1__0)*
	{ after(grammarAccess.getMultiplicativeAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Multiplicative__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Multiplicative__Group_1__0__Impl
	rule__Multiplicative__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMultiplicativeAccess().getInfixExpSourceAction_1_0()); }
	()
	{ after(grammarAccess.getMultiplicativeAccess().getInfixExpSourceAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Multiplicative__Group_1__1__Impl
	rule__Multiplicative__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMultiplicativeAccess().getOpAssignment_1_1()); }
	(rule__Multiplicative__OpAssignment_1_1)
	{ after(grammarAccess.getMultiplicativeAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Multiplicative__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMultiplicativeAccess().getArgumentAssignment_1_2()); }
	(rule__Multiplicative__ArgumentAssignment_1_2)
	{ after(grammarAccess.getMultiplicativeAccess().getArgumentAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Unary__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unary__Group_1__0__Impl
	rule__Unary__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnaryAccess().getPrefixExpAction_1_0()); }
	()
	{ after(grammarAccess.getUnaryAccess().getPrefixExpAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unary__Group_1__1__Impl
	rule__Unary__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnaryAccess().getOpAssignment_1_1()); }
	(rule__Unary__OpAssignment_1_1)
	{ after(grammarAccess.getUnaryAccess().getOpAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unary__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnaryAccess().getSourceAssignment_1_2()); }
	(rule__Unary__SourceAssignment_1_2)
	{ after(grammarAccess.getUnaryAccess().getSourceAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SubNavigationExp__Group_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubNavigationExp__Group_9__0__Impl
	rule__SubNavigationExp__Group_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubNavigationExpAccess().getLeftParenthesisKeyword_9_0()); }
	'('
	{ after(grammarAccess.getSubNavigationExpAccess().getLeftParenthesisKeyword_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubNavigationExp__Group_9__1__Impl
	rule__SubNavigationExp__Group_9__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubNavigationExpAccess().getNestedExpAction_9_1()); }
	()
	{ after(grammarAccess.getSubNavigationExpAccess().getNestedExpAction_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubNavigationExp__Group_9__2__Impl
	rule__SubNavigationExp__Group_9__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubNavigationExpAccess().getSourceAssignment_9_2()); }
	(rule__SubNavigationExp__SourceAssignment_9_2)
	{ after(grammarAccess.getSubNavigationExpAccess().getSourceAssignment_9_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubNavigationExp__Group_9__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__Group_9__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubNavigationExpAccess().getRightParenthesisKeyword_9_3()); }
	')'
	{ after(grammarAccess.getSubNavigationExpAccess().getRightParenthesisKeyword_9_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IteratorVariable__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorVariable__Group__0__Impl
	rule__IteratorVariable__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorVariableAccess().getNameAssignment_0()); }
	(rule__IteratorVariable__NameAssignment_0)
	{ after(grammarAccess.getIteratorVariableAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorVariable__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorVariableAccess().getGroup_1()); }
	(rule__IteratorVariable__Group_1__0)?
	{ after(grammarAccess.getIteratorVariableAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IteratorVariable__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorVariable__Group_1__0__Impl
	rule__IteratorVariable__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorVariableAccess().getColonKeyword_1_0()); }
	':'
	{ after(grammarAccess.getIteratorVariableAccess().getColonKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorVariable__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorVariableAccess().getTypeAssignment_1_1()); }
	(rule__IteratorVariable__TypeAssignment_1_1)
	{ after(grammarAccess.getIteratorVariableAccess().getTypeAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IteratorAccumulator__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorAccumulator__Group__0__Impl
	rule__IteratorAccumulator__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorAccumulatorAccess().getNameAssignment_0()); }
	(rule__IteratorAccumulator__NameAssignment_0)
	{ after(grammarAccess.getIteratorAccumulatorAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorAccumulator__Group__1__Impl
	rule__IteratorAccumulator__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorAccumulatorAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getIteratorAccumulatorAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorAccumulator__Group__2__Impl
	rule__IteratorAccumulator__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorAccumulatorAccess().getTypeAssignment_2()); }
	(rule__IteratorAccumulator__TypeAssignment_2)
	{ after(grammarAccess.getIteratorAccumulatorAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorAccumulator__Group__3__Impl
	rule__IteratorAccumulator__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorAccumulatorAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getIteratorAccumulatorAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IteratorAccumulator__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionAssignment_4()); }
	(rule__IteratorAccumulator__InitExpressionAssignment_4)
	{ after(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__0__Impl
	rule__RoundBracketExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getNameAssignment_0()); }
	(rule__RoundBracketExp__NameAssignment_0)
	{ after(grammarAccess.getRoundBracketExpAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__1__Impl
	rule__RoundBracketExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getGroup_1()); }
	(rule__RoundBracketExp__Group_1__0)?
	{ after(grammarAccess.getRoundBracketExpAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__2__Impl
	rule__RoundBracketExp__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getLeftParenthesisKeyword_2()); }
	'('
	{ after(grammarAccess.getRoundBracketExpAccess().getLeftParenthesisKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__3__Impl
	rule__RoundBracketExp__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getGroup_3()); }
	(rule__RoundBracketExp__Group_3__0)?
	{ after(grammarAccess.getRoundBracketExpAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__4__Impl
	rule__RoundBracketExp__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getGroup_4()); }
	(rule__RoundBracketExp__Group_4__0)?
	{ after(grammarAccess.getRoundBracketExpAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getRightParenthesisKeyword_5()); }
	')'
	{ after(grammarAccess.getRoundBracketExpAccess().getRightParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_1__0__Impl
	rule__RoundBracketExp__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getCommercialAtKeyword_1_0()); }
	'@'
	{ after(grammarAccess.getRoundBracketExpAccess().getCommercialAtKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getPreAssignment_1_1()); }
	(rule__RoundBracketExp__PreAssignment_1_1)
	{ after(grammarAccess.getRoundBracketExpAccess().getPreAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3__0__Impl
	rule__RoundBracketExp__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getVariable1Assignment_3_0()); }
	(rule__RoundBracketExp__Variable1Assignment_3_0)
	{ after(grammarAccess.getRoundBracketExpAccess().getVariable1Assignment_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3__1__Impl
	rule__RoundBracketExp__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getAlternatives_3_1()); }
	(rule__RoundBracketExp__Alternatives_3_1)?
	{ after(grammarAccess.getRoundBracketExpAccess().getAlternatives_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getVerticalLineKeyword_3_2()); }
	'|'
	{ after(grammarAccess.getRoundBracketExpAccess().getVerticalLineKeyword_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_3_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3_1_0__0__Impl
	rule__RoundBracketExp__Group_3_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getCommaKeyword_3_1_0_0()); }
	','
	{ after(grammarAccess.getRoundBracketExpAccess().getCommaKeyword_3_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getVariable2Assignment_3_1_0_1()); }
	(rule__RoundBracketExp__Variable2Assignment_3_1_0_1)
	{ after(grammarAccess.getRoundBracketExpAccess().getVariable2Assignment_3_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_3_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3_1_1__0__Impl
	rule__RoundBracketExp__Group_3_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getSemicolonKeyword_3_1_1_0()); }
	';'
	{ after(grammarAccess.getRoundBracketExpAccess().getSemicolonKeyword_3_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_3_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_3_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getVariable2Assignment_3_1_1_1()); }
	(rule__RoundBracketExp__Variable2Assignment_3_1_1_1)
	{ after(grammarAccess.getRoundBracketExpAccess().getVariable2Assignment_3_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_4__0__Impl
	rule__RoundBracketExp__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getArgumentsAssignment_4_0()); }
	(rule__RoundBracketExp__ArgumentsAssignment_4_0)
	{ after(grammarAccess.getRoundBracketExpAccess().getArgumentsAssignment_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getGroup_4_1()); }
	(rule__RoundBracketExp__Group_4_1__0)*
	{ after(grammarAccess.getRoundBracketExpAccess().getGroup_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RoundBracketExp__Group_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_4_1__0__Impl
	rule__RoundBracketExp__Group_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getCommaKeyword_4_1_0()); }
	','
	{ after(grammarAccess.getRoundBracketExpAccess().getCommaKeyword_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RoundBracketExp__Group_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Group_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRoundBracketExpAccess().getArgumentsAssignment_4_1_1()); }
	(rule__RoundBracketExp__ArgumentsAssignment_4_1_1)
	{ after(grammarAccess.getRoundBracketExpAccess().getArgumentsAssignment_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__0__Impl
	rule__SquareBracketExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getNameAssignment_0()); }
	(rule__SquareBracketExp__NameAssignment_0)
	{ after(grammarAccess.getSquareBracketExpAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__1__Impl
	rule__SquareBracketExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getLeftSquareBracketKeyword_1()); }
	'['
	{ after(grammarAccess.getSquareBracketExpAccess().getLeftSquareBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__2__Impl
	rule__SquareBracketExp__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getArgumentsAssignment_2()); }
	(rule__SquareBracketExp__ArgumentsAssignment_2)
	{ after(grammarAccess.getSquareBracketExpAccess().getArgumentsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__3__Impl
	rule__SquareBracketExp__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getGroup_3()); }
	(rule__SquareBracketExp__Group_3__0)*
	{ after(grammarAccess.getSquareBracketExpAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__4__Impl
	rule__SquareBracketExp__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getRightSquareBracketKeyword_4()); }
	']'
	{ after(grammarAccess.getSquareBracketExpAccess().getRightSquareBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getGroup_5()); }
	(rule__SquareBracketExp__Group_5__0)?
	{ after(grammarAccess.getSquareBracketExpAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketExp__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group_3__0__Impl
	rule__SquareBracketExp__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getCommaKeyword_3_0()); }
	','
	{ after(grammarAccess.getSquareBracketExpAccess().getCommaKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getArgumentsAssignment_3_1()); }
	(rule__SquareBracketExp__ArgumentsAssignment_3_1)
	{ after(grammarAccess.getSquareBracketExpAccess().getArgumentsAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SquareBracketExp__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group_5__0__Impl
	rule__SquareBracketExp__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getCommercialAtKeyword_5_0()); }
	'@'
	{ after(grammarAccess.getSquareBracketExpAccess().getCommercialAtKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SquareBracketExp__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSquareBracketExpAccess().getPreAssignment_5_1()); }
	(rule__SquareBracketExp__PreAssignment_5_1)
	{ after(grammarAccess.getSquareBracketExpAccess().getPreAssignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PreExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PreExp__Group__0__Impl
	rule__PreExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreExpAccess().getNameAssignment_0()); }
	(rule__PreExp__NameAssignment_0)
	{ after(grammarAccess.getPreExpAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PreExp__Group__1__Impl
	rule__PreExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreExpAccess().getCommercialAtKeyword_1()); }
	'@'
	{ after(grammarAccess.getPreExpAccess().getCommercialAtKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PreExp__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPreExpAccess().getPreKeyword_2()); }
	'pre'
	{ after(grammarAccess.getPreExpAccess().getPreKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SelfExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelfExp__Group__0__Impl
	rule__SelfExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SelfExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelfExpAccess().getSelfExpAction_0()); }
	()
	{ after(grammarAccess.getSelfExpAccess().getSelfExpAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SelfExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SelfExp__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SelfExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSelfExpAccess().getSelfKeyword_1()); }
	'self'
	{ after(grammarAccess.getSelfExpAccess().getSelfKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PathNameExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PathNameExp__Group__0__Impl
	rule__PathNameExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPathNameExpAccess().getNamespaceAssignment_0()); }
	(rule__PathNameExp__NamespaceAssignment_0)
	{ after(grammarAccess.getPathNameExpAccess().getNamespaceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PathNameExp__Group__1__Impl
	rule__PathNameExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPathNameExpAccess().getColonColonKeyword_1()); }
	'::'
	{ after(grammarAccess.getPathNameExpAccess().getColonColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PathNameExp__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPathNameExpAccess().getElementAssignment_2()); }
	(rule__PathNameExp__ElementAssignment_2)
	{ after(grammarAccess.getPathNameExpAccess().getElementAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IfExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__0__Impl
	rule__IfExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getIfKeyword_0()); }
	'if'
	{ after(grammarAccess.getIfExpAccess().getIfKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__1__Impl
	rule__IfExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getConditionAssignment_1()); }
	(rule__IfExp__ConditionAssignment_1)
	{ after(grammarAccess.getIfExpAccess().getConditionAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__2__Impl
	rule__IfExp__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getThenKeyword_2()); }
	'then'
	{ after(grammarAccess.getIfExpAccess().getThenKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__3__Impl
	rule__IfExp__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getThenExpressionAssignment_3()); }
	(rule__IfExp__ThenExpressionAssignment_3)
	{ after(grammarAccess.getIfExpAccess().getThenExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__4__Impl
	rule__IfExp__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getElseKeyword_4()); }
	'else'
	{ after(grammarAccess.getIfExpAccess().getElseKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__5__Impl
	rule__IfExp__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getElseExpressionAssignment_5()); }
	(rule__IfExp__ElseExpressionAssignment_5)
	{ after(grammarAccess.getIfExpAccess().getElseExpressionAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IfExp__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIfExpAccess().getEndifKeyword_6()); }
	'endif'
	{ after(grammarAccess.getIfExpAccess().getEndifKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LetExp__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group__0__Impl
	rule__LetExp__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getLetKeyword_0()); }
	'let'
	{ after(grammarAccess.getLetExpAccess().getLetKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group__1__Impl
	rule__LetExp__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getVariableAssignment_1()); }
	(rule__LetExp__VariableAssignment_1)
	{ after(grammarAccess.getLetExpAccess().getVariableAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group__2__Impl
	rule__LetExp__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getGroup_2()); }
	(rule__LetExp__Group_2__0)*
	{ after(grammarAccess.getLetExpAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group__3__Impl
	rule__LetExp__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getInKeyword_3()); }
	'in'
	{ after(grammarAccess.getLetExpAccess().getInKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getInAssignment_4()); }
	(rule__LetExp__InAssignment_4)
	{ after(grammarAccess.getLetExpAccess().getInAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LetExp__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group_2__0__Impl
	rule__LetExp__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getLetExpAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetExp__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetExpAccess().getVariableAssignment_2_1()); }
	(rule__LetExp__VariableAssignment_2_1)
	{ after(grammarAccess.getLetExpAccess().getVariableAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LetVariable__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetVariable__Group__0__Impl
	rule__LetVariable__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetVariableAccess().getNameAssignment_0()); }
	(rule__LetVariable__NameAssignment_0)
	{ after(grammarAccess.getLetVariableAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetVariable__Group__1__Impl
	rule__LetVariable__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetVariableAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getLetVariableAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetVariable__Group__2__Impl
	rule__LetVariable__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetVariableAccess().getTypeAssignment_2()); }
	(rule__LetVariable__TypeAssignment_2)
	{ after(grammarAccess.getLetVariableAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetVariable__Group__3__Impl
	rule__LetVariable__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetVariableAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getLetVariableAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LetVariable__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetVariableAccess().getInitExpressionAssignment_4()); }
	(rule__LetVariable__InitExpressionAssignment_4)
	{ after(grammarAccess.getLetVariableAccess().getInitExpressionAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Document__PackagesAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDocumentAccess().getPackagesPackageDeclarationParserRuleCall_0_0()); }
		rulePackageDeclaration
		{ after(grammarAccess.getDocumentAccess().getPackagesPackageDeclarationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Document__ContextsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDocumentAccess().getContextsContextDeclParserRuleCall_1_0()); }
		ruleContextDecl
		{ after(grammarAccess.getDocumentAccess().getContextsContextDeclParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__ConstraintNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBodyAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
		ruleIdentifier
		{ after(grammarAccess.getBodyAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Body__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBodyAccess().getExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getBodyAccess().getExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__SelfNameAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getSelfNameIdentifierParserRuleCall_1_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getClassifierContextDeclAccess().getSelfNameIdentifierParserRuleCall_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__ClassifierAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getClassifierClassifierRefParserRuleCall_2_0()); }
		ruleClassifierRef
		{ after(grammarAccess.getClassifierContextDeclAccess().getClassifierClassifierRefParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__InvariantsAssignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getInvariantsInvariantParserRuleCall_3_0_0()); }
		ruleInvariant
		{ after(grammarAccess.getClassifierContextDeclAccess().getInvariantsInvariantParserRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierContextDecl__DefinitionsAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierContextDeclAccess().getDefinitionsDefinitionParserRuleCall_3_1_0()); }
		ruleDefinition
		{ after(grammarAccess.getClassifierContextDeclAccess().getDefinitionsDefinitionParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__StaticAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getStaticStaticKeyword_0_0()); }
		(
			{ before(grammarAccess.getDefinitionAccess().getStaticStaticKeyword_0_0()); }
			'static'
			{ after(grammarAccess.getDefinitionAccess().getStaticStaticKeyword_0_0()); }
		)
		{ after(grammarAccess.getDefinitionAccess().getStaticStaticKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__ConstraintNameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getConstraintNameIdentifierParserRuleCall_2_0()); }
		ruleIdentifier
		{ after(grammarAccess.getDefinitionAccess().getConstraintNameIdentifierParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__ConstrainedNameAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getConstrainedNameIdentifierParserRuleCall_4_0()); }
		ruleIdentifier
		{ after(grammarAccess.getDefinitionAccess().getConstrainedNameIdentifierParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__ParametersAssignment_5_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_0_0()); }
		ruleParameter
		{ after(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__ParametersAssignment_5_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_1_1_0()); }
		ruleParameter
		{ after(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__TypeAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getTypeTypeExpParserRuleCall_7_0()); }
		ruleTypeExp
		{ after(grammarAccess.getDefinitionAccess().getTypeTypeExpParserRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Definition__ExpressionAssignment_9
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDefinitionAccess().getExpressionExpressionParserRuleCall_9_0()); }
		ruleExpression
		{ after(grammarAccess.getDefinitionAccess().getExpressionExpressionParserRuleCall_9_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Der__ExpressionAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDerAccess().getExpressionExpressionParserRuleCall_2_0()); }
		ruleExpression
		{ after(grammarAccess.getDerAccess().getExpressionExpressionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Init__ExpressionAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInitAccess().getExpressionExpressionParserRuleCall_2_0()); }
		ruleExpression
		{ after(grammarAccess.getInitAccess().getExpressionExpressionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__ConstraintNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInvariantAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
		ruleIdentifier
		{ after(grammarAccess.getInvariantAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Invariant__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInvariantAccess().getExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getInvariantAccess().getExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__OperationAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getOperationOperationRefParserRuleCall_1_0()); }
		ruleOperationRef
		{ after(grammarAccess.getOperationContextDeclAccess().getOperationOperationRefParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__ParametersAssignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_0_0()); }
		ruleParameter
		{ after(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__ParametersAssignment_3_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_1_1_0()); }
		ruleParameter
		{ after(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__TypeAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getTypeTypeExpParserRuleCall_6_0()); }
		ruleTypeExp
		{ after(grammarAccess.getOperationContextDeclAccess().getTypeTypeExpParserRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__PresAssignment_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getPresPreParserRuleCall_7_0_0()); }
		rulePre
		{ after(grammarAccess.getOperationContextDeclAccess().getPresPreParserRuleCall_7_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__PostsAssignment_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getPostsPostParserRuleCall_7_1_0()); }
		rulePost
		{ after(grammarAccess.getOperationContextDeclAccess().getPostsPostParserRuleCall_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationContextDecl__BodiesAssignment_7_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationContextDeclAccess().getBodiesBodyParserRuleCall_7_2_0()); }
		ruleBody
		{ after(grammarAccess.getOperationContextDeclAccess().getBodiesBodyParserRuleCall_7_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__PackageAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDeclarationAccess().getPackagePackageRefParserRuleCall_1_0()); }
		rulePackageRef
		{ after(grammarAccess.getPackageDeclarationAccess().getPackagePackageRefParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__ContextsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDeclarationAccess().getContextsContextDeclParserRuleCall_2_0()); }
		ruleContextDecl
		{ after(grammarAccess.getPackageDeclarationAccess().getContextsContextDeclParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__NameAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParameterAccess().getNameIdentifierParserRuleCall_0_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getParameterAccess().getNameIdentifierParserRuleCall_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParameterAccess().getTypeTypeExpParserRuleCall_1_0()); }
		ruleTypeExp
		{ after(grammarAccess.getParameterAccess().getTypeTypeExpParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__ConstraintNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPostAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
		ruleIdentifier
		{ after(grammarAccess.getPostAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Post__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPostAccess().getExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getPostAccess().getExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__ConstraintNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPreAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
		ruleIdentifier
		{ after(grammarAccess.getPreAccess().getConstraintNameIdentifierParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Pre__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPreAccess().getExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getPreAccess().getExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__PropertyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getPropertyPropertyRefParserRuleCall_1_0()); }
		rulePropertyRef
		{ after(grammarAccess.getPropertyContextDeclAccess().getPropertyPropertyRefParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__TypeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getTypeTypeExpParserRuleCall_3_0()); }
		ruleTypeExp
		{ after(grammarAccess.getPropertyContextDeclAccess().getTypeTypeExpParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__InitAssignment_4_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_0_0_0()); }
		ruleInit
		{ after(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__DerAssignment_4_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_0_1_0()); }
		ruleDer
		{ after(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__DerAssignment_4_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_1_0_0()); }
		ruleDer
		{ after(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyContextDecl__InitAssignment_4_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_1_1_0()); }
		ruleInit
		{ after(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__NamespaceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedClassifierRef__ElementAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedClassifierRefAccess().getElementClassifierRefParserRuleCall_2_0()); }
		ruleClassifierRef
		{ after(grammarAccess.getQualifiedClassifierRefAccess().getElementClassifierRefParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__NamespaceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedOperationRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getQualifiedOperationRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedOperationRef__ElementAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedOperationRefAccess().getElementOperationRefParserRuleCall_2_0()); }
		ruleOperationRef
		{ after(grammarAccess.getQualifiedOperationRefAccess().getElementOperationRefParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__NamespaceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPropertyRef__ElementAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedPropertyRefAccess().getElementPropertyRefParserRuleCall_2_0()); }
		rulePropertyRef
		{ after(grammarAccess.getQualifiedPropertyRefAccess().getElementPropertyRefParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__NamespaceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedPackageRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getQualifiedPackageRefAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedPackageRef__ElementAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQualifiedPackageRefAccess().getElementPackageRefParserRuleCall_2_0()); }
		rulePackageRef
		{ after(grammarAccess.getQualifiedPackageRefAccess().getElementPackageRefParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassifierRef__ClassifierAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleClassifierRefAccess().getClassifierIdentifierParserRuleCall_0()); }
		ruleIdentifier
		{ after(grammarAccess.getSimpleClassifierRefAccess().getClassifierIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleOperationRef__OperationAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleOperationRefAccess().getOperationIdentifierParserRuleCall_0()); }
		ruleIdentifier
		{ after(grammarAccess.getSimpleOperationRefAccess().getOperationIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimplePackageRef__PackageAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimplePackageRefAccess().getPackageIdentifierParserRuleCall_0()); }
		ruleIdentifier
		{ after(grammarAccess.getSimplePackageRefAccess().getPackageIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimplePropertyRef__FeatureAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimplePropertyRefAccess().getFeatureIdentifierParserRuleCall_0()); }
		ruleIdentifier
		{ after(grammarAccess.getSimplePropertyRefAccess().getFeatureIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__OpAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpAlternatives_1_0_1_0()); }
		(rule__NavigationExp__OpAlternatives_1_0_1_0)
		{ after(grammarAccess.getNavigationExpAccess().getOpAlternatives_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__ArgumentAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0()); }
		ruleNavigatingExp
		{ after(grammarAccess.getNavigationExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__OpAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getOpAlternatives_1_1_1_0()); }
		(rule__NavigationExp__OpAlternatives_1_1_1_0)
		{ after(grammarAccess.getNavigationExpAccess().getOpAlternatives_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__MessageNameAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0()); }
		ruleIdentifier
		{ after(grammarAccess.getNavigationExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__ArgumentsAssignment_1_1_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0()); }
		ruleOclMessageArg
		{ after(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigationExp__ArgumentsAssignment_1_1_4_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0()); }
		ruleOclMessageArg
		{ after(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__OpAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpAlternatives_1_0_1_0()); }
		(rule__NavigatingExp__OpAlternatives_1_0_1_0)
		{ after(grammarAccess.getNavigatingExpAccess().getOpAlternatives_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__ArgumentAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0()); }
		ruleNavigatingExp
		{ after(grammarAccess.getNavigatingExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__OpAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getOpAlternatives_1_1_1_0()); }
		(rule__NavigatingExp__OpAlternatives_1_1_1_0)
		{ after(grammarAccess.getNavigatingExpAccess().getOpAlternatives_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__MessageNameAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0()); }
		ruleIdentifier
		{ after(grammarAccess.getNavigatingExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__ArgumentsAssignment_1_1_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0()); }
		ruleOclMessageArg
		{ after(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NavigatingExp__ArgumentsAssignment_1_1_4_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0()); }
		ruleOclMessageArg
		{ after(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OclMessageArg__TypeAssignment_0_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOclMessageArgAccess().getTypeTypeExpParserRuleCall_0_2_1_0()); }
		ruleTypeExp
		{ after(grammarAccess.getOclMessageArgAccess().getTypeTypeExpParserRuleCall_0_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimitiveType__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimitiveTypeAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0()); }
		rulePrimitiveTypeIdentifier
		{ after(grammarAccess.getPrimitiveTypeAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__TypeIdentifierAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionTypeAccess().getTypeIdentifierCollectionTypeIdentifierParserRuleCall_0_0()); }
		ruleCollectionTypeIdentifier
		{ after(grammarAccess.getCollectionTypeAccess().getTypeIdentifierCollectionTypeIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionType__TypeAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionTypeAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
		ruleTypeExp
		{ after(grammarAccess.getCollectionTypeAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleTypeAccess().getNameTupleKeyword_0_0()); }
		(
			{ before(grammarAccess.getTupleTypeAccess().getNameTupleKeyword_0_0()); }
			'Tuple'
			{ after(grammarAccess.getTupleTypeAccess().getNameTupleKeyword_0_0()); }
		)
		{ after(grammarAccess.getTupleTypeAccess().getNameTupleKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__PartAssignment_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_0_0()); }
		ruletuplePart
		{ after(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleType__PartAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_1_1_0()); }
		ruletuplePart
		{ after(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTuplePartAccess().getNameIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getTuplePartAccess().getNameIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TuplePart__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTuplePartAccess().getTypeTypeExpParserRuleCall_2_0()); }
		ruleTypeExp
		{ after(grammarAccess.getTuplePartAccess().getTypeTypeExpParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__CollectionLiteralPartsAssignment_1_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_0_0()); }
		ruleCollectionLiteralPart
		{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralExp__CollectionLiteralPartsAssignment_1_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_1_1_0()); }
		ruleCollectionLiteralPart
		{ after(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__ExpressionAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionLiteralPartAccess().getExpressionExpressionParserRuleCall_0_0()); }
		ruleExpression
		{ after(grammarAccess.getCollectionLiteralPartAccess().getExpressionExpressionParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CollectionLiteralPart__LastExpressionAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCollectionLiteralPartAccess().getLastExpressionExpressionParserRuleCall_1_1_0()); }
		ruleExpression
		{ after(grammarAccess.getCollectionLiteralPartAccess().getLastExpressionExpressionParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__PartAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_1_0()); }
		ruleTupleLiteralPart
		{ after(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralExp__PartAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_2_1_0()); }
		ruleTupleLiteralPart
		{ after(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleLiteralPartAccess().getNameIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getTupleLiteralPartAccess().getNameIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__TypeAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleLiteralPartAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
		ruleTypeExp
		{ after(grammarAccess.getTupleLiteralPartAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TupleLiteralPart__InitExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTupleLiteralPartAccess().getInitExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getTupleLiteralPartAccess().getInitExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NumberLiteralExp__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNumberLiteralExpAccess().getNameNUMBER_LITERALParserRuleCall_0()); }
		ruleNUMBER_LITERAL
		{ after(grammarAccess.getNumberLiteralExpAccess().getNameNUMBER_LITERALParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StringLiteralExp__ValuesAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStringLiteralExpAccess().getValuesStringLiteralParserRuleCall_0()); }
		ruleStringLiteral
		{ after(grammarAccess.getStringLiteralExpAccess().getValuesStringLiteralParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteralExp__IsTrueAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanLiteralExpAccess().getIsTrueTrueKeyword_1_0_0()); }
		(
			{ before(grammarAccess.getBooleanLiteralExpAccess().getIsTrueTrueKeyword_1_0_0()); }
			'true'
			{ after(grammarAccess.getBooleanLiteralExpAccess().getIsTrueTrueKeyword_1_0_0()); }
		)
		{ after(grammarAccess.getBooleanLiteralExpAccess().getIsTrueTrueKeyword_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImpliesAccess().getOpImpliesKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getImpliesAccess().getOpImpliesKeyword_1_1_0()); }
			'implies'
			{ after(grammarAccess.getImpliesAccess().getOpImpliesKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getImpliesAccess().getOpImpliesKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Implies__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImpliesAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Implies__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getImpliesAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXorAccess().getOpXorKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getXorAccess().getOpXorKeyword_1_1_0()); }
			'xor'
			{ after(grammarAccess.getXorAccess().getOpXorKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getXorAccess().getOpXorKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Xor__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXorAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Xor__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getXorAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOrAccess().getOpOrKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getOrAccess().getOpOrKeyword_1_1_0()); }
			'or'
			{ after(grammarAccess.getOrAccess().getOpOrKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getOrAccess().getOpOrKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Or__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOrAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Or__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getOrAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAndAccess().getOpAndKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getAndAccess().getOpAndKeyword_1_1_0()); }
			'and'
			{ after(grammarAccess.getAndAccess().getOpAndKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getAndAccess().getOpAndKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__And__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAndAccess().getArgumentAlternatives_1_2_0()); }
		(rule__And__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getAndAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEqualityAccess().getOpAlternatives_1_1_0()); }
		(rule__Equality__OpAlternatives_1_1_0)
		{ after(grammarAccess.getEqualityAccess().getOpAlternatives_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Equality__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEqualityAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Equality__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getEqualityAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalAccess().getOpAlternatives_1_1_0()); }
		(rule__Relational__OpAlternatives_1_1_0)
		{ after(grammarAccess.getRelationalAccess().getOpAlternatives_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relational__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationalAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Relational__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getRelationalAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAdditiveAccess().getOpAlternatives_1_1_0()); }
		(rule__Additive__OpAlternatives_1_1_0)
		{ after(grammarAccess.getAdditiveAccess().getOpAlternatives_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Additive__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAdditiveAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Additive__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getAdditiveAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMultiplicativeAccess().getOpAlternatives_1_1_0()); }
		(rule__Multiplicative__OpAlternatives_1_1_0)
		{ after(grammarAccess.getMultiplicativeAccess().getOpAlternatives_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Multiplicative__ArgumentAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMultiplicativeAccess().getArgumentAlternatives_1_2_0()); }
		(rule__Multiplicative__ArgumentAlternatives_1_2_0)
		{ after(grammarAccess.getMultiplicativeAccess().getArgumentAlternatives_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__OpAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnaryAccess().getOpAlternatives_1_1_0()); }
		(rule__Unary__OpAlternatives_1_1_0)
		{ after(grammarAccess.getUnaryAccess().getOpAlternatives_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unary__SourceAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnaryAccess().getSourceUnaryParserRuleCall_1_2_0()); }
		ruleunary
		{ after(grammarAccess.getUnaryAccess().getSourceUnaryParserRuleCall_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubNavigationExp__SourceAssignment_9_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubNavigationExpAccess().getSourceExpressionParserRuleCall_9_2_0()); }
		ruleExpression
		{ after(grammarAccess.getSubNavigationExpAccess().getSourceExpressionParserRuleCall_9_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIteratorVariableAccess().getNameIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getIteratorVariableAccess().getNameIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorVariable__TypeAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIteratorVariableAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
		ruleTypeExp
		{ after(grammarAccess.getIteratorVariableAccess().getTypeTypeExpParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIteratorAccumulatorAccess().getNameIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getIteratorAccumulatorAccess().getNameIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIteratorAccumulatorAccess().getTypeTypeExpParserRuleCall_2_0()); }
		ruleTypeExp
		{ after(grammarAccess.getIteratorAccumulatorAccess().getTypeTypeExpParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IteratorAccumulator__InitExpressionAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionExpressionParserRuleCall_4_0()); }
		ruleExpression
		{ after(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionExpressionParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getNameNameExpParserRuleCall_0_0()); }
		ruleNameExp
		{ after(grammarAccess.getRoundBracketExpAccess().getNameNameExpParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__PreAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getPrePreKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getRoundBracketExpAccess().getPrePreKeyword_1_1_0()); }
			'pre'
			{ after(grammarAccess.getRoundBracketExpAccess().getPrePreKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getRoundBracketExpAccess().getPrePreKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Variable1Assignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getVariable1IteratorVariableParserRuleCall_3_0_0()); }
		ruleiteratorVariable
		{ after(grammarAccess.getRoundBracketExpAccess().getVariable1IteratorVariableParserRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Variable2Assignment_3_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorVariableParserRuleCall_3_1_0_1_0()); }
		ruleiteratorVariable
		{ after(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorVariableParserRuleCall_3_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__Variable2Assignment_3_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorAccumulatorParserRuleCall_3_1_1_1_0()); }
		ruleiteratorAccumulator
		{ after(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorAccumulatorParserRuleCall_3_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__ArgumentsAssignment_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_0_0()); }
		ruleExpression
		{ after(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RoundBracketExp__ArgumentsAssignment_4_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_1_1_0()); }
		ruleExpression
		{ after(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSquareBracketExpAccess().getNameNameExpParserRuleCall_0_0()); }
		ruleNameExp
		{ after(grammarAccess.getSquareBracketExpAccess().getNameNameExpParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__ArgumentsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_2_0()); }
		ruleExpression
		{ after(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__ArgumentsAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_3_1_0()); }
		ruleExpression
		{ after(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SquareBracketExp__PreAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSquareBracketExpAccess().getPrePreKeyword_5_1_0()); }
		(
			{ before(grammarAccess.getSquareBracketExpAccess().getPrePreKeyword_5_1_0()); }
			'pre'
			{ after(grammarAccess.getSquareBracketExpAccess().getPrePreKeyword_5_1_0()); }
		)
		{ after(grammarAccess.getSquareBracketExpAccess().getPrePreKeyword_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PreExp__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPreExpAccess().getNameNameExpParserRuleCall_0_0()); }
		ruleNameExp
		{ after(grammarAccess.getPreExpAccess().getNameNameExpParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__NamespaceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPathNameExpAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getPathNameExpAccess().getNamespaceIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PathNameExp__ElementAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPathNameExpAccess().getElementNameExpParserRuleCall_2_0()); }
		ruleNameExp
		{ after(grammarAccess.getPathNameExpAccess().getElementNameExpParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleNameExp__ElementAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleNameExpAccess().getElementIdentifierParserRuleCall_0()); }
		ruleIdentifier
		{ after(grammarAccess.getSimpleNameExpAccess().getElementIdentifierParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__ConditionAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIfExpAccess().getConditionExpressionParserRuleCall_1_0()); }
		ruleExpression
		{ after(grammarAccess.getIfExpAccess().getConditionExpressionParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__ThenExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIfExpAccess().getThenExpressionExpressionParserRuleCall_3_0()); }
		ruleExpression
		{ after(grammarAccess.getIfExpAccess().getThenExpressionExpressionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IfExp__ElseExpressionAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIfExpAccess().getElseExpressionExpressionParserRuleCall_5_0()); }
		ruleExpression
		{ after(grammarAccess.getIfExpAccess().getElseExpressionExpressionParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__VariableAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_1_0()); }
		ruleLetVariable
		{ after(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__VariableAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_2_1_0()); }
		ruleLetVariable
		{ after(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetExp__InAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetExpAccess().getInExpressionParserRuleCall_4_0()); }
		ruleExpression
		{ after(grammarAccess.getLetExpAccess().getInExpressionParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetVariableAccess().getNameIdentifierParserRuleCall_0_0()); }
		ruleIdentifier
		{ after(grammarAccess.getLetVariableAccess().getNameIdentifierParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetVariableAccess().getTypeTypeExpParserRuleCall_2_0()); }
		ruleTypeExp
		{ after(grammarAccess.getLetVariableAccess().getTypeTypeExpParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LetVariable__InitExpressionAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetVariableAccess().getInitExpressionExpressionParserRuleCall_4_0()); }
		ruleExpression
		{ after(grammarAccess.getLetVariableAccess().getInitExpressionExpressionParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
