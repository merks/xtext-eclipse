/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.util.Switch;

import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.*;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage
 * @generated
 */
public class ReferenceGrammarUiSwitch<T> extends Switch<T>
{
  /**
   * The cached model package
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static ReferenceGrammarUiPackage modelPackage;

  /**
   * Creates an instance of the switch.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ReferenceGrammarUiSwitch()
  {
    if (modelPackage == null)
    {
      modelPackage = ReferenceGrammarUiPackage.eINSTANCE;
    }
  }

  /**
   * Checks whether this is a switch for the given package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param ePackage the package in question.
   * @return whether this is a switch for the given package.
   * @generated
   */
  @Override
  protected boolean isSwitchFor(EPackage ePackage)
  {
    return ePackage == modelPackage;
  }

  /**
   * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the first non-null result returned by a <code>caseXXX</code> call.
   * @generated
   */
  @Override
  protected T doSwitch(int classifierID, EObject theEObject)
  {
    switch (classifierID)
    {
      case ReferenceGrammarUiPackage.SPIELPLATZ:
      {
        Spielplatz spielplatz = (Spielplatz)theEObject;
        T result = caseSpielplatz(spielplatz);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.PERSON:
      {
        Person person = (Person)theEObject;
        T result = casePerson(person);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.KIND:
      {
        Kind kind = (Kind)theEObject;
        T result = caseKind(kind);
        if (result == null) result = casePerson(kind);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.ERWACHSENER:
      {
        Erwachsener erwachsener = (Erwachsener)theEObject;
        T result = caseErwachsener(erwachsener);
        if (result == null) result = casePerson(erwachsener);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.SPIELZEUG:
      {
        Spielzeug spielzeug = (Spielzeug)theEObject;
        T result = caseSpielzeug(spielzeug);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.FARBE:
      {
        Farbe farbe = (Farbe)theEObject;
        T result = caseFarbe(farbe);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ReferenceGrammarUiPackage.FAMILIE:
      {
        Familie familie = (Familie)theEObject;
        T result = caseFamilie(familie);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      default: return defaultCase(theEObject);
    }
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Spielplatz</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Spielplatz</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseSpielplatz(Spielplatz object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Person</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Person</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T casePerson(Person object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Kind</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Kind</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseKind(Kind object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Erwachsener</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Erwachsener</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseErwachsener(Erwachsener object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Spielzeug</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Spielzeug</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseSpielzeug(Spielzeug object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Farbe</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Farbe</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseFarbe(Farbe object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Familie</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Familie</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseFamilie(Familie object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch, but this is the last case anyway.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject)
   * @generated
   */
  @Override
  public T defaultCase(EObject object)
  {
    return null;
  }

} //ReferenceGrammarUiSwitch
