<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f578b3e1-a748-43a6-828b-0dfaf20748a6(ArchiMate.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="gj8d" ref="r:e758d0e6-3d7e-41e8-8ea2-54d006d27e83(ArchiMate.structure)" />
    <import index="7a2w" ref="r:10bf3684-5fb2-4fa0-9dd9-1d05589df2e9(jetbrains.mps.util.xml)" />
    <import index="6qn4" ref="r:5bb4926a-8355-4fe5-9270-6d79e2a98f96(ArchiMate.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" flags="ng" index="2pNm8N">
        <child id="7604553062773674214" name="elements" index="BGLLu" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
        <child id="6666499814681299060" name="prolog" index="2pNm8Q" />
      </concept>
      <concept id="5228786488744996718" name="jetbrains.mps.core.xml.structure.XmlDeclaration" flags="ng" index="3W$oVP">
        <property id="5491461270226117667" name="version" index="1D$jbd" />
        <property id="3374336260035925078" name="encoding" index="1UZly_" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="lg" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="1PF82DERwNp">
    <property role="TrG5h" value="main" />
    <node concept="n94m4" id="1PF82DEREnS" role="lGtFl">
      <ref role="n9lRv" to="gj8d:1IRV1xUxPyP" resolve="EnterpriseArchitecture" />
    </node>
    <node concept="3lhOvk" id="1PF82DEVe7s" role="3lj3bC">
      <ref role="30HIoZ" to="gj8d:1IRV1xUxPyP" resolve="EnterpriseArchitecture" />
      <ref role="3lhOvi" node="1PF82DEVe7t" resolve="map_EnterpriseArchitecture" />
    </node>
    <node concept="3aamgX" id="1PF82DF0H4Z" role="3acgRq">
      <ref role="30HIoZ" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
      <node concept="j$656" id="1PF82DF0H53" role="1lVwrX">
        <ref role="v9R2y" node="1PF82DF0H51" resolve="reduce_PropertyDefinition" />
      </node>
    </node>
    <node concept="3aamgX" id="697XFv2hwwr" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
      <node concept="j$656" id="697XFv2hwwv" role="1lVwrX">
        <ref role="v9R2y" node="697XFv2hwwt" resolve="reduce_AbstractElement" />
      </node>
    </node>
    <node concept="3aamgX" id="697XFv2J4XP" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
      <node concept="j$656" id="697XFv2J4XT" role="1lVwrX">
        <ref role="v9R2y" node="697XFv2J4XR" resolve="reduce_AbstractRelationship" />
      </node>
    </node>
  </node>
  <node concept="2pMbU2" id="1PF82DEVe7t">
    <property role="TrG5h" value="map_EnterpriseArchitecture" />
    <node concept="3rIKKV" id="1PF82DEVe7u" role="2pMbU3">
      <node concept="2pNm8N" id="1PF82DEVgAI" role="2pNm8Q">
        <node concept="3W$oVP" id="1PF82DEVgAK" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="UTF-8" />
        </node>
      </node>
      <node concept="2pNNFK" id="1PF82DEVgAO" role="2pNm8H">
        <property role="2pNNFO" value="model" />
        <node concept="2pNNFK" id="1PF82DF0Ed5" role="3o6s8t">
          <property role="2pNNFO" value="name" />
          <node concept="2pNUuL" id="1PF82DF0Ed7" role="2pNNFR">
            <property role="2pNUuO" value="xml:lang" />
            <node concept="2pMdtt" id="1PF82DF0Ed8" role="2pMdts">
              <property role="2pMdty" value="en" />
            </node>
          </node>
          <node concept="3o6iSG" id="1PF82DF0Ed9" role="3o6s8t">
            <property role="3o6i5n" value="ArchiMate Model based on filename" />
            <node concept="17Uvod" id="1PF82DF0Eda" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <node concept="3zFVjK" id="1PF82DF0Edb" role="3zH0cK">
                <node concept="3clFbS" id="1PF82DF0Edc" role="2VODD2">
                  <node concept="3clFbF" id="1PF82DF0Ejt" role="3cqZAp">
                    <node concept="3cpWs3" id="1PF82DF0ET3" role="3clFbG">
                      <node concept="2OqwBi" id="1PF82DF0FQF" role="3uHU7w">
                        <node concept="30H73N" id="1PF82DF0Fsz" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1PF82DF0G7I" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1PF82DF0Ejs" role="3uHU7B">
                        <property role="Xl_RC" value="ArchiMate Model based on " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="1PF82DFaeJU" role="3o6s8t" />
        <node concept="2pNNFK" id="1PF82DFfOz1" role="3o6s8t">
          <property role="2pNNFO" value="elements" />
          <node concept="3o6iSG" id="1PF82DFfOBS" role="3o6s8t" />
          <node concept="2pNNFK" id="1PF82DFfOBU" role="3o6s8t">
            <property role="2pNNFO" value="element" />
            <node concept="2pNNFK" id="1PF82DFfOC2" role="3o6s8t">
              <property role="2pNNFO" value="name" />
              <node concept="2pNUuL" id="1PF82DFfOC4" role="2pNNFR">
                <property role="2pNUuO" value="xml:lang" />
                <node concept="2pMdtt" id="1PF82DFfOC5" role="2pMdts">
                  <property role="2pMdty" value="en" />
                </node>
              </node>
              <node concept="3o6iSG" id="1PF82DFfOC6" role="3o6s8t">
                <property role="3o6i5n" value="A Business Actor" />
              </node>
            </node>
            <node concept="2pNNFK" id="1PF82DFfOC7" role="3o6s8t">
              <property role="2pNNFO" value="properties" />
              <node concept="2pNNFK" id="1PF82DFfOC9" role="3o6s8t">
                <property role="2pNNFO" value="property" />
                <node concept="2pNNFK" id="1PF82DFfOCe" role="3o6s8t">
                  <property role="2pNNFO" value="value" />
                  <node concept="3o6iSG" id="1PF82DFfOCf" role="3o6s8t">
                    <property role="3o6i5n" value="2" />
                  </node>
                </node>
                <node concept="2pNUuL" id="1PF82DFfOCb" role="2pNNFR">
                  <property role="2pNUuO" value="propertyDefinitionRef" />
                  <node concept="2pMdtt" id="1PF82DFfOCc" role="2pMdts">
                    <property role="2pMdty" value="propref-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNUuL" id="1PF82DFfOBW" role="2pNNFR">
              <property role="2pNUuO" value="identifier" />
              <node concept="2pMdtt" id="1PF82DFfOBX" role="2pMdts">
                <property role="2pMdty" value="el-1" />
              </node>
            </node>
            <node concept="2pNUuL" id="1PF82DFfOBZ" role="2pNNFR">
              <property role="2pNUuO" value="xsi:type" />
              <node concept="2pMdtt" id="1PF82DFfOC0" role="2pMdts">
                <property role="2pMdty" value="BusinessActor" />
              </node>
            </node>
            <node concept="2b32R4" id="1PF82DFfOCh" role="lGtFl">
              <node concept="3JmXsc" id="1PF82DFfOCk" role="2P8S$">
                <node concept="3clFbS" id="1PF82DFfOCl" role="2VODD2">
                  <node concept="3clFbF" id="1PF82DFfOCr" role="3cqZAp">
                    <node concept="2OqwBi" id="1PF82DFfOCm" role="3clFbG">
                      <node concept="3Tsc0h" id="1PF82DFfOCp" role="2OqNvi">
                        <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                      </node>
                      <node concept="30H73N" id="1PF82DFfOCq" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="1PF82DFfOua" role="3o6s8t" />
        <node concept="2pNNFK" id="697XFv2J4z1" role="3o6s8t">
          <property role="2pNNFO" value="relationships" />
          <node concept="3o6iSG" id="697XFv2J4FS" role="3o6s8t" />
          <node concept="3o6iSG" id="697XFv2J4Gg" role="3o6s8t" />
          <node concept="2pNNFK" id="697XFv2J4FU" role="3o6s8t">
            <property role="2pNNFO" value="relationship" />
            <node concept="3o6iSG" id="697XFv2J4G9" role="3o6s8t" />
            <node concept="2pNNFK" id="697XFv2J4Gb" role="3o6s8t">
              <property role="2pNNFO" value="name" />
              <node concept="2pNUuL" id="697XFv2J4Gd" role="2pNNFR">
                <property role="2pNUuO" value="xml:lang" />
                <node concept="2pMdtt" id="697XFv2J4Ge" role="2pMdts">
                  <property role="2pMdty" value="en" />
                </node>
              </node>
              <node concept="3o6iSG" id="697XFv2J4Gf" role="3o6s8t">
                <property role="3o6i5n" value="Association Relationship" />
              </node>
            </node>
            <node concept="2pNUuL" id="697XFv2J4FW" role="2pNNFR">
              <property role="2pNUuO" value="identifier" />
              <node concept="2pMdtt" id="697XFv2J4FX" role="2pMdts">
                <property role="2pMdty" value="rel-1234" />
              </node>
            </node>
            <node concept="2pNUuL" id="697XFv2J4G0" role="2pNNFR">
              <property role="2pNUuO" value="source" />
              <node concept="2pMdtt" id="697XFv2J4G1" role="2pMdts">
                <property role="2pMdty" value="src-123" />
              </node>
            </node>
            <node concept="2pNUuL" id="697XFv2J4G3" role="2pNNFR">
              <property role="2pNUuO" value="target" />
              <node concept="2pMdtt" id="697XFv2J4G4" role="2pMdts">
                <property role="2pMdty" value="t-1234" />
              </node>
            </node>
            <node concept="2pNUuL" id="697XFv2J4G6" role="2pNNFR">
              <property role="2pNUuO" value="xsi:type" />
              <node concept="2pMdtt" id="697XFv2J4G7" role="2pMdts">
                <property role="2pMdty" value="Association" />
              </node>
            </node>
            <node concept="2b32R4" id="697XFv2RgPE" role="lGtFl">
              <node concept="3JmXsc" id="697XFv2RgPF" role="2P8S$">
                <node concept="3clFbS" id="697XFv2RgPG" role="2VODD2">
                  <node concept="3clFbF" id="697XFv2RgQr" role="3cqZAp">
                    <node concept="2OqwBi" id="697XFv2Rh4O" role="3clFbG">
                      <node concept="30H73N" id="697XFv2RgQq" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="697XFv2Rh7z" role="2OqNvi">
                        <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="4pHzg_EyfSa" role="3o6s8t" />
        <node concept="2pNNFK" id="6ECOdzngBtT" role="3o6s8t">
          <property role="2pNNFO" value="organizations" />
          <node concept="3o6iSG" id="6ECOdzngBXU" role="3o6s8t" />
          <node concept="2pNNFK" id="6ECOdzngBY0" role="3o6s8t">
            <property role="2pNNFO" value="item" />
            <node concept="3o6iSG" id="6ECOdzngBY1" role="3o6s8t" />
            <node concept="2pNNFK" id="6ECOdzngBY5" role="3o6s8t">
              <property role="2pNNFO" value="label" />
              <node concept="2pNUuL" id="6ECOdzngBY7" role="2pNNFR">
                <property role="2pNUuO" value="xml:lang" />
                <node concept="2pMdtt" id="6ECOdzngBY8" role="2pMdts">
                  <property role="2pMdty" value="en" />
                </node>
              </node>
              <node concept="3o6iSG" id="6ECOdzngBY9" role="3o6s8t">
                <property role="3o6i5n" value="Application" />
              </node>
            </node>
            <node concept="2pNNFK" id="6ECOdzngM$R" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="6ECOdzngMC7" role="3o6s8t" />
              <node concept="2pNNFK" id="6ECOdzngMC9" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="6ECOdzngMCb" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="6ECOdzngMCc" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="6ECOdzngMCd" role="3o6s8t">
                  <property role="3o6i5n" value="Services" />
                </node>
              </node>
              <node concept="2pNNFK" id="6ECOdzngMCe" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="6ECOdzngMCf" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="6ECOdzngMCg" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="6ECOdznh7RF" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="6ECOdznh7RG" role="3zH0cK">
                        <node concept="3clFbS" id="6ECOdznh7RH" role="2VODD2">
                          <node concept="3cpWs8" id="6ECOdznhbrN" role="3cqZAp">
                            <node concept="3cpWsn" id="6ECOdznhbrO" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="6ECOdznhbrP" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="6ECOdznhbrQ" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="6ECOdznhbrR" role="3cqZAp">
                            <node concept="3cpWs3" id="6ECOdznhbrS" role="3cqZAk">
                              <node concept="2OqwBi" id="6ECOdznhbrT" role="3uHU7w">
                                <node concept="2OqwBi" id="6ECOdznhbrU" role="2Oq$k0">
                                  <node concept="liA8E" id="6ECOdznhbrV" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="6ECOdznhbrW" role="2Oq$k0">
                                    <node concept="37vLTw" id="6ECOdznhbrX" role="2JrQYb">
                                      <ref role="3cqZAo" node="6ECOdznhbrO" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="6ECOdznhbrY" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6ECOdznhbrZ" role="3uHU7B">
                                <node concept="30H73N" id="6ECOdznhbs0" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mG2" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="6ECOdzngXNp" role="lGtFl">
                  <node concept="3JmXsc" id="6ECOdzngXNq" role="3Jn$fo">
                    <node concept="3clFbS" id="6ECOdzngXNr" role="2VODD2">
                      <node concept="3clFbF" id="6ECOdzngXQn" role="3cqZAp">
                        <node concept="2OqwBi" id="6ECOdznh0V4" role="3clFbG">
                          <node concept="2OqwBi" id="6ECOdzngY51" role="2Oq$k0">
                            <node concept="30H73N" id="6ECOdzngXQm" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="6ECOdzngYgu" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="6ECOdznh5d0" role="2OqNvi">
                            <node concept="1bVj0M" id="6ECOdznh5d2" role="23t8la">
                              <node concept="3clFbS" id="6ECOdznh5d3" role="1bW5cS">
                                <node concept="3clFbF" id="6ECOdznh6zi" role="3cqZAp">
                                  <node concept="2OqwBi" id="6ECOdznh6OM" role="3clFbG">
                                    <node concept="37vLTw" id="6ECOdznh6zh" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6ECOdznh5d4" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="6ECOdznh7z8" role="2OqNvi">
                                      <node concept="chp4Y" id="6ECOdznh7Iw" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bfD2" resolve="ApplicationService" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="6ECOdznh5d4" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6ECOdznh5d5" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="6ECOdzngMR2" role="lGtFl">
                <node concept="3IZrLx" id="6ECOdzngMR3" role="3IZSJc">
                  <node concept="3clFbS" id="6ECOdzngMR4" role="2VODD2">
                    <node concept="3clFbF" id="6ECOdzngMVU" role="3cqZAp">
                      <node concept="2OqwBi" id="6ECOdzngXJF" role="3clFbG">
                        <node concept="2OqwBi" id="6ECOdzngXJG" role="2Oq$k0">
                          <node concept="2OqwBi" id="6ECOdzngXJH" role="2Oq$k0">
                            <node concept="30H73N" id="6ECOdzngXJI" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="6ECOdzngXJJ" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="6ECOdzngXJK" role="2OqNvi">
                            <node concept="1bVj0M" id="6ECOdzngXJL" role="23t8la">
                              <node concept="3clFbS" id="6ECOdzngXJM" role="1bW5cS">
                                <node concept="3clFbF" id="6ECOdzngXJN" role="3cqZAp">
                                  <node concept="2OqwBi" id="6ECOdzngXJO" role="3clFbG">
                                    <node concept="37vLTw" id="6ECOdzngXJP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6ECOdzngXJS" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="6ECOdzngXJQ" role="2OqNvi">
                                      <node concept="chp4Y" id="6ECOdzngXJR" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bfD2" resolve="ApplicationService" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="6ECOdzngXJS" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6ECOdzngXJT" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6XM1" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45LX_W8" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45LX_W9" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45LX_Wa" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45LX_Wb" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45LX_Wc" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45LX_Wd" role="3o6s8t">
                  <property role="3o6i5n" value="Interfaces" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45LX_We" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45LX_Wf" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45LX_Wg" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45LX_Wh" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45LX_Wi" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45LX_Wj" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45LX_Wk" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45LX_Wl" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45LX_Wm" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45LX_Wn" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45LX_Wo" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45LX_Wp" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45LX_Wq" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45LX_Wr" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45LX_Ws" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45LX_Wt" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45LX_Wu" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45LX_Wl" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45LX_Wv" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45LX_Ww" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45LX_Wx" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mG4" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45LX_Wz" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45LX_W$" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45LX_W_" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45LX_WA" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45LX_WB" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45LX_WC" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45LX_WD" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45LX_WE" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45LX_WF" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45LX_WG" role="23t8la">
                              <node concept="3clFbS" id="4BqX45LX_WH" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45LX_WI" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45LX_WJ" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45LX_WK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45LX_WN" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45LX_WL" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45LX_WM" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHO_" resolve="ApplicationInterface" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45LX_WN" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45LX_WO" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45LX_WP" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45LX_WQ" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45LX_WR" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45LX_WS" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45LX_WU" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45LX_WV" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45LX_WW" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45LX_WX" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45LX_WY" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45LX_WZ" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45LX_X0" role="23t8la">
                              <node concept="3clFbS" id="4BqX45LX_X1" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45LX_X2" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45LX_X3" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45LX_X4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45LX_X7" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45LX_X5" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45LX_X6" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHO_" resolve="ApplicationInterface" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45LX_X7" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45LX_X8" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6X2p" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45LXD1p" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45LXD1q" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45LXD1r" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45LXD1s" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45LXD1t" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45LXD1u" role="3o6s8t">
                  <property role="3o6i5n" value="Components" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45LXD1v" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45LXD1w" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45LXD1x" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45LXD1y" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45LXD1z" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45LXD1$" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45LXD1_" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45LXD1A" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45LXD1B" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45LXD1C" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45LXD1D" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45LXD1E" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45LXD1F" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45LXD1G" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45LXD1H" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45LXD1I" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45LXD1J" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45LXD1A" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45LXD1K" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45LXD1L" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45LXD1M" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mG6" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45LXD1O" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45LXD1P" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45LXD1Q" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45LXD1R" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45LXD1S" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45LXD1T" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45LXD1U" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45LXD1V" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45LXD1W" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45LXD1X" role="23t8la">
                              <node concept="3clFbS" id="4BqX45LXD1Y" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45LXD1Z" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45LXD20" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45LXD21" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45LXD24" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45LXD22" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45LXD23" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOO" resolve="ApplicationComponent" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45LXD24" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45LXD25" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45LXD26" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45LXD27" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45LXD28" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45LXD29" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45LXD2b" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45LXD2c" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45LXD2d" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45LXD2e" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45LXD2f" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45LXD2g" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45LXD2h" role="23t8la">
                              <node concept="3clFbS" id="4BqX45LXD2i" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45LXD2j" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45LXD2k" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45LXD2l" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45LXD2o" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45LXD2m" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45LXD2n" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOO" resolve="ApplicationComponent" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45LXD2o" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45LXD2p" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6WiD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="6ECOdzngC8i" role="lGtFl">
              <node concept="3IZrLx" id="6ECOdzngC8j" role="3IZSJc">
                <node concept="3clFbS" id="6ECOdzngC8k" role="2VODD2">
                  <node concept="3clFbF" id="6ECOdzngCda" role="3cqZAp">
                    <node concept="2OqwBi" id="4BqX45M13k_" role="3clFbG">
                      <node concept="2OqwBi" id="4BqX45M13kA" role="2Oq$k0">
                        <node concept="2OqwBi" id="4BqX45M13kB" role="2Oq$k0">
                          <node concept="30H73N" id="4BqX45M13kC" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="4BqX45M13kD" role="2OqNvi">
                            <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                          </node>
                        </node>
                        <node concept="3zZkjj" id="4BqX45M13kE" role="2OqNvi">
                          <node concept="1bVj0M" id="4BqX45M13kF" role="23t8la">
                            <node concept="3clFbS" id="4BqX45M13kG" role="1bW5cS">
                              <node concept="3clFbF" id="4BqX45M13kH" role="3cqZAp">
                                <node concept="2OqwBi" id="4BqX45M13kI" role="3clFbG">
                                  <node concept="37vLTw" id="4BqX45M13kJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4BqX45M13kM" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="4BqX45M13kK" role="2OqNvi">
                                    <node concept="chp4Y" id="4BqX45M13kL" role="cj9EA">
                                      <ref role="cht4Q" to="gj8d:4BqX45LXFX8" resolve="IApplication" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4BqX45M13kM" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4BqX45M13kN" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="4BqX45M6Yxx" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="6ECOdzngC8d" role="3o6s8t" />
          <node concept="2pNNFK" id="6ECOdzngBYb" role="3o6s8t">
            <property role="2pNNFO" value="item" />
            <node concept="3o6iSG" id="6ECOdzngBYc" role="3o6s8t" />
            <node concept="2pNNFK" id="6ECOdzngBYd" role="3o6s8t">
              <property role="2pNNFO" value="label" />
              <node concept="2pNUuL" id="6ECOdzngBYe" role="2pNNFR">
                <property role="2pNUuO" value="xml:lang" />
                <node concept="2pMdtt" id="6ECOdzngBYf" role="2pMdts">
                  <property role="2pMdty" value="en" />
                </node>
              </node>
              <node concept="3o6iSG" id="6ECOdzngBYv" role="3o6s8t">
                <property role="3o6i5n" value="Technolgy Phsycial" />
                <node concept="17Uvod" id="6ECOdzngBYw" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                  <node concept="3zFVjK" id="6ECOdzngBYx" role="3zH0cK">
                    <node concept="3clFbS" id="6ECOdzngBYy" role="2VODD2">
                      <node concept="3clFbF" id="6ECOdzngC4N" role="3cqZAp">
                        <node concept="Xl_RD" id="6ECOdzngC4M" role="3clFbG">
                          <property role="Xl_RC" value="Technology &amp;amp; Physical" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M3uML" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45M3uMM" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45M3uMN" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M3uMO" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M3uMP" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M3uMQ" role="3o6s8t">
                  <property role="3o6i5n" value="Artifacts" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M3uMR" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45M3uMS" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45M3uMT" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45M3uMU" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45M3uMV" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45M3uMW" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45M3uMX" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45M3uMY" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45M3uMZ" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45M3uN0" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45M3uN1" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45M3uN2" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45M3uN3" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45M3uN4" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45M3uN5" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45M3uN6" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45M3uN7" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45M3uMY" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45M3uN8" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45M3uN9" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45M3uNa" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mG8" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45M3uNc" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45M3uNd" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45M3uNe" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M3uNf" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M3uNg" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M3uNh" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3uNi" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3uNj" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3uNk" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3uNl" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3uNm" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3uNn" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3uNo" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3uNp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3uNs" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3uNq" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3uNr" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bYLT" resolve="Artifact" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3uNs" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3uNt" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M3uNu" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M3uNv" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M3uNw" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M3uNx" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M3uNz" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M3uN$" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M3uN_" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3uNA" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3uNB" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3uNC" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3uND" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3uNE" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3uNF" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3uNG" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3uNH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3uNK" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3uNI" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3uNJ" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bYLT" resolve="Artifact" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3uNK" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3uNL" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6UJx" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M3vAv" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45M3vAw" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45M3vAx" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M3vAy" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M3vAz" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M3vA$" role="3o6s8t">
                  <property role="3o6i5n" value="Services" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M3vA_" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45M3vAA" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45M3vAB" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45M3vAC" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45M3vAD" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45M3vAE" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45M3vAF" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45M3vAG" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45M3vAH" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45M3vAI" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45M3vAJ" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45M3vAK" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45M3vAL" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45M3vAM" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45M3vAN" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45M3vAO" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45M3vAP" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45M3vAG" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45M3vAQ" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45M3vAR" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45M3vAS" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mGa" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45M3vAU" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45M3vAV" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45M3vAW" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M3vAX" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M3vAY" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M3vAZ" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3vB0" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3vB1" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3vB2" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3vB3" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3vB4" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3vB5" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3vB6" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3vB7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3vBa" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3vB8" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3JdG" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3vBa" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3vBb" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M3vBc" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M3vBd" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M3vBe" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M3vBf" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M3vBh" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M3vBi" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M3vBj" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3vBk" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3vBl" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3vBm" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3vBn" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3vBo" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3vBp" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3vBq" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3vBr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3vBu" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3vBs" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3vBt" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3vBu" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3vBv" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6TRa" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M3xrn" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45M3xro" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45M3xrp" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M3xrq" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M3xrr" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M3xrs" role="3o6s8t">
                  <property role="3o6i5n" value="Interfaces" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M3xrt" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45M3xru" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45M3xrv" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45M3xrw" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45M3xrx" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45M3xry" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45M3xrz" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45M3xr$" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45M3xr_" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45M3xrA" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45M3xrB" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45M3xrC" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45M3xrD" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45M3xrE" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45M3xrF" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45M3xrG" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45M3xrH" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45M3xr$" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45M3xrI" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45M3xrJ" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45M3xrK" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mGc" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45M3xrM" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45M3xrN" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45M3xrO" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M3xrP" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M3xrQ" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M3xrR" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3xrS" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3xrT" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3xrU" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3xrV" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3xrW" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3xrX" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3xrY" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3xrZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3xs2" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3xs0" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3xs1" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOA" resolve="TechnologyInterface" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3xs2" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3xs3" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M3xs4" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M3xs5" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M3xs6" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M3xs7" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M3xs9" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M3xsa" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M3xsb" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3xsc" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3xsd" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3xse" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3xsf" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3xsg" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3xsh" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3xsi" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3xsj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3xsm" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3xsk" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3xsl" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOA" resolve="TechnologyInterface" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3xsm" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3xsn" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6T06" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M3$pq" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45M3$pr" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45M3$ps" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M3$pt" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M3$pu" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M3$pv" role="3o6s8t">
                  <property role="3o6i5n" value="Node" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M3$pw" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45M3$px" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45M3$py" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45M3$pz" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45M3$p$" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45M3$p_" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45M3$pA" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45M3$pB" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45M3$pC" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45M3$pD" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45M3$pE" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45M3$pF" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45M3$pG" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45M3$pH" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45M3$pI" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45M3$pJ" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45M3$pK" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45M3$pB" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45M3$pL" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45M3$pM" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45M3$pN" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mGe" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45M3$pP" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45M3$pQ" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45M3$pR" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M3$pS" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M3$pT" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M3$pU" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3$pV" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3$pW" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3$pX" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3$pY" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3$pZ" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3$q0" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3$q1" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3$q2" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3$q5" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3$q3" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3IKk" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOK" resolve="Node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3$q5" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3$q6" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M3$q7" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M3$q8" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M3$q9" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M3$qa" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M3$qc" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M3$qd" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M3$qe" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3$qf" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3$qg" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3$qh" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3$qi" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3$qj" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3$qk" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3$ql" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3$qm" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3$qp" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3$qn" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3Hyw" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOK" resolve="Node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3$qp" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3$qq" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6Sgm" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M3AWT" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="3o6iSG" id="4BqX45M3AWU" role="3o6s8t" />
              <node concept="2pNNFK" id="4BqX45M3AWV" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M3AWW" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M3AWX" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M3AWY" role="3o6s8t">
                  <property role="3o6i5n" value="System Software" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M3AWZ" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNUuL" id="4BqX45M3AX0" role="2pNNFR">
                  <property role="2pNUuO" value="identifierRef" />
                  <node concept="2pMdtt" id="4BqX45M3AX1" role="2pMdts">
                    <property role="2pMdty" value="id-1" />
                    <node concept="17Uvod" id="4BqX45M3AX2" role="lGtFl">
                      <property role="2qtEX9" value="text" />
                      <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                      <node concept="3zFVjK" id="4BqX45M3AX3" role="3zH0cK">
                        <node concept="3clFbS" id="4BqX45M3AX4" role="2VODD2">
                          <node concept="3cpWs8" id="4BqX45M3AX5" role="3cqZAp">
                            <node concept="3cpWsn" id="4BqX45M3AX6" role="3cpWs9">
                              <property role="TrG5h" value="copyNode" />
                              <node concept="3Tqbb2" id="4BqX45M3AX7" role="1tU5fm">
                                <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                              </node>
                              <node concept="30H73N" id="4BqX45M3AX8" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs6" id="4BqX45M3AX9" role="3cqZAp">
                            <node concept="3cpWs3" id="4BqX45M3AXa" role="3cqZAk">
                              <node concept="2OqwBi" id="4BqX45M3AXb" role="3uHU7w">
                                <node concept="2OqwBi" id="4BqX45M3AXc" role="2Oq$k0">
                                  <node concept="liA8E" id="4BqX45M3AXd" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="4BqX45M3AXe" role="2Oq$k0">
                                    <node concept="37vLTw" id="4BqX45M3AXf" role="2JrQYb">
                                      <ref role="3cqZAo" node="4BqX45M3AX6" resolve="copyNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4BqX45M3AXg" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4BqX45M3AXh" role="3uHU7B">
                                <node concept="30H73N" id="4BqX45M3AXi" role="2Oq$k0" />
                                <node concept="3zqWPK" id="31bEcwc0mGg" role="2OqNvi">
                                  <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="4BqX45M3AXk" role="lGtFl">
                  <node concept="3JmXsc" id="4BqX45M3AXl" role="3Jn$fo">
                    <node concept="3clFbS" id="4BqX45M3AXm" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M3AXn" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M3AXo" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M3AXp" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3AXq" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3AXr" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3AXs" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3AXt" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3AXu" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3AXv" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3AXw" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3AXx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3AX$" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3AXy" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3I8h" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOJ" resolve="SystemSoftware" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3AX$" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3AX_" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M3AXA" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M3AXB" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M3AXC" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M3AXD" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M3AXF" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M3AXG" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M3AXH" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M3AXI" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M3AXJ" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M3AXK" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M3AXL" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M3AXM" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M3AXN" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M3AXO" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M3AXP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M3AXS" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M3AXQ" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M3HHz" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6cHOJ" resolve="SystemSoftware" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M3AXS" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M3AXT" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6RCp" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="4BqX45M3F67" role="lGtFl">
              <node concept="3IZrLx" id="4BqX45M3F68" role="3IZSJc">
                <node concept="3clFbS" id="4BqX45M3F69" role="2VODD2">
                  <node concept="3clFbF" id="4BqX45M3LIJ" role="3cqZAp">
                    <node concept="2OqwBi" id="4BqX45M3LIL" role="3clFbG">
                      <node concept="2OqwBi" id="4BqX45M3LIM" role="2Oq$k0">
                        <node concept="2OqwBi" id="4BqX45M3LIN" role="2Oq$k0">
                          <node concept="30H73N" id="4BqX45M3LIO" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="4BqX45M3LIP" role="2OqNvi">
                            <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                          </node>
                        </node>
                        <node concept="3zZkjj" id="4BqX45M3LIQ" role="2OqNvi">
                          <node concept="1bVj0M" id="4BqX45M3LIR" role="23t8la">
                            <node concept="3clFbS" id="4BqX45M3LIS" role="1bW5cS">
                              <node concept="3clFbF" id="4BqX45M3LIT" role="3cqZAp">
                                <node concept="2OqwBi" id="4BqX45M3LIU" role="3clFbG">
                                  <node concept="37vLTw" id="4BqX45M3LIV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4BqX45M3LIY" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="4BqX45M3LIW" role="2OqNvi">
                                    <node concept="chp4Y" id="4BqX45M3LIX" role="cj9EA">
                                      <ref role="cht4Q" to="gj8d:4BqX45M3JoB" resolve="ITechnology" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4BqX45M3LIY" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4BqX45M3LIZ" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="4BqX45M6VBg" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="6ECOdzngC89" role="3o6s8t" />
          <node concept="2pNNFK" id="6ECOdzngBYj" role="3o6s8t">
            <property role="2pNNFO" value="item" />
            <node concept="3o6iSG" id="6ECOdzngBYk" role="3o6s8t" />
            <node concept="2pNNFK" id="6ECOdzngBYl" role="3o6s8t">
              <property role="2pNNFO" value="label" />
              <node concept="2pNUuL" id="6ECOdzngBYm" role="2pNNFR">
                <property role="2pNUuO" value="xml:lang" />
                <node concept="2pMdtt" id="6ECOdzngBYn" role="2pMdts">
                  <property role="2pMdty" value="en" />
                </node>
              </node>
              <node concept="3o6iSG" id="6ECOdzngBYo" role="3o6s8t">
                <property role="3o6i5n" value="Relations" />
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45M6D07" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="2pNNFK" id="4BqX45M6D1_" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45M6D1B" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45M6D1C" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45M6D1E" role="3o6s8t">
                  <property role="3o6i5n" value="Structural" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M6D9B" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45M6D9C" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45M6D9D" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45M6D9E" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45M6D9F" role="3o6s8t">
                    <property role="3o6i5n" value="Aggregation" />
                  </node>
                </node>
                <node concept="2pNNFK" id="6ECOdzngC7S" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="6ECOdzngC7V" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="6ECOdzngC7W" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45M76Sh" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45M76Si" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45M76Sj" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45M774Y" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45M774Z" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45M7750" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45M7751" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45M7752" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45M7753" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45M7754" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45M7755" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45M7756" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45M7757" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45M7758" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45M774Z" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45M7759" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45M775a" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45M775b" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGi" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45M6YCl" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45M6YCm" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45M6YCn" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45M6YFy" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45M71OQ" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45M6YUc" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M6YFx" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M6Z8r" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M75oA" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M75oC" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M75oD" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M75xO" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M75Kp" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M75xN" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M75oE" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M76_j" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M76KN" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTs" resolve="Aggregation" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M75oE" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M75oF" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45M7akh" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45M7aki" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45M7akj" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M7b7z" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M7lnZ" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M7eQW" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45M7bof" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7b7y" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7bOK" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7hYr" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7hYt" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7hYu" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7jOF" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7kcd" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7jOE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7hYv" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7l0D" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7l5X" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTs" resolve="Aggregation" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7hYv" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7hYw" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45M7m$j" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M6D9H" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45M6D9I" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45M6D9J" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45M6D9K" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45M6D9L" role="3o6s8t">
                    <property role="3o6i5n" value="Assignment" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45M79gg" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45M79gh" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45M79gi" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45M79gj" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45M79gk" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45M79gl" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45M79gm" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45M79gn" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45M79go" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45M79gp" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45M79gq" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45M79gr" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45M79gs" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45M79gt" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45M79gu" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45M79gv" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45M79gw" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45M79gn" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45M79gx" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45M79gy" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45M79gz" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGk" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45M79g_" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45M79gA" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45M79gB" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45M79gC" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45M79gD" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45M79gE" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M79gF" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M79gG" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M79gH" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M79gI" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M79gJ" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M79gK" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M79gL" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M79gM" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M79gP" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M79gN" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M79gO" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTr" resolve="Assignment" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M79gP" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M79gQ" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45M7nnH" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45M7nnI" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45M7nnJ" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M7n$h" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M7n$i" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M7n$j" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45M7n$k" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7n$l" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7n$m" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7n$n" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7n$o" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7n$p" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7n$q" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7n$r" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7n$s" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7n$v" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7n$t" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7nO$" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTr" resolve="Assignment" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7n$v" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7n$w" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45M7n$x" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M6D9Q" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45M6D9R" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45M6D9S" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45M6D9T" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45M6D9U" role="3o6s8t">
                    <property role="3o6i5n" value="Composition" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45M6D9V" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45M6D9W" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45M6D9X" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45M7zVH" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45M7zVI" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45M7zVJ" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45M7$1Z" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45M7$20" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45M7$21" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45M7$22" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45M7$23" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45M7$24" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45M7$25" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45M7$26" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45M7$27" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45M7$28" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45M7$29" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45M7$20" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45M7$2a" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45M7$2b" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45M7$2c" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGm" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45M7oCA" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45M7oCB" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45M7oCC" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45M7oFF" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45M7oFG" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45M7oFH" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7oFI" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7oFJ" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7oFK" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7oFL" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7oFM" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7oFN" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7oFO" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7oFP" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7oFS" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7oFQ" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7oZa" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTt" resolve="Composition" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7oFS" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7oFT" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45M7o6$" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45M7o6_" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45M7o6A" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M7o72" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M7o73" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M7o74" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45M7o75" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7o76" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7o77" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7o78" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7o79" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7o7a" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7o7b" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7o7c" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7o7d" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7o7g" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7o7e" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7oy3" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTt" resolve="Composition" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7o7g" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7o7h" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45M7o7i" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45M6D9Z" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45M6Da0" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45M6Da1" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45M6Da2" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45M6Da3" role="3o6s8t">
                    <property role="3o6i5n" value="Realization" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45M6Da4" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45M6Da5" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45M6Da6" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45M7$Pz" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45M7$P$" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45M7$P_" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45M7$Q1" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45M7$Q2" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45M7$Q3" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45M7$Q4" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45M7$Q5" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45M7$Q6" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45M7$Q7" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45M7$Q8" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45M7$Q9" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45M7$Qa" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45M7$Qb" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45M7$Q2" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45M7$Qc" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45M7$Qd" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45M7$Qe" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGo" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45M7zfw" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45M7zfx" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45M7zfy" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45M7ziL" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45M7ziM" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45M7ziN" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7ziO" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7ziP" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7ziQ" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7ziR" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7ziS" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7ziT" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7ziU" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7ziV" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7ziY" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7ziW" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7zHD" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTq" resolve="Realization" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7ziY" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7ziZ" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45M7pbN" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45M7pbO" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45M7pbP" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45M7pci" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45M7xjH" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45M7sIy" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45M7psY" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45M7pch" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45M7pIO" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45M7vS7" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45M7vS9" role="23t8la">
                                <node concept="3clFbS" id="4BqX45M7vSa" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45M7vSf" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45M7w8s" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45M7vSe" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45M7vSb" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45M7wW9" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45M7x1F" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTq" resolve="Realization" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45M7vSb" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45M7vSc" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45M7z1G" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45M6Daa" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45M6Dab" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45M6Dac" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45M6Dfi" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45M6MyO" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45M6GHS" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45M6DvY" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45M6Dfh" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45M6DFG" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45M6JPn" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45M6JPp" role="23t8la">
                              <node concept="3clFbS" id="4BqX45M6JPq" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45M6L5N" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45M6Lm0" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45M6L5M" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45M6JPr" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45M6LY$" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45M6M46" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6dsTo" resolve="StructuralRelationship" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45M6JPr" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45M6JPs" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45M6NPO" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45MaqCn" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="2pNNFK" id="4BqX45MaqCo" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45MaqCp" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45MaqCq" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45MaqCr" role="3o6s8t">
                  <property role="3o6i5n" value="Dependency" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MaqCs" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MaqCt" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MaqCu" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MaqCv" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MaqCw" role="3o6s8t">
                    <property role="3o6i5n" value="Access" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MaqCx" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MaqCy" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MaqCz" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MaqC$" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MaqC_" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MaqCA" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MaqCB" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MaqCC" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MaqCD" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MaqCE" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MaqCF" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MaqCG" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MaqCH" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MaqCI" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MaqCJ" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MaqCK" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MaqCL" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MaqCC" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MaqCM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MaqCN" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MaqCO" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGq" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MaqCQ" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MaqCR" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MaqCS" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MaqCT" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MaqCU" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MaqCV" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqCW" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqCX" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqCY" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqCZ" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqD0" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqD1" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqD2" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqD3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqD6" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqD4" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaqD5" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTx" resolve="Access" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqD6" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqD7" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MaqD8" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MaqD9" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MaqDa" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MaqDb" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MaqDc" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MaqDd" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MaqDe" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqDf" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqDg" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqDh" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqDi" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqDj" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqDk" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqDl" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqDm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqDp" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqDn" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaqDo" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTx" resolve="Access" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqDp" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqDq" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MaqDr" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MaqDs" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MaqDt" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MaqDu" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MaqDv" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MaqDw" role="3o6s8t">
                    <property role="3o6i5n" value="Association" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MaqDx" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MaqDy" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MaqDz" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MaqD$" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MaqD_" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MaqDA" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MaqDB" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MaqDC" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MaqDD" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MaqDE" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MaqDF" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MaqDG" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MaqDH" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MaqDI" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MaqDJ" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MaqDK" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MaqDL" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MaqDC" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MaqDM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MaqDN" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MaqDO" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGs" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MaqDQ" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MaqDR" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MaqDS" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MaqDT" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MaqDU" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MaqDV" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqDW" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqDX" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqDY" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqDZ" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqE0" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqE1" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqE2" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqE3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqE6" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqE4" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaqE5" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTv" resolve="Association" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqE6" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqE7" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MaqE8" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MaqE9" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MaqEa" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MaqEb" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MaqEc" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MaqEd" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MaqEe" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqEf" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqEg" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqEh" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqEi" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqEj" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqEk" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqEl" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqEm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqEp" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqEn" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaqEo" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTv" resolve="Association" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqEp" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqEq" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MaqEr" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MaqEs" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MaqEt" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MaqEu" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MaqEv" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MaqEw" role="3o6s8t">
                    <property role="3o6i5n" value="Influence" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MaqEx" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MaqEy" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MaqEz" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MaqE$" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MaqE_" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MaqEA" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MaqEB" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MaqEC" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MaqED" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MaqEE" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MaqEF" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MaqEG" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MaqEH" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MaqEI" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MaqEJ" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MaqEK" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MaqEL" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MaqEC" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MaqEM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MaqEN" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MaqEO" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGu" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MaqEQ" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MaqER" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MaqES" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MaqET" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MaqEU" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MaqEV" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqEW" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqEX" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqEY" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqEZ" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqF0" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqF1" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqF2" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqF3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqF6" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqF4" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaykQ" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTw" resolve="Influence" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqF6" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqF7" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MaqF8" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MaqF9" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MaqFa" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MaqFb" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MaqFc" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MaqFd" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MaqFe" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqFf" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqFg" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqFh" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqFi" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqFj" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqFk" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqFl" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqFm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqFp" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqFn" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45May7k" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTw" resolve="Influence" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqFp" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqFq" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MaqFr" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MaqFs" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MaqFt" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MaqFu" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MaqFv" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MaqFw" role="3o6s8t">
                    <property role="3o6i5n" value="Serving" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MaqFx" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MaqFy" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MaqFz" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MaqF$" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MaqF_" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MaqFA" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MaqFB" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MaqFC" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MaqFD" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MaqFE" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MaqFF" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MaqFG" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MaqFH" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MaqFI" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MaqFJ" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MaqFK" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MaqFL" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MaqFC" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MaqFM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MaqFN" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MaqFO" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGw" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MaqFQ" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MaqFR" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MaqFS" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MaqFT" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MaqFU" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MaqFV" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqFW" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqFX" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqFY" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqFZ" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqG0" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqG1" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqG2" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqG3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqG6" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqG4" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45Mazb4" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTy" resolve="Serving" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqG6" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqG7" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MaqG8" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MaqG9" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MaqGa" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MaqGb" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MaqGc" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MaqGd" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MaqGe" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaqGf" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaqGg" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaqGh" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaqGi" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaqGj" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaqGk" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaqGl" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaqGm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaqGp" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaqGn" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MayBC" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTy" resolve="Serving" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaqGp" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaqGq" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MaqGr" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45MaqGs" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45MaqGt" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45MaqGu" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45MaqGv" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45MaqGw" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45MaqGx" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45MaqGy" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45MaqGz" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45MaqG$" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45MaqG_" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45MaqGA" role="23t8la">
                              <node concept="3clFbS" id="4BqX45MaqGB" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45MaqGC" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45MaqGD" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45MaqGE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45MaqGH" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45MaqGF" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45MawFb" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6dsTu" resolve="DependencyRelationship" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45MaqGH" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45MaqGI" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45MaqGJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45MazCr" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="2pNNFK" id="4BqX45MazCs" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45MazCt" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45MazCu" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45MazCv" role="3o6s8t">
                  <property role="3o6i5n" value="Dynamic" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MazCw" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MazCx" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MazCy" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MazCz" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MazC$" role="3o6s8t">
                    <property role="3o6i5n" value="Flow" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MazC_" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MazCA" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MazCB" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MazCC" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MazCD" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MazCE" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MazCF" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MazCG" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MazCH" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MazCI" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MazCJ" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MazCK" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MazCL" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MazCM" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MazCN" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MazCO" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MazCP" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MazCG" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MazCQ" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MazCR" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MazCS" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGy" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MazCU" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MazCV" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MazCW" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MazCX" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MazCY" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MazCZ" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MazD0" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MazD1" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MazD2" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MazD3" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MazD4" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MazD5" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MazD6" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MazD7" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MazDa" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MazD8" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaG1E" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTA" resolve="Flow" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MazDa" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MazDb" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MazDc" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MazDd" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MazDe" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MazDf" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MazDg" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MazDh" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MazDi" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MazDj" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MazDk" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MazDl" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MazDm" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MazDn" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MazDo" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MazDp" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MazDq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MazDt" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MazDr" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaFvt" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTA" resolve="Flow" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MazDt" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MazDu" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MazDv" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MazDw" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MazDx" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MazDy" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MazDz" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MazD$" role="3o6s8t">
                    <property role="3o6i5n" value="Triggering" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MazD_" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MazDA" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MazDB" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MazDC" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MazDD" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MazDE" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MazDF" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MazDG" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MazDH" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MazDI" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MazDJ" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MazDK" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MazDL" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MazDM" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MazDN" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MazDO" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MazDP" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MazDG" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MazDQ" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MazDR" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MazDS" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mG$" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MazDU" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MazDV" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MazDW" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MazDX" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MazDY" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MazDZ" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MazE0" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MazE1" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MazE2" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MazE3" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MazE4" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MazE5" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MazE6" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MazE7" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MazEa" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MazE8" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaHuU" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsT_" resolve="Triggering" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MazEa" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MazEb" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MazEc" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MazEd" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MazEe" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MazEf" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MazEg" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MazEh" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MazEi" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MazEj" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MazEk" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MazEl" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MazEm" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MazEn" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MazEo" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MazEp" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MazEq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MazEt" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MazEr" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaGPt" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsT_" resolve="Triggering" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MazEt" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MazEu" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MazEv" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45MazGw" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45MazGx" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45MazGy" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45MazGz" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45MazG$" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45MazG_" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45MazGA" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45MazGB" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45MazGC" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45MazGD" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45MazGE" role="23t8la">
                              <node concept="3clFbS" id="4BqX45MazGF" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45MazGG" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45MazGH" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45MazGI" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45MazGL" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45MazGJ" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45MazGK" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6dsTz" resolve="DynamicRelationship" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45MazGL" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45MazGM" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45MazGN" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4BqX45MaHOF" role="3o6s8t">
              <property role="2pNNFO" value="item" />
              <node concept="2pNNFK" id="4BqX45MaHOG" role="3o6s8t">
                <property role="2pNNFO" value="label" />
                <node concept="2pNUuL" id="4BqX45MaHOH" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="4BqX45MaHOI" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="4BqX45MaHOJ" role="3o6s8t">
                  <property role="3o6i5n" value="Other" />
                </node>
              </node>
              <node concept="2pNNFK" id="4BqX45MaHOK" role="3o6s8t">
                <property role="2pNNFO" value="item" />
                <node concept="2pNNFK" id="4BqX45MaHOL" role="3o6s8t">
                  <property role="2pNNFO" value="label" />
                  <node concept="2pNUuL" id="4BqX45MaHOM" role="2pNNFR">
                    <property role="2pNUuO" value="xml:lang" />
                    <node concept="2pMdtt" id="4BqX45MaHON" role="2pMdts">
                      <property role="2pMdty" value="en" />
                    </node>
                  </node>
                  <node concept="3o6iSG" id="4BqX45MaHOO" role="3o6s8t">
                    <property role="3o6i5n" value="Specialization" />
                  </node>
                </node>
                <node concept="2pNNFK" id="4BqX45MaHOP" role="3o6s8t">
                  <property role="2pNNFO" value="item" />
                  <node concept="2pNUuL" id="4BqX45MaHOQ" role="2pNNFR">
                    <property role="2pNUuO" value="identifierRef" />
                    <node concept="2pMdtt" id="4BqX45MaHOR" role="2pMdts">
                      <property role="2pMdty" value="id-1" />
                      <node concept="17Uvod" id="4BqX45MaHOS" role="lGtFl">
                        <property role="2qtEX9" value="text" />
                        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                        <node concept="3zFVjK" id="4BqX45MaHOT" role="3zH0cK">
                          <node concept="3clFbS" id="4BqX45MaHOU" role="2VODD2">
                            <node concept="3cpWs8" id="4BqX45MaHOV" role="3cqZAp">
                              <node concept="3cpWsn" id="4BqX45MaHOW" role="3cpWs9">
                                <property role="TrG5h" value="copyNode" />
                                <node concept="3Tqbb2" id="4BqX45MaHOX" role="1tU5fm">
                                  <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                                </node>
                                <node concept="30H73N" id="4BqX45MaHOY" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4BqX45MaHOZ" role="3cqZAp">
                              <node concept="3cpWs3" id="4BqX45MaHP0" role="3cqZAk">
                                <node concept="2OqwBi" id="4BqX45MaHP1" role="3uHU7w">
                                  <node concept="2OqwBi" id="4BqX45MaHP2" role="2Oq$k0">
                                    <node concept="liA8E" id="4BqX45MaHP3" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="4BqX45MaHP4" role="2Oq$k0">
                                      <node concept="37vLTw" id="4BqX45MaHP5" role="2JrQYb">
                                        <ref role="3cqZAo" node="4BqX45MaHOW" resolve="copyNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4BqX45MaHP6" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4BqX45MaHP7" role="3uHU7B">
                                  <node concept="30H73N" id="4BqX45MaHP8" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="31bEcwc0mGA" role="2OqNvi">
                                    <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="4BqX45MaHPa" role="lGtFl">
                    <node concept="3JmXsc" id="4BqX45MaHPb" role="3Jn$fo">
                      <node concept="3clFbS" id="4BqX45MaHPc" role="2VODD2">
                        <node concept="3clFbF" id="4BqX45MaHPd" role="3cqZAp">
                          <node concept="2OqwBi" id="4BqX45MaHPe" role="3clFbG">
                            <node concept="2OqwBi" id="4BqX45MaHPf" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaHPg" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaHPh" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaHPi" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaHPj" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaHPk" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaHPl" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaHPm" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaHPn" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaHPq" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaHPo" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaPND" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTD" resolve="Specilization" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaHPq" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaHPr" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4BqX45MaHPs" role="lGtFl">
                  <node concept="3IZrLx" id="4BqX45MaHPt" role="3IZSJc">
                    <node concept="3clFbS" id="4BqX45MaHPu" role="2VODD2">
                      <node concept="3clFbF" id="4BqX45MaHPv" role="3cqZAp">
                        <node concept="2OqwBi" id="4BqX45MaHPw" role="3clFbG">
                          <node concept="2OqwBi" id="4BqX45MaHPx" role="2Oq$k0">
                            <node concept="2OqwBi" id="4BqX45MaHPy" role="2Oq$k0">
                              <node concept="30H73N" id="4BqX45MaHPz" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="4BqX45MaHP$" role="2OqNvi">
                                <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                              </node>
                            </node>
                            <node concept="3zZkjj" id="4BqX45MaHP_" role="2OqNvi">
                              <node concept="1bVj0M" id="4BqX45MaHPA" role="23t8la">
                                <node concept="3clFbS" id="4BqX45MaHPB" role="1bW5cS">
                                  <node concept="3clFbF" id="4BqX45MaHPC" role="3cqZAp">
                                    <node concept="2OqwBi" id="4BqX45MaHPD" role="3clFbG">
                                      <node concept="37vLTw" id="4BqX45MaHPE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4BqX45MaHPH" resolve="it" />
                                      </node>
                                      <node concept="1mIQ4w" id="4BqX45MaHPF" role="2OqNvi">
                                        <node concept="chp4Y" id="4BqX45MaOvJ" role="cj9EA">
                                          <ref role="cht4Q" to="gj8d:MYBoz6dsTD" resolve="Specilization" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="4BqX45MaHPH" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="4BqX45MaHPI" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="4BqX45MaHPJ" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="4BqX45MaHQK" role="lGtFl">
                <node concept="3IZrLx" id="4BqX45MaHQL" role="3IZSJc">
                  <node concept="3clFbS" id="4BqX45MaHQM" role="2VODD2">
                    <node concept="3clFbF" id="4BqX45MaHQN" role="3cqZAp">
                      <node concept="2OqwBi" id="4BqX45MaHQO" role="3clFbG">
                        <node concept="2OqwBi" id="4BqX45MaHQP" role="2Oq$k0">
                          <node concept="2OqwBi" id="4BqX45MaHQQ" role="2Oq$k0">
                            <node concept="30H73N" id="4BqX45MaHQR" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="4BqX45MaHQS" role="2OqNvi">
                              <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="4BqX45MaHQT" role="2OqNvi">
                            <node concept="1bVj0M" id="4BqX45MaHQU" role="23t8la">
                              <node concept="3clFbS" id="4BqX45MaHQV" role="1bW5cS">
                                <node concept="3clFbF" id="4BqX45MaHQW" role="3cqZAp">
                                  <node concept="2OqwBi" id="4BqX45MaHQX" role="3clFbG">
                                    <node concept="37vLTw" id="4BqX45MaHQY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4BqX45MaHR1" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="4BqX45MaHQZ" role="2OqNvi">
                                      <node concept="chp4Y" id="4BqX45MaHR0" role="cj9EA">
                                        <ref role="cht4Q" to="gj8d:MYBoz6dsTz" resolve="DynamicRelationship" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="4BqX45MaHR1" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4BqX45MaHR2" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4BqX45MaHR3" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="4BqX45M6v9v" role="lGtFl">
              <node concept="3IZrLx" id="4BqX45M6v9w" role="3IZSJc">
                <node concept="3clFbS" id="4BqX45M6v9x" role="2VODD2">
                  <node concept="3clFbF" id="4BqX45M6v9Y" role="3cqZAp">
                    <node concept="2OqwBi" id="4BqX45M6CX3" role="3clFbG">
                      <node concept="2OqwBi" id="4BqX45M6CX4" role="2Oq$k0">
                        <node concept="30H73N" id="4BqX45M6CX5" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="4BqX45M6CX6" role="2OqNvi">
                          <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="4BqX45M6QGP" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="1PF82DFfO9n" role="3o6s8t" />
        <node concept="2pNNFK" id="1PF82DF0G_d" role="3o6s8t">
          <property role="2pNNFO" value="propertyDefinitions" />
          <node concept="2pNNFK" id="1PF82DF0GNF" role="3o6s8t">
            <property role="2pNNFO" value="propertyDefinition" />
            <node concept="2pNNFK" id="1PF82DF0GNN" role="3o6s8t">
              <property role="2pNNFO" value="name" />
              <node concept="3o6iSG" id="1PF82DF0GNO" role="3o6s8t">
                <property role="3o6i5n" value="Dummy PropertyDef" />
              </node>
            </node>
            <node concept="2pNUuL" id="1PF82DF0GNH" role="2pNNFR">
              <property role="2pNUuO" value="identifier" />
              <node concept="2pMdtt" id="1PF82DF0GNI" role="2pMdts">
                <property role="2pMdty" value="propdef-1" />
              </node>
            </node>
            <node concept="2pNUuL" id="1PF82DF0GNK" role="2pNNFR">
              <property role="2pNUuO" value="type" />
              <node concept="2pMdtt" id="1PF82DF0GNL" role="2pMdts">
                <property role="2pMdty" value="number" />
              </node>
            </node>
            <node concept="2b32R4" id="1PF82DF0H0I" role="lGtFl">
              <node concept="3JmXsc" id="1PF82DF0H0L" role="2P8S$">
                <node concept="3clFbS" id="1PF82DF0H0M" role="2VODD2">
                  <node concept="3clFbF" id="1PF82DF0H0S" role="3cqZAp">
                    <node concept="2OqwBi" id="1PF82DF0H0N" role="3clFbG">
                      <node concept="3Tsc0h" id="1PF82DF0H0Q" role="2OqNvi">
                        <ref role="3TtcxE" to="gj8d:MYBoz69PNn" resolve="propertyDefinitions" />
                      </node>
                      <node concept="30H73N" id="1PF82DF0H0R" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="1PF82DF0GwY" role="3o6s8t" />
        <node concept="2pNNFK" id="697XFv3BJrg" role="3o6s8t">
          <property role="2pNNFO" value="views" />
          <node concept="3o6iSG" id="697XFv3BJCl" role="3o6s8t" />
          <node concept="2pNNFK" id="697XFv3BJCn" role="3o6s8t">
            <property role="2pNNFO" value="diagrams" />
            <node concept="2pNNFK" id="697XFv3BJC8" role="3o6s8t">
              <property role="2pNNFO" value="view" />
              <node concept="2pNUuL" id="697XFv3BJCa" role="2pNNFR">
                <property role="2pNUuO" value="identifier" />
                <node concept="2pMdtt" id="697XFv3BJCb" role="2pMdts">
                  <property role="2pMdty" value="id-001" />
                </node>
              </node>
              <node concept="2pNUuL" id="697XFv3BJCd" role="2pNNFR">
                <property role="2pNUuO" value="xsi:type" />
                <node concept="2pMdtt" id="697XFv3BJCe" role="2pMdts">
                  <property role="2pMdty" value="Diagram" />
                </node>
              </node>
              <node concept="2pNNFK" id="697XFv3BJCg" role="3o6s8t">
                <property role="2pNNFO" value="name" />
                <node concept="2pNUuL" id="697XFv3BJCi" role="2pNNFR">
                  <property role="2pNUuO" value="xml:lang" />
                  <node concept="2pMdtt" id="697XFv3BJCj" role="2pMdts">
                    <property role="2pMdty" value="en" />
                  </node>
                </node>
                <node concept="3o6iSG" id="697XFv3BJCk" role="3o6s8t">
                  <property role="3o6i5n" value="Default View" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="697XFv3BI$t" role="3o6s8t" />
        <node concept="2pNUuL" id="1PF82DEVgAR" role="2pNNFR">
          <property role="2pNUuO" value="xmlns" />
          <node concept="2pMdtt" id="1PF82DEVgAS" role="2pMdts">
            <property role="2pMdty" value="http://www.opengroup.org/xsd/archimate/3.0/" />
          </node>
        </node>
        <node concept="2pNUuL" id="1PF82DEVgAU" role="2pNNFR">
          <property role="2pNUuO" value="xmlns:xsi" />
          <node concept="2pMdtt" id="1PF82DEVgAV" role="2pMdts">
            <property role="2pMdty" value="http://www.w3.org/2001/XMLSchema-instance" />
          </node>
        </node>
        <node concept="2pNUuL" id="1PF82DEVgAX" role="2pNNFR">
          <property role="2pNUuO" value="xsi:schemaLocation" />
          <node concept="2pMdtt" id="1PF82DEVgAY" role="2pMdts">
            <property role="2pMdty" value="http://www.opengroup.org/xsd/archimate/3.0/ http://www.opengroup.org/xsd/archimate/3.1/archimate3_Model.xsd" />
          </node>
        </node>
        <node concept="2pNUuL" id="1PF82DEVgB0" role="2pNNFR">
          <property role="2pNUuO" value="identifier" />
          <node concept="2pMdtt" id="1PF82DEVgB1" role="2pMdts">
            <property role="2pMdty" value="model1-1" />
          </node>
        </node>
        <node concept="2pNUuL" id="1PF82DEVgB4" role="2pNNFR">
          <property role="2pNUuO" value="version" />
          <node concept="2pMdtt" id="1PF82DEVgB5" role="2pMdts">
            <property role="2pMdty" value="1.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="1PF82DEVe7w" role="lGtFl">
      <ref role="n9lRv" to="gj8d:1IRV1xUxPyP" resolve="EnterpriseArchitecture" />
    </node>
    <node concept="17Uvod" id="1PF82DEVe7x" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="1PF82DEVe7y" role="3zH0cK">
        <node concept="3clFbS" id="1PF82DEVe7z" role="2VODD2">
          <node concept="3clFbF" id="1PF82DEVedO" role="3cqZAp">
            <node concept="2OqwBi" id="1PF82DEVevV" role="3clFbG">
              <node concept="30H73N" id="1PF82DEVedN" role="2Oq$k0" />
              <node concept="3TrcHB" id="1PF82DEVgrh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1PF82DF0H51">
    <property role="TrG5h" value="reduce_PropertyDefinition" />
    <ref role="3gUMe" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
    <node concept="2pNNFK" id="1PF82DF0Hg0" role="13RCb5">
      <property role="2pNNFO" value="propertyDefinition" />
      <node concept="2pNNFK" id="1PF82DF0Hg8" role="3o6s8t">
        <property role="2pNNFO" value="name" />
        <node concept="3o6iSG" id="1PF82DF0Hg9" role="3o6s8t">
          <property role="3o6i5n" value="Dummy Property Definition" />
          <node concept="17Uvod" id="1PF82DF0IS6" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="1PF82DF0IS7" role="3zH0cK">
              <node concept="3clFbS" id="1PF82DF0IS8" role="2VODD2">
                <node concept="3clFbF" id="1PF82DF0IS_" role="3cqZAp">
                  <node concept="2OqwBi" id="1PF82DF0J0M" role="3clFbG">
                    <node concept="30H73N" id="1PF82DF0IS$" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1PF82DF0J23" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="1PF82DF0Hg2" role="2pNNFR">
        <property role="2pNUuO" value="identifier" />
        <node concept="2pMdtt" id="1PF82DF0Hg3" role="2pMdts">
          <property role="2pMdty" value="propdef-1" />
          <node concept="17Uvod" id="1PF82DF0Hgb" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="1PF82DF0Hgc" role="3zH0cK">
              <node concept="3clFbS" id="1PF82DF0Hgd" role="2VODD2">
                <node concept="3cpWs8" id="1PF82DF8nec" role="3cqZAp">
                  <node concept="3cpWsn" id="1PF82DF8nef" role="3cpWs9">
                    <property role="TrG5h" value="copyNode" />
                    <node concept="3Tqbb2" id="1PF82DF8neb" role="1tU5fm">
                      <ref role="ehGHo" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
                    </node>
                    <node concept="30H73N" id="1PF82DF8nik" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs6" id="1PF82DF8oFJ" role="3cqZAp">
                  <node concept="3cpWs3" id="1PF82DFc5v1" role="3cqZAk">
                    <node concept="2OqwBi" id="1PF82DF8o8y" role="3uHU7w">
                      <node concept="2OqwBi" id="1PF82DF8nXQ" role="2Oq$k0">
                        <node concept="liA8E" id="1PF82DF8nZQ" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="1PF82DF8nXV" role="2Oq$k0">
                          <node concept="37vLTw" id="1PF82DF8nj$" role="2JrQYb">
                            <ref role="3cqZAo" node="1PF82DF8nef" resolve="copyNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1PF82DF8opy" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="697XFv2yoVT" role="3uHU7B">
                      <node concept="30H73N" id="697XFv2yozh" role="2Oq$k0" />
                      <node concept="3zqWPK" id="31bEcwc0mGC" role="2OqNvi">
                        <ref role="37wK5l" to="6qn4:697XFv2yo4k" resolve="getXmlPrefix" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1PF82DFzp82" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="1PF82DF0Hg5" role="2pNNFR">
        <property role="2pNUuO" value="type" />
        <node concept="2pMdtt" id="1PF82DF0Hg6" role="2pMdts">
          <property role="2pMdty" value="number" />
          <node concept="17Uvod" id="1PF82DF0HMP" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="1PF82DF0HMQ" role="3zH0cK">
              <node concept="3clFbS" id="1PF82DF0HMR" role="2VODD2">
                <node concept="3clFbF" id="1PF82DF0HNk" role="3cqZAp">
                  <node concept="2OqwBi" id="1PF82DFdXv6" role="3clFbG">
                    <node concept="2OqwBi" id="1PF82DF0IBr" role="2Oq$k0">
                      <node concept="2OqwBi" id="1PF82DF0HZY" role="2Oq$k0">
                        <node concept="30H73N" id="1PF82DF0HNj" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1PF82DF0IgV" role="2OqNvi">
                          <ref role="3TsBF5" to="gj8d:7HPPZNrS7hk" resolve="type" />
                        </node>
                      </node>
                      <node concept="24Tkf9" id="1PF82DF0ILu" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="1PF82DFdY45" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="1PF82DF0Hga" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="697XFv2hwwt">
    <property role="TrG5h" value="reduce_AbstractElement" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="3gUMe" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
    <node concept="2pNNFK" id="697XFv2hwwx" role="13RCb5">
      <property role="2pNNFO" value="element" />
      <node concept="2pNUuL" id="697XFv2hwwA" role="2pNNFR">
        <property role="2pNUuO" value="identifier" />
        <node concept="2pMdtt" id="697XFv2hwwB" role="2pMdts">
          <property role="2pMdty" value="id-001" />
          <node concept="17Uvod" id="697XFv2nV4j" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2nV4k" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2nV4l" role="2VODD2">
                <node concept="3cpWs8" id="697XFv2nVg3" role="3cqZAp">
                  <node concept="3cpWsn" id="697XFv2nVg4" role="3cpWs9">
                    <property role="TrG5h" value="copyNode" />
                    <node concept="3Tqbb2" id="697XFv2nVg5" role="1tU5fm">
                      <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                    </node>
                    <node concept="30H73N" id="697XFv2nVg6" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs6" id="697XFv2nVg7" role="3cqZAp">
                  <node concept="3cpWs3" id="697XFv2nVg8" role="3cqZAk">
                    <node concept="2OqwBi" id="697XFv2nVg9" role="3uHU7w">
                      <node concept="2OqwBi" id="697XFv2nVga" role="2Oq$k0">
                        <node concept="liA8E" id="697XFv2nVgb" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="697XFv2nVgc" role="2Oq$k0">
                          <node concept="37vLTw" id="697XFv2nVgd" role="2JrQYb">
                            <ref role="3cqZAo" node="697XFv2nVg4" resolve="copyNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="697XFv2nVge" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="697XFv2yzmM" role="3uHU7B">
                      <node concept="30H73N" id="697XFv2yzdS" role="2Oq$k0" />
                      <node concept="3zqWPK" id="31bEcwc0mGE" role="2OqNvi">
                        <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3o6iSG" id="697XFv2hwwy" role="3o6s8t" />
      <node concept="2pNNFK" id="697XFv2hwwF" role="3o6s8t">
        <property role="2pNNFO" value="name" />
        <node concept="2pNUuL" id="697XFv2hwwH" role="2pNNFR">
          <property role="2pNUuO" value="xml:lang" />
          <node concept="2pMdtt" id="697XFv2hwwI" role="2pMdts">
            <property role="2pMdty" value="en" />
          </node>
        </node>
        <node concept="3o6iSG" id="697XFv2hwwJ" role="3o6s8t">
          <property role="3o6i5n" value="A Business Actor" />
          <node concept="17Uvod" id="697XFv2hwwW" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="697XFv2hwwX" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2hwwY" role="2VODD2">
                <node concept="3clFbF" id="697XFv2hwBf" role="3cqZAp">
                  <node concept="2OqwBi" id="697XFv2hwTm" role="3clFbG">
                    <node concept="30H73N" id="697XFv2hwBe" role="2Oq$k0" />
                    <node concept="3TrcHB" id="697XFv2hyIS" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="697XFv2hwwM" role="3o6s8t">
        <property role="2pNNFO" value="properties" />
        <node concept="3o6iSG" id="697XFv2hyM5" role="3o6s8t" />
        <node concept="2pNNFK" id="697XFv2hwwP" role="3o6s8t">
          <property role="2pNNFO" value="property" />
          <node concept="2pNNFK" id="697XFv2hwwT" role="3o6s8t">
            <property role="2pNNFO" value="value" />
            <node concept="3o6iSG" id="697XFv2hwwU" role="3o6s8t">
              <property role="3o6i5n" value="42" />
              <node concept="17Uvod" id="697XFv2hAo1" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <node concept="3zFVjK" id="697XFv2hAo2" role="3zH0cK">
                  <node concept="3clFbS" id="697XFv2hAo3" role="2VODD2">
                    <node concept="3clFbF" id="697XFv2hAwQ" role="3cqZAp">
                      <node concept="2OqwBi" id="697XFv2hAQH" role="3clFbG">
                        <node concept="30H73N" id="697XFv2hAwP" role="2Oq$k0" />
                        <node concept="3TrcHB" id="697XFv2hCFw" role="2OqNvi">
                          <ref role="3TsBF5" to="gj8d:7HPPZNrS7m1" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="697XFv2hwwR" role="2pNNFR">
            <property role="2pNUuO" value="propertyDefinitionRef" />
            <node concept="2pMdtt" id="697XFv2hwwS" role="2pMdts">
              <property role="2pMdty" value="propref-1" />
              <node concept="17Uvod" id="697XFv2hyLB" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="697XFv2hyLC" role="3zH0cK">
                  <node concept="3clFbS" id="697XFv2hyLD" role="2VODD2">
                    <node concept="3cpWs8" id="697XFv2hG7x" role="3cqZAp">
                      <node concept="3cpWsn" id="697XFv2hG7y" role="3cpWs9">
                        <property role="TrG5h" value="copyNode" />
                        <node concept="3Tqbb2" id="697XFv2hG7z" role="1tU5fm">
                          <ref role="ehGHo" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
                        </node>
                        <node concept="2OqwBi" id="697XFv2hJVp" role="33vP2m">
                          <node concept="30H73N" id="697XFv2hG7$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="697XFv2hM5Z" role="2OqNvi">
                            <ref role="3Tt5mk" to="gj8d:MYBoz69PNm" resolve="propertyDefinition" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="697XFv2hG7_" role="3cqZAp">
                      <node concept="3cpWs3" id="697XFv2hG7A" role="3cqZAk">
                        <node concept="2OqwBi" id="697XFv2hG7B" role="3uHU7w">
                          <node concept="2OqwBi" id="697XFv2hG7C" role="2Oq$k0">
                            <node concept="liA8E" id="697XFv2hG7D" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="697XFv2hG7E" role="2Oq$k0">
                              <node concept="37vLTw" id="697XFv2hG7F" role="2JrQYb">
                                <ref role="3cqZAo" node="697XFv2hG7y" resolve="copyNode" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="697XFv2hG7G" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="697XFv2yv3U" role="3uHU7B">
                          <node concept="2OqwBi" id="697XFv2yrW0" role="2Oq$k0">
                            <node concept="30H73N" id="697XFv2yrqV" role="2Oq$k0" />
                            <node concept="3TrEf2" id="697XFv2yuf3" role="2OqNvi">
                              <ref role="3Tt5mk" to="gj8d:MYBoz69PNm" resolve="propertyDefinition" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="31bEcwc0mGG" role="2OqNvi">
                            <ref role="37wK5l" to="6qn4:697XFv2yo4k" resolve="getXmlPrefix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="697XFv2hyM9" role="lGtFl">
            <node concept="3JmXsc" id="697XFv2hyMc" role="3Jn$fo">
              <node concept="3clFbS" id="697XFv2hyMd" role="2VODD2">
                <node concept="3clFbF" id="697XFv2hyMj" role="3cqZAp">
                  <node concept="2OqwBi" id="697XFv2hyMe" role="3clFbG">
                    <node concept="3Tsc0h" id="697XFv2hyMh" role="2OqNvi">
                      <ref role="3TtcxE" to="gj8d:7HPPZNrUOXN" resolve="properties" />
                    </node>
                    <node concept="30H73N" id="697XFv2hyMi" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="697XFv2jMAY" role="lGtFl">
          <node concept="3IZrLx" id="697XFv2jMAZ" role="3IZSJc">
            <node concept="3clFbS" id="697XFv2jMB0" role="2VODD2">
              <node concept="3clFbF" id="697XFv2jN3P" role="3cqZAp">
                <node concept="3fqX7Q" id="697XFv2jSwf" role="3clFbG">
                  <node concept="2OqwBi" id="697XFv2jSwh" role="3fr31v">
                    <node concept="2OqwBi" id="697XFv2jSwi" role="2Oq$k0">
                      <node concept="30H73N" id="697XFv2jSwj" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="697XFv2jSwk" role="2OqNvi">
                        <ref role="3TtcxE" to="gj8d:7HPPZNrUOXN" resolve="properties" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="697XFv2jSwl" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="697XFv2hwwD" role="2pNNFR">
        <property role="2pNUuO" value="xsi:type" />
        <node concept="2pMdtt" id="697XFv2hwwE" role="2pMdts">
          <property role="2pMdty" value="BusinessActor" />
          <node concept="17Uvod" id="697XFv2lUqb" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2lUqc" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2lUqd" role="2VODD2">
                <node concept="3clFbF" id="697XFv2yyjK" role="3cqZAp">
                  <node concept="2OqwBi" id="697XFv2yyAb" role="3clFbG">
                    <node concept="30H73N" id="697XFv2yyjJ" role="2Oq$k0" />
                    <node concept="3zqWPK" id="31bEcwc0mGI" role="2OqNvi">
                      <ref role="37wK5l" to="6qn4:697XFv2nVX0" resolve="getXmlType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="697XFv2hwwV" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="697XFv2J4XR">
    <property role="TrG5h" value="reduce_AbstractRelationship" />
    <property role="3GE5qa" value="Abstract" />
    <ref role="3gUMe" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
    <node concept="2pNNFK" id="697XFv2J5rW" role="13RCb5">
      <property role="2pNNFO" value="relationship" />
      <node concept="3o6iSG" id="697XFv2J5rX" role="3o6s8t" />
      <node concept="2pNNFK" id="697XFv2J5rY" role="3o6s8t">
        <property role="2pNNFO" value="name" />
        <node concept="2pNUuL" id="697XFv2J5rZ" role="2pNNFR">
          <property role="2pNUuO" value="xml:lang" />
          <node concept="2pMdtt" id="697XFv2J5s0" role="2pMdts">
            <property role="2pMdty" value="en" />
          </node>
        </node>
        <node concept="3o6iSG" id="697XFv2J5s1" role="3o6s8t">
          <property role="3o6i5n" value="Association Relationship" />
          <node concept="17Uvod" id="697XFv2JbGB" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="697XFv2JbGC" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2JbGD" role="2VODD2">
                <node concept="3clFbF" id="697XFv30WXR" role="3cqZAp">
                  <node concept="2OqwBi" id="697XFv30XfY" role="3clFbG">
                    <node concept="30H73N" id="697XFv30WXQ" role="2Oq$k0" />
                    <node concept="3zqWPK" id="31bEcwc0mGK" role="2OqNvi">
                      <ref role="37wK5l" to="6qn4:697XFv2Jcrz" resolve="getXmlType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="697XFv2J5s2" role="2pNNFR">
        <property role="2pNUuO" value="identifier" />
        <node concept="2pMdtt" id="697XFv2J5s3" role="2pMdts">
          <property role="2pMdty" value="rel-1234" />
          <node concept="17Uvod" id="697XFv2MR_f" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2MR_g" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2MR_h" role="2VODD2">
                <node concept="3cpWs8" id="697XFv2MRBc" role="3cqZAp">
                  <node concept="3cpWsn" id="697XFv2MRBd" role="3cpWs9">
                    <property role="TrG5h" value="copyNode" />
                    <node concept="3Tqbb2" id="697XFv2MRBe" role="1tU5fm">
                      <ref role="ehGHo" to="gj8d:7HPPZNrUOSh" resolve="AbstractRelationship" />
                    </node>
                    <node concept="30H73N" id="697XFv2MRBg" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs6" id="697XFv2MRBi" role="3cqZAp">
                  <node concept="3cpWs3" id="697XFv2MRBj" role="3cqZAk">
                    <node concept="2OqwBi" id="697XFv2MRBk" role="3uHU7w">
                      <node concept="2OqwBi" id="697XFv2MRBl" role="2Oq$k0">
                        <node concept="liA8E" id="697XFv2MRBm" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="697XFv2MRBn" role="2Oq$k0">
                          <node concept="37vLTw" id="697XFv2MRBo" role="2JrQYb">
                            <ref role="3cqZAo" node="697XFv2MRBd" resolve="copyNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="697XFv2MRBp" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="697XFv2MRBq" role="3uHU7B">
                      <node concept="30H73N" id="697XFv2MRBs" role="2Oq$k0" />
                      <node concept="3zqWPK" id="31bEcwc0mGM" role="2OqNvi">
                        <ref role="37wK5l" to="6qn4:697XFv2Jcrt" resolve="getXmlPrefix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="697XFv2J5s4" role="2pNNFR">
        <property role="2pNUuO" value="source" />
        <node concept="2pMdtt" id="697XFv2J5s5" role="2pMdts">
          <property role="2pMdty" value="src-123" />
          <node concept="17Uvod" id="697XFv2J5AT" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2J5AU" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2J5AV" role="2VODD2">
                <node concept="3cpWs8" id="697XFv2J8ov" role="3cqZAp">
                  <node concept="3cpWsn" id="697XFv2J8ow" role="3cpWs9">
                    <property role="TrG5h" value="copyNode" />
                    <node concept="3Tqbb2" id="697XFv2J8ox" role="1tU5fm">
                      <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                    </node>
                    <node concept="2OqwBi" id="697XFv2J8XH" role="33vP2m">
                      <node concept="30H73N" id="697XFv2J8oy" role="2Oq$k0" />
                      <node concept="3TrEf2" id="697XFv2J9gm" role="2OqNvi">
                        <ref role="3Tt5mk" to="gj8d:6GoZXN$1NK_" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="697XFv2J8oz" role="3cqZAp">
                  <node concept="3cpWs3" id="697XFv2J8o$" role="3cqZAk">
                    <node concept="2OqwBi" id="697XFv2J8o_" role="3uHU7w">
                      <node concept="2OqwBi" id="697XFv2J8oA" role="2Oq$k0">
                        <node concept="liA8E" id="697XFv2J8oB" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="697XFv2J8oC" role="2Oq$k0">
                          <node concept="37vLTw" id="697XFv2J8oD" role="2JrQYb">
                            <ref role="3cqZAo" node="697XFv2J8ow" resolve="copyNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="697XFv2J8oE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="697XFv2J8oF" role="3uHU7B">
                      <node concept="2OqwBi" id="697XFv2J9zI" role="2Oq$k0">
                        <node concept="30H73N" id="697XFv2J8oG" role="2Oq$k0" />
                        <node concept="3TrEf2" id="697XFv2J9Ls" role="2OqNvi">
                          <ref role="3Tt5mk" to="gj8d:6GoZXN$1NK_" resolve="source" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="31bEcwc0mGO" role="2OqNvi">
                        <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="697XFv2J5s6" role="2pNNFR">
        <property role="2pNUuO" value="target" />
        <node concept="2pMdtt" id="697XFv2J5s7" role="2pMdts">
          <property role="2pMdty" value="t-1234" />
          <node concept="17Uvod" id="697XFv2JaFr" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2JaFs" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2JaFt" role="2VODD2">
                <node concept="3cpWs8" id="697XFv2JaHo" role="3cqZAp">
                  <node concept="3cpWsn" id="697XFv2JaHp" role="3cpWs9">
                    <property role="TrG5h" value="copyNode" />
                    <node concept="3Tqbb2" id="697XFv2JaHq" role="1tU5fm">
                      <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                    </node>
                    <node concept="2OqwBi" id="697XFv2Jbot" role="33vP2m">
                      <node concept="30H73N" id="697XFv2JaHs" role="2Oq$k0" />
                      <node concept="3TrEf2" id="697XFv2Jb$K" role="2OqNvi">
                        <ref role="3Tt5mk" to="gj8d:6GoZXN$1NKA" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="697XFv2JaHu" role="3cqZAp">
                  <node concept="3cpWs3" id="697XFv2JaHv" role="3cqZAk">
                    <node concept="2OqwBi" id="697XFv2JaHw" role="3uHU7w">
                      <node concept="2OqwBi" id="697XFv2JaHx" role="2Oq$k0">
                        <node concept="liA8E" id="697XFv2JaHy" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="697XFv2JaHz" role="2Oq$k0">
                          <node concept="37vLTw" id="697XFv2JaH$" role="2JrQYb">
                            <ref role="3cqZAo" node="697XFv2JaHp" resolve="copyNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="697XFv2JaH_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="697XFv2JaHA" role="3uHU7B">
                      <node concept="2OqwBi" id="697XFv2JaHB" role="2Oq$k0">
                        <node concept="30H73N" id="697XFv2JaHC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="697XFv2JbEJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="gj8d:6GoZXN$1NKA" resolve="target" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="31bEcwc0mGQ" role="2OqNvi">
                        <ref role="37wK5l" to="6qn4:697XFv2nVV0" resolve="getXmlPrefix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="697XFv2J5s8" role="2pNNFR">
        <property role="2pNUuO" value="xsi:type" />
        <node concept="2pMdtt" id="697XFv2J5s9" role="2pMdts">
          <property role="2pMdty" value="Association" />
          <node concept="17Uvod" id="697XFv2MR3Z" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="697XFv2MR40" role="3zH0cK">
              <node concept="3clFbS" id="697XFv2MR41" role="2VODD2">
                <node concept="3clFbF" id="697XFv2MR4u" role="3cqZAp">
                  <node concept="2OqwBi" id="697XFv2MRm_" role="3clFbG">
                    <node concept="30H73N" id="697XFv2MR4t" role="2Oq$k0" />
                    <node concept="3zqWPK" id="31bEcwc0mGS" role="2OqNvi">
                      <ref role="37wK5l" to="6qn4:697XFv2Jcrz" resolve="getXmlType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="697XFv2J5AS" role="lGtFl" />
    </node>
  </node>
</model>

