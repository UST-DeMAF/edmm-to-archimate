<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e758d0e6-3d7e-41e8-8ea2-54d006d27e83(ArchiMate.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="1IRV1xUxPyP">
    <property role="EcuMT" value="1997324549641164981" />
    <property role="TrG5h" value="EnterpriseArchitecture" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Enterprise Architecture" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1IRV1xUxPFw" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7HPPZNrUONj" role="1TKVEi">
      <property role="IQ2ns" value="8896254119961644243" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrS7jY" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="MYBoz69PNn" role="1TKVEi">
      <property role="IQ2ns" value="918344584795741399" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="propertyDefinitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrS74J" resolve="PropertyDefinition" />
    </node>
    <node concept="1TJgyj" id="7HPPZNrUP4M" role="1TKVEi">
      <property role="IQ2ns" value="8896254119961645362" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrUOPn" resolve="AbstractElement" />
    </node>
    <node concept="1TJgyj" id="7HPPZNrUOP9" role="1TKVEi">
      <property role="IQ2ns" value="8896254119961644361" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="relations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
    </node>
  </node>
  <node concept="1TIwiD" id="7HPPZNrS74J">
    <property role="EcuMT" value="8896254119960932655" />
    <property role="TrG5h" value="PropertyDefinition" />
    <property role="34LRSv" value="Property Definition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7HPPZNrS76c" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="7HPPZNrS7hk" role="1TKVEl">
      <property role="IQ2nx" value="8896254119960933460" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="7HPPZNrS78F" resolve="PropertyType" />
    </node>
  </node>
  <node concept="25R3W" id="7HPPZNrS78F">
    <property role="3F6X1D" value="8896254119960932907" />
    <property role="TrG5h" value="PropertyType" />
    <ref role="1H5jkz" node="7HPPZNrS78G" resolve="STRING" />
    <node concept="25R33" id="7HPPZNrS78G" role="25R1y">
      <property role="3tVfz5" value="8896254119960932908" />
      <property role="TrG5h" value="STRING" />
    </node>
    <node concept="25R33" id="7HPPZNrS7b9" role="25R1y">
      <property role="3tVfz5" value="8896254119960933065" />
      <property role="TrG5h" value="BOOLEAN" />
    </node>
    <node concept="25R33" id="7HPPZNrS7b$" role="25R1y">
      <property role="3tVfz5" value="8896254119960933092" />
      <property role="TrG5h" value="CURRENCY" />
    </node>
    <node concept="25R33" id="7HPPZNrS7cp" role="25R1y">
      <property role="3tVfz5" value="8896254119960933145" />
      <property role="TrG5h" value="DATE" />
    </node>
    <node concept="25R33" id="7HPPZNrS7cB" role="25R1y">
      <property role="3tVfz5" value="8896254119960933159" />
      <property role="TrG5h" value="TIME" />
    </node>
    <node concept="25R33" id="7HPPZNrS7d2" role="25R1y">
      <property role="3tVfz5" value="8896254119960933186" />
      <property role="TrG5h" value="NUMBER" />
    </node>
  </node>
  <node concept="1TIwiD" id="7HPPZNrS7jY">
    <property role="EcuMT" value="8896254119960933630" />
    <property role="TrG5h" value="Property" />
    <property role="34LRSv" value="Property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7HPPZNrS7m1" role="1TKVEl">
      <property role="IQ2nx" value="8896254119960933761" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="MYBoz69PNm" role="1TKVEi">
      <property role="IQ2ns" value="918344584795741398" />
      <property role="20kJfa" value="propertyDefinition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7HPPZNrS74J" resolve="PropertyDefinition" />
    </node>
  </node>
  <node concept="1TIwiD" id="7HPPZNrUOPn">
    <property role="EcuMT" value="8896254119961644375" />
    <property role="TrG5h" value="AbstractElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Abstract Element" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7HPPZNrUOR1" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7HPPZNrUOXN" role="1TKVEi">
      <property role="IQ2ns" value="8896254119961644915" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrS7jY" resolve="Property" />
    </node>
  </node>
  <node concept="1TIwiD" id="7HPPZNrUOSh">
    <property role="EcuMT" value="8896254119961644561" />
    <property role="TrG5h" value="AbstractRelationship" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Abstract Relationship" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7HPPZNrUOTH" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7HPPZNrUP04" role="1TKVEi">
      <property role="IQ2ns" value="8896254119961645060" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7HPPZNrS7jY" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="6GoZXN$1NK_" role="1TKVEi">
      <property role="IQ2ns" value="7717199285682912293" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7HPPZNrUOPn" resolve="AbstractElement" />
    </node>
    <node concept="1TJgyj" id="6GoZXN$1NKA" role="1TKVEi">
      <property role="IQ2ns" value="7717199285682912294" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7HPPZNrUOPn" resolve="AbstractElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz66PzV">
    <property role="EcuMT" value="918344584794953979" />
    <property role="TrG5h" value="JunctionElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Junction Element" />
    <property role="3GE5qa" value="Junction" />
    <ref role="1TJDcQ" node="7HPPZNrUOPn" resolve="AbstractElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz66P$9">
    <property role="EcuMT" value="918344584794953993" />
    <property role="TrG5h" value="AndJunction" />
    <property role="34LRSv" value="And Junction" />
    <property role="3GE5qa" value="Junction" />
    <ref role="1TJDcQ" node="MYBoz66PzV" resolve="JunctionElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz66P$a">
    <property role="EcuMT" value="918344584794953994" />
    <property role="TrG5h" value="OrJunction" />
    <property role="34LRSv" value="Or Junction" />
    <property role="3GE5qa" value="Junction" />
    <ref role="1TJDcQ" node="MYBoz66PzV" resolve="JunctionElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfCX">
    <property role="EcuMT" value="918344584796109373" />
    <property role="TrG5h" value="BehaviourElemnt" />
    <property role="34LRSv" value="Behaviour Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="7HPPZNrUOPn" resolve="AbstractElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfCY">
    <property role="EcuMT" value="918344584796109374" />
    <property role="TrG5h" value="ExternalBehaviourElemnt" />
    <property role="34LRSv" value="External Behaviour Elment" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6bfCX" resolve="BehaviourElemnt" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfD1">
    <property role="EcuMT" value="918344584796109377" />
    <property role="TrG5h" value="BusinessService" />
    <property role="34LRSv" value="Business Service" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bfCY" resolve="ExternalBehaviourElemnt" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfD2">
    <property role="EcuMT" value="918344584796109378" />
    <property role="TrG5h" value="ApplicationService" />
    <property role="34LRSv" value="Application Service" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bfCY" resolve="ExternalBehaviourElemnt" />
    <node concept="PrWs8" id="4BqX45LXFXh" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bfD3">
    <property role="EcuMT" value="918344584796109379" />
    <property role="TrG5h" value="TechnologyService" />
    <property role="34LRSv" value="Technology Service" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bfCY" resolve="ExternalBehaviourElemnt" />
    <node concept="PrWs8" id="4BqX45M3JoP" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bfD4">
    <property role="EcuMT" value="918344584796109380" />
    <property role="TrG5h" value="InternalBehaviourElement" />
    <property role="34LRSv" value="Internal Behaviour Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6bfCX" resolve="BehaviourElemnt" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfD7">
    <property role="EcuMT" value="918344584796109383" />
    <property role="TrG5h" value="TechnologyInternalBehaviourElement" />
    <property role="34LRSv" value="Technology Internal Behaviour Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bfD4" resolve="InternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bfDa">
    <property role="EcuMT" value="918344584796109386" />
    <property role="TrG5h" value="TechnologyFunction" />
    <property role="34LRSv" value="Technology Fnction" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bfD7" resolve="TechnologyInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45M3JoL" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bfDb">
    <property role="EcuMT" value="918344584796109387" />
    <property role="TrG5h" value="TechnologyProcess" />
    <property role="34LRSv" value="Technology Process" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bfD7" resolve="TechnologyInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45M3JoO" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bfDc">
    <property role="EcuMT" value="918344584796109388" />
    <property role="TrG5h" value="TechnologyInteraction" />
    <property role="34LRSv" value="Technology Interaction" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bfD7" resolve="TechnologyInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45M3JoM" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiP">
    <property role="EcuMT" value="918344584796112053" />
    <property role="TrG5h" value="ApplicationInternalBehaviourElement" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bfD4" resolve="InternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiR">
    <property role="EcuMT" value="918344584796112055" />
    <property role="TrG5h" value="ApplicationFunction" />
    <property role="34LRSv" value="Application Function" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bgiP" resolve="ApplicationInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45LXFXd" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiS">
    <property role="EcuMT" value="918344584796112056" />
    <property role="TrG5h" value="ApplicationProcess" />
    <property role="34LRSv" value="Application Process" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bgiP" resolve="ApplicationInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45LXFXg" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiT">
    <property role="EcuMT" value="918344584796112057" />
    <property role="TrG5h" value="ApplicationInteraction" />
    <property role="34LRSv" value="Application Interaction" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bgiP" resolve="ApplicationInternalBehaviourElement" />
    <node concept="PrWs8" id="4BqX45LXFXe" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiU">
    <property role="EcuMT" value="918344584796112058" />
    <property role="TrG5h" value="BusinessInternalBehaviourElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Business Internal Behaviour Element" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bfD4" resolve="InternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiW">
    <property role="EcuMT" value="918344584796112060" />
    <property role="TrG5h" value="BusinessFunction" />
    <property role="34LRSv" value="Business Function" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bgiU" resolve="BusinessInternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiX">
    <property role="EcuMT" value="918344584796112061" />
    <property role="TrG5h" value="BusinessProcess" />
    <property role="34LRSv" value="Business Process" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bgiU" resolve="BusinessInternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiY">
    <property role="EcuMT" value="918344584796112062" />
    <property role="TrG5h" value="BusinessInteraction" />
    <property role="34LRSv" value="Business Interaction" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bgiU" resolve="BusinessInternalBehaviourElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgiZ">
    <property role="EcuMT" value="918344584796112063" />
    <property role="TrG5h" value="Event" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Event" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6bfCX" resolve="BehaviourElemnt" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgj1">
    <property role="EcuMT" value="918344584796112065" />
    <property role="TrG5h" value="BusinessEvent" />
    <property role="34LRSv" value="Business Event" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bgiZ" resolve="Event" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bgj2">
    <property role="EcuMT" value="918344584796112066" />
    <property role="TrG5h" value="ApplicationEvent" />
    <property role="34LRSv" value="Application Event" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bgiZ" resolve="Event" />
    <node concept="PrWs8" id="4BqX45LXFXc" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bgj3">
    <property role="EcuMT" value="918344584796112067" />
    <property role="TrG5h" value="TechnologyEvent" />
    <property role="34LRSv" value="Technology Event" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bgiZ" resolve="Event" />
    <node concept="PrWs8" id="4BqX45M3JoK" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLL">
    <property role="EcuMT" value="918344584796302449" />
    <property role="TrG5h" value="StructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Structure Element" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="7HPPZNrUOPn" resolve="AbstractElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLO">
    <property role="EcuMT" value="918344584796302452" />
    <property role="TrG5h" value="PassiveStructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Passive Structure Element" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6bYLL" resolve="StructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLR">
    <property role="EcuMT" value="918344584796302455" />
    <property role="TrG5h" value="TechnologyPassiveStructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Technology Passive Structure Element" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bYLO" resolve="PassiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLT">
    <property role="EcuMT" value="918344584796302457" />
    <property role="TrG5h" value="Artifact" />
    <property role="34LRSv" value="Artifact" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bYLR" resolve="TechnologyPassiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoC" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLU">
    <property role="EcuMT" value="918344584796302458" />
    <property role="TrG5h" value="Material" />
    <property role="34LRSv" value="Material" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6bYLR" resolve="TechnologyPassiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoF" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLV">
    <property role="EcuMT" value="918344584796302459" />
    <property role="TrG5h" value="ApplicationPassiveStrucutreElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Application Passive Structure Element" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bYLO" resolve="PassiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bYLX">
    <property role="EcuMT" value="918344584796302461" />
    <property role="TrG5h" value="DataObject" />
    <property role="34LRSv" value="Data Object" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6bYLV" resolve="ApplicationPassiveStrucutreElement" />
    <node concept="PrWs8" id="4BqX45LXFXj" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6bZSt">
    <property role="EcuMT" value="918344584796306973" />
    <property role="TrG5h" value="BusinessPassiveStructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Business Passive Strucutre Element" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bYLO" resolve="PassiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bZSv">
    <property role="EcuMT" value="918344584796306975" />
    <property role="TrG5h" value="BusinessObject" />
    <property role="34LRSv" value="Business Object" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bZSt" resolve="BusinessPassiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bZSw">
    <property role="EcuMT" value="918344584796306976" />
    <property role="TrG5h" value="Contract" />
    <property role="34LRSv" value="Contract" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6bZSv" resolve="BusinessObject" />
  </node>
  <node concept="1TIwiD" id="MYBoz6bZSx">
    <property role="EcuMT" value="918344584796306977" />
    <property role="TrG5h" value="Representation" />
    <property role="34LRSv" value="Representation" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6bZSt" resolve="BusinessPassiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOv">
    <property role="EcuMT" value="918344584796495135" />
    <property role="TrG5h" value="ActiveStructureElement" />
    <property role="34LRSv" value="Active Structure Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6bYLL" resolve="StructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOy">
    <property role="EcuMT" value="918344584796495138" />
    <property role="TrG5h" value="ExternalActiveStructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="External Active Structure Element" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6cHOv" resolve="ActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHO$">
    <property role="EcuMT" value="918344584796495140" />
    <property role="TrG5h" value="BusinessInterface" />
    <property role="34LRSv" value="Business Interface" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6cHOy" resolve="ExternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHO_">
    <property role="EcuMT" value="918344584796495141" />
    <property role="TrG5h" value="ApplicationInterface" />
    <property role="34LRSv" value="Application Interface" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6cHOy" resolve="ExternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45LXFXf" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOA">
    <property role="EcuMT" value="918344584796495142" />
    <property role="TrG5h" value="TechnologyInterface" />
    <property role="34LRSv" value="Technology Interface" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOy" resolve="ExternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoN" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOB">
    <property role="EcuMT" value="918344584796495143" />
    <property role="TrG5h" value="TechnologyActiveStructureElement" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Technology Active Structure Element" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOv" resolve="ActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOD">
    <property role="EcuMT" value="918344584796495145" />
    <property role="TrG5h" value="Path" />
    <property role="34LRSv" value="Path" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOB" resolve="TechnologyActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoH" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOE">
    <property role="EcuMT" value="918344584796495146" />
    <property role="TrG5h" value="CommunicationsNetwork" />
    <property role="34LRSv" value="Communications Network" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOB" resolve="TechnologyActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoD" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOG">
    <property role="EcuMT" value="918344584796495148" />
    <property role="TrG5h" value="InternalActiveStructureElement" />
    <property role="34LRSv" value="Internal Active Strucutre Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="1TJDcQ" node="MYBoz6cHOv" resolve="ActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOI">
    <property role="EcuMT" value="918344584796495150" />
    <property role="TrG5h" value="TechnologyInternalActiveStructureElement" />
    <property role="34LRSv" value="Technology Internal Active Structure Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOG" resolve="InternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOJ">
    <property role="EcuMT" value="918344584796495151" />
    <property role="TrG5h" value="SystemSoftware" />
    <property role="34LRSv" value="System Software" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOI" resolve="TechnologyInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoI" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOK">
    <property role="EcuMT" value="918344584796495152" />
    <property role="TrG5h" value="Node" />
    <property role="34LRSv" value="Node" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOI" resolve="TechnologyInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoG" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOL">
    <property role="EcuMT" value="918344584796495153" />
    <property role="TrG5h" value="Device" />
    <property role="34LRSv" value="Device" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOI" resolve="TechnologyInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoE" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOM">
    <property role="EcuMT" value="918344584796495154" />
    <property role="TrG5h" value="TechnologyCollaboration" />
    <property role="34LRSv" value="Technology Collaboration" />
    <property role="3GE5qa" value="Technology" />
    <ref role="1TJDcQ" node="MYBoz6cHOI" resolve="TechnologyInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45M3JoJ" role="PzmwI">
      <ref role="PrY4T" node="4BqX45M3JoB" resolve="ITechnology" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHON">
    <property role="EcuMT" value="918344584796495155" />
    <property role="TrG5h" value="ApplicationInternalActiveStructureElement" />
    <property role="34LRSv" value="Application Internal Active Structure Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6cHOG" resolve="InternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOO">
    <property role="EcuMT" value="918344584796495156" />
    <property role="TrG5h" value="ApplicationComponent" />
    <property role="34LRSv" value="Application Component" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6cHON" resolve="ApplicationInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45LXFXb" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOP">
    <property role="EcuMT" value="918344584796495157" />
    <property role="TrG5h" value="ApplicationCollaboration" />
    <property role="34LRSv" value="Application Collaboration" />
    <property role="3GE5qa" value="Application" />
    <ref role="1TJDcQ" node="MYBoz6cHON" resolve="ApplicationInternalActiveStructureElement" />
    <node concept="PrWs8" id="4BqX45LXFXa" role="PzmwI">
      <ref role="PrY4T" node="4BqX45LXFX8" resolve="IApplication" />
    </node>
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOQ">
    <property role="EcuMT" value="918344584796495158" />
    <property role="TrG5h" value="BusinessInternalActiveStructureElement" />
    <property role="34LRSv" value="Business Internal Active Structure Element" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6cHOG" resolve="InternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOS">
    <property role="EcuMT" value="918344584796495160" />
    <property role="TrG5h" value="BusinessRole" />
    <property role="34LRSv" value="Business Role" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6cHOQ" resolve="BusinessInternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOT">
    <property role="EcuMT" value="918344584796495161" />
    <property role="TrG5h" value="BusinessActor" />
    <property role="34LRSv" value="Business Actor" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6cHOQ" resolve="BusinessInternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6cHOU">
    <property role="EcuMT" value="918344584796495162" />
    <property role="TrG5h" value="BusinessCollaboration" />
    <property role="34LRSv" value="Business Collaboration" />
    <property role="3GE5qa" value="Business" />
    <ref role="1TJDcQ" node="MYBoz6cHOQ" resolve="BusinessInternalActiveStructureElement" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTo">
    <property role="EcuMT" value="918344584796687960" />
    <property role="TrG5h" value="StructuralRelationship" />
    <property role="34LRSv" value="Structural Relationship" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTq">
    <property role="EcuMT" value="918344584796687962" />
    <property role="TrG5h" value="Realization" />
    <property role="34LRSv" value="Realization" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTo" resolve="StructuralRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTr">
    <property role="EcuMT" value="918344584796687963" />
    <property role="TrG5h" value="Assignment" />
    <property role="34LRSv" value="Assignment" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTo" resolve="StructuralRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTs">
    <property role="EcuMT" value="918344584796687964" />
    <property role="TrG5h" value="Aggregation" />
    <property role="34LRSv" value="Aggregation" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTo" resolve="StructuralRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTt">
    <property role="EcuMT" value="918344584796687965" />
    <property role="TrG5h" value="Composition" />
    <property role="34LRSv" value="Composition" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTo" resolve="StructuralRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTu">
    <property role="EcuMT" value="918344584796687966" />
    <property role="TrG5h" value="DependencyRelationship" />
    <property role="34LRSv" value="Dependency Relationship" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTv">
    <property role="EcuMT" value="918344584796687967" />
    <property role="TrG5h" value="Association" />
    <property role="34LRSv" value="Association" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTu" resolve="DependencyRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTw">
    <property role="EcuMT" value="918344584796687968" />
    <property role="TrG5h" value="Influence" />
    <property role="34LRSv" value="Influence" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTu" resolve="DependencyRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTx">
    <property role="EcuMT" value="918344584796687969" />
    <property role="TrG5h" value="Access" />
    <property role="34LRSv" value="Access" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTu" resolve="DependencyRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTy">
    <property role="EcuMT" value="918344584796687970" />
    <property role="TrG5h" value="Serving" />
    <property role="34LRSv" value="Serving" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTu" resolve="DependencyRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTz">
    <property role="EcuMT" value="918344584796687971" />
    <property role="TrG5h" value="DynamicRelationship" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="Dynamic Relationship" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsT_">
    <property role="EcuMT" value="918344584796687973" />
    <property role="TrG5h" value="Triggering" />
    <property role="34LRSv" value="Triggering" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTz" resolve="DynamicRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTA">
    <property role="EcuMT" value="918344584796687974" />
    <property role="TrG5h" value="Flow" />
    <property role="34LRSv" value="Flow" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTB">
    <property role="EcuMT" value="918344584796687975" />
    <property role="TrG5h" value="OtherRelationship" />
    <property role="34LRSv" value="Other Relationship" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="7HPPZNrUOSh" resolve="AbstractRelationship" />
  </node>
  <node concept="1TIwiD" id="MYBoz6dsTD">
    <property role="EcuMT" value="918344584796687977" />
    <property role="TrG5h" value="Specilization" />
    <property role="34LRSv" value="Specialization" />
    <property role="3GE5qa" value="Relations" />
    <ref role="1TJDcQ" node="MYBoz6dsTB" resolve="OtherRelationship" />
  </node>
  <node concept="PlHQZ" id="4BqX45LXFX8">
    <property role="EcuMT" value="5321834471613710152" />
    <property role="TrG5h" value="IApplication" />
    <property role="3GE5qa" value="Application" />
  </node>
  <node concept="PlHQZ" id="4BqX45M3JoB">
    <property role="EcuMT" value="5321834471615297063" />
    <property role="TrG5h" value="ITechnology" />
    <property role="3GE5qa" value="Technology" />
  </node>
  <node concept="1TIwiD" id="31bEcwc4jUk">
    <property role="EcuMT" value="3480060714223222420" />
    <property role="TrG5h" value="Entity" />
    <property role="34LRSv" value="Entity" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="31bEcwc4jUl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="31bEcwc4jUm" role="1TKVEl">
      <property role="IQ2nx" value="3480060714223222422" />
      <property role="TrG5h" value="properties" />
      <ref role="AX2Wp" node="7HPPZNrS78F" resolve="PropertyType" />
    </node>
    <node concept="1TJgyj" id="31bEcwc4jUn" role="1TKVEi">
      <property role="IQ2ns" value="3480060714223222423" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="abstractElement" />
      <ref role="20lvS9" node="7HPPZNrUOPn" resolve="AbstractElement" />
    </node>
  </node>
</model>

