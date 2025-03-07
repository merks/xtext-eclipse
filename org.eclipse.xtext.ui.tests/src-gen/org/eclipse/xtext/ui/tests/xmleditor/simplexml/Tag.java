/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.xmleditor.simplexml;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Tag</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getAttributes <em>Attributes</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getContents <em>Contents</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getCloseName <em>Close Name</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage#getTag()
 * @model
 * @generated
 */
public interface Tag extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage#getTag_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Attributes</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Attribute}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Attributes</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage#getTag_Attributes()
   * @model containment="true"
   * @generated
   */
  EList<Attribute> getAttributes();

  /**
   * Returns the value of the '<em><b>Contents</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Content}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Contents</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage#getTag_Contents()
   * @model containment="true"
   * @generated
   */
  EList<Content> getContents();

  /**
   * Returns the value of the '<em><b>Close Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Close Name</em>' attribute.
   * @see #setCloseName(String)
   * @see org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage#getTag_CloseName()
   * @model
   * @generated
   */
  String getCloseName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag#getCloseName <em>Close Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Close Name</em>' attribute.
   * @see #getCloseName()
   * @generated
   */
  void setCloseName(String value);

} // Tag
