/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.builder.tests.builderTestLanguage;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Namespace</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.builder.tests.builderTestLanguage.Namespace#getImports <em>Imports</em>}</li>
 *   <li>{@link org.eclipse.xtext.builder.tests.builderTestLanguage.Namespace#getElements <em>Elements</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.builder.tests.builderTestLanguage.BuilderTestLanguagePackage#getNamespace()
 * @model
 * @generated
 */
public interface Namespace extends NamedElement
{
  /**
   * Returns the value of the '<em><b>Imports</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.builder.tests.builderTestLanguage.Import}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Imports</em>' containment reference list.
   * @see org.eclipse.xtext.builder.tests.builderTestLanguage.BuilderTestLanguagePackage#getNamespace_Imports()
   * @model containment="true"
   * @generated
   */
  EList<Import> getImports();

  /**
   * Returns the value of the '<em><b>Elements</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.builder.tests.builderTestLanguage.NamedElement}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Elements</em>' containment reference list.
   * @see org.eclipse.xtext.builder.tests.builderTestLanguage.BuilderTestLanguagePackage#getNamespace_Elements()
   * @model containment="true"
   * @generated
   */
  EList<NamedElement> getElements();

} // Namespace
