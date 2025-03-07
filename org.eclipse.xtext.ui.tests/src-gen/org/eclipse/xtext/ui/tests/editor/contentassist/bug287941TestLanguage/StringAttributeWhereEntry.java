/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>String Attribute Where Entry</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringAttributeWhereEntry#getOperator <em>Operator</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringAttributeWhereEntry#getPattern <em>Pattern</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getStringAttributeWhereEntry()
 * @model
 * @generated
 */
public interface StringAttributeWhereEntry extends AttributeWhereEntry
{
  /**
   * Returns the value of the '<em><b>Operator</b></em>' attribute.
   * The literals are from the enumeration {@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringOperator}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Operator</em>' attribute.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringOperator
   * @see #setOperator(StringOperator)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getStringAttributeWhereEntry_Operator()
   * @model
   * @generated
   */
  StringOperator getOperator();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringAttributeWhereEntry#getOperator <em>Operator</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Operator</em>' attribute.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringOperator
   * @see #getOperator()
   * @generated
   */
  void setOperator(StringOperator value);

  /**
   * Returns the value of the '<em><b>Pattern</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Pattern</em>' attribute.
   * @see #setPattern(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getStringAttributeWhereEntry_Pattern()
   * @model
   * @generated
   */
  String getPattern();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.StringAttributeWhereEntry#getPattern <em>Pattern</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Pattern</em>' attribute.
   * @see #getPattern()
   * @generated
   */
  void setPattern(String value);

} // StringAttributeWhereEntry
