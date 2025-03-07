/**
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.example.homeautomation.ruleEngine;

import org.eclipse.xtext.xbase.XExpression;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Rule</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getDescription <em>Description</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getDeviceState <em>Device State</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getThenPart <em>Then Part</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.example.homeautomation.ruleEngine.RuleEnginePackage#getRule()
 * @model
 * @generated
 */
public interface Rule extends Declaration
{
  /**
   * Returns the value of the '<em><b>Description</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Description</em>' attribute.
   * @see #setDescription(String)
   * @see org.eclipse.xtext.example.homeautomation.ruleEngine.RuleEnginePackage#getRule_Description()
   * @model
   * @generated
   */
  String getDescription();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getDescription <em>Description</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Description</em>' attribute.
   * @see #getDescription()
   * @generated
   */
  void setDescription(String value);

  /**
   * Returns the value of the '<em><b>Device State</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Device State</em>' reference.
   * @see #setDeviceState(State)
   * @see org.eclipse.xtext.example.homeautomation.ruleEngine.RuleEnginePackage#getRule_DeviceState()
   * @model
   * @generated
   */
  State getDeviceState();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getDeviceState <em>Device State</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Device State</em>' reference.
   * @see #getDeviceState()
   * @generated
   */
  void setDeviceState(State value);

  /**
   * Returns the value of the '<em><b>Then Part</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Then Part</em>' containment reference.
   * @see #setThenPart(XExpression)
   * @see org.eclipse.xtext.example.homeautomation.ruleEngine.RuleEnginePackage#getRule_ThenPart()
   * @model containment="true"
   * @generated
   */
  XExpression getThenPart();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.homeautomation.ruleEngine.Rule#getThenPart <em>Then Part</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Then Part</em>' containment reference.
   * @see #getThenPart()
   * @generated
   */
  void setThenPart(XExpression value);

} // Rule
