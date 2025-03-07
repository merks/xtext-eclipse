/*******************************************************************************
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
lexer grammar InternalSingleCodetemplateLexer;

@header {
package org.eclipse.xtext.ui.codetemplates.ide.contentassist.antlr.lexer;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

Templates : 'templates';

For : 'for';

DollarSignDollarSign : '$$';

DollarSignLeftCurlyBracket : '${';

GreaterThanSignGreaterThanSign : '>>';

DollarSign : '$';

LeftParenthesis : '(';

RightParenthesis : ')';

Comma : ',';

FullStop : '.';

Colon : ':';

RightCurlyBracket : '}';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_STRING : '\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'';

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
