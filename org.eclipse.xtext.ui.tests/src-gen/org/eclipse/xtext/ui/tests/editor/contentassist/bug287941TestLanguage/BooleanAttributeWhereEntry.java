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
 * A representation of the model object '<em><b>Boolean Attribute Where Entry</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanAttributeWhereEntry#getOperator <em>Operator</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanAttributeWhereEntry#isIsTrue <em>Is True</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getBooleanAttributeWhereEntry()
 * @model
 * @generated
 */
public interface BooleanAttributeWhereEntry extends AttributeWhereEntry
{
  /**
   * Returns the value of the '<em><b>Operator</b></em>' attribute.
   * The literals are from the enumeration {@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanOperator}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Operator</em>' attribute.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanOperator
   * @see #setOperator(BooleanOperator)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getBooleanAttributeWhereEntry_Operator()
   * @model
   * @generated
   */
  BooleanOperator getOperator();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanAttributeWhereEntry#getOperator <em>Operator</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Operator</em>' attribute.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanOperator
   * @see #getOperator()
   * @generated
   */
  void setOperator(BooleanOperator value);

  /**
   * Returns the value of the '<em><b>Is True</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Is True</em>' attribute.
   * @see #setIsTrue(boolean)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getBooleanAttributeWhereEntry_IsTrue()
   * @model
   * @generated
   */
  boolean isIsTrue();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.BooleanAttributeWhereEntry#isIsTrue <em>Is True</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Is True</em>' attribute.
   * @see #isIsTrue()
   * @generated
   */
  void setIsTrue(boolean value);

} // BooleanAttributeWhereEntry
