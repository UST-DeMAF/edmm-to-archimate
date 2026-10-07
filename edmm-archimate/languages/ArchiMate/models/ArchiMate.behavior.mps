<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5bb4926a-8355-4fe5-9270-6d79e2a98f96(ArchiMate.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="gj8d" ref="r:e758d0e6-3d7e-41e8-8ea2-54d006d27e83(ArchiMate.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
  <node concept="13h7C7" id="697XFv2nVUH">
    <property role="3GE5qa" value="Abstract" />
    <ref role="13h7C2" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
    <node concept="13i0hz" id="697XFv2nVV0" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="697XFv2nVV1" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2nVVk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2nVV3" role="3clF47">
        <node concept="3cpWs6" id="697XFv2pnGN" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2pnH9" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2nVX0" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="697XFv2nVX1" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2nVXk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2nVX3" role="3clF47">
        <node concept="3cpWs6" id="697XFv2pnHQ" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2pnIL" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="697XFv2nVUI" role="13h7CW">
      <node concept="3clFbS" id="697XFv2nVUJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2pmFi">
    <property role="3GE5qa" value="Junction" />
    <ref role="13h7C2" to="gj8d:MYBoz66P$9" resolve="AndJunction" />
    <node concept="13hLZK" id="697XFv2pmFj" role="13h7CW">
      <node concept="3clFbS" id="697XFv2pmFk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yvLq" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yvLr" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yvLw" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yvPh" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yvPX" role="3cqZAk">
            <property role="Xl_RC" value="andjunc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yvLx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yvL$" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yvL_" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yvLE" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yvSo" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yvSI" role="3cqZAk">
            <property role="Xl_RC" value="AndJunction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yvLF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2uT3N">
    <ref role="13h7C2" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
    <node concept="13i0hz" id="697XFv2yo4k" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="697XFv2yo4l" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2yo4m" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2yo4n" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yo4o" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yo4p" role="3cqZAk">
            <property role="Xl_RC" value="propdef-" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yo4q" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="697XFv2yo4r" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2yo4s" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2yo4t" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yo4u" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yo4v" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="697XFv2uT3O" role="13h7CW">
      <node concept="3clFbS" id="697XFv2uT3P" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yz$g">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOP" resolve="ApplicationCollaboration" />
    <node concept="13hLZK" id="697XFv2yz$h" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yz$i" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yz$z" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yz$$" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yz$D" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yz_V" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzAh" role="3cqZAk">
            <property role="Xl_RC" value="appcoll-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yz$E" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yz$H" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yz$I" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yz$N" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzCG" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzD2" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationCollaboration" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yz$O" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yzDV">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOO" resolve="ApplicationComponent" />
    <node concept="13hLZK" id="697XFv2yzDW" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yzDX" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yzEe" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yzEf" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzEk" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzFA" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzFW" role="3cqZAk">
            <property role="Xl_RC" value="appcomp-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzEl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yzEo" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yzEp" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzEu" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzHT" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzIf" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationComponent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzEv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yzJ7">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgj2" resolve="ApplicationEvent" />
    <node concept="13hLZK" id="697XFv2yzJ8" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yzJ9" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yzJq" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yzJr" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzJw" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzKK" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzL6" role="3cqZAk">
            <property role="Xl_RC" value="appev-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzJx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yzJ$" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yzJ_" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzJE" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzN6" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzNP" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationEvent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzJF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yzOH">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiR" resolve="ApplicationFunction" />
    <node concept="13hLZK" id="697XFv2yzOI" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yzOJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yzP0" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yzP1" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzP6" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzQm" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzQG" role="3cqZAk">
            <property role="Xl_RC" value="appfunc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzP7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yzPa" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yzPb" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzPg" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzT6" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzTM" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationFunction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzPh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yzUE">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiT" resolve="ApplicationInteraction" />
    <node concept="13hLZK" id="697XFv2yzUF" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yzUG" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yzUX" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yzUY" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzV3" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzWl" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzXg" role="3cqZAk">
            <property role="Xl_RC" value="appinterac-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzV4" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yzV7" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yzV8" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yzVd" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yzZg" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yzZA" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationInteraction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yzVe" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y$0v">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHO_" resolve="ApplicationInterface" />
    <node concept="13hLZK" id="697XFv2y$0w" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y$0x" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y$0M" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y$0N" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$0S" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$2a" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$2w" role="3cqZAk">
            <property role="Xl_RC" value="appinter-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$0T" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y$0W" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y$0X" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$12" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$4v" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$4P" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationInterface" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$13" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y$5H">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiS" resolve="ApplicationProcess" />
    <node concept="13hLZK" id="697XFv2y$5I" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y$5J" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y$60" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y$61" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$66" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$7o" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$7I" role="3cqZAk">
            <property role="Xl_RC" value="appproc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$67" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y$6a" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y$6b" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$6g" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$9G" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$a2" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationProcess" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$6h" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y$aV">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfD2" resolve="ApplicationService" />
    <node concept="13hLZK" id="697XFv2y$aW" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y$aX" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y$be" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y$bf" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$bk" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$cA" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$cW" role="3cqZAk">
            <property role="Xl_RC" value="appserv-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$bl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y$bo" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y$bp" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$bu" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$eV" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$fh" role="3cqZAk">
            <property role="Xl_RC" value="ApplicationService" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$bv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y$g9">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bYLT" resolve="Artifact" />
    <node concept="13hLZK" id="697XFv2y$ga" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y$gb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y$gA" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y$gB" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$gG" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y$hM" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y$i8" role="3cqZAk">
            <property role="Xl_RC" value="art-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y$gH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y$gs" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y$gt" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y$gy" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_lK" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_m6" role="3cqZAk">
            <property role="Xl_RC" value="Artifact" />
          </node>
        </node>
        <node concept="3clFbH" id="697XFv2Elpo" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="697XFv2y$gz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_n0">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOT" resolve="BusinessActor" />
    <node concept="13hLZK" id="697XFv2y_n1" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_n2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_nj" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_nk" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_np" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_oD" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_pC" role="3cqZAk">
            <property role="Xl_RC" value="ba-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_nq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_nt" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_nu" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_nz" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_rB" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_rX" role="3cqZAk">
            <property role="Xl_RC" value="BusinessActor" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_n$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_sQ">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOU" resolve="BusinessCollaboration" />
    <node concept="13hLZK" id="697XFv2y_sR" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_sS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_t9" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_ta" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_tf" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_ux" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_uR" role="3cqZAk">
            <property role="Xl_RC" value="bc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_tg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_tj" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_tk" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_tp" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_wr" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_wL" role="3cqZAk">
            <property role="Xl_RC" value="BusinessCollaboration" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_tq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_xD">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgj1" resolve="BusinessEvent" />
    <node concept="13hLZK" id="697XFv2y_xE" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_xF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_xW" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_xX" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_y2" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_zi" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_zC" role="3cqZAk">
            <property role="Xl_RC" value="be-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_y3" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_y6" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_y7" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_yc" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y__A" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y__W" role="3cqZAk">
            <property role="Xl_RC" value="BusinessEvent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_yd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_AP">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiW" resolve="BusinessFunction" />
    <node concept="13hLZK" id="697XFv2y_AQ" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_AR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_B8" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_B9" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_Be" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Cv" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_CZ" role="3cqZAk">
            <property role="Xl_RC" value="bf-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_Bf" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_Bi" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_Bj" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_Bo" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Ex" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_ER" role="3cqZAk">
            <property role="Xl_RC" value="BusinessFunction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_Bp" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_FK">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiY" resolve="BusinessInteraction" />
    <node concept="13hLZK" id="697XFv2y_FL" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_FM" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_G3" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_G4" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_G9" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Ha" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_HE" role="3cqZAk">
            <property role="Xl_RC" value="bia-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_Ga" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_Gd" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_Ge" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_Gj" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_K4" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_Kq" role="3cqZAk">
            <property role="Xl_RC" value="BusinessInteraction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_Gk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_Li">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHO$" resolve="BusinessInterface" />
    <node concept="13hLZK" id="697XFv2y_Lj" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_Lk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_L_" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_LA" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_LF" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_MW" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_Ns" role="3cqZAk">
            <property role="Xl_RC" value="bif-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_LG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_LJ" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_LK" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_LP" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Pu" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_PO" role="3cqZAk">
            <property role="Xl_RC" value="BusinessInterface" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_LQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_QH">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bZSv" resolve="BusinessObject" />
    <node concept="13hLZK" id="697XFv2y_QI" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_QJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_R0" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_R1" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_R6" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_So" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_SI" role="3cqZAk">
            <property role="Xl_RC" value="bo-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_R7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_Ra" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_Rb" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_Rg" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Ui" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_UC" role="3cqZAk">
            <property role="Xl_RC" value="BusinessObject" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_Rh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2y_Vw">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgiX" resolve="BusinessProcess" />
    <node concept="13hLZK" id="697XFv2y_Vx" role="13h7CW">
      <node concept="3clFbS" id="697XFv2y_Vy" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2y_VN" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2y_VO" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_VT" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_WU" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_Xv" role="3cqZAk">
            <property role="Xl_RC" value="bp-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_VU" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2y_VX" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2y_VY" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2y_W3" role="3clF47">
        <node concept="3cpWs6" id="697XFv2y_Z2" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2y_Zo" role="3cqZAk">
            <property role="Xl_RC" value="BusinessProcess" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2y_W4" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yA0h">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOS" resolve="BusinessRole" />
    <node concept="13hLZK" id="697XFv2yA0i" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yA0j" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yA0$" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yA0_" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA0E" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yA1V" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yA2w" role="3cqZAk">
            <property role="Xl_RC" value="br-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA0F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yA0I" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yA0J" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA0O" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yA3E" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yA40" role="3cqZAk">
            <property role="Xl_RC" value="BusinessRole" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA0P" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yA4S">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfD1" resolve="BusinessService" />
    <node concept="13hLZK" id="697XFv2yA4T" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yA4U" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yA5b" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yA5c" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA5h" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yA6i" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yA6R" role="3cqZAk">
            <property role="Xl_RC" value="bs-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA5i" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yA5l" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yA5m" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA5r" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yA8u" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yA8O" role="3cqZAk">
            <property role="Xl_RC" value="BusinessService" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA5s" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yA9H">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOE" resolve="CommunicationsNetwork" />
    <node concept="13hLZK" id="697XFv2yA9I" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yA9J" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAa0" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAa1" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAa6" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAbl" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAbP" role="3cqZAk">
            <property role="Xl_RC" value="cn-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAa7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAaa" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAab" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAag" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAdq" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAdK" role="3cqZAk">
            <property role="Xl_RC" value="CommunicationNetwork" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAah" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAeC">
    <property role="3GE5qa" value="Business" />
    <ref role="13h7C2" to="gj8d:MYBoz6bZSw" resolve="Contract" />
    <node concept="13hLZK" id="697XFv2yAeD" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAeE" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAeV">
    <property role="3GE5qa" value="Application" />
    <ref role="13h7C2" to="gj8d:MYBoz6bYLX" resolve="DataObject" />
    <node concept="13hLZK" id="697XFv2yAeW" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAeX" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAfe" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAff" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAfk" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAg_" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAh7" role="3cqZAk">
            <property role="Xl_RC" value="do-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAfl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAfo" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAfp" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAfu" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAif" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAi_" role="3cqZAk">
            <property role="Xl_RC" value="DataObject" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAfv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAju">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOL" resolve="Device" />
    <node concept="13hLZK" id="697XFv2yAjv" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAjw" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAjL" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAjM" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAjR" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAl6" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAlA" role="3cqZAk">
            <property role="Xl_RC" value="dev-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAjS" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAjV" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAjW" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAk1" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAna" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAnw" role="3cqZAk">
            <property role="Xl_RC" value="Device" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAk2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAop">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bYLU" resolve="Material" />
    <node concept="13hLZK" id="697XFv2yAoq" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAor" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAoG" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAoH" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAoM" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAq1" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAqB" role="3cqZAk">
            <property role="Xl_RC" value="ma-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAoN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAoQ" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAoR" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAoW" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAs9" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAsv" role="3cqZAk">
            <property role="Xl_RC" value="Material" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAoX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAtp">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOK" resolve="Node" />
    <node concept="13hLZK" id="697XFv2yAtq" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAtr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAtG" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAtH" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAtM" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAuL" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAvm" role="3cqZAk">
            <property role="Xl_RC" value="n-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAtN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAtQ" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAtR" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAtW" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAyo" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAyN" role="3cqZAk">
            <property role="Xl_RC" value="Node" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAtX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yA$X">
    <property role="3GE5qa" value="Junction" />
    <ref role="13h7C2" to="gj8d:MYBoz66P$a" resolve="OrJunction" />
    <node concept="13hLZK" id="697XFv2yA$Y" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yA$Z" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yA_g" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yA_h" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA_m" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAAB" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAB7" role="3cqZAk">
            <property role="Xl_RC" value="ojunc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA_n" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yA_q" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yA_r" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yA_w" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yACI" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAD4" role="3cqZAk">
            <property role="Xl_RC" value="OrJunction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yA_x" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yADY">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOD" resolve="Path" />
    <node concept="13hLZK" id="697XFv2yADZ" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAE0" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAEh" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAEi" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAEn" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAFo" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAFS" role="3cqZAk">
            <property role="Xl_RC" value="pa-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAEo" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAEr" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAEs" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAEx" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAHu" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAHO" role="3cqZAk">
            <property role="Xl_RC" value="Path" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAEy" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAIH">
    <ref role="13h7C2" to="gj8d:7HPPZNrS7jY" resolve="Property" />
    <node concept="13hLZK" id="697XFv2yAII" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAIJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAK6">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6bZSx" resolve="Representation" />
    <node concept="13hLZK" id="697XFv2yAK7" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAK8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAKp" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAKq" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAKv" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yALw" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAM0" role="3cqZAk">
            <property role="Xl_RC" value="rep-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAKw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAKz" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAK$" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAKD" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yANA" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yANW" role="3cqZAk">
            <property role="Xl_RC" value="Representation" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAKE" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAOQ">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOJ" resolve="SystemSoftware" />
    <node concept="13hLZK" id="697XFv2yAOR" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAOS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAP9" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAPa" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAPf" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAQu" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAQY" role="3cqZAk">
            <property role="Xl_RC" value="sysof-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAPg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAPj" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAPk" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAPp" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yATL" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAU7" role="3cqZAk">
            <property role="Xl_RC" value="SystemSoftware" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAPq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yAUZ">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOM" resolve="TechnologyCollaboration" />
    <node concept="13hLZK" id="697XFv2yAV0" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yAV1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yAVi" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yAVj" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAVo" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAWB" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAXc" role="3cqZAk">
            <property role="Xl_RC" value="techcol-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAVp" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yAVs" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yAVt" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yAVy" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yAYL" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yAZ7" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyCollaboration" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yAVz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yB00">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bgj3" resolve="TechnologyEvent" />
    <node concept="13hLZK" id="697XFv2yB01" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yB02" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yB0j" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yB0k" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yB0p" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yB1q" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yB1U" role="3cqZAk">
            <property role="Xl_RC" value="te-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yB0q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yB0t" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yB0u" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yB0z" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yB3v" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yB3P" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyEvent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yB0$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yB4H">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfDa" resolve="TechnologyFunction" />
    <node concept="13hLZK" id="697XFv2yB4I" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yB4J" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yB50" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yB51" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yB56" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yB6l" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yB6U" role="3cqZAk">
            <property role="Xl_RC" value="tf-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yB57" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yB5a" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yB5b" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yB5g" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yB84" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yB8O" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyFunction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yB5h" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yB9G">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfDc" resolve="TechnologyInteraction" />
    <node concept="13hLZK" id="697XFv2yB9H" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yB9I" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yB9Z" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yBa0" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBa5" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBbk" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBbT" role="3cqZAk">
            <property role="Xl_RC" value="tit-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBa6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yBa9" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yBaa" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBaf" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBdR" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBed" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyInteraction" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBag" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yBf5">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6cHOA" resolve="TechnologyInterface" />
    <node concept="13hLZK" id="697XFv2yBf6" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yBf7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yBfo" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yBfp" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBfu" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBgH" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBhi" role="3cqZAk">
            <property role="Xl_RC" value="tif-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBfv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yBfy" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yBfz" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBfC" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBiP" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBjb" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyInterface" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBfD" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yBk4">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfDb" resolve="TechnologyProcess" />
    <node concept="13hLZK" id="697XFv2yBk5" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yBk6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yBkn" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yBko" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBkt" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBlH" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBm3" role="3cqZAk">
            <property role="Xl_RC" value="tp-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBku" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yBkx" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yBky" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBkB" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBnA" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBnW" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyProcess" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBkC" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2yBoP">
    <property role="3GE5qa" value="Technology" />
    <ref role="13h7C2" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
    <node concept="13hLZK" id="697XFv2yBoQ" role="13h7CW">
      <node concept="3clFbS" id="697XFv2yBoR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2yBp8" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2nVV0" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2yBp9" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBpe" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBqd" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBqH" role="3cqZAk">
            <property role="Xl_RC" value="ts-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBpf" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2yBpi" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2nVX0" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2yBpj" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2yBpo" role="3clF47">
        <node concept="3cpWs6" id="697XFv2yBsE" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2yBt0" role="3cqZAk">
            <property role="Xl_RC" value="TechnologyService" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2yBpp" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2Jcra">
    <property role="3GE5qa" value="Abstract" />
    <ref role="13h7C2" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
    <node concept="13i0hz" id="697XFv2Jcrt" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="697XFv2Jcru" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2Jcrv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2Jcrw" role="3clF47">
        <node concept="3cpWs6" id="697XFv2Jcrx" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2Jcry" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2Jcrz" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="697XFv2Jcr$" role="1B3o_S" />
      <node concept="3uibUv" id="697XFv2Jcr_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="697XFv2JcrA" role="3clF47">
        <node concept="3cpWs6" id="697XFv2JcrB" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2JcrC" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="697XFv2Jcrb" role="13h7CW">
      <node concept="3clFbS" id="697XFv2Jcrc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KF7P">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTx" resolve="Access" />
    <node concept="13hLZK" id="697XFv2KF7Q" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KF7R" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KF88" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KF89" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KF8e" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFb3" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFbp" role="3cqZAk">
            <property role="Xl_RC" value="ac-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KF8f" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KF8i" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KF8j" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KF8o" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KF9y" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KF9S" role="3cqZAk">
            <property role="Xl_RC" value="Access" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KF8p" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFd6">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTs" resolve="Aggregation" />
    <node concept="13hLZK" id="697XFv2KFd7" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFd8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFdp" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFdq" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFdv" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFeK" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFfg" role="3cqZAk">
            <property role="Xl_RC" value="agg-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFdw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFdz" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFd$" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFdD" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFhe" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFh$" role="3cqZAk">
            <property role="Xl_RC" value="Aggregation" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFdE" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFis">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTr" resolve="Assignment" />
    <node concept="13hLZK" id="697XFv2KFit" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFiu" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFiJ" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFiK" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFiP" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFky" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFk5" role="3cqZAk">
            <property role="Xl_RC" value="ass-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFiQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFiT" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFiU" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFiZ" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFlD" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFlZ" role="3cqZAk">
            <property role="Xl_RC" value="Assignment" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFj0" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFmR">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTv" resolve="Association" />
    <node concept="13hLZK" id="697XFv2KFmS" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFmT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFnu" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFnv" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFn$" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFoO" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFpa" role="3cqZAk">
            <property role="Xl_RC" value="aso-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFn_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFnC" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFnD" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFnI" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFr8" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFru" role="3cqZAk">
            <property role="Xl_RC" value="Association" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFnJ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFsn">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTt" resolve="Composition" />
    <node concept="13hLZK" id="697XFv2KFso" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFsp" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFsE" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFsF" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFsK" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFu0" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFum" role="3cqZAk">
            <property role="Xl_RC" value="comp-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFsL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFsO" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFsP" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFsU" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFvS" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFwe" role="3cqZAk">
            <property role="Xl_RC" value="Composition" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFsV" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFx7">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTA" resolve="Flow" />
    <node concept="13hLZK" id="697XFv2KFx8" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFx9" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFxq" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFxr" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFxw" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFzx" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFzW" role="3cqZAk">
            <property role="Xl_RC" value="fl-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFxx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFx$" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFx_" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFxE" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KF_P" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFAg" role="3cqZAk">
            <property role="Xl_RC" value="Flow" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFxF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFB9">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTw" resolve="Influence" />
    <node concept="13hLZK" id="697XFv2KFBa" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFBb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFBs" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFBt" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFBy" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFCM" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFD8" role="3cqZAk">
            <property role="Xl_RC" value="inf-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFBz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFBA" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFBB" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFBG" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFEh" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFEB" role="3cqZAk">
            <property role="Xl_RC" value="Influence" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFBH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFFv">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTq" resolve="Realization" />
    <node concept="13hLZK" id="697XFv2KFFw" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFFx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFFM" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFFN" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFFS" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFH8" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFHu" role="3cqZAk">
            <property role="Xl_RC" value="rl-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFFT" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFFW" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFFX" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFG2" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFJR" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFKd" role="3cqZAk">
            <property role="Xl_RC" value="Realization" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFG3" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFL6">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTy" resolve="Serving" />
    <node concept="13hLZK" id="697XFv2KFL7" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFL8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFLp" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFLq" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFLv" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFNt" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFNW" role="3cqZAk">
            <property role="Xl_RC" value="sv-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFLw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFLz" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFL$" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFLD" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFPT" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFQf" role="3cqZAk">
            <property role="Xl_RC" value="Serving" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFLE" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFR8">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsTD" resolve="Specilization" />
    <node concept="13hLZK" id="697XFv2KFR9" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFRa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFRr" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFRs" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFRx" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFTf" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFTE" role="3cqZAk">
            <property role="Xl_RC" value="spc-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFRy" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFR_" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFRA" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFRF" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFW2" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFWo" role="3cqZAk">
            <property role="Xl_RC" value="Specialization" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFRG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="697XFv2KFXh">
    <property role="3GE5qa" value="Relations" />
    <ref role="13h7C2" to="gj8d:MYBoz6dsT_" resolve="Triggering" />
    <node concept="13hLZK" id="697XFv2KFXi" role="13h7CW">
      <node concept="3clFbS" id="697XFv2KFXj" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="697XFv2KFX$" role="13h7CS">
      <property role="TrG5h" value="getXmlPrefix" />
      <ref role="13i0hy" node="697XFv2Jcrt" resolve="getXmlPrefix" />
      <node concept="3Tm1VV" id="697XFv2KFX_" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFXE" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KFYU" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KFZg" role="3cqZAk">
            <property role="Xl_RC" value="tg-" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFXF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="13i0hz" id="697XFv2KFXI" role="13h7CS">
      <property role="TrG5h" value="getXmlType" />
      <ref role="13i0hy" node="697XFv2Jcrz" resolve="getXmlType" />
      <node concept="3Tm1VV" id="697XFv2KFXJ" role="1B3o_S" />
      <node concept="3clFbS" id="697XFv2KFXO" role="3clF47">
        <node concept="3cpWs6" id="697XFv2KG0n" role="3cqZAp">
          <node concept="Xl_RD" id="697XFv2KG0H" role="3cqZAk">
            <property role="Xl_RC" value="Triggering" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="697XFv2KFXP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
</model>

