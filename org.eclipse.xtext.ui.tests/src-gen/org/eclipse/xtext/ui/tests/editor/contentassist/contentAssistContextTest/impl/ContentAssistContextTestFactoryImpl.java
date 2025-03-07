/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.contentAssistContextTest.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ContentAssistContextTestFactoryImpl extends EFactoryImpl implements ContentAssistContextTestFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static ContentAssistContextTestFactory init()
  {
    try
    {
      ContentAssistContextTestFactory theContentAssistContextTestFactory = (ContentAssistContextTestFactory)EPackage.Registry.INSTANCE.getEFactory(ContentAssistContextTestPackage.eNS_URI);
      if (theContentAssistContextTestFactory != null)
      {
        return theContentAssistContextTestFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new ContentAssistContextTestFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ContentAssistContextTestFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case ContentAssistContextTestPackage.FIRST_LEVEL: return createFirstLevel();
      case ContentAssistContextTestPackage.SECOND_LEVEL_A: return createSecondLevelA();
      case ContentAssistContextTestPackage.SECOND_LEVEL_B: return createSecondLevelB();
      case ContentAssistContextTestPackage.THIRD_LEVEL_A1: return createThirdLevelA1();
      case ContentAssistContextTestPackage.THIRD_LEVEL_A2: return createThirdLevelA2();
      case ContentAssistContextTestPackage.THIRD_LEVEL_B1: return createThirdLevelB1();
      case ContentAssistContextTestPackage.THIRD_LEVEL_B2: return createThirdLevelB2();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public FirstLevel createFirstLevel()
  {
    FirstLevelImpl firstLevel = new FirstLevelImpl();
    return firstLevel;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public SecondLevelA createSecondLevelA()
  {
    SecondLevelAImpl secondLevelA = new SecondLevelAImpl();
    return secondLevelA;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public SecondLevelB createSecondLevelB()
  {
    SecondLevelBImpl secondLevelB = new SecondLevelBImpl();
    return secondLevelB;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ThirdLevelA1 createThirdLevelA1()
  {
    ThirdLevelA1Impl thirdLevelA1 = new ThirdLevelA1Impl();
    return thirdLevelA1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ThirdLevelA2 createThirdLevelA2()
  {
    ThirdLevelA2Impl thirdLevelA2 = new ThirdLevelA2Impl();
    return thirdLevelA2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ThirdLevelB1 createThirdLevelB1()
  {
    ThirdLevelB1Impl thirdLevelB1 = new ThirdLevelB1Impl();
    return thirdLevelB1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ThirdLevelB2 createThirdLevelB2()
  {
    ThirdLevelB2Impl thirdLevelB2 = new ThirdLevelB2Impl();
    return thirdLevelB2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ContentAssistContextTestPackage getContentAssistContextTestPackage()
  {
    return (ContentAssistContextTestPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static ContentAssistContextTestPackage getPackage()
  {
    return ContentAssistContextTestPackage.eINSTANCE;
  }

} //ContentAssistContextTestFactoryImpl
