/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model Element</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getFirstReference <em>First Reference</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getSecondReference <em>Second Reference</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getElements <em>Elements</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage#getModelElement()
 * @model
 * @generated
 */
public interface ModelElement extends ModelAttribute
{
  /**
   * Returns the value of the '<em><b>First Reference</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>First Reference</em>' reference.
   * @see #setFirstReference(ModelElement)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage#getModelElement_FirstReference()
   * @model
   * @generated
   */
  ModelElement getFirstReference();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getFirstReference <em>First Reference</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>First Reference</em>' reference.
   * @see #getFirstReference()
   * @generated
   */
  void setFirstReference(ModelElement value);

  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage#getModelElement_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Second Reference</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Second Reference</em>' reference.
   * @see #setSecondReference(ModelElement)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage#getModelElement_SecondReference()
   * @model
   * @generated
   */
  ModelElement getSecondReference();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelElement#getSecondReference <em>Second Reference</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Second Reference</em>' reference.
   * @see #getSecondReference()
   * @generated
   */
  void setSecondReference(ModelElement value);

  /**
   * Returns the value of the '<em><b>Elements</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.ModelAttribute}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Elements</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug291022TestLanguage.Bug291022TestLanguagePackage#getModelElement_Elements()
   * @model containment="true"
   * @generated
   */
  EList<ModelAttribute> getElements();

} // ModelElement
