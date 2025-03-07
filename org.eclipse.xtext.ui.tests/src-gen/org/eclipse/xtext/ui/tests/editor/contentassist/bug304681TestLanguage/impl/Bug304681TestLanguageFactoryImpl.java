/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Attribut;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Attribute;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Bug304681TestLanguageFactory;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Bug304681TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.ConstraintDefinition;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Feature;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.PackageDefinition;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Reference;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class Bug304681TestLanguageFactoryImpl extends EFactoryImpl implements Bug304681TestLanguageFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static Bug304681TestLanguageFactory init()
  {
    try
    {
      Bug304681TestLanguageFactory theBug304681TestLanguageFactory = (Bug304681TestLanguageFactory)EPackage.Registry.INSTANCE.getEFactory(Bug304681TestLanguagePackage.eNS_URI);
      if (theBug304681TestLanguageFactory != null)
      {
        return theBug304681TestLanguageFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new Bug304681TestLanguageFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Bug304681TestLanguageFactoryImpl()
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
      case Bug304681TestLanguagePackage.MODEL: return createModel();
      case Bug304681TestLanguagePackage.PACKAGE_DEFINITION: return createPackageDefinition();
      case Bug304681TestLanguagePackage.OBJECT: return createObject();
      case Bug304681TestLanguagePackage.FEATURE: return createFeature();
      case Bug304681TestLanguagePackage.ATTRIBUTE: return createAttribute();
      case Bug304681TestLanguagePackage.REFERENCE: return createReference();
      case Bug304681TestLanguagePackage.ATTRIBUT: return createAttribut();
      case Bug304681TestLanguagePackage.CONSTRAINT_DEFINITION: return createConstraintDefinition();
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
  public Model createModel()
  {
    ModelImpl model = new ModelImpl();
    return model;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public PackageDefinition createPackageDefinition()
  {
    PackageDefinitionImpl packageDefinition = new PackageDefinitionImpl();
    return packageDefinition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public org.eclipse.xtext.ui.tests.editor.contentassist.bug304681TestLanguage.Object createObject()
  {
    ObjectImpl object = new ObjectImpl();
    return object;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Feature createFeature()
  {
    FeatureImpl feature = new FeatureImpl();
    return feature;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Attribute createAttribute()
  {
    AttributeImpl attribute = new AttributeImpl();
    return attribute;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Reference createReference()
  {
    ReferenceImpl reference = new ReferenceImpl();
    return reference;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Attribut createAttribut()
  {
    AttributImpl attribut = new AttributImpl();
    return attribut;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ConstraintDefinition createConstraintDefinition()
  {
    ConstraintDefinitionImpl constraintDefinition = new ConstraintDefinitionImpl();
    return constraintDefinition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Bug304681TestLanguagePackage getBug304681TestLanguagePackage()
  {
    return (Bug304681TestLanguagePackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static Bug304681TestLanguagePackage getPackage()
  {
    return Bug304681TestLanguagePackage.eINSTANCE;
  }

} //Bug304681TestLanguageFactoryImpl
