/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Spielzeug</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielzeug#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielzeug#getFarbe <em>Farbe</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getSpielzeug()
 * @model
 * @generated
 */
public interface Spielzeug extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getSpielzeug_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielzeug#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Farbe</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Farbe</em>' containment reference.
   * @see #setFarbe(Farbe)
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getSpielzeug_Farbe()
   * @model containment="true"
   * @generated
   */
  Farbe getFarbe();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielzeug#getFarbe <em>Farbe</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Farbe</em>' containment reference.
   * @see #getFarbe()
   * @generated
   */
  void setFarbe(Farbe value);

} // Spielzeug
