/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.ui;

import com.google.inject.Binder;
import com.google.inject.Provider;
import com.google.inject.name.Names;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.builder.EclipseOutputConfigurationProvider;
import org.eclipse.xtext.builder.builderState.IBuilderState;
import org.eclipse.xtext.builder.clustering.CurrentDescriptions;
import org.eclipse.xtext.builder.impl.PersistentDataAwareDirtyResource;
import org.eclipse.xtext.builder.nature.NatureAddingEditorCallback;
import org.eclipse.xtext.generator.IContextualOutputConfigurationProvider;
import org.eclipse.xtext.ide.LexerIdeBindings;
import org.eclipse.xtext.ide.editor.contentassist.antlr.IContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
import org.eclipse.xtext.parser.antlr.AntlrTokenDefProvider;
import org.eclipse.xtext.parser.antlr.ITokenDefProvider;
import org.eclipse.xtext.parser.antlr.LexerProvider;
import org.eclipse.xtext.resource.IResourceDescriptions;
import org.eclipse.xtext.resource.containers.IAllContainersState;
import org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider;
import org.eclipse.xtext.ui.DefaultUiModule;
import org.eclipse.xtext.ui.editor.DocumentBasedDirtyResource;
import org.eclipse.xtext.ui.editor.IXtextEditorCallback;
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext;
import org.eclipse.xtext.ui.editor.contentassist.IContentProposalProvider;
import org.eclipse.xtext.ui.editor.contentassist.IProposalConflictHelper;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AntlrProposalConflictHelper;
import org.eclipse.xtext.ui.editor.contentassist.antlr.DelegatingContentAssistContextFactory;
import org.eclipse.xtext.ui.shared.Access;
import org.eclipse.xtext.ui.tests.ide.contentassist.antlr.FoldingTestLanguageParser;
import org.eclipse.xtext.ui.tests.ide.contentassist.antlr.internal.InternalFoldingTestLanguageLexer;
import org.eclipse.xtext.ui.tests.ui.contentassist.FoldingTestLanguageProposalProvider;

/**
 * Manual modifications go to {@link FoldingTestLanguageUiModule}.
 */
@SuppressWarnings("all")
public abstract class AbstractFoldingTestLanguageUiModule extends DefaultUiModule {

	public AbstractFoldingTestLanguageUiModule(AbstractUIPlugin plugin) {
		super(plugin);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.ImplicitFragment
	public Provider<? extends IAllContainersState> provideIAllContainersState() {
		return Access.getJavaProjectsState();
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public Class<? extends IProposalConflictHelper> bindIProposalConflictHelper() {
		return AntlrProposalConflictHelper.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public void configureContentAssistLexer(Binder binder) {
		binder.bind(Lexer.class)
			.annotatedWith(Names.named(LexerIdeBindings.CONTENT_ASSIST))
			.to(InternalFoldingTestLanguageLexer.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public void configureHighlightingLexer(Binder binder) {
		binder.bind(org.eclipse.xtext.parser.antlr.Lexer.class)
			.annotatedWith(Names.named(LexerIdeBindings.HIGHLIGHTING))
			.to(org.eclipse.xtext.ui.tests.parser.antlr.internal.InternalFoldingTestLanguageLexer.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public void configureHighlightingTokenDefProvider(Binder binder) {
		binder.bind(ITokenDefProvider.class)
			.annotatedWith(Names.named(LexerIdeBindings.HIGHLIGHTING))
			.to(AntlrTokenDefProvider.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public Class<? extends ContentAssistContext.Factory> bindContentAssistContext$Factory() {
		return DelegatingContentAssistContextFactory.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public Class<? extends IContentAssistParser> bindIContentAssistParser() {
		return FoldingTestLanguageParser.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.parser.antlr.XtextAntlrGeneratorFragment2
	public void configureContentAssistLexerProvider(Binder binder) {
		binder.bind(InternalFoldingTestLanguageLexer.class).toProvider(LexerProvider.create(InternalFoldingTestLanguageLexer.class));
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.ui.contentAssist.ContentAssistFragment2
	public Class<? extends IContentProposalProvider> bindIContentProposalProvider() {
		return FoldingTestLanguageProposalProvider.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.builder.BuilderIntegrationFragment2
	public void configureIResourceDescriptionsBuilderScope(Binder binder) {
		binder.bind(IResourceDescriptions.class).annotatedWith(Names.named(ResourceDescriptionsProvider.NAMED_BUILDER_SCOPE)).to(CurrentDescriptions.ResourceSetAware.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.builder.BuilderIntegrationFragment2
	public Class<? extends IXtextEditorCallback> bindIXtextEditorCallback() {
		return NatureAddingEditorCallback.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.builder.BuilderIntegrationFragment2
	public Class<? extends IContextualOutputConfigurationProvider> bindIContextualOutputConfigurationProvider() {
		return EclipseOutputConfigurationProvider.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.builder.BuilderIntegrationFragment2
	public void configureIResourceDescriptionsPersisted(Binder binder) {
		binder.bind(IResourceDescriptions.class).annotatedWith(Names.named(ResourceDescriptionsProvider.PERSISTED_DESCRIPTIONS)).to(IBuilderState.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.builder.BuilderIntegrationFragment2
	public Class<? extends DocumentBasedDirtyResource> bindDocumentBasedDirtyResource() {
		return PersistentDataAwareDirtyResource.class;
	}
	
}
