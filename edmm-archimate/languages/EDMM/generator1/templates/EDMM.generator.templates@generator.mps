<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:77354993-e98f-46f3-b6d6-35bab1484304(EDMM.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="430a72f5-df99-470c-b009-a2d7eda10a73" name="ArchiMate" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="wuz1" ref="r:a9e59ede-7fd0-48c5-9ce0-ba11c2db39c7(EDMM.structure)" />
    <import index="5uy" ref="r:e5a63a9e-385b-43c7-8248-dc8b70b81678(EDMM.generator.templates.util)" />
    <import index="gj8d" ref="r:e758d0e6-3d7e-41e8-8ea2-54d006d27e83(ArchiMate.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="lg" index="5jKBG" />
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
        <child id="1195502346405" name="postMappingScript" index="1pvy6N" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj">
        <reference id="1200916687663" name="labelDeclaration" index="2sdACS" />
      </concept>
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="5005282049925926521" name="jetbrains.mps.lang.generator.structure.TemplateArgumentParameterExpression" flags="nn" index="v3LJS">
        <reference id="5005282049925926522" name="parameter" index="v3LJV" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ngI" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="lg" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="430a72f5-df99-470c-b009-a2d7eda10a73" name="ArchiMate">
      <concept id="8896254119960933630" name="ArchiMate.structure.Property" flags="ng" index="2w_qc2">
        <property id="8896254119960933761" name="value" index="2w_q9X" />
        <reference id="918344584795741398" name="propertyDefinition" index="3aAs5u" />
      </concept>
      <concept id="8896254119960932655" name="ArchiMate.structure.PropertyDefinition" flags="ng" index="2w_qrj" />
      <concept id="8896254119961644561" name="ArchiMate.structure.AbstractRelationship" flags="ng" index="2wBDBH">
        <reference id="7717199285682912293" name="source" index="2f7WfT" />
        <reference id="7717199285682912294" name="target" index="2f7WfU" />
        <child id="8896254119961645060" name="properties" index="2wBCvS" />
      </concept>
      <concept id="8896254119961644375" name="ArchiMate.structure.AbstractElement" flags="ng" index="2wBDEF">
        <child id="8896254119961644915" name="properties" index="2wBDyf" />
      </concept>
      <concept id="918344584796687962" name="ArchiMate.structure.Realization" flags="ng" index="3ayPfi" />
      <concept id="918344584796687963" name="ArchiMate.structure.Assignment" flags="ng" index="3ayPfj" />
      <concept id="918344584796687965" name="ArchiMate.structure.Composition" flags="ng" index="3ayPfl" />
      <concept id="918344584796687970" name="ArchiMate.structure.Serving" flags="ng" index="3ayPfE" />
      <concept id="918344584796495151" name="ArchiMate.structure.SystemSoftware" flags="ng" index="3az42B" />
      <concept id="918344584796495140" name="ArchiMate.structure.BusinessInterface" flags="ng" index="3az42G" />
      <concept id="918344584796495141" name="ArchiMate.structure.ApplicationInterface" flags="ng" index="3az42H" />
      <concept id="918344584796495142" name="ArchiMate.structure.TechnologyInterface" flags="ng" index="3az42I" />
      <concept id="918344584796495161" name="ArchiMate.structure.BusinessActor" flags="ng" index="3az42L" />
      <concept id="918344584796495152" name="ArchiMate.structure.Node" flags="ng" index="3az42S" />
      <concept id="918344584796495153" name="ArchiMate.structure.Device" flags="ng" index="3az42T" />
      <concept id="918344584796495156" name="ArchiMate.structure.ApplicationComponent" flags="ng" index="3az42W" />
      <concept id="918344584796302457" name="ArchiMate.structure.Artifact" flags="ng" index="3a$n7L" />
      <concept id="918344584796109377" name="ArchiMate.structure.BusinessService" flags="ng" index="3a$Av9" />
      <concept id="918344584796109379" name="ArchiMate.structure.TechnologyService" flags="ng" index="3a$Avb" />
      <concept id="1997324549641164981" name="ArchiMate.structure.EnterpriseArchitecture" flags="ng" index="1xcbiH">
        <child id="8896254119961645362" name="elements" index="2wBCre" />
        <child id="8896254119961644361" name="relations" index="2wBDEP" />
        <child id="918344584795741399" name="propertyDefinitions" index="3aAs5v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
        <child id="2453008993619909454" name="otherwiseBody" index="3XxORw" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
        <property id="1189424455254633007" name="enumUsageMigrated" index="1I7cki" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="bUwia" id="5ALbMhJoTPC">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="6CaXf9UgdF_" role="3acgRq">
      <ref role="30HIoZ" to="wuz1:1sN103qRFrJ" resolve="Property" />
      <node concept="j$656" id="6CaXf9UgdFD" role="1lVwrX">
        <ref role="v9R2y" node="6CaXf9UgdFB" resolve="reduce_Property" />
      </node>
    </node>
    <node concept="3lhOvk" id="6CaXf9UcYwa" role="3lj3bC">
      <ref role="30HIoZ" to="wuz1:1sN103qRG4j" resolve="DeploymentModel" />
      <ref role="3lhOvi" node="6CaXf9UemXv" resolve="map_EnterpriseArchitecture" />
    </node>
    <node concept="2rT7sh" id="6CaXf9UffJu" role="2rTMjI">
      <property role="TrG5h" value="propToPropertyDef" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFrJ" resolve="Property" />
      <ref role="2rZz_L" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVv947" role="2rTMjI">
      <property role="TrG5h" value="componentToApplicationComponent" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHOO" resolve="ApplicationComponent" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVv948" role="2rTMjI">
      <property role="TrG5h" value="componentToSystemSoftware" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHOJ" resolve="SystemSoftware" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVv949" role="2rTMjI">
      <property role="TrG5h" value="componentToNode" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHOK" resolve="Node" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVvbl4" role="2rTMjI">
      <property role="TrG5h" value="componentToStorage" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVyzdi" role="2rTMjI">
      <property role="TrG5h" value="componentToTechnologyService" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
    </node>
    <node concept="2rT7sh" id="3BqcHtV_gHK" role="2rTMjI">
      <property role="TrG5h" value="artifactToPropertyDefinition" />
      <ref role="2rTdP9" to="wuz1:1sN103qRkCK" resolve="Artifact" />
      <ref role="2rZz_L" to="gj8d:7HPPZNrS74J" resolve="PropertyDefinition" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVEPLr" role="2rTMjI">
      <property role="TrG5h" value="componentToDevice" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHOL" resolve="Device" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVFTfa" role="2rTMjI">
      <property role="TrG5h" value="componentToTechnologyInterface" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHOA" resolve="TechnologyInterface" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVFTfb" role="2rTMjI">
      <property role="TrG5h" value="componentToApplicationInterface" />
      <ref role="2rTdP9" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2rZz_L" to="gj8d:MYBoz6cHO_" resolve="ApplicationInterface" />
    </node>
    <node concept="2rT7sh" id="3BqcHtVFVn8" role="2rTMjI">
      <property role="TrG5h" value="componentArtifactToArtifact" />
      <ref role="2rTdP9" to="wuz1:1sN103qRkCK" resolve="Artifact" />
      <ref role="2rZz_L" to="gj8d:MYBoz6bYLT" resolve="Artifact" />
    </node>
    <node concept="1puMqW" id="32jQqpfGMB7" role="1pvy6N">
      <ref role="1puQsG" node="32jQqpfGMAO" resolve="pruneModelElements" />
    </node>
    <node concept="1puMqW" id="697XFv3umLg" role="1pvy6N">
      <ref role="1puQsG" node="697XFv2YqUi" resolve="pruneModelRelations" />
    </node>
  </node>
  <node concept="1xcbiH" id="6CaXf9UemXv">
    <property role="TrG5h" value="map_EnterpriseArchitecture" />
    <property role="3GE5qa" value="mappings" />
    <node concept="3ayPfl" id="3BqcHtVKg9t" role="2wBDEP">
      <property role="TrG5h" value="dummyServing" />
      <ref role="2f7WfT" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
      <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
      <node concept="1WS0z7" id="3BqcHtVKibV" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtVKibY" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtVKibZ" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtVS8vp" role="3cqZAp">
              <node concept="2YIFZM" id="3BqcHtVS8A_" role="3clFbG">
                <ref role="37wK5l" to="5uy:3BqcHtVQim5" resolve="getRelationsWithoutDuplicates" />
                <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                <node concept="2OqwBi" id="3BqcHtVSbok" role="37wK5m">
                  <node concept="2OqwBi" id="3BqcHtVS8Ub" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVS8Dy" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3BqcHtVS9eL" role="2OqNvi">
                      <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="3BqcHtVSedg" role="2OqNvi">
                    <node concept="chp4Y" id="3BqcHtVSeog" role="v3oSu">
                      <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="3BqcHtVKpl9" role="lGtFl">
        <ref role="v9R2y" node="3BqcHtVKnU2" resolve="switchRelationsToServingRelationship" />
      </node>
    </node>
    <node concept="3ayPfl" id="7OlFYOZauyH" role="2wBDEP">
      <property role="TrG5h" value="dummyServing" />
      <ref role="2f7WfT" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
      <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
      <node concept="1WS0z7" id="7OlFYOZauyI" role="lGtFl">
        <node concept="3JmXsc" id="7OlFYOZauyJ" role="3Jn$fo">
          <node concept="3clFbS" id="7OlFYOZauyK" role="2VODD2">
            <node concept="3clFbF" id="7OlFYOZauyL" role="3cqZAp">
              <node concept="2YIFZM" id="7OlFYOZauyM" role="3clFbG">
                <ref role="37wK5l" to="5uy:3BqcHtVQim5" resolve="getRelationsWithoutDuplicates" />
                <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                <node concept="2OqwBi" id="7OlFYOZauyN" role="37wK5m">
                  <node concept="2OqwBi" id="7OlFYOZauyO" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZauyP" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7OlFYOZauyQ" role="2OqNvi">
                      <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="7OlFYOZauyR" role="2OqNvi">
                    <node concept="chp4Y" id="7OlFYOZauyS" role="v3oSu">
                      <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="7OlFYOZauyT" role="lGtFl">
        <ref role="v9R2y" node="7OlFYOZasb$" resolve="switchRelationsToAssignmentRelationship" />
      </node>
    </node>
    <node concept="3ayPfl" id="7OlFYOZszry" role="2wBDEP">
      <property role="TrG5h" value="dummyServing" />
      <ref role="2f7WfT" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
      <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
      <node concept="1WS0z7" id="7OlFYOZszrz" role="lGtFl">
        <node concept="3JmXsc" id="7OlFYOZszr$" role="3Jn$fo">
          <node concept="3clFbS" id="7OlFYOZszr_" role="2VODD2">
            <node concept="3clFbF" id="7OlFYOZszrA" role="3cqZAp">
              <node concept="2YIFZM" id="7OlFYOZszrB" role="3clFbG">
                <ref role="37wK5l" to="5uy:3BqcHtVQim5" resolve="getRelationsWithoutDuplicates" />
                <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                <node concept="2OqwBi" id="7OlFYOZszrC" role="37wK5m">
                  <node concept="2OqwBi" id="7OlFYOZszrD" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZszrE" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7OlFYOZszrF" role="2OqNvi">
                      <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="7OlFYOZszrG" role="2OqNvi">
                    <node concept="chp4Y" id="7OlFYOZszrH" role="v3oSu">
                      <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="7OlFYOZszrI" role="lGtFl">
        <ref role="v9R2y" node="7OlFYOZs$Ri" resolve="switchRelationsToRealizeRelationship" />
      </node>
    </node>
    <node concept="3ayPfl" id="7OlFYOZHDoF" role="2wBDEP">
      <property role="TrG5h" value="dummyServing" />
      <ref role="2f7WfT" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
      <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
      <node concept="1WS0z7" id="7OlFYOZHDoG" role="lGtFl">
        <node concept="3JmXsc" id="7OlFYOZHDoH" role="3Jn$fo">
          <node concept="3clFbS" id="7OlFYOZHDoI" role="2VODD2">
            <node concept="3clFbF" id="7OlFYOZHDoJ" role="3cqZAp">
              <node concept="2YIFZM" id="7OlFYOZHDoK" role="3clFbG">
                <ref role="37wK5l" to="5uy:3BqcHtVQim5" resolve="getRelationsWithoutDuplicates" />
                <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                <node concept="2OqwBi" id="7OlFYOZHDoL" role="37wK5m">
                  <node concept="2OqwBi" id="7OlFYOZHDoM" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZHDoN" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7OlFYOZHDoO" role="2OqNvi">
                      <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="7OlFYOZHDoP" role="2OqNvi">
                    <node concept="chp4Y" id="7OlFYOZHDoQ" role="v3oSu">
                      <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="7OlFYOZHDoR" role="lGtFl">
        <ref role="v9R2y" node="7OlFYOZHEVc" resolve="swtichRelationsToCompositionRelationship" />
      </node>
    </node>
    <node concept="3ayPfl" id="7OlFYOZKjaM" role="2wBDEP">
      <property role="TrG5h" value="dummyComp" />
      <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
      <ref role="2f7WfU" node="3BqcHtVCGA9" resolve="dummyDevice" />
      <node concept="1WS0z7" id="7OlFYOZKr8W" role="lGtFl">
        <node concept="3JmXsc" id="7OlFYOZKr8Z" role="3Jn$fo">
          <node concept="3clFbS" id="7OlFYOZKr90" role="2VODD2">
            <node concept="3clFbF" id="7OlFYOZKrwc" role="3cqZAp">
              <node concept="2YIFZM" id="7OlFYOZKrwd" role="3clFbG">
                <ref role="37wK5l" to="5uy:3BqcHtVQim5" resolve="getRelationsWithoutDuplicates" />
                <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                <node concept="2OqwBi" id="7OlFYOZKrwe" role="37wK5m">
                  <node concept="2OqwBi" id="7OlFYOZKrwf" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZKrwg" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7OlFYOZKrwh" role="2OqNvi">
                      <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="7OlFYOZKrwi" role="2OqNvi">
                    <node concept="chp4Y" id="7OlFYOZKrwj" role="v3oSu">
                      <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="7OlFYOZKsB8" role="lGtFl">
        <ref role="v9R2y" node="7OlFYOZKsIU" resolve="switchPlatformProviderComposition" />
      </node>
    </node>
    <node concept="2w_qrj" id="6CaXf9UffSt" role="3aAs5v">
      <property role="TrG5h" value="dummyDefiniton" />
      <node concept="2b32R4" id="6CaXf9Ufgak" role="lGtFl">
        <ref role="2rW$FS" node="6CaXf9UffJu" resolve="propToPropertyDef" />
        <node concept="3JmXsc" id="6CaXf9Ufgan" role="2P8S$">
          <node concept="3clFbS" id="6CaXf9Ufgao" role="2VODD2">
            <node concept="3clFbF" id="43rnOoaRspX" role="3cqZAp">
              <node concept="2OqwBi" id="43rnOoaRvPZ" role="3clFbG">
                <node concept="2OqwBi" id="43rnOoaRsCB" role="2Oq$k0">
                  <node concept="30H73N" id="43rnOoaRspW" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="43rnOoaRtaJ" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                </node>
                <node concept="13MTOL" id="43rnOoaRyYA" role="2OqNvi">
                  <ref role="13MTZf" to="wuz1:1sN103qRFs3" resolve="properties" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2w_qrj" id="3BqcHtV_7jW" role="3aAs5v">
      <property role="TrG5h" value="dummyDefinition" />
      <node concept="1WS0z7" id="3BqcHtV_7Iu" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtV_7Ix" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtV_7Iy" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV_7IC" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtV_aIQ" role="3clFbG">
                <node concept="2OqwBi" id="3BqcHtV_7Iz" role="2Oq$k0">
                  <node concept="3Tsc0h" id="3BqcHtV_7IA" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                  <node concept="30H73N" id="3BqcHtV_7IB" role="2Oq$k0" />
                </node>
                <node concept="v3k3i" id="3BqcHtV_dQT" role="2OqNvi">
                  <node concept="chp4Y" id="3BqcHtV_dUd" role="v3oSu">
                    <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1WS0z7" id="3BqcHtV_dXS" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtV_dXV" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtV_dXW" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV_dY2" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtV_dXX" role="3clFbG">
                <node concept="3Tsc0h" id="3BqcHtV_dY0" role="2OqNvi">
                  <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                </node>
                <node concept="30H73N" id="3BqcHtV_dY1" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="5jKBG" id="3BqcHtV_eY1" role="lGtFl">
        <ref role="v9R2y" node="3BqcHtV_f50" resolve="mapPropertyDefinitonFromArtifact" />
        <ref role="2rW$FS" node="3BqcHtV_gHK" resolve="artifactToPropertyDefinition" />
      </node>
    </node>
    <node concept="n94m4" id="6CaXf9UemXw" role="lGtFl">
      <ref role="n9lRv" to="wuz1:1sN103qRG4j" resolve="DeploymentModel" />
    </node>
    <node concept="17Uvod" id="6CaXf9UlO7x" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="6CaXf9UlO7y" role="3zH0cK">
        <node concept="3clFbS" id="6CaXf9UlO7z" role="2VODD2">
          <node concept="3clFbF" id="6CaXf9UlOi8" role="3cqZAp">
            <node concept="2OqwBi" id="6CaXf9UlO$f" role="3clFbG">
              <node concept="30H73N" id="6CaXf9UlOi7" role="2Oq$k0" />
              <node concept="3TrcHB" id="6CaXf9UlOIs" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3az42L" id="43rnOoaKbOT" role="2wBCre">
      <property role="TrG5h" value="carl" />
      <node concept="1WS0z7" id="43rnOoaKc9b" role="lGtFl">
        <node concept="3JmXsc" id="43rnOoaKc9e" role="3Jn$fo">
          <node concept="3clFbS" id="43rnOoaKc9f" role="2VODD2">
            <node concept="3clFbF" id="43rnOoaKcra" role="3cqZAp">
              <node concept="2OqwBi" id="43rnOoaKcrb" role="3clFbG">
                <node concept="2OqwBi" id="43rnOoaKcrc" role="2Oq$k0">
                  <node concept="30H73N" id="43rnOoaKcrd" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="43rnOoaKcre" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                </node>
                <node concept="v3k3i" id="3BqcHtV$C3G" role="2OqNvi">
                  <node concept="chp4Y" id="3BqcHtV$C5m" role="v3oSu">
                    <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="43rnOoaKd0u" role="lGtFl">
        <ref role="v9R2y" node="43rnOoaHmH6" resolve="switchComponentToBasicArchiMate" />
      </node>
    </node>
    <node concept="3az42G" id="3BqcHtVwQcg" role="2wBCre">
      <property role="TrG5h" value="dummyInterface" />
      <node concept="1WS0z7" id="3BqcHtVwR8x" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtVwR8$" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtVwR8_" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtVwRw8" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtVwRw9" role="3clFbG">
                <node concept="2OqwBi" id="3BqcHtVwRwa" role="2Oq$k0">
                  <node concept="30H73N" id="3BqcHtVwRwb" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3BqcHtVwRwc" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                </node>
                <node concept="v3k3i" id="3BqcHtV$FFn" role="2OqNvi">
                  <node concept="chp4Y" id="3BqcHtV$FLc" role="v3oSu">
                    <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="3BqcHtVwSMX" role="lGtFl">
        <ref role="v9R2y" node="3BqcHtVBtTL" resolve="switchComponentsToInterfaces" />
      </node>
    </node>
    <node concept="3a$Av9" id="3BqcHtVwQZN" role="2wBCre">
      <property role="TrG5h" value="dummyService" />
      <node concept="1WS0z7" id="3BqcHtVwRTU" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtVwRTX" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtVwRTY" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtVwS19" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtVwS1a" role="3clFbG">
                <node concept="2OqwBi" id="3BqcHtVwS1b" role="2Oq$k0">
                  <node concept="30H73N" id="3BqcHtVwS1c" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3BqcHtVwS1d" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                </node>
                <node concept="3zZkjj" id="3BqcHtVwS1e" role="2OqNvi">
                  <node concept="1bVj0M" id="3BqcHtVwS1f" role="23t8la">
                    <node concept="3clFbS" id="3BqcHtVwS1g" role="1bW5cS">
                      <node concept="3clFbF" id="3BqcHtVwS1h" role="3cqZAp">
                        <node concept="2OqwBi" id="3BqcHtVwS1i" role="3clFbG">
                          <node concept="37vLTw" id="3BqcHtVwS1j" role="2Oq$k0">
                            <ref role="3cqZAo" node="3BqcHtVwS1m" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="3BqcHtVwS1k" role="2OqNvi">
                            <node concept="chp4Y" id="3BqcHtVwS1l" role="cj9EA">
                              <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="3BqcHtVwS1m" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3BqcHtVwS1n" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1sPUBX" id="3BqcHtVBtMo" role="lGtFl">
        <ref role="v9R2y" node="3BqcHtVwSQE" resolve="switchComponentsToServices" />
      </node>
    </node>
    <node concept="3a$n7L" id="3BqcHtVwQtD" role="2wBCre">
      <property role="TrG5h" value="dummyArtifact" />
      <node concept="1WS0z7" id="3BqcHtVwSa_" role="lGtFl">
        <node concept="3JmXsc" id="3BqcHtVwSaC" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtVwSaD" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV$nNr" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtV$raa" role="3clFbG">
                <node concept="2OqwBi" id="3BqcHtV$obr" role="2Oq$k0">
                  <node concept="30H73N" id="3BqcHtV$nNq" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3BqcHtV$ovM" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
                  </node>
                </node>
                <node concept="v3k3i" id="3BqcHtV$yhD" role="2OqNvi">
                  <node concept="chp4Y" id="3BqcHtV$ymG" role="v3oSu">
                    <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1WS0z7" id="3BqcHtV$6QE" role="lGtFl">
        <ref role="2rW$FS" node="3BqcHtVFVn8" resolve="componentArtifactToArtifact" />
        <node concept="3JmXsc" id="3BqcHtV$6QH" role="3Jn$fo">
          <node concept="3clFbS" id="3BqcHtV$6QI" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV$6QO" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtV$IY2" role="3clFbG">
                <node concept="2OqwBi" id="3BqcHtV$yWg" role="2Oq$k0">
                  <node concept="30H73N" id="3BqcHtV$yFk" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3BqcHtV$zt$" role="2OqNvi">
                    <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                  </node>
                </node>
                <node concept="3zZkjj" id="3BqcHtV$LIL" role="2OqNvi">
                  <node concept="1bVj0M" id="3BqcHtV$LIN" role="23t8la">
                    <node concept="3clFbS" id="3BqcHtV$LIO" role="1bW5cS">
                      <node concept="3clFbF" id="3BqcHtV$LTx" role="3cqZAp">
                        <node concept="2OqwBi" id="3BqcHtV$RLR" role="3clFbG">
                          <node concept="2OqwBi" id="3BqcHtV$Ma$" role="2Oq$k0">
                            <node concept="37vLTw" id="3BqcHtV$LTw" role="2Oq$k0">
                              <ref role="3cqZAo" node="3BqcHtV$LIP" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3BqcHtV$Q1M" role="2OqNvi">
                              <ref role="3TsBF5" to="wuz1:1sN103qRkCO" resolve="type" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3BqcHtV$Szp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                            <node concept="Xl_RD" id="3BqcHtV$SHQ" role="37wK5m">
                              <property role="Xl_RC" value="docker_image" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="3BqcHtV$LIP" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3BqcHtV$LIQ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="5jKBG" id="3BqcHtV_5UP" role="lGtFl">
        <ref role="v9R2y" node="3BqcHtVy$Vz" resolve="createArtifacts" />
        <node concept="2OqwBi" id="1FXHAB5Q0V3" role="v9R3O">
          <node concept="30H73N" id="1FXHAB5Q0pK" role="2Oq$k0" />
          <node concept="2Xjw5R" id="1FXHAB5Q3pF" role="2OqNvi">
            <node concept="1xMEDy" id="1FXHAB5Q3pH" role="1xVPHs">
              <node concept="chp4Y" id="1FXHAB5Q3Tr" role="ri$Ld">
                <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="43rnOoaHmH6">
    <property role="TrG5h" value="switchComponentToBasicArchiMate" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="43rnOoaHmNH" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
      <node concept="gft3U" id="43rnOoaHxLJ" role="1lVwrX">
        <node concept="3az42W" id="43rnOoaHxOH" role="gfFT$">
          <property role="TrG5h" value="appComp" />
          <node concept="2w_qc2" id="43rnOob6Kdw" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="43rnOob6Kdx" role="lGtFl">
              <node concept="3JmXsc" id="43rnOob6Kdy" role="3Jn$fo">
                <node concept="3clFbS" id="43rnOob6Kdz" role="2VODD2">
                  <node concept="3clFbF" id="43rnOob6Kd$" role="3cqZAp">
                    <node concept="2OqwBi" id="43rnOob6Kd_" role="3clFbG">
                      <node concept="30H73N" id="43rnOob6KdA" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="43rnOob6KdB" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="43rnOob6KdC" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="43rnOoaHxPJ" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="43rnOoaHxPK" role="3zH0cK">
              <node concept="3clFbS" id="43rnOoaHxPL" role="2VODD2">
                <node concept="3clFbF" id="43rnOoaHxWs" role="3cqZAp">
                  <node concept="2OqwBi" id="43rnOoaHygn" role="3clFbG">
                    <node concept="30H73N" id="43rnOoaHxWr" role="2Oq$k0" />
                    <node concept="3TrcHB" id="43rnOoaHyyY" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="43rnOoaHmPa" role="30HLyM">
        <node concept="3clFbS" id="43rnOoaHmPb" role="2VODD2">
          <node concept="3clFbF" id="43rnOoaHmUr" role="3cqZAp">
            <node concept="2OqwBi" id="43rnOoaHpfe" role="3clFbG">
              <node concept="2OqwBi" id="43rnOoaHnWO" role="2Oq$k0">
                <node concept="2OqwBi" id="43rnOoaHncV" role="2Oq$k0">
                  <node concept="30H73N" id="43rnOoaHmUq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="43rnOoaHnql" role="2OqNvi">
                    <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                  </node>
                </node>
                <node concept="3TrcHB" id="43rnOoaHoBn" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="43rnOoaHqY7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="43rnOoaHqZv" role="37wK5m">
                  <property role="Xl_RC" value="-SoftwareApplication" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="43rnOob2HdK" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
      <node concept="gft3U" id="43rnOob2KeH" role="1lVwrX">
        <node concept="3az42B" id="43rnOob2Khg" role="gfFT$">
          <property role="TrG5h" value="sysSoft" />
          <node concept="2w_qc2" id="43rnOob2LZ4" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="43rnOob2LZ5" role="lGtFl">
              <node concept="3JmXsc" id="43rnOob2LZ6" role="3Jn$fo">
                <node concept="3clFbS" id="43rnOob2LZ7" role="2VODD2">
                  <node concept="3clFbF" id="43rnOob2LZ8" role="3cqZAp">
                    <node concept="2OqwBi" id="43rnOob2LZ9" role="3clFbG">
                      <node concept="30H73N" id="43rnOob2LZa" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="43rnOob2LZb" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="43rnOob5MVW" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="43rnOob2N1B" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="43rnOob2N1C" role="3zH0cK">
              <node concept="3clFbS" id="43rnOob2N1D" role="2VODD2">
                <node concept="3clFbF" id="43rnOob2NhQ" role="3cqZAp">
                  <node concept="2OqwBi" id="43rnOob2N_L" role="3clFbG">
                    <node concept="30H73N" id="43rnOob2NhP" role="2Oq$k0" />
                    <node concept="3TrcHB" id="43rnOob2NNT" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="43rnOob2HwA" role="30HLyM">
        <node concept="3clFbS" id="43rnOob2HwB" role="2VODD2">
          <node concept="3clFbF" id="43rnOob2Hxh" role="3cqZAp">
            <node concept="22lmx$" id="43rnOob3S1e" role="3clFbG">
              <node concept="2OqwBi" id="43rnOob3Up6" role="3uHU7w">
                <node concept="2OqwBi" id="43rnOob3T1x" role="2Oq$k0">
                  <node concept="2OqwBi" id="43rnOob3S$N" role="2Oq$k0">
                    <node concept="30H73N" id="43rnOob3SgI" role="2Oq$k0" />
                    <node concept="3TrEf2" id="43rnOob3SOa" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="43rnOob3Tju" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="43rnOob3UPt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="43rnOob3US0" role="37wK5m">
                    <property role="Xl_RC" value="-MessageBroker" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="43rnOob2Jn5" role="3uHU7B">
                <node concept="2OqwBi" id="43rnOob2IjX" role="2Oq$k0">
                  <node concept="2OqwBi" id="43rnOob2HO8" role="2Oq$k0">
                    <node concept="30H73N" id="43rnOob2Hxg" role="2Oq$k0" />
                    <node concept="3TrEf2" id="43rnOob2I2t" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="43rnOob2ID4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="43rnOob2JLP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="43rnOob2JNO" role="37wK5m">
                    <property role="Xl_RC" value="-DatabaseSystem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="43rnOob5JH$" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVvbl4" resolve="componentToStorage" />
      <node concept="gft3U" id="43rnOob5K5S" role="1lVwrX">
        <node concept="3a$Avb" id="43rnOob5K7L" role="gfFT$">
          <property role="TrG5h" value="storService" />
          <node concept="2w_qc2" id="43rnOob6KH7" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="43rnOob6KH8" role="lGtFl">
              <node concept="3JmXsc" id="43rnOob6KH9" role="3Jn$fo">
                <node concept="3clFbS" id="43rnOob6KHa" role="2VODD2">
                  <node concept="3clFbF" id="43rnOob6KHb" role="3cqZAp">
                    <node concept="2OqwBi" id="43rnOob6KHc" role="3clFbG">
                      <node concept="30H73N" id="43rnOob6KHd" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="43rnOob6KHe" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="43rnOob6KHf" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="43rnOob8JVx" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="43rnOob8JVy" role="3zH0cK">
              <node concept="3clFbS" id="43rnOob8JVz" role="2VODD2">
                <node concept="3clFbF" id="43rnOob8KcU" role="3cqZAp">
                  <node concept="2OqwBi" id="43rnOob8KwP" role="3clFbG">
                    <node concept="30H73N" id="43rnOob8KcT" role="2Oq$k0" />
                    <node concept="3TrcHB" id="43rnOob8KVb" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="43rnOob7KbA" role="30HLyM">
        <node concept="3clFbS" id="43rnOob7KbB" role="2VODD2">
          <node concept="3clFbF" id="43rnOob7Krm" role="3cqZAp">
            <node concept="2OqwBi" id="43rnOob7NlE" role="3clFbG">
              <node concept="2OqwBi" id="43rnOob7LCO" role="2Oq$k0">
                <node concept="2OqwBi" id="43rnOob7KDO" role="2Oq$k0">
                  <node concept="30H73N" id="43rnOob7Krl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="43rnOob7Lco" role="2OqNvi">
                    <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                  </node>
                </node>
                <node concept="3TrcHB" id="43rnOob7M04" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="43rnOob7NFp" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="43rnOob7NKL" role="37wK5m">
                  <property role="Xl_RC" value="Storage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="43rnOob9FhZ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVv949" resolve="componentToNode" />
      <node concept="gft3U" id="43rnOobaxAz" role="1lVwrX">
        <node concept="3az42S" id="43rnOobaxBr" role="gfFT$">
          <property role="TrG5h" value="localHostNode" />
          <node concept="2w_qc2" id="43rnOobaxCg" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="43rnOobaxCh" role="lGtFl">
              <node concept="3JmXsc" id="43rnOobaxCi" role="3Jn$fo">
                <node concept="3clFbS" id="43rnOobaxCj" role="2VODD2">
                  <node concept="3clFbF" id="43rnOobaxCk" role="3cqZAp">
                    <node concept="2OqwBi" id="43rnOobaxCl" role="3clFbG">
                      <node concept="30H73N" id="43rnOobaxCm" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="43rnOobaxCn" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="43rnOobaxCo" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="43rnOobayet" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="43rnOobayeu" role="3zH0cK">
              <node concept="3clFbS" id="43rnOobayev" role="2VODD2">
                <node concept="3clFbF" id="43rnOobayqm" role="3cqZAp">
                  <node concept="2OqwBi" id="43rnOobayIh" role="3clFbG">
                    <node concept="30H73N" id="43rnOobayql" role="2Oq$k0" />
                    <node concept="3TrcHB" id="43rnOobayW3" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="43rnOobayYE" role="30HLyM">
        <node concept="3clFbS" id="43rnOobayYF" role="2VODD2">
          <node concept="3clFbF" id="43rnOobazkT" role="3cqZAp">
            <node concept="22lmx$" id="43rnOobbEit" role="3clFbG">
              <node concept="2OqwBi" id="43rnOobbGrT" role="3uHU7w">
                <node concept="2OqwBi" id="43rnOobbF$h" role="2Oq$k0">
                  <node concept="2OqwBi" id="43rnOobbF3K" role="2Oq$k0">
                    <node concept="30H73N" id="43rnOobbEIh" role="2Oq$k0" />
                    <node concept="3TrEf2" id="43rnOobbFlw" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="43rnOobbFSq" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="43rnOobbGZk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="43rnOobbH4b" role="37wK5m">
                    <property role="Xl_RC" value="CloudProvider" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="43rnOobbAhO" role="3uHU7B">
                <node concept="22lmx$" id="43rnOobbytm" role="3uHU7B">
                  <node concept="2OqwBi" id="43rnOoba$YC" role="3uHU7B">
                    <node concept="2OqwBi" id="43rnOoba$4S" role="2Oq$k0">
                      <node concept="2OqwBi" id="43rnOobazBp" role="2Oq$k0">
                        <node concept="30H73N" id="43rnOobazkS" role="2Oq$k0" />
                        <node concept="3TrEf2" id="43rnOobazPx" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="43rnOoba$lp" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="43rnOoba_OI" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="43rnOoba_Uu" role="37wK5m">
                        <property role="Xl_RC" value="localhost-type" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="43rnOobcF80" role="3uHU7w">
                    <node concept="2OqwBi" id="43rnOobb$rR" role="2Oq$k0">
                      <node concept="2OqwBi" id="43rnOobbzCw" role="2Oq$k0">
                        <node concept="2OqwBi" id="43rnOobbzbj" role="2Oq$k0">
                          <node concept="30H73N" id="43rnOobbyRe" role="2Oq$k0" />
                          <node concept="3TrEf2" id="43rnOobbzqE" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="43rnOobcDMU" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="43rnOobcEuo" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="43rnOobcFZd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="43rnOobcG4c" role="37wK5m">
                        <property role="Xl_RC" value="KubernetesCluster" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="43rnOobbCk7" role="3uHU7w">
                  <node concept="2OqwBi" id="43rnOobbBwn" role="2Oq$k0">
                    <node concept="2OqwBi" id="43rnOobbB1f" role="2Oq$k0">
                      <node concept="30H73N" id="43rnOobbAGt" role="2Oq$k0" />
                      <node concept="3TrEf2" id="43rnOobbBhI" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="43rnOobbBNq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="43rnOobbD9o" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="43rnOobbDdQ" role="37wK5m">
                      <property role="Xl_RC" value="DockerEngine" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="43rnOoaL7al" role="jxRDz" />
  </node>
  <node concept="13MO4I" id="6CaXf9UgdFB">
    <property role="TrG5h" value="reduce_Property" />
    <property role="3GE5qa" value="mappings" />
    <ref role="3gUMe" to="wuz1:1sN103qRFrJ" resolve="Property" />
    <node concept="2w_qrj" id="6CaXf9UgdFF" role="13RCb5">
      <property role="TrG5h" value="DummyProperty" />
      <node concept="raruj" id="6CaXf9UgdFG" role="lGtFl">
        <ref role="2sdACS" node="6CaXf9UffJu" resolve="propToPropertyDef" />
      </node>
      <node concept="17Uvod" id="6CaXf9UgdFH" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="6CaXf9UgdFI" role="3zH0cK">
          <node concept="3clFbS" id="6CaXf9UgdFJ" role="2VODD2">
            <node concept="3clFbF" id="6CaXf9UgdM0" role="3cqZAp">
              <node concept="2OqwBi" id="2Sg3KHR56wh" role="3clFbG">
                <node concept="30H73N" id="2Sg3KHR56wi" role="2Oq$k0" />
                <node concept="3TrcHB" id="2Sg3KHR56wj" role="2OqNvi">
                  <ref role="3TsBF5" to="wuz1:1sN103qRFrM" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="6CaXf9Ugg7t" role="lGtFl">
        <property role="2qtEX9" value="type" />
        <property role="P4ACc" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119960932655/8896254119960933460" />
        <property role="1I7cki" value="true" />
        <node concept="3zFVjK" id="6CaXf9Ugg7u" role="3zH0cK">
          <node concept="3clFbS" id="6CaXf9Ugg7v" role="2VODD2">
            <node concept="3clFbF" id="6CaXf9Ugga4" role="3cqZAp">
              <node concept="3X5UdL" id="6CaXf9UggRp" role="3clFbG">
                <node concept="2OqwBi" id="6CaXf9Ugh1y" role="3X5Ude">
                  <node concept="30H73N" id="6CaXf9UggS6" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6CaXf9Ugh9_" role="2OqNvi">
                    <ref role="3TsBF5" to="wuz1:1sN103qRFrO" resolve="type" />
                  </node>
                </node>
                <node concept="3X5Udd" id="6CaXf9UghCa" role="3X5gkp">
                  <node concept="21nZrQ" id="6CaXf9UghC9" role="3X5Uda">
                    <ref role="21nZrZ" to="wuz1:1sN103qRkEp" resolve="BOOLEAN" />
                  </node>
                  <node concept="3X5gDF" id="6CaXf9UghCY" role="3X5gFO">
                    <node concept="2OqwBi" id="6CaXf9Ugil4" role="3X5gDC">
                      <node concept="1XH99k" id="6CaXf9UghCW" role="2Oq$k0">
                        <ref role="1XH99l" to="gj8d:7HPPZNrS78F" resolve="PropertyType" />
                      </node>
                      <node concept="2ViDtV" id="6CaXf9Ugizs" role="2OqNvi">
                        <ref role="2ViDtZ" to="gj8d:7HPPZNrS7b9" resolve="BOOLEAN" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3X5Udd" id="6CaXf9Ugi_E" role="3X5gkp">
                  <node concept="21nZrQ" id="6CaXf9Ugi_F" role="3X5Uda">
                    <ref role="21nZrZ" to="wuz1:1sN103qRkEq" resolve="DOUBLE" />
                  </node>
                  <node concept="3X5gDF" id="6CaXf9UgiDv" role="3X5gFO">
                    <node concept="2OqwBi" id="6CaXf9Ugj8l" role="3X5gDC">
                      <node concept="1XH99k" id="6CaXf9UgiDt" role="2Oq$k0">
                        <ref role="1XH99l" to="gj8d:7HPPZNrS78F" resolve="PropertyType" />
                      </node>
                      <node concept="2ViDtV" id="6CaXf9UgjbK" role="2OqNvi">
                        <ref role="2ViDtZ" to="gj8d:7HPPZNrS7d2" resolve="NUMBER" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3X5Udd" id="6CaXf9UgjlX" role="3X5gkp">
                  <node concept="3X5gDF" id="6CaXf9UgjlZ" role="3X5gFO">
                    <node concept="2OqwBi" id="6CaXf9Ugjm0" role="3X5gDC">
                      <node concept="1XH99k" id="6CaXf9Ugjm1" role="2Oq$k0">
                        <ref role="1XH99l" to="gj8d:7HPPZNrS78F" resolve="PropertyType" />
                      </node>
                      <node concept="2ViDtV" id="6CaXf9Ugjm2" role="2OqNvi">
                        <ref role="2ViDtZ" to="gj8d:7HPPZNrS7d2" resolve="NUMBER" />
                      </node>
                    </node>
                  </node>
                  <node concept="21nZrQ" id="6CaXf9UgjzT" role="3X5Uda">
                    <ref role="21nZrZ" to="wuz1:1sN103qRkEr" resolve="INTEGER" />
                  </node>
                </node>
                <node concept="3X5Udd" id="6CaXf9UgjzV" role="3X5gkp">
                  <node concept="21nZrQ" id="6CaXf9UgjzW" role="3X5Uda">
                    <ref role="21nZrZ" to="wuz1:1sN103qRkEs" resolve="STRING" />
                  </node>
                  <node concept="3X5gDF" id="6CaXf9UgjEe" role="3X5gFO">
                    <node concept="2OqwBi" id="6CaXf9UgkNd" role="3X5gDC">
                      <node concept="1XH99k" id="6CaXf9UgjEc" role="2Oq$k0">
                        <ref role="1XH99l" to="gj8d:7HPPZNrS78F" resolve="PropertyType" />
                      </node>
                      <node concept="2ViDtV" id="6CaXf9UjxvU" role="2OqNvi">
                        <ref role="2ViDtZ" to="gj8d:7HPPZNrS78G" resolve="STRING" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3X5gDF" id="6CaXf9Uglb5" role="3XxORw">
                  <node concept="2OqwBi" id="6CaXf9UgmnT" role="3X5gDC">
                    <node concept="1XH99k" id="6CaXf9Uglb3" role="2Oq$k0">
                      <ref role="1XH99l" to="gj8d:7HPPZNrS78F" resolve="PropertyType" />
                    </node>
                    <node concept="2ViDtV" id="6CaXf9UgmRC" role="2OqNvi">
                      <ref role="2ViDtZ" to="gj8d:7HPPZNrS78G" resolve="STRING" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="43rnOob5LhT">
    <property role="TrG5h" value="mapProperty" />
    <property role="3GE5qa" value="mappings" />
    <ref role="3gUMe" to="wuz1:1sN103qRFrJ" resolve="Property" />
    <node concept="2w_qc2" id="43rnOob5Lml" role="13RCb5">
      <property role="2w_q9X" value="42" />
      <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
      <node concept="17Uvod" id="43rnOob5Lmt" role="lGtFl">
        <property role="2qtEX9" value="value" />
        <property role="P4ACc" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119960933630/8896254119960933761" />
        <node concept="3zFVjK" id="43rnOob5Lmu" role="3zH0cK">
          <node concept="3clFbS" id="43rnOob5Lmv" role="2VODD2">
            <node concept="3clFbF" id="43rnOob5Lmw" role="3cqZAp">
              <node concept="2OqwBi" id="43rnOob5Lmx" role="3clFbG">
                <node concept="30H73N" id="43rnOob5Lmy" role="2Oq$k0" />
                <node concept="3TrcHB" id="43rnOob5Lmz" role="2OqNvi">
                  <ref role="3TsBF5" to="wuz1:1sN103qRFrN" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZhdrF" id="43rnOob5Lm$" role="lGtFl">
        <property role="2qtEX8" value="propertyDefinition" />
        <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119960933630/918344584795741398" />
        <node concept="3$xsQk" id="43rnOob5Lm_" role="3$ytzL">
          <node concept="3clFbS" id="43rnOob5LmA" role="2VODD2">
            <node concept="3clFbF" id="43rnOob5LmB" role="3cqZAp">
              <node concept="2OqwBi" id="43rnOob5LmC" role="3clFbG">
                <node concept="1iwH7S" id="43rnOob5LmD" role="2Oq$k0" />
                <node concept="1iwH70" id="43rnOob5LmE" role="2OqNvi">
                  <ref role="1iwH77" node="6CaXf9UffJu" resolve="propToPropertyDef" />
                  <node concept="30H73N" id="43rnOob5LmF" role="1iwH7V" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="43rnOob5Mi1" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="3BqcHtVwSQE">
    <property role="TrG5h" value="switchComponentsToServices" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="3BqcHtVyrTi" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
      <node concept="gft3U" id="3BqcHtVyuEQ" role="1lVwrX">
        <node concept="3a$Avb" id="3BqcHtVyuWp" role="gfFT$">
          <property role="TrG5h" value="dummyTechService" />
          <node concept="2w_qc2" id="3BqcHtVyvol" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="3BqcHtVyvom" role="lGtFl">
              <node concept="3JmXsc" id="3BqcHtVyvon" role="3Jn$fo">
                <node concept="3clFbS" id="3BqcHtVyvoo" role="2VODD2">
                  <node concept="3clFbF" id="3BqcHtVyvop" role="3cqZAp">
                    <node concept="2OqwBi" id="3BqcHtVyvoq" role="3clFbG">
                      <node concept="30H73N" id="3BqcHtVyvor" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="3BqcHtVyvos" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="3BqcHtVyvot" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="3BqcHtVyvBW" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="3BqcHtVyvBX" role="3zH0cK">
              <node concept="3clFbS" id="3BqcHtVyvBY" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVyvNr" role="3cqZAp">
                  <node concept="3cpWs3" id="3BqcHtVyyN4" role="3clFbG">
                    <node concept="Xl_RD" id="3BqcHtVyyN8" role="3uHU7w">
                      <property role="Xl_RC" value="Service" />
                    </node>
                    <node concept="3cpWs3" id="3BqcHtVyyvp" role="3uHU7B">
                      <node concept="2OqwBi" id="3BqcHtVyw7m" role="3uHU7B">
                        <node concept="30H73N" id="3BqcHtVyvNq" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3BqcHtVyxZR" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3BqcHtVyyvt" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3BqcHtVyt4l" role="30HLyM">
        <node concept="3clFbS" id="3BqcHtVyt4m" role="2VODD2">
          <node concept="3clFbF" id="3BqcHtVyt9b" role="3cqZAp">
            <node concept="22lmx$" id="3BqcHtVyt9c" role="3clFbG">
              <node concept="2OqwBi" id="3BqcHtVyt9d" role="3uHU7w">
                <node concept="2OqwBi" id="3BqcHtVyt9e" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVyt9f" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVyt9g" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVyt9h" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3BqcHtVyt9i" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="3BqcHtVyt9j" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="3BqcHtVyt9k" role="37wK5m">
                    <property role="Xl_RC" value="-MessageBroker" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3BqcHtVyt9l" role="3uHU7B">
                <node concept="2OqwBi" id="3BqcHtVyt9m" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVyt9n" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVyt9o" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVyt9p" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3BqcHtVyt9q" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="3BqcHtVyt9r" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="3BqcHtVyt9s" role="37wK5m">
                    <property role="Xl_RC" value="-DatabaseSystem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3BqcHtVCFt5" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVEPLr" resolve="componentToDevice" />
      <node concept="gft3U" id="3BqcHtVCG$x" role="1lVwrX">
        <node concept="3az42T" id="3BqcHtVCGA9" role="gfFT$">
          <property role="TrG5h" value="dummyDevice" />
          <node concept="2w_qc2" id="3BqcHtVCGAb" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="3BqcHtVCGAc" role="lGtFl">
              <node concept="3JmXsc" id="3BqcHtVCGAd" role="3Jn$fo">
                <node concept="3clFbS" id="3BqcHtVCGAe" role="2VODD2">
                  <node concept="3clFbF" id="3BqcHtVCGAf" role="3cqZAp">
                    <node concept="2OqwBi" id="3BqcHtVCGAg" role="3clFbG">
                      <node concept="30H73N" id="3BqcHtVCGAh" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="3BqcHtVCGAi" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="3BqcHtVCGAj" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="3BqcHtVCH3T" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="3BqcHtVCH3U" role="3zH0cK">
              <node concept="3clFbS" id="3BqcHtVCH3V" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVCHfo" role="3cqZAp">
                  <node concept="3cpWs3" id="3BqcHtVCJrI" role="3clFbG">
                    <node concept="Xl_RD" id="3BqcHtVCJed" role="3uHU7w">
                      <property role="Xl_RC" value="Device" />
                    </node>
                    <node concept="3cpWs3" id="3BqcHtVCJd6" role="3uHU7B">
                      <node concept="2OqwBi" id="3BqcHtVCHzj" role="3uHU7B">
                        <node concept="30H73N" id="3BqcHtVCHfn" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3BqcHtVCHLr" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3BqcHtVCJt7" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3BqcHtVCG4G" role="30HLyM">
        <node concept="3clFbS" id="3BqcHtVCG4H" role="2VODD2">
          <node concept="3clFbF" id="3BqcHtVCG4J" role="3cqZAp">
            <node concept="2OqwBi" id="3BqcHtVCG4L" role="3clFbG">
              <node concept="2OqwBi" id="3BqcHtVCG4M" role="2Oq$k0">
                <node concept="2OqwBi" id="3BqcHtVCG4N" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVCG4O" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVCG4P" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVCG4Q" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3BqcHtVCG4R" role="2OqNvi">
                    <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3BqcHtVCG4S" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="3BqcHtVCG4T" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="3BqcHtVCG4U" role="37wK5m">
                  <property role="Xl_RC" value="KubernetesCluster" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="3BqcHtVwTog" role="jxRDz" />
  </node>
  <node concept="13MO4I" id="3BqcHtVy$Vz">
    <property role="TrG5h" value="createArtifacts" />
    <ref role="3gUMe" to="wuz1:1sN103qRkCK" resolve="Artifact" />
    <node concept="3a$n7L" id="3BqcHtV$5Wd" role="13RCb5">
      <property role="TrG5h" value="name" />
      <node concept="2w_qc2" id="3BqcHtV_6IV" role="2wBDyf">
        <property role="2w_q9X" value="42" />
        <ref role="3aAs5u" node="3BqcHtV_7jW" resolve="dummyDefinition" />
        <node concept="17Uvod" id="3BqcHtV_hdx" role="lGtFl">
          <property role="2qtEX9" value="value" />
          <property role="P4ACc" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119960933630/8896254119960933761" />
          <node concept="3zFVjK" id="3BqcHtV_hdy" role="3zH0cK">
            <node concept="3clFbS" id="3BqcHtV_hdz" role="2VODD2">
              <node concept="3clFbF" id="3BqcHtV_he0" role="3cqZAp">
                <node concept="2OqwBi" id="3BqcHtV_hw7" role="3clFbG">
                  <node concept="30H73N" id="3BqcHtV_hdZ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3BqcHtV_hEk" role="2OqNvi">
                    <ref role="3TsBF5" to="wuz1:1sN103qRkCQ" resolve="fileURI" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ZhdrF" id="3BqcHtV_io8" role="lGtFl">
          <property role="2qtEX8" value="propertyDefinition" />
          <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119960933630/918344584795741398" />
          <node concept="3$xsQk" id="3BqcHtV_io9" role="3$ytzL">
            <node concept="3clFbS" id="3BqcHtV_ioa" role="2VODD2">
              <node concept="3clFbF" id="3BqcHtV_irl" role="3cqZAp">
                <node concept="2OqwBi" id="3BqcHtV_iD$" role="3clFbG">
                  <node concept="1iwH7S" id="3BqcHtV_irk" role="2Oq$k0" />
                  <node concept="1iwH70" id="3BqcHtV_iJn" role="2OqNvi">
                    <ref role="1iwH77" node="3BqcHtV_gHK" resolve="artifactToPropertyDefinition" />
                    <node concept="30H73N" id="3BqcHtV_iQN" role="1iwH7V" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="3BqcHtV$5We" role="lGtFl" />
      <node concept="17Uvod" id="3BqcHtV_69D" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="3BqcHtV_69E" role="3zH0cK">
          <node concept="3clFbS" id="3BqcHtV_69F" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV_6fW" role="3cqZAp">
              <node concept="3cpWs3" id="1FXHAB5Q5xG" role="3clFbG">
                <node concept="2OqwBi" id="1FXHAB5Q5X0" role="3uHU7w">
                  <node concept="30H73N" id="1FXHAB5Q5yB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1FXHAB5Q6mw" role="2OqNvi">
                    <ref role="3TsBF5" to="wuz1:1sN103qRkCO" resolve="type" />
                  </node>
                </node>
                <node concept="3cpWs3" id="1FXHAB5Q5j9" role="3uHU7B">
                  <node concept="2OqwBi" id="1FXHAB5Q4tR" role="3uHU7B">
                    <node concept="v3LJS" id="1FXHAB5Q4df" role="2Oq$k0">
                      <ref role="v3LJV" node="1FXHAB5PVgG" resolve="sourceComponent" />
                    </node>
                    <node concept="3TrcHB" id="1FXHAB5Q4Lf" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1FXHAB5Q5jU" role="3uHU7w">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N15co" id="1FXHAB5PVgG" role="1s_3oS">
      <property role="TrG5h" value="sourceComponent" />
      <node concept="3Tqbb2" id="1FXHAB5PWqC" role="1N15GL">
        <ref role="ehGHo" to="wuz1:1sN103qRFK6" resolve="Component" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3BqcHtV_f50">
    <property role="TrG5h" value="mapPropertyDefinitonFromArtifact" />
    <property role="3GE5qa" value="mappings" />
    <ref role="3gUMe" to="wuz1:1sN103qRkCK" resolve="Artifact" />
    <node concept="2w_qrj" id="3BqcHtV_f52" role="13RCb5">
      <property role="TrG5h" value="dummyPropertyDefinition" />
      <node concept="raruj" id="3BqcHtV_f53" role="lGtFl" />
      <node concept="17Uvod" id="3BqcHtV_f54" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="3BqcHtV_f55" role="3zH0cK">
          <node concept="3clFbS" id="3BqcHtV_f56" role="2VODD2">
            <node concept="3clFbF" id="3BqcHtV_fbn" role="3cqZAp">
              <node concept="2OqwBi" id="3BqcHtV_ftu" role="3clFbG">
                <node concept="30H73N" id="3BqcHtV_fbm" role="2Oq$k0" />
                <node concept="3TrcHB" id="3BqcHtV_fAS" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="3BqcHtVBtTL">
    <property role="TrG5h" value="switchComponentsToInterfaces" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="3BqcHtVBtTN" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
      <node concept="gft3U" id="3BqcHtVBvB1" role="1lVwrX">
        <node concept="3az42I" id="3BqcHtVBvDH" role="gfFT$">
          <property role="TrG5h" value="dummyTechnologyInterface" />
          <node concept="2w_qc2" id="3BqcHtVBvX0" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="3BqcHtVBvX1" role="lGtFl">
              <node concept="3JmXsc" id="3BqcHtVBvX2" role="3Jn$fo">
                <node concept="3clFbS" id="3BqcHtVBvX3" role="2VODD2">
                  <node concept="3clFbF" id="3BqcHtVBvX4" role="3cqZAp">
                    <node concept="2OqwBi" id="3BqcHtVBvX5" role="3clFbG">
                      <node concept="30H73N" id="3BqcHtVBvX6" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="3BqcHtVBvX7" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="3BqcHtVBvX8" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="3BqcHtVBwcB" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="3BqcHtVBwcC" role="3zH0cK">
              <node concept="3clFbS" id="3BqcHtVBwcD" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVBwo6" role="3cqZAp">
                  <node concept="3cpWs3" id="3BqcHtVBxvS" role="3clFbG">
                    <node concept="Xl_RD" id="3BqcHtVBxvW" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="3BqcHtVBxnW" role="3uHU7B">
                      <node concept="2OqwBi" id="3BqcHtVBwG1" role="3uHU7B">
                        <node concept="30H73N" id="3BqcHtVBwo5" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3BqcHtVBwSq" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3BqcHtVBxo0" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3BqcHtVBv5g" role="30HLyM">
        <node concept="3clFbS" id="3BqcHtVBv5h" role="2VODD2">
          <node concept="3clFbF" id="3BqcHtVBva6" role="3cqZAp">
            <node concept="22lmx$" id="3BqcHtVBva7" role="3clFbG">
              <node concept="2OqwBi" id="3BqcHtVBva8" role="3uHU7w">
                <node concept="2OqwBi" id="3BqcHtVBva9" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVBvaa" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVBvab" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVBvac" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3BqcHtVBvad" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="3BqcHtVBvae" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="3BqcHtVBvaf" role="37wK5m">
                    <property role="Xl_RC" value="-MessageBroker" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3BqcHtVBvag" role="3uHU7B">
                <node concept="2OqwBi" id="3BqcHtVBvah" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVBvai" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVBvaj" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVBvak" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3BqcHtVBval" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="3BqcHtVBvam" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="3BqcHtVBvan" role="37wK5m">
                    <property role="Xl_RC" value="-DatabaseSystem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3BqcHtVCA89" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRFK6" resolve="Component" />
      <ref role="2sgKRv" node="3BqcHtVFTfb" resolve="componentToApplicationInterface" />
      <node concept="gft3U" id="3BqcHtVCBTt" role="1lVwrX">
        <node concept="3az42H" id="3BqcHtVCBV0" role="gfFT$">
          <property role="TrG5h" value="dummyApplicationInterface" />
          <node concept="2w_qc2" id="3BqcHtVCBV1" role="2wBDyf">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="3BqcHtVCBV2" role="lGtFl">
              <node concept="3JmXsc" id="3BqcHtVCBV3" role="3Jn$fo">
                <node concept="3clFbS" id="3BqcHtVCBV4" role="2VODD2">
                  <node concept="3clFbF" id="3BqcHtVCBV5" role="3cqZAp">
                    <node concept="2OqwBi" id="3BqcHtVCBV6" role="3clFbG">
                      <node concept="30H73N" id="3BqcHtVCBV7" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="3BqcHtVCBV8" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="3BqcHtVCBV9" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="3BqcHtVCCHn" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="3BqcHtVCCHo" role="3zH0cK">
              <node concept="3clFbS" id="3BqcHtVCCHp" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVCCSQ" role="3cqZAp">
                  <node concept="3cpWs3" id="3BqcHtVCE9E" role="3clFbG">
                    <node concept="Xl_RD" id="3BqcHtVCE9I" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="3BqcHtVCDUN" role="3uHU7B">
                      <node concept="2OqwBi" id="3BqcHtVCDcL" role="3uHU7B">
                        <node concept="30H73N" id="3BqcHtVCCSP" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3BqcHtVCDqT" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3BqcHtVCDVU" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3BqcHtVCBo4" role="30HLyM">
        <node concept="3clFbS" id="3BqcHtVCBo5" role="2VODD2">
          <node concept="3clFbF" id="3BqcHtVCBsU" role="3cqZAp">
            <node concept="2OqwBi" id="3BqcHtVCBsV" role="3clFbG">
              <node concept="2OqwBi" id="3BqcHtVCBsW" role="2Oq$k0">
                <node concept="2OqwBi" id="3BqcHtVCBsX" role="2Oq$k0">
                  <node concept="30H73N" id="3BqcHtVCBsY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3BqcHtVCBsZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3BqcHtVCBt0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="3BqcHtVCBt1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="3BqcHtVCBt2" role="37wK5m">
                  <property role="Xl_RC" value="-SoftwareApplication" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="3BqcHtVBtTM" role="jxRDz" />
  </node>
  <node concept="jVnub" id="3BqcHtVKnU2">
    <property role="TrG5h" value="switchRelationsToServingRelationship" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="3BqcHtVKnU4" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="3BqcHtVKy2Y" role="1lVwrX">
        <node concept="3ayPfE" id="3BqcHtVKymA" role="gfFT$">
          <property role="TrG5h" value="dummyRelationShip" />
          <ref role="2f7WfT" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="4UYRKwDQ$RY" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="4UYRKwDQ$RZ" role="lGtFl">
              <node concept="3JmXsc" id="4UYRKwDQ$S0" role="3Jn$fo">
                <node concept="3clFbS" id="4UYRKwDQ$S1" role="2VODD2">
                  <node concept="3clFbF" id="4UYRKwDQ$S2" role="3cqZAp">
                    <node concept="2OqwBi" id="4UYRKwDQ$S3" role="3clFbG">
                      <node concept="30H73N" id="4UYRKwDQ$S4" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="4UYRKwDQ$S5" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="4UYRKwDQ$S6" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="1ZhdrF" id="3BqcHtVKymB" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="3BqcHtVKymC" role="3$ytzL">
              <node concept="3clFbS" id="3BqcHtVKymD" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVKyni" role="3cqZAp">
                  <node concept="2OqwBi" id="3BqcHtVKy$Y" role="3clFbG">
                    <node concept="1iwH7S" id="3BqcHtVKynh" role="2Oq$k0" />
                    <node concept="1iwH70" id="3BqcHtVKyGw" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="3BqcHtVKzbM" role="1iwH7V">
                        <node concept="30H73N" id="3BqcHtVKySg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3BqcHtVKzoW" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="3BqcHtVKzqp" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="3BqcHtVKzqq" role="3$ytzL">
              <node concept="3clFbS" id="3BqcHtVKzqr" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVKzz6" role="3cqZAp">
                  <node concept="2OqwBi" id="3BqcHtVKzKM" role="3clFbG">
                    <node concept="1iwH7S" id="3BqcHtVKzz5" role="2Oq$k0" />
                    <node concept="1iwH70" id="3BqcHtVKzSk" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfb" resolve="componentToApplicationInterface" />
                      <node concept="2OqwBi" id="3BqcHtVK$hG" role="1iwH7V">
                        <node concept="30H73N" id="3BqcHtVK$2c" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3BqcHtVK$$g" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="3BqcHtVLE8M" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="3BqcHtVLE8N" role="3zH0cK">
              <node concept="3clFbS" id="3BqcHtVLE8O" role="2VODD2">
                <node concept="3clFbF" id="3BqcHtVLEsq" role="3cqZAp">
                  <node concept="3cpWs3" id="3BqcHtVLIqk" role="3clFbG">
                    <node concept="2OqwBi" id="3BqcHtVLJow" role="3uHU7w">
                      <node concept="2OqwBi" id="3BqcHtVLIKw" role="2Oq$k0">
                        <node concept="30H73N" id="3BqcHtVLIqo" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3BqcHtVLJdn" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3BqcHtVLJDC" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="3BqcHtVLHZI" role="3uHU7B">
                      <node concept="3cpWs3" id="3BqcHtVLHcb" role="3uHU7B">
                        <node concept="2OqwBi" id="3BqcHtVLFdf" role="3uHU7B">
                          <node concept="2OqwBi" id="3BqcHtVLEKl" role="2Oq$k0">
                            <node concept="30H73N" id="3BqcHtVLEsp" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3BqcHtVLEYt" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3BqcHtVLFtK" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3BqcHtVLHd3" role="3uHU7w">
                          <property role="Xl_RC" value=" Interface" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3BqcHtVLIgM" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3BqcHtVKp_S" role="30HLyM">
        <node concept="3clFbS" id="3BqcHtVKp_T" role="2VODD2">
          <node concept="3clFbF" id="3BqcHtVKpEJ" role="3cqZAp">
            <node concept="1Wc70l" id="3BqcHtVP8mU" role="3clFbG">
              <node concept="1Wc70l" id="3BqcHtVP7ga" role="3uHU7B">
                <node concept="2OqwBi" id="3BqcHtVKtXa" role="3uHU7B">
                  <node concept="2OqwBi" id="3BqcHtVKsrt" role="2Oq$k0">
                    <node concept="2OqwBi" id="3BqcHtVKqmX" role="2Oq$k0">
                      <node concept="2OqwBi" id="3BqcHtVKpTd" role="2Oq$k0">
                        <node concept="30H73N" id="3BqcHtVKpEI" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3BqcHtVKq5A" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3BqcHtVKs5r" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3BqcHtVKtc$" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3BqcHtVKuma" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3BqcHtVKunD" role="37wK5m">
                      <property role="Xl_RC" value="-SoftwareApplication" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3BqcHtVP7H9" role="3uHU7w">
                  <node concept="2OqwBi" id="3BqcHtVP7Ha" role="2Oq$k0">
                    <node concept="2OqwBi" id="3BqcHtVP7Hb" role="2Oq$k0">
                      <node concept="2OqwBi" id="3BqcHtVP7Hc" role="2Oq$k0">
                        <node concept="30H73N" id="3BqcHtVP7Hd" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3BqcHtVP7He" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3BqcHtVP7Hf" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3BqcHtVP7Hg" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3BqcHtVP7Hh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3BqcHtVP7Hi" role="37wK5m">
                      <property role="Xl_RC" value="-SoftwareApplication" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3BqcHtVNZIq" role="3uHU7w">
                <node concept="2OqwBi" id="3BqcHtVNYJf" role="2Oq$k0">
                  <node concept="2OqwBi" id="3BqcHtVNYcl" role="2Oq$k0">
                    <node concept="30H73N" id="3BqcHtVNXPB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3BqcHtVNYrj" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3BqcHtVNYZ5" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="3BqcHtVO0um" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="3BqcHtVO1sb" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4UYRKwDSBbM" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="4UYRKwDSBiD" role="1lVwrX">
        <node concept="3ayPfE" id="4UYRKwDSBiH" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="4UYRKwDSBiI" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="4UYRKwDSBiJ" role="lGtFl">
              <node concept="3JmXsc" id="4UYRKwDSBiK" role="3Jn$fo">
                <node concept="3clFbS" id="4UYRKwDSBiL" role="2VODD2">
                  <node concept="3clFbF" id="4UYRKwDSBiM" role="3cqZAp">
                    <node concept="2OqwBi" id="4UYRKwDSBiN" role="3clFbG">
                      <node concept="30H73N" id="4UYRKwDSBiO" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="4UYRKwDSBiP" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="4UYRKwDSBiQ" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ4YKs" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ4YKt" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ4YKu" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ4Z0I" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ4Z0J" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ4Z0K" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ4Z0L" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ4Z0M" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ4Z0N" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ4Z0O" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ4Z0P" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZ4Z0Q" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ4Z0R" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZ4Z0S" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ4Z0T" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ4Z0U" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ4Z0V" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZ4Z0W" role="3uHU7w">
                          <property role="Xl_RC" value=" Service" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ4Z0X" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ4ZNE" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ4ZNF" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ4ZNG" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ50dM" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ50dN" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ50dO" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ50dP" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="7OlFYOZ50dQ" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ50dR" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ50dS" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ50wT" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ50wU" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ50wV" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ50Gb" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ50Gc" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ50Gd" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ50Ge" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZ50Gf" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ50Gg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ50Gh" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4UYRKwDSBER" role="30HLyM">
        <node concept="3clFbS" id="4UYRKwDSBES" role="2VODD2">
          <node concept="3clFbF" id="4UYRKwDSDuV" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ4IX6" role="3clFbG">
              <node concept="1eOMI4" id="4UYRKwDSDuT" role="3uHU7B">
                <node concept="1Wc70l" id="4UYRKwDSDxk" role="1eOMHV">
                  <node concept="2OqwBi" id="4UYRKwDSDxl" role="3uHU7B">
                    <node concept="2OqwBi" id="4UYRKwDSDxm" role="2Oq$k0">
                      <node concept="2OqwBi" id="4UYRKwDSDxn" role="2Oq$k0">
                        <node concept="2OqwBi" id="4UYRKwDSDxo" role="2Oq$k0">
                          <node concept="30H73N" id="4UYRKwDSDxp" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4UYRKwDSDxq" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="4UYRKwDSDxr" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4UYRKwDSDxs" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4UYRKwDSDxt" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="4UYRKwDSDxu" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZ4Iqq" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZ4ST2" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZ4WFu" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZ4VvD" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ4Uqm" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZ4TDK" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZ4Tkd" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZ4UaM" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZ4UW0" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ4W2Z" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZ4XBs" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZ4XSm" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZ4NoT" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ4MAc" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ4LY3" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZ4Jog" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZ4J1l" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZ4LJj" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZ4Mnf" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ4MS8" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZ4ODL" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZ4OHx" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4UYRKwDSF2T" role="3uHU7w">
                <node concept="2OqwBi" id="4UYRKwDSF2U" role="2Oq$k0">
                  <node concept="2OqwBi" id="4UYRKwDSF2V" role="2Oq$k0">
                    <node concept="30H73N" id="4UYRKwDSF2W" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4UYRKwDSF2X" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4UYRKwDSF2Y" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="4UYRKwDSF2Z" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="4UYRKwDSF30" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZ51uL" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZ51uM" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZ51uN" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZ51uO" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZ51uP" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZ51uQ" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZ51uR" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZ51uS" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZ51uT" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZ51uU" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZ51uV" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZ51uW" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ51uX" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ51uY" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ51uZ" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ51v0" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ51v1" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ51v2" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ51v3" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ51v4" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ561p" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ51v6" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ51v7" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZ51v8" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ51v9" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZ51va" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ51vb" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ55P_" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ51vd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZ51ve" role="3uHU7w">
                          <property role="Xl_RC" value=" Service" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ51vf" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ51vg" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ51vh" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ51vi" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ51vj" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ51vk" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ51vl" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ51vm" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="7OlFYOZ51vn" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ51vo" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ54SZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ51vq" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ51vr" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ51vs" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ51vt" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ51vu" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ51vv" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ51vw" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZ51vx" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ51vy" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ55mX" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZ51v$" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZ51v_" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZ51vA" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ51vB" role="3clFbG">
              <node concept="1eOMI4" id="7OlFYOZ51vC" role="3uHU7B">
                <node concept="1Wc70l" id="7OlFYOZ51vD" role="1eOMHV">
                  <node concept="2OqwBi" id="7OlFYOZ51vE" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZ51vF" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZ51vG" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ51vH" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZ51vI" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZ54iN" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZ51vK" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ51vL" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZ51vM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZ51vN" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZ51vO" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZ51vP" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZ51vQ" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZ51vR" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ51vS" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZ51vT" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZ51vU" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZ58ZI" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZ51vW" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ51vX" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZ51vY" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZ51vZ" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZ51w0" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ51w1" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ51w2" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZ51w3" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZ51w4" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZ54xt" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZ51w6" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ51w7" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZ51w8" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZ51w9" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZ51wa" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZ51wb" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZ51wc" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZ51wd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZ51we" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZ51wf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZ51wg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZ51wh" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZ593Q" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZ59Lp" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZ59Lt" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="43rnOob2Khg" resolve="sysSoft" />
          <ref role="2f7WfU" node="3BqcHtVBvDH" resolve="dummyTechnologyInterface" />
          <node concept="2w_qc2" id="7OlFYOZ59Lu" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZ59Lv" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZ59Lw" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZ59Lx" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZ59Ly" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZ59Lz" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZ59L$" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZ59L_" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZ59LA" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ5k0f" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ5k0g" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ5k0h" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ5kgw" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ5ntC" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ5oh2" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ5nPY" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ5nvT" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ5o5s" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ5oHl" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ5m$E" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZ5mcN" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ5l2R" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZ5k$r" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ5kgv" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ5kNH" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ5ljo" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZ5mcR" role="3uHU7w">
                          <property role="Xl_RC" value=" Service " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ5m$I" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ5oJW" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ5oJX" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ5oJY" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ5$Su" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ5_6H" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ5$St" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ5_ix" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="7OlFYOZ5_Lh" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ5_u7" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ5Ak1" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ5AnV" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ5AnW" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ5AnX" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ5ARz" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ5Bv3" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ5BdI" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ5BER" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZ5Ca9" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ5BQB" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ5CMp" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZ5a5E" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZ5a5F" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZ5akw" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ5aLM" role="3clFbG">
              <node concept="1Wc70l" id="7OlFYOZ5aln" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZ5aku" role="3uHU7B">
                  <node concept="22lmx$" id="7OlFYOZ5buD" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZ5eBO" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZ5dF8" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ5cL$" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ5c6u" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ5bLR" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ5cza" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZ5dna" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ5dXr" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ5f93" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ5fdv" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZ5hV5" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ5gFD" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkDPeJ" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ5fW9" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ5fB1" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ5gsC" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkDQ4L" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkDQXK" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ5iSq" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ5iXb" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="7OlFYOZ5amg" role="3uHU7w">
                  <node concept="22lmx$" id="7OlFYOZ5bwA" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZ5j4k" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZ5j4l" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ5j4m" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ5j4n" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ5j4o" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkDRYC" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZ5j4q" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ5j4r" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ5j4s" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ5j4t" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZ5jOC" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ5jOD" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkDSqc" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ5jOE" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ5jOF" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ5jOG" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkDT5h" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkDU1q" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ5jOI" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ5jOJ" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZ5b0t" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZ5b0u" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZ5b0v" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZ5b0w" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZ5b0x" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZ5b0y" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZ5b0z" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZ5b0$" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZ7QXL" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZ7RP9" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZ7RPd" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZ7RPe" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZ7RPf" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZ7RPg" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZ7RPh" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZ7RPi" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZ7RPj" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZ7RPk" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZ7RPl" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZ7RPm" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ83fR" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ83fS" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ83fT" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ83zF" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ84UI" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ872w" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ8661" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ85Rq" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ86Rk" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ87pv" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ84KY" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZ84AH" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ85$5" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZ83RA" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ83zE" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ85fk" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ85ON" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZ84AL" role="3uHU7w">
                          <property role="Xl_RC" value=" Service" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ84L2" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ87sw" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ87sx" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ87sy" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ87Ai" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ87NY" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ87Ah" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ87TL" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVvbl4" resolve="componentToStorage" />
                      <node concept="2OqwBi" id="7OlFYOZ88gL" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ885d" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ88pw" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ88qX" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ88qY" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ88qZ" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ88zC" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ88$x" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ88zB" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ88G3" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZ88T7" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ88MV" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ891o" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZ7SaO" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZ7SaP" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZ7SkT" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ7Z$G" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZ82cu" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZ80Vj" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZ80fK" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZ7ZF9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZ80BQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZ81xn" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZ82Dg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZ82Ig" role="37wK5m">
                    <property role="Xl_RC" value="AttachesTo" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZ7SkQ" role="3uHU7B">
                <node concept="2OqwBi" id="7OlFYOZ7Vha" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZ7TJi" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZ7TeK" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZ7SAc" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ7SlJ" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ7T1B" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZ7TvA" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZ7U0k" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZ7Vvj" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZ7V_L" role="37wK5m">
                      <property role="Xl_RC" value="Storage" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZ7Yko" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZ7XpM" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZ7WUp" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZ7WiY" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ7W1U" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ7Wzx" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZ7Xbn" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZ7XGt" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZ7Z1f" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZ7Z5p" role="37wK5m">
                      <property role="Xl_RC" value="-SoftwareApplication" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZ8anU" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZ8anV" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZ8anW" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZ8anX" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZ8anY" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZ8anZ" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZ8ao0" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZ8ao1" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZ8ao2" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZ8ao3" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZ8ao4" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZ8ao5" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ8ao6" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ8ao7" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ8ao8" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ8ao9" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ8aoa" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ8aob" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ8aoc" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ8aod" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ8aoe" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ8aof" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ8aog" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZ8aoh" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ8aoi" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZ8aoj" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ8aok" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ8aol" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZ8aom" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZ8aon" role="3uHU7w">
                          <property role="Xl_RC" value=" Service" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ8aoo" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ8aop" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ8aoq" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ8aor" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ8aos" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ8aot" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ8aou" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ8aov" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVvbl4" resolve="componentToStorage" />
                      <node concept="2OqwBi" id="7OlFYOZ8aow" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ8aox" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ8aoy" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ8aoz" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ8ao$" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ8ao_" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ8aoA" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ8aoB" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ8aoC" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ8aoD" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZ8aoE" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ8aoF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ8aoG" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZ8aoH" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZ8aoI" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZ8aoJ" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ8aoK" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZ8aoL" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZ8aoM" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZ8aoN" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZ8aoO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZ8aoP" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZ8aoQ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZ8aoR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZ8aoS" role="37wK5m">
                    <property role="Xl_RC" value="AttachesTo" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZ8aoT" role="3uHU7B">
                <node concept="2OqwBi" id="7OlFYOZ8aoU" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZ8aoV" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZ8aoW" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZ8aoX" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ8aoY" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ8aoZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZ8ap0" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZ8ap1" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZ8ap2" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZ8ap3" role="37wK5m">
                      <property role="Xl_RC" value="Storage" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="7OlFYOZ8dg2" role="3uHU7w">
                  <node concept="22lmx$" id="7OlFYOZ8diG" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZ8gfG" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZ8eLt" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ8egw" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ8dBf" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ8dlj" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ8e3M" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZ8ez3" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ8f4c" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ8gSx" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ8gYv" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZ8iIz" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ8iy4" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ8i08" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ8hja" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ8h59" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ8hKD" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZ8ijB" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ8iBN" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ8jjZ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ8jqg" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZ9A9x" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZ9BvW" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZ9Bw0" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZ9Bw1" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZ9Bw2" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZ9Bw3" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZ9Bw4" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZ9Bw5" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZ9Bw6" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZ9Bw7" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZ9Bw8" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZ9Bw9" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZ9UXj" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZ9UXk" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZ9UXl" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ9V8M" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZ9XvI" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZ9XDy" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ9XzR" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ9XyU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ9XBT" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZ9XHF" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZ9X3w" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZ9Wcp" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZ9VsH" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZ9V8L" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZ9Xpz" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ9Wvg" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZ9X6y" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ9XLd" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZ9XLe" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ9XLf" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ9XUM" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ9Y8u" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ9XUL" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ9Yg0" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZ9YJo" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ9YrQ" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ9YYh" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZ9Z24" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZ9Z25" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZ9Z26" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZ9ZqW" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZ9ZrP" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZ9ZqV" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZ9Zzn" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZa011" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZ9ZHv" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZa0gv" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZ9BSr" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZ9BSs" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZ9C2w" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZ9RNl" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZ9TCu" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZ9SNf" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZ9ShL" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZ9RWv" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZ9Szq" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZ9T7h" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZ9Udu" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZ9Ukk" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZ9C2t" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZ9C3m" role="3uHU7B">
                  <node concept="1Wc70l" id="7OlFYOZ9C4e" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZ9EpG" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZ9Dus" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ9CXR" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZ9Cm1" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZ9C5m" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZ9CKw" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZ9Dey" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZ9DJh" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZ9FeT" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZ9FmQ" role="37wK5m">
                          <property role="Xl_RC" value="-SoftwareApplication" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZ9MxQ" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZ9MxR" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZ9MxS" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZ9MxT" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZ9MxU" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="7OlFYOZ9MxV" role="2OqNvi">
                          <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="7OlFYOZ9MxW" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZ9PZr" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZ9O9h" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZ9MRA" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZ9MHH" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZ9MBH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZ9MOa" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZ9MX_" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZ9Ovk" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZ9Qyt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZ9QCt" role="37wK5m">
                      <property role="Xl_RC" value="localhost-type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZa70S" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZa70T" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZa70U" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZa70V" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZa70W" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZa70X" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZa70Y" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZa70Z" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZa710" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZa711" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZa712" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZa713" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZa714" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZa715" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZa716" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZa717" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZa718" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZa719" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZa71a" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZa71b" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZa71c" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZa71d" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZa71e" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZa71f" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZa71g" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZa71h" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZa71i" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZa71j" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZa71k" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZa71l" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZa71m" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZa71n" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZa71o" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZa71p" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZa71q" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZa71r" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZa71s" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZa71t" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZa71u" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZa71v" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZa71w" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZa71x" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZa71y" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZa71z" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZa71$" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZa71_" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZa71A" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZa71B" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZa71C" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZa71D" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZa71E" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZa71F" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZa71G" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZa71H" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZa71I" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZa71J" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZa71K" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZa71L" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZa71M" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZa71N" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZa71O" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZa71P" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZa71Q" role="3uHU7B">
                  <node concept="1Wc70l" id="7OlFYOZa71R" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZa71S" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZa71T" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZa71U" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZa71V" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZa71W" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZa71X" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZa71Y" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZa71Z" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZa720" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZa721" role="37wK5m">
                          <property role="Xl_RC" value="-SoftwareApplication" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZa722" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZa723" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZa724" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZa725" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZa726" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="7OlFYOZa727" role="2OqNvi">
                          <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="7OlFYOZa728" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZab6x" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZa729" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZaaay" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZa72a" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZa72b" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZa72c" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZa72d" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZa72e" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZa72f" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZa9y_" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZaaid" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZaawV" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZabHo" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZabOS" role="37wK5m">
                      <property role="Xl_RC" value="ContainerPlatform" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZaeHO" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZaeHP" role="1lVwrX">
        <node concept="3ayPfE" id="7OlFYOZaeHQ" role="gfFT$">
          <property role="TrG5h" value="dummy Serving" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <node concept="2w_qc2" id="7OlFYOZaeHR" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZaeHS" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZaeHT" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZaeHU" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaeHV" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZaeHW" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZaeHX" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZaeHY" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZaeHZ" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZaeI0" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZaeI1" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZaeI2" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZmm9$" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZmqkE" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZmrts" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZmr0K" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZmqDV" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZmse5" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZmrJt" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZmprP" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZmp1F" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZmn4h" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZmm$3" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZmm9z" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZpzkc" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZmnyn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZmp1J" role="3uHU7w">
                          <property role="Xl_RC" value=" Device " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZmpwC" role="3uHU7w">
                        <property role="Xl_RC" value=" serving " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaeIh" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZaeIi" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaeIj" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaeIk" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaeIl" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaeIm" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaeIn" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVEPLr" resolve="componentToDevice" />
                      <node concept="2OqwBi" id="7OlFYOZaeIo" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaeIp" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZo45M" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaeIr" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZaeIs" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaeIt" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaeIu" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaeIv" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaeIw" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaeIx" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZaeIy" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaeIz" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaeI$" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZaeI_" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZaeIA" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZaeIB" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZaeIC" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZaeID" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZaeIE" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZaeIF" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZaeIG" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZaeIH" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZaeII" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZaeIJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZaeIK" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZakLe" role="3uHU7B">
                <node concept="3fqX7Q" id="7OlFYOZaqol" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZaqon" role="3fr31v">
                    <node concept="2OqwBi" id="7OlFYOZaqoo" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZaqop" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZaqoq" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaqor" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7OlFYOZaqos" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="7OlFYOZaqot" role="2OqNvi" />
                  </node>
                </node>
                <node concept="1Wc70l" id="7OlFYOZaeIL" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZaeIO" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZaeIP" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZaeIQ" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZaeIR" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZaeIS" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZajiT" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZaeIU" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZaeIV" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZaeIW" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZaeIX" role="37wK5m">
                        <property role="Xl_RC" value="CloudProvider" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7OlFYOZaeJ5" role="3uHU7w">
                    <node concept="2OqwBi" id="7OlFYOZaeJ6" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZaeJ7" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZaeJ8" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZaeJ9" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZaeJa" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZaeJb" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZaizI" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZaeJd" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZaeJe" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZaeJf" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZaeJg" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZaeJh" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZaeJi" role="37wK5m">
                        <property role="Xl_RC" value="ContainerPlatform" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="3BqcHtVKnU3" role="jxRDz" />
  </node>
  <node concept="jVnub" id="7OlFYOZasb$">
    <property role="TrG5h" value="switchRelationsToAssignmentRelationship" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="7OlFYOZawh4" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZawh5" role="1lVwrX">
        <node concept="3ayPfj" id="7OlFYOZaym$" role="gfFT$">
          <property role="TrG5h" value="dummyAssignemt" />
          <ref role="2f7WfT" node="3BqcHtVBvDH" resolve="dummyTechnologyInterface" />
          <ref role="2f7WfU" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <node concept="2w_qc2" id="7OlFYOZayYn" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZayYo" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZayYp" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZayYq" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZayYr" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZayYs" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZayYt" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZayYu" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZayYv" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZazel" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZazem" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZazen" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZazpO" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZaEaN" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZaEaR" role="3uHU7w">
                      <property role="Xl_RC" value=" Service" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZaCTD" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZaAS0" role="3uHU7B">
                        <node concept="3cpWs3" id="7OlFYOZa_Cg" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZa$cb" role="3uHU7B">
                            <node concept="2OqwBi" id="7OlFYOZazHJ" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZazpN" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZazX1" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7OlFYOZa$sG" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="7OlFYOZa_Ck" role="3uHU7w">
                            <property role="Xl_RC" value="Interface " />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZaCh3" role="3uHU7w">
                          <property role="Xl_RC" value="is assigned to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZaDRb" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZaDgU" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZaCUP" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZaDG2" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZaE8j" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaEfO" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZaEfP" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaEfQ" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaEpH" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaEBp" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaEpG" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaENd" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="7OlFYOZaFhR" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaEYH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaFwK" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaF$A" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZaF$B" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaF$C" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaFXM" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaG3v" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaFXL" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaG7T" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="7OlFYOZaGl_" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaGeh" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaGpm" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZawhR" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZawhS" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZawhT" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZawhU" role="3clFbG">
              <node concept="1eOMI4" id="7OlFYOZawhV" role="3uHU7B">
                <node concept="1Wc70l" id="7OlFYOZawhW" role="1eOMHV">
                  <node concept="2OqwBi" id="7OlFYOZawhX" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZawhY" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZawhZ" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZawi0" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZawi1" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZawi2" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZawi3" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZawi4" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZawi5" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZawi6" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZawi7" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZawi8" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZawi9" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZawia" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZawib" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZawic" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZawid" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZawie" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZawif" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZawig" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZawih" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZawii" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZawij" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZawik" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZawil" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZawim" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZawin" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZawio" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZawip" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZawiq" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZawir" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZawis" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZawit" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZawiu" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZawiv" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZawiw" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZawix" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZawiy" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZawiz" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZawi$" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZaGrZ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZaGs0" role="1lVwrX">
        <node concept="3ayPfj" id="7OlFYOZaGs1" role="gfFT$">
          <property role="TrG5h" value="dummyAssignemt" />
          <ref role="2f7WfT" node="3BqcHtVBvDH" resolve="dummyTechnologyInterface" />
          <ref role="2f7WfU" node="3BqcHtVyuWp" resolve="dummyTechService" />
          <node concept="2w_qc2" id="7OlFYOZaGs2" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZaGs3" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZaGs4" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZaGs5" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaGs6" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZaGs7" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZaGs8" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZaGs9" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZaGsa" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZaGsb" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZaGsc" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZaGsd" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaGse" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZaGsf" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZaGsg" role="3uHU7w">
                      <property role="Xl_RC" value=" Service" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZaGsh" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZaGsi" role="3uHU7B">
                        <node concept="3cpWs3" id="7OlFYOZaGsj" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZaGsk" role="3uHU7B">
                            <node concept="2OqwBi" id="7OlFYOZaGsl" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZaGsm" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZaSqk" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7OlFYOZaGso" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="7OlFYOZaGsp" role="3uHU7w">
                            <property role="Xl_RC" value="Interface " />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZaGsq" role="3uHU7w">
                          <property role="Xl_RC" value="is assigned to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZaGsr" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZaGss" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZaGst" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZaSAT" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZaGsv" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaGsw" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZaGsx" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaGsy" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaGsz" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaGs$" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaGs_" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaGsA" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="7OlFYOZaGsB" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaGsC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaKBY" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZaGsE" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZaGsF" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZaGsG" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaGsH" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZaGsI" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZaGsJ" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZaGsK" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="7OlFYOZaGsL" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZaGsM" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaKYy" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZaGsO" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZaGsP" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZaGsQ" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZaGsR" role="3clFbG">
              <node concept="1eOMI4" id="7OlFYOZaGsS" role="3uHU7B">
                <node concept="1Wc70l" id="7OlFYOZaGsT" role="1eOMHV">
                  <node concept="2OqwBi" id="7OlFYOZaGsU" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZaGsV" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZaGsW" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZaGsX" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZaGsY" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZaJ4w" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZaGt0" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZaGt1" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZaGt2" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZaGt3" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZaGt4" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZaGt5" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZaGt6" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZaGt7" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZaGt8" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZaGt9" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZaGta" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZaJ_v" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZaGtc" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZaGtd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZaGte" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZaGtf" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZaGtg" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZaGth" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZaGti" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZaGtj" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZaGtk" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZaJfX" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZaGtm" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZaGtn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZaGto" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZaGtp" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZaGtq" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZaGtr" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZaGts" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZaGtt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZaGtu" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZaGtv" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZaGtw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZaGtx" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1X3_iC" id="71ZUOKkE3jD" role="lGtFl">
      <property role="3V$3am" value="reductionMappingRule" />
      <property role="3V$3ak" value="b401a680-8325-4110-8fd3-84331ff25bef/1112730859144/1167340453568" />
      <node concept="3aamgX" id="7OlFYOZaOsT" role="8Wnug">
        <property role="36QftV" value="true" />
        <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
        <node concept="gft3U" id="7OlFYOZaOsU" role="1lVwrX">
          <node concept="3ayPfE" id="7OlFYOZaOsV" role="gfFT$">
            <property role="TrG5h" value="dummy Serving" />
            <ref role="2f7WfT" node="43rnOob2Khg" resolve="sysSoft" />
            <ref role="2f7WfU" node="3BqcHtVBvDH" resolve="dummyTechnologyInterface" />
            <node concept="2w_qc2" id="7OlFYOZaOsW" role="2wBCvS">
              <property role="2w_q9X" value="42" />
              <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
              <node concept="1WS0z7" id="7OlFYOZaOsX" role="lGtFl">
                <node concept="3JmXsc" id="7OlFYOZaOsY" role="3Jn$fo">
                  <node concept="3clFbS" id="7OlFYOZaOsZ" role="2VODD2">
                    <node concept="3clFbF" id="7OlFYOZaOt0" role="3cqZAp">
                      <node concept="2OqwBi" id="7OlFYOZaOt1" role="3clFbG">
                        <node concept="30H73N" id="7OlFYOZaOt2" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7OlFYOZaOt3" role="2OqNvi">
                          <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="7OlFYOZaOt4" role="lGtFl">
                <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
              </node>
            </node>
            <node concept="17Uvod" id="7OlFYOZaOt5" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="7OlFYOZaOt6" role="3zH0cK">
                <node concept="3clFbS" id="7OlFYOZaOt7" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaOt8" role="3cqZAp">
                    <node concept="3cpWs3" id="7OlFYOZaUay" role="3clFbG">
                      <node concept="Xl_RD" id="7OlFYOZaUcQ" role="3uHU7w">
                        <property role="Xl_RC" value="Service" />
                      </node>
                      <node concept="3cpWs3" id="7OlFYOZaOt9" role="3uHU7B">
                        <node concept="3cpWs3" id="7OlFYOZaOtf" role="3uHU7B">
                          <node concept="3cpWs3" id="7OlFYOZaOtg" role="3uHU7B">
                            <node concept="2OqwBi" id="7OlFYOZaOth" role="3uHU7B">
                              <node concept="2OqwBi" id="7OlFYOZaOti" role="2Oq$k0">
                                <node concept="30H73N" id="7OlFYOZaOtj" role="2Oq$k0" />
                                <node concept="3TrEf2" id="7OlFYOZaOtk" role="2OqNvi">
                                  <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7OlFYOZaOtl" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7OlFYOZaOtm" role="3uHU7w">
                              <property role="Xl_RC" value=" Interface " />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="7OlFYOZaOtn" role="3uHU7w">
                            <property role="Xl_RC" value=" is assigned to " />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7OlFYOZaOta" role="3uHU7w">
                          <node concept="2OqwBi" id="7OlFYOZaOtb" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZaOtc" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZaTmc" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZaOte" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ZhdrF" id="7OlFYOZaOto" role="lGtFl">
              <property role="2qtEX8" value="source" />
              <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
              <node concept="3$xsQk" id="7OlFYOZaOtp" role="3$ytzL">
                <node concept="3clFbS" id="7OlFYOZaOtq" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaOtr" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZaOts" role="3clFbG">
                      <node concept="1iwH7S" id="7OlFYOZaOtt" role="2Oq$k0" />
                      <node concept="1iwH70" id="7OlFYOZaOtu" role="2OqNvi">
                        <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                        <node concept="2OqwBi" id="7OlFYOZaOtv" role="1iwH7V">
                          <node concept="30H73N" id="7OlFYOZaOtw" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZaOtx" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ZhdrF" id="7OlFYOZaOty" role="lGtFl">
              <property role="2qtEX8" value="target" />
              <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
              <node concept="3$xsQk" id="7OlFYOZaOtz" role="3$ytzL">
                <node concept="3clFbS" id="7OlFYOZaOt$" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaOt_" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZaOtA" role="3clFbG">
                      <node concept="1iwH7S" id="7OlFYOZaOtB" role="2Oq$k0" />
                      <node concept="1iwH70" id="7OlFYOZaOtC" role="2OqNvi">
                        <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                        <node concept="2OqwBi" id="7OlFYOZaOtD" role="1iwH7V">
                          <node concept="30H73N" id="7OlFYOZaOtE" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZaUuT" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="30G5F_" id="7OlFYOZaOtG" role="30HLyM">
          <node concept="3clFbS" id="7OlFYOZaOtH" role="2VODD2">
            <node concept="3clFbF" id="71ZUOKkDXpy" role="3cqZAp">
              <node concept="1Wc70l" id="71ZUOKkDXpz" role="3clFbG">
                <node concept="1Wc70l" id="71ZUOKkDXp$" role="3uHU7B">
                  <node concept="1eOMI4" id="71ZUOKkDXp_" role="3uHU7B">
                    <node concept="22lmx$" id="71ZUOKkDXpA" role="1eOMHV">
                      <node concept="2OqwBi" id="71ZUOKkDXpB" role="3uHU7B">
                        <node concept="2OqwBi" id="71ZUOKkDXpC" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkDXpD" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKkDXpE" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKkDXpF" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKkDXpG" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKkDXpH" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="71ZUOKkDXpI" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="71ZUOKkDXpJ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="71ZUOKkDXpK" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="71ZUOKkDXpL" role="3uHU7w">
                        <node concept="2OqwBi" id="71ZUOKkDXpM" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkDXpN" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKkDXpO" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKkDXpP" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKkDXpQ" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKkDXpR" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="71ZUOKkDXpS" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="71ZUOKkDXpT" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="71ZUOKkDXpU" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="71ZUOKkDXpV" role="3uHU7w">
                    <node concept="22lmx$" id="71ZUOKkDXpW" role="1eOMHV">
                      <node concept="2OqwBi" id="71ZUOKkDXpX" role="3uHU7B">
                        <node concept="2OqwBi" id="71ZUOKkDXpY" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkDXpZ" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKkDXq0" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKkDXq1" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKkDXq2" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKkDXq3" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="71ZUOKkDXq4" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="71ZUOKkDXq5" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="71ZUOKkDXq6" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="71ZUOKkDXq7" role="3uHU7w">
                        <node concept="2OqwBi" id="71ZUOKkDXq8" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkDXq9" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKkDXqa" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKkDXqb" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKkDXqc" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKkDXqd" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="71ZUOKkDXqe" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="71ZUOKkDXqf" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="71ZUOKkDXqg" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="71ZUOKkDXqh" role="3uHU7w">
                  <node concept="2OqwBi" id="71ZUOKkDXqi" role="2Oq$k0">
                    <node concept="2OqwBi" id="71ZUOKkDXqj" role="2Oq$k0">
                      <node concept="30H73N" id="71ZUOKkDXqk" role="2Oq$k0" />
                      <node concept="3TrEf2" id="71ZUOKkDXql" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="71ZUOKkDXqm" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="71ZUOKkDXqn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="71ZUOKkDXqo" role="37wK5m">
                      <property role="Xl_RC" value="ConnectsTo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="71ZUOKkDYgU" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="71ZUOKkDZ_x" role="1lVwrX">
        <node concept="3ayPfj" id="71ZUOKkDZ__" role="gfFT$">
          <property role="TrG5h" value="dummyAsign" />
          <ref role="2f7WfT" node="3BqcHtVBvDH" resolve="dummyTechnologyInterface" />
          <ref role="2f7WfU" node="3BqcHtVwQZN" resolve="dummyService" />
          <node concept="2w_qc2" id="71ZUOKkDZ_D" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="71ZUOKkDZ_E" role="lGtFl">
              <node concept="3JmXsc" id="71ZUOKkDZ_F" role="3Jn$fo">
                <node concept="3clFbS" id="71ZUOKkDZ_G" role="2VODD2">
                  <node concept="3clFbF" id="71ZUOKkDZ_H" role="3cqZAp">
                    <node concept="2OqwBi" id="71ZUOKkDZ_I" role="3clFbG">
                      <node concept="30H73N" id="71ZUOKkDZ_J" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="71ZUOKkDZ_K" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="71ZUOKkDZ_L" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="71ZUOKkE0l$" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="71ZUOKkE0l_" role="3zH0cK">
              <node concept="3clFbS" id="71ZUOKkE0lA" role="2VODD2">
                <node concept="3clFbF" id="71ZUOKkE0x4" role="3cqZAp">
                  <node concept="3cpWs3" id="71ZUOKkE0x5" role="3clFbG">
                    <node concept="Xl_RD" id="71ZUOKkE0x6" role="3uHU7w">
                      <property role="Xl_RC" value="Service" />
                    </node>
                    <node concept="3cpWs3" id="71ZUOKkE0x7" role="3uHU7B">
                      <node concept="3cpWs3" id="71ZUOKkE0x8" role="3uHU7B">
                        <node concept="3cpWs3" id="71ZUOKkE0x9" role="3uHU7B">
                          <node concept="2OqwBi" id="71ZUOKkE0xa" role="3uHU7B">
                            <node concept="2OqwBi" id="71ZUOKkE0xb" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKkE0xc" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKkE0xd" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="71ZUOKkE0xe" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="71ZUOKkE0xf" role="3uHU7w">
                            <property role="Xl_RC" value=" Interface " />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="71ZUOKkE0xg" role="3uHU7w">
                          <property role="Xl_RC" value=" is assigned to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="71ZUOKkE0xh" role="3uHU7w">
                        <node concept="2OqwBi" id="71ZUOKkE0xi" role="2Oq$k0">
                          <node concept="30H73N" id="71ZUOKkE0xj" role="2Oq$k0" />
                          <node concept="3TrEf2" id="71ZUOKkE0xk" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkE0xl" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="71ZUOKkE2rc" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="71ZUOKkE2rd" role="3$ytzL">
              <node concept="3clFbS" id="71ZUOKkE2re" role="2VODD2">
                <node concept="3clFbF" id="71ZUOKkE2Hs" role="3cqZAp">
                  <node concept="2OqwBi" id="71ZUOKkE2Ht" role="3clFbG">
                    <node concept="1iwH7S" id="71ZUOKkE2Hu" role="2Oq$k0" />
                    <node concept="1iwH70" id="71ZUOKkE2Hv" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="71ZUOKkE2Hw" role="1iwH7V">
                        <node concept="30H73N" id="71ZUOKkE2Hx" role="2Oq$k0" />
                        <node concept="3TrEf2" id="71ZUOKkE2Hy" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="71ZUOKkE2Vm" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="71ZUOKkE2Vn" role="3$ytzL">
              <node concept="3clFbS" id="71ZUOKkE2Vo" role="2VODD2">
                <node concept="3clFbF" id="71ZUOKkE34a" role="3cqZAp">
                  <node concept="2OqwBi" id="71ZUOKkE34b" role="3clFbG">
                    <node concept="1iwH7S" id="71ZUOKkE34c" role="2Oq$k0" />
                    <node concept="1iwH70" id="71ZUOKkE34d" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVyzdi" resolve="componentToTechnologyService" />
                      <node concept="2OqwBi" id="71ZUOKkE34e" role="1iwH7V">
                        <node concept="30H73N" id="71ZUOKkE34f" role="2Oq$k0" />
                        <node concept="3TrEf2" id="71ZUOKkE34g" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="71ZUOKkE16F" role="30HLyM">
        <node concept="3clFbS" id="71ZUOKkE16G" role="2VODD2">
          <node concept="3clFbF" id="71ZUOKkE1ij" role="3cqZAp">
            <node concept="1Wc70l" id="71ZUOKkE1ik" role="3clFbG">
              <node concept="1Wc70l" id="71ZUOKkE1il" role="3uHU7B">
                <node concept="1eOMI4" id="71ZUOKkE1im" role="3uHU7B">
                  <node concept="22lmx$" id="71ZUOKkE1in" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKkE1io" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKkE1ip" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkE1iq" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkE1ir" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkE1is" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkE1it" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkE1iu" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkE1iv" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkE1iw" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkE1ix" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="71ZUOKkE1iy" role="3uHU7w">
                      <node concept="2OqwBi" id="71ZUOKkE1iz" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkE1i$" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkE1i_" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkE1iA" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkE1iB" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkE1iC" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkE1iD" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkE1iE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkE1iF" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="71ZUOKkE1iG" role="3uHU7w">
                  <node concept="22lmx$" id="71ZUOKkE1iH" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKkE1iI" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKkE1iJ" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkE1iK" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkE1iL" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkE1iM" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkE1iN" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkE1iO" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkE1iP" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkE1iQ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkE1iR" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="71ZUOKkE1iS" role="3uHU7w">
                      <node concept="2OqwBi" id="71ZUOKkE1iT" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkE1iU" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkE1iV" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkE1iW" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkE1iX" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkE1iY" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkE1iZ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkE1j0" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkE1j1" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="71ZUOKkE1j2" role="3uHU7w">
                <node concept="2OqwBi" id="71ZUOKkE1j3" role="2Oq$k0">
                  <node concept="2OqwBi" id="71ZUOKkE1j4" role="2Oq$k0">
                    <node concept="30H73N" id="71ZUOKkE1j5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="71ZUOKkE1j6" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="71ZUOKkE1j7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="71ZUOKkE1j8" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="71ZUOKkE1j9" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZaU$d" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZaVlO" role="1lVwrX">
        <node concept="3ayPfj" id="7OlFYOZaVlS" role="gfFT$">
          <property role="TrG5h" value="dummyAssignment" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="3BqcHtVwQtD" resolve="dummyArtifact" />
          <node concept="2w_qc2" id="7OlFYOZaVlT" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZaVlU" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZaVlV" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZaVlW" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZaVlX" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZaVlY" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZaVlZ" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZaVm0" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZaVm1" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZaXj9" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZaXja" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZaXjb" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZaXzq" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZb3__" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZb3_D" role="3uHU7w">
                      <property role="Xl_RC" value=" Artifact" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZb02K" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZaZPQ" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZaYoG" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZaXRl" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZaXzp" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZaY3I" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZaYDd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZaZRN" role="3uHU7w">
                          <property role="Xl_RC" value=" is assigned to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZb1or" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZb0qM" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZb04R" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZb0Ex" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZb1TH" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZb3I5" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZb3I6" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZb3I7" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZb3RO" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZb47z" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZb3RN" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZb4gf" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZb4HT" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZb4qn" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZb4XK" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZb53H" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZb53I" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZb53J" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZb5cl" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZb5hv" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZb5ck" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZb5mu" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFVn8" resolve="componentArtifactToArtifact" />
                      <node concept="2YIFZM" id="7OlFYOZg8I0" role="1iwH7V">
                        <ref role="37wK5l" to="5uy:7OlFYOZfNzN" resolve="getDockerImageArtifact" />
                        <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                        <node concept="2OqwBi" id="7OlFYOZg9Fh" role="37wK5m">
                          <node concept="2OqwBi" id="7OlFYOZg90V" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZg8JJ" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZg9kv" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZg9Wh" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZaWg9" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZaWga" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZaWuI" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZaWuJ" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZaWuK" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZaWuL" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZaWuM" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZaWuN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZaWuO" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZaWuP" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZaWuQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZaWuR" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZaWuS" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZaWuT" role="3uHU7B">
                  <node concept="1Wc70l" id="7OlFYOZaWuU" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZaWuV" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZaWuW" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZaWuX" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZaWuY" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZaWuZ" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZaWv0" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZaWv1" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZaWv2" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZaWv3" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZaWv4" role="37wK5m">
                          <property role="Xl_RC" value="-SoftwareApplication" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7OlFYOZaXew" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZaXey" role="3fr31v">
                        <node concept="2OqwBi" id="7OlFYOZaXez" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZaXe$" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZaXe_" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZaXeA" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZaXeB" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                        <node concept="1v1jN8" id="7OlFYOZaXeC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZaWvc" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZaWvd" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZaWve" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZaWvf" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZaWvg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZaWvh" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZaWvi" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZaWvj" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZaWvk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZaWvl" role="37wK5m">
                      <property role="Xl_RC" value="localhost-type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZj8FK" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZj8FL" role="1lVwrX">
        <node concept="3ayPfj" id="7OlFYOZj8FM" role="gfFT$">
          <property role="TrG5h" value="dummyAssignment" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="3BqcHtVwQtD" resolve="dummyArtifact" />
          <node concept="2w_qc2" id="7OlFYOZj8FN" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZj8FO" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZj8FP" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZj8FQ" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZj8FR" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZj8FS" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZj8FT" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZj8FU" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZj8FV" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZj8FW" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZj8FX" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZj8FY" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZj8FZ" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZj8G0" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZj8G1" role="3uHU7w">
                      <property role="Xl_RC" value=" Artifact" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZj8G2" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZj8G3" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZj8G4" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZj8G5" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZj8G6" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZj8G7" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZj8G8" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZj8G9" role="3uHU7w">
                          <property role="Xl_RC" value=" is assigned to " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZj8Ga" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZj8Gb" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZj8Gc" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZj8Gd" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZj8Ge" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZj8Gf" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZj8Gg" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZj8Gh" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZj8Gi" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZj8Gj" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZj8Gk" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZj8Gl" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZj8Gm" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZj8Gn" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZj8Go" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZj8Gp" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZj8Gq" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZj8Gr" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZj8Gs" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZj8Gt" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZj8Gu" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZj8Gv" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFVn8" resolve="componentArtifactToArtifact" />
                      <node concept="2YIFZM" id="7OlFYOZj8Gw" role="1iwH7V">
                        <ref role="37wK5l" to="5uy:7OlFYOZfNzN" resolve="getDockerImageArtifact" />
                        <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                        <node concept="2OqwBi" id="7OlFYOZj8Gx" role="37wK5m">
                          <node concept="2OqwBi" id="7OlFYOZj8Gy" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZj8Gz" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZj8G$" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZj8G_" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZj8GA" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZj8GB" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZj8GC" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZj8GD" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZj8GE" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZj8GF" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZj8GG" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZj8GH" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZj8GI" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZj8GJ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZj8GK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZj8GL" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="71ZUOKl4BXc" role="3uHU7B">
                <node concept="1eOMI4" id="71ZUOKlCEE7" role="3uHU7w">
                  <node concept="22lmx$" id="71ZUOKlCF68" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKlCIVM" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKlCI6f" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKlCHEr" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKlCGPk" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKlCF_S" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKlCFfm" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKlCGuy" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKlCHoO" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKlCI01" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKlCIfW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKlCJJA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKlCJRq" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZjdjP" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZjdjQ" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZjdjR" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZjdjS" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZjdjT" role="2Oq$k0">
                              <node concept="2OqwBi" id="7OlFYOZjdjU" role="2Oq$k0">
                                <node concept="30H73N" id="7OlFYOZjdjV" role="2Oq$k0" />
                                <node concept="3TrEf2" id="7OlFYOZjdjW" role="2OqNvi">
                                  <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="7OlFYOZjdjX" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZjdjY" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZjdjZ" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZjdk0" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZjdk1" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZjdk2" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="7OlFYOZj8GM" role="3uHU7B">
                  <node concept="1eOMI4" id="7OlFYOZj8GN" role="3uHU7B">
                    <node concept="1Wc70l" id="7OlFYOZj8GO" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZj8GP" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZj8GQ" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZj8GR" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZj8GS" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZj8GT" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZj8GU" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZj8GV" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZj8GW" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZj8GX" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZj8GY" role="37wK5m">
                            <property role="Xl_RC" value="-SoftwareApplication" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7OlFYOZj8GZ" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZj8H0" role="3fr31v">
                          <node concept="2OqwBi" id="7OlFYOZj8H1" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZj8H2" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZj8H3" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZj8H4" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="7OlFYOZj8H5" role="2OqNvi">
                              <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                            </node>
                          </node>
                          <node concept="1v1jN8" id="7OlFYOZj8H6" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="71ZUOKl4Gzq" role="3uHU7w">
                    <node concept="2OqwBi" id="71ZUOKl4FiS" role="2Oq$k0">
                      <node concept="2OqwBi" id="71ZUOKl4Eu4" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKl4DCN" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKl4CPL" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKl4CvG" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKl4Do1" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKl4Ed5" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="71ZUOKl4F3W" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="71ZUOKl4FTf" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="71ZUOKl4GDO" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="7OlFYOZatle" role="jxRDz" />
  </node>
  <node concept="jVnub" id="7OlFYOZs$Ri">
    <property role="TrG5h" value="switchRelationsToRealizeRelationship" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="7OlFYOZs_4A" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZs_4B" role="1lVwrX">
        <node concept="3ayPfi" id="7OlFYOZsBri" role="gfFT$">
          <property role="TrG5h" value="dummyRealization" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfT" node="3BqcHtVwQtD" resolve="dummyArtifact" />
          <node concept="2w_qc2" id="7OlFYOZsBSZ" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZsBT0" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZsBT1" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZsBT2" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZsBT3" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZsBT4" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZsBT5" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZsBT6" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZsBT7" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZsCls" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZsClt" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZsClu" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsCwV" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZsEoo" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZsEwb" role="3uHU7w">
                      <node concept="30H73N" id="7OlFYOZsEpq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7OlFYOZsFM_" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZsE5x" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZsGXr" role="3uHU7B">
                        <node concept="Xl_RD" id="7OlFYOZsGYy" role="3uHU7w">
                          <property role="Xl_RC" value=" Artifact " />
                        </node>
                        <node concept="2OqwBi" id="7OlFYOZsDji" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZsCOQ" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZsCwU" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZsD48" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZsDzr" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZsE5_" role="3uHU7w">
                        <property role="Xl_RC" value=" realizes " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZsH5n" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZsH5o" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZsH5p" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsHBo" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZsHBp" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZsHBq" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZsHBr" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFVn8" resolve="componentArtifactToArtifact" />
                      <node concept="2YIFZM" id="7OlFYOZsHBs" role="1iwH7V">
                        <ref role="37wK5l" to="5uy:7OlFYOZfNzN" resolve="getDockerImageArtifact" />
                        <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                        <node concept="2OqwBi" id="7OlFYOZsHBt" role="37wK5m">
                          <node concept="2OqwBi" id="7OlFYOZsHBu" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZsHBv" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZsHBw" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZsHBx" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZsHZp" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZsHZq" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZsHZr" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsIih" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZsIvX" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZsIig" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZsIFL" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZsJbf" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZsIRH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZsJvM" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZs_5s" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZs_5t" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZs_5u" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZs_5v" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZs_5w" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZs_5x" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZs_5y" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZs_5z" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZs_5$" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZs_5_" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZs_5A" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZs_5B" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZs_5C" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZs_5D" role="3uHU7B">
                  <node concept="1Wc70l" id="7OlFYOZs_5E" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZs_5F" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZs_5G" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZs_5H" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZs_5I" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZs_5J" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZs_5K" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZs_5L" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZs_5M" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZs_5N" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZs_5O" role="37wK5m">
                          <property role="Xl_RC" value="-SoftwareApplication" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7OlFYOZs_5P" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZs_5Q" role="3fr31v">
                        <node concept="2OqwBi" id="7OlFYOZs_5R" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZs_5S" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZs_5T" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZs_5U" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZs_5V" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                        <node concept="1v1jN8" id="7OlFYOZs_5W" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZs_5X" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZs_5Y" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZs_5Z" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZs_60" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZs_61" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZs_62" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZs_63" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZs_64" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZs_65" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZs_66" role="37wK5m">
                      <property role="Xl_RC" value="localhost-type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZsL3a" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZsL3b" role="1lVwrX">
        <node concept="3ayPfi" id="7OlFYOZsL3c" role="gfFT$">
          <property role="TrG5h" value="dummyRealization" />
          <ref role="2f7WfU" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfT" node="3BqcHtVwQtD" resolve="dummyArtifact" />
          <node concept="2w_qc2" id="7OlFYOZsL3d" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZsL3e" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZsL3f" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZsL3g" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZsL3h" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZsL3i" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZsL3j" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZsL3k" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZsL3l" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZsL3m" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZsL3n" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZsL3o" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsL3p" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZsL3q" role="3clFbG">
                    <node concept="2OqwBi" id="7OlFYOZsL3r" role="3uHU7w">
                      <node concept="30H73N" id="7OlFYOZsL3s" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7OlFYOZsL3t" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZsL3u" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZsL3v" role="3uHU7B">
                        <node concept="Xl_RD" id="7OlFYOZsL3w" role="3uHU7w">
                          <property role="Xl_RC" value=" Artifact " />
                        </node>
                        <node concept="2OqwBi" id="7OlFYOZsL3x" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZsL3y" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZsL3z" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZsL3$" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZsL3_" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZsL3A" role="3uHU7w">
                        <property role="Xl_RC" value=" realizes " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZsL3B" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZsL3C" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZsL3D" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsL3E" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZsL3F" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZsL3G" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZsL3H" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFVn8" resolve="componentArtifactToArtifact" />
                      <node concept="2YIFZM" id="7OlFYOZsL3I" role="1iwH7V">
                        <ref role="37wK5l" to="5uy:7OlFYOZfNzN" resolve="getDockerImageArtifact" />
                        <ref role="1Pybhc" to="5uy:6CaXf9UnrQe" resolve="transformationUtil" />
                        <node concept="2OqwBi" id="7OlFYOZsL3J" role="37wK5m">
                          <node concept="2OqwBi" id="7OlFYOZsL3K" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZsL3L" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZsL3M" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7OlFYOZsL3N" role="2OqNvi">
                            <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZsL3O" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZsL3P" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZsL3Q" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZsL3R" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZsL3S" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZsL3T" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZsL3U" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZsL3V" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZsL3W" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZsL3X" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZsL3Y" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZsL3Z" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZsL40" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZsL41" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZsL42" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZsL43" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZsL44" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZsL45" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZsL46" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZsL47" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZsL48" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZsL49" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="71ZUOKl7HWk" role="3uHU7B">
                <node concept="1eOMI4" id="71ZUOKlG1_i" role="3uHU7w">
                  <node concept="22lmx$" id="71ZUOKlG1LX" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKlG5VS" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKlG584" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKlG3Hu" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKlG2OQ" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKlG2fe" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKlG1SG" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKlG2zs" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKlG3rR" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKlG4jh" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKlG5h7" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKlG6Q4" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKlG6Wu" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZsNZW" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZsNZX" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZsNZY" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZsNZZ" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZsO00" role="2Oq$k0">
                              <node concept="2OqwBi" id="7OlFYOZsO01" role="2Oq$k0">
                                <node concept="30H73N" id="7OlFYOZsO02" role="2Oq$k0" />
                                <node concept="3TrEf2" id="7OlFYOZ_YPS" role="2OqNvi">
                                  <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="7OlFYOZsO04" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZsO05" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZsO06" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZsO07" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZsO08" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZsO09" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="7OlFYOZsL4a" role="3uHU7B">
                  <node concept="1eOMI4" id="7OlFYOZsL4b" role="3uHU7B">
                    <node concept="1Wc70l" id="7OlFYOZsL4c" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZsL4d" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZsL4e" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZsL4f" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZsL4g" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZsL4h" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZsL4i" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZsL4j" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZsL4k" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZsL4l" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZsL4m" role="37wK5m">
                            <property role="Xl_RC" value="-SoftwareApplication" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7OlFYOZsL4n" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZsL4o" role="3fr31v">
                          <node concept="2OqwBi" id="7OlFYOZsL4p" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZsL4q" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZsL4r" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZsL4s" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="7OlFYOZsL4t" role="2OqNvi">
                              <ref role="3TtcxE" to="wuz1:1sN103qRG4g" resolve="artifacts" />
                            </node>
                          </node>
                          <node concept="1v1jN8" id="7OlFYOZsL4u" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="71ZUOKl7KYN" role="3uHU7w">
                    <node concept="2OqwBi" id="71ZUOKl7KCa" role="2Oq$k0">
                      <node concept="2OqwBi" id="71ZUOKl7JYN" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKl7Jaf" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKl7IrP" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKl7I8L" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKl7ITt" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKl7JHO" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="71ZUOKl7Ky$" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="71ZUOKl7KJM" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="71ZUOKl7LAK" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="71ZUOKl4s6E" role="jxRDz" />
  </node>
  <node concept="jVnub" id="7OlFYOZHEVc">
    <property role="TrG5h" value="swtichRelationsToCompositionRelationship" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="7OlFYOZJguY" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJguZ" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJiq9" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJj1D" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJj1E" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJj1F" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJj1G" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJj1H" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJj1I" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJj1J" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJj1K" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJj1L" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJjhB" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJjhC" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJjhD" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJjt6" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJvOp" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZJvOt" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZJlcT" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZJl2T" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJkgi" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZJjL1" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJjt5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJk0j" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJkwN" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZJl2X" role="3uHU7w">
                          <property role="Xl_RC" value=" is composed of " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJml9" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJlDE" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJldV" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJvzX" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJm_E" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJmB2" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJmB3" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJmB4" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJmKB" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJmYj" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJmKA" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJn9T" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv947" resolve="componentToApplicationComponent" />
                      <node concept="2OqwBi" id="7OlFYOZJnvd" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJnlp" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJnKx" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJnOr" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJnOs" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJnOt" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJnWT" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJo2A" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJnWS" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJobR" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfb" resolve="componentToApplicationInterface" />
                      <node concept="2OqwBi" id="7OlFYOZJoAt" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJojj" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJpbI" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJgvL" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJgvM" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZJgvN" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZJgvO" role="3clFbG">
              <node concept="1Wc70l" id="7OlFYOZJgvP" role="3uHU7B">
                <node concept="2OqwBi" id="7OlFYOZJgvQ" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZJgvR" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZJgvS" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZJgvT" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZJgvU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJgvV" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZJgvW" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZJgvX" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZJgvY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZJgvZ" role="37wK5m">
                      <property role="Xl_RC" value="-SoftwareApplication" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZJgw0" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZJgw1" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZJgw2" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZJgw3" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZJgw4" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJgw5" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZJgw6" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZJgw7" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZJgw8" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZJgw9" role="37wK5m">
                      <property role="Xl_RC" value="-SoftwareApplication" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZJgwa" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZJgwb" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZJgwc" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZJgwd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZJgwe" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZJgwf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZJgwg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZJgwh" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZJqaH" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJqaI" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJsi3" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJsi4" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJsi5" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJsi6" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJsi7" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJsi8" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJsi9" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJsia" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJsib" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJsic" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJsid" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJsie" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJsif" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJsig" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJv8n" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZJv8r" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZJsih" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZJsin" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJsio" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZJsip" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJsiq" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJsir" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJsis" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZJsit" role="3uHU7w">
                          <property role="Xl_RC" value=" is composed of " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJsii" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJsij" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJsik" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJtwd" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJsim" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJsiu" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJsiv" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJsiw" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJsix" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJsiy" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJsiz" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJsi$" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZJsi_" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJsiA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJsiB" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJsiC" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJsiD" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJsiE" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJsiF" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJsiG" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJsiH" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJsiI" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="7OlFYOZJsiJ" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJsiK" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJsiL" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJqbw" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJqbx" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZJqby" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZJqbz" role="3clFbG">
              <node concept="1eOMI4" id="7OlFYOZJqb$" role="3uHU7B">
                <node concept="1Wc70l" id="7OlFYOZJqb_" role="1eOMHV">
                  <node concept="2OqwBi" id="7OlFYOZJqbA" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZJqbB" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZJqbC" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJqbD" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJqbE" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJqbF" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZJqbG" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZJqbH" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZJqbI" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZJqbJ" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZJqbK" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZJqbL" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZJqbM" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJqbN" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJqbO" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZJqbP" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZJqbQ" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZJqbR" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZJqbS" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJqbT" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZJqbU" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZJqbV" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJqbW" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJqbX" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJqbY" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZJqbZ" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZJqc0" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZJqc1" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZJqc2" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJqc3" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZJqc4" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZJqc5" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZJqc6" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZJqc7" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZJqc8" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZJqc9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZJqca" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZJqcb" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZJqcc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZJqcd" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZJx4t" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJx4u" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJzQR" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJzQS" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJzQT" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJzQU" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJzQV" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJzQW" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJzQX" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJzQY" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJzQZ" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJzR0" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJzR1" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJzR2" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJzR3" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJzR4" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJzR5" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZJzR6" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZJzR7" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZJzR8" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJzR9" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZJzRa" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJzRb" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJ_z8" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJzRd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZJzRe" role="3uHU7w">
                          <property role="Xl_RC" value=" is composed of " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJzRf" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJzRg" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJzRh" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJ_Bh" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJzRj" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJzRk" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJzRl" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJzRm" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJzRn" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJzRo" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJzRp" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJzRq" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZJzRr" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJzRs" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJA8A" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJzRu" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJzRv" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJzRw" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJzRx" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJzRy" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJzRz" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJzR$" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="7OlFYOZJzR_" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJzRA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJApV" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJx5g" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJx5h" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZJx5i" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZJx5j" role="3clFbG">
              <node concept="1eOMI4" id="7OlFYOZJx5k" role="3uHU7B">
                <node concept="1Wc70l" id="7OlFYOZJx5l" role="1eOMHV">
                  <node concept="2OqwBi" id="7OlFYOZJx5m" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZJx5n" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZJx5o" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJx5p" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJx5q" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJx5r" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZJx5s" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZJx5t" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZJx5u" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZJx5v" role="37wK5m">
                        <property role="Xl_RC" value="-SoftwareApplication" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="7OlFYOZJx5w" role="3uHU7w">
                    <node concept="22lmx$" id="7OlFYOZJx5x" role="1eOMHV">
                      <node concept="2OqwBi" id="7OlFYOZJx5y" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJx5z" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJx5$" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZJx5_" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZJx5A" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZJx5B" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZJx5C" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJx5D" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZJx5E" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZJx5F" role="37wK5m">
                            <property role="Xl_RC" value="-DatabaseSystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJx5G" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJx5H" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJx5I" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZJx5J" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZJx5K" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZJx5L" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZJx5M" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJx5N" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7OlFYOZJx5O" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                          <node concept="Xl_RD" id="7OlFYOZJx5P" role="37wK5m">
                            <property role="Xl_RC" value="-MessageBroker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7OlFYOZJx5Q" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZJx5R" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZJx5S" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZJx5T" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZJx5U" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZJx5V" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZJx5W" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZJx5X" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZJBVy" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJBVz" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJEiu" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJEiv" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJEiw" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJEix" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJEiy" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJEiz" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJEi$" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJEi_" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJEiA" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJEiB" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJEiC" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJEiD" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJEiE" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJEiF" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJEiG" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZJEiH" role="3uHU7w">
                      <property role="Xl_RC" value="Interface" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZJEiI" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZJEiJ" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJEiK" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZJEiL" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJEiM" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJG1E" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZJEiO" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZJEiP" role="3uHU7w">
                          <property role="Xl_RC" value=" is composed of " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZJEiQ" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZJEiR" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJEiS" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJGEC" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJEiU" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJEiV" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJEiW" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJEiX" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJEiY" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJEiZ" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJEj0" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJEj1" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZJEj2" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJEj3" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJGVj" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJEj5" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJEj6" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJEj7" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJEj8" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJEj9" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJEja" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJEjb" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVFTfa" resolve="componentToTechnologyInterface" />
                      <node concept="2OqwBi" id="7OlFYOZJEjc" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJEjd" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJHac" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJBWl" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJBWm" role="2VODD2">
          <node concept="3clFbF" id="71ZUOKkEiHt" role="3cqZAp">
            <node concept="1Wc70l" id="71ZUOKkEiHu" role="3clFbG">
              <node concept="1Wc70l" id="71ZUOKkEiHv" role="3uHU7B">
                <node concept="1eOMI4" id="71ZUOKkEiHw" role="3uHU7B">
                  <node concept="22lmx$" id="71ZUOKkEiHx" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKkEiHy" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKkEiHz" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkEiH$" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkEiH_" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkEiHA" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkEiHB" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkEiHC" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkEiHD" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkEiHE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkEiHF" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="71ZUOKkEiHG" role="3uHU7w">
                      <node concept="2OqwBi" id="71ZUOKkEiHH" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkEiHI" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkEiHJ" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkEiHK" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkEiHL" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkEiHM" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkEiHN" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkEiHO" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkEiHP" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="71ZUOKkEiHQ" role="3uHU7w">
                  <node concept="22lmx$" id="71ZUOKkEiHR" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKkEiHS" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKkEiHT" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkEiHU" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkEiHV" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkEiHW" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkEiHX" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkEiHY" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkEiHZ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkEiI0" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkEiI1" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="71ZUOKkEiI2" role="3uHU7w">
                      <node concept="2OqwBi" id="71ZUOKkEiI3" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKkEiI4" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKkEiI5" role="2Oq$k0">
                            <node concept="30H73N" id="71ZUOKkEiI6" role="2Oq$k0" />
                            <node concept="3TrEf2" id="71ZUOKkEiI7" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKkEiI8" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKkEiI9" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKkEiIa" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKkEiIb" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="71ZUOKkEiIc" role="3uHU7w">
                <node concept="2OqwBi" id="71ZUOKkEiId" role="2Oq$k0">
                  <node concept="2OqwBi" id="71ZUOKkEiIe" role="2Oq$k0">
                    <node concept="30H73N" id="71ZUOKkEiIf" role="2Oq$k0" />
                    <node concept="3TrEf2" id="71ZUOKkEiIg" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="71ZUOKkEiIh" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="71ZUOKkEiIi" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="71ZUOKkEiIj" role="37wK5m">
                    <property role="Xl_RC" value="ConnectsTo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZJISO" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJISP" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJTEc" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJTEd" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJTEe" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJTEf" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJTEg" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJTEh" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJTEi" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJTEj" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJTEk" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJTEl" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJTEm" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJTEn" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJTEo" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJTEp" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJTEs" role="3clFbG">
                    <node concept="3cpWs3" id="7OlFYOZJTEt" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZJTEu" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJTEv" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJTEw" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJTEx" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJTEy" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZJTEz" role="3uHU7w">
                        <property role="Xl_RC" value=" is composed of " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZJTE$" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZJTE_" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZJTEA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJVkr" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZJTEC" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJTED" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJTEE" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJTEF" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJTEG" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJTEH" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJTEI" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJTEJ" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZJTEK" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJTEL" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJTEM" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJTEN" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJTEO" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJTEP" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJTEQ" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJTER" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJTES" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJTET" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZJTEU" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJTEV" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJWBC" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJIT_" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJITA" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZJITB" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZJITC" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZJITD" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZJITE" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZJITF" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZJITG" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZJITH" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZJITI" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZJITJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZJITK" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZJITL" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZJM8d" role="3uHU7B">
                  <node concept="22lmx$" id="7OlFYOZJMbA" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZJPj7" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZJOmk" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJNGr" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJMx_" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJMff" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJMNV" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZJO6b" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJOCO" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZJPQA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZJPX9" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZJR3a" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZJR3b" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJR3c" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJR3d" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJR3e" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJR3f" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZJR3g" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJR3h" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZJR3i" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZJR3j" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZJIU5" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZJIU6" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZJIU7" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZJIU8" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZJIU9" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJIUa" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZJIUb" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZJIUc" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZJIUd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZJIUe" role="37wK5m">
                      <property role="Xl_RC" value="localhost-type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZJXQR" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZJXQS" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZJXQT" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZJXQU" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZJXQV" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZJXQW" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZJXQX" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZJXQY" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZJXQZ" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZJXR0" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZJXR1" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZJXR2" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZJXR3" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZJXR4" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZJXR5" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJXR6" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZJXR7" role="3clFbG">
                    <node concept="3cpWs3" id="7OlFYOZJXR8" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZJXR9" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZJXRa" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZJXRb" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZJXRc" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJXRd" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZJXRe" role="3uHU7w">
                        <property role="Xl_RC" value=" is composed of " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZJXRf" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZJXRg" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZJXRh" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJXRi" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZJXRj" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJXRk" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZJXRl" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJXRm" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJXRn" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJXRo" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJXRp" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJXRq" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZJXRr" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJXRs" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJXRt" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZJXRu" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZJXRv" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZJXRw" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZJXRx" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZJXRy" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZJXRz" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZJXR$" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv948" resolve="componentToSystemSoftware" />
                      <node concept="2OqwBi" id="7OlFYOZJXR_" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZJXRA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZJXRB" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZJXRC" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZJXRD" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZJXRE" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZJXRF" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZJXRG" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZJXRH" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZJXRI" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZJXRJ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZJXRK" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZJXRL" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZJXRM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZJXRN" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZJXRO" role="3uHU7B">
                <node concept="1eOMI4" id="7OlFYOZJXRP" role="3uHU7B">
                  <node concept="22lmx$" id="7OlFYOZJXRQ" role="1eOMHV">
                    <node concept="2OqwBi" id="7OlFYOZJXRR" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZJXRS" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJXRT" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJXRU" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJXRV" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJXRW" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZJXRX" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJXRY" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZJXRZ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZJXS0" role="37wK5m">
                          <property role="Xl_RC" value="-DatabaseSystem" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZJXS1" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZJXS2" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZJXS3" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZJXS4" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZJXS5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZJXS6" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZJXS7" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZJXS8" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZJXS9" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZJXSa" role="37wK5m">
                          <property role="Xl_RC" value="-MessageBroker" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="71ZUOKl_kHE" role="3uHU7w">
                  <node concept="22lmx$" id="71ZUOKl_kXS" role="1eOMHV">
                    <node concept="2OqwBi" id="71ZUOKl_oyg" role="3uHU7B">
                      <node concept="2OqwBi" id="71ZUOKl_nIn" role="2Oq$k0">
                        <node concept="2OqwBi" id="71ZUOKl_n4F" role="2Oq$k0">
                          <node concept="2OqwBi" id="71ZUOKl_mwd" role="2Oq$k0">
                            <node concept="2OqwBi" id="71ZUOKl_lug" role="2Oq$k0">
                              <node concept="30H73N" id="71ZUOKl_l7R" role="2Oq$k0" />
                              <node concept="3TrEf2" id="71ZUOKl_mfB" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="71ZUOKl_mN_" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="71ZUOKl_nCX" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="71ZUOKl_nQw" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="71ZUOKl_p7A" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="71ZUOKl_pft" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZK2i6" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZK2i7" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZK2i8" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZK2i9" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZK2ia" role="2Oq$k0">
                              <node concept="2OqwBi" id="7OlFYOZK2ib" role="2Oq$k0">
                                <node concept="30H73N" id="7OlFYOZK2ic" role="2Oq$k0" />
                                <node concept="3TrEf2" id="7OlFYOZK2id" role="2OqNvi">
                                  <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="7OlFYOZK2ie" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZK2if" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZK2ig" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZK2ih" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OlFYOZK2ii" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="Xl_RD" id="7OlFYOZK2ij" role="37wK5m">
                          <property role="Xl_RC" value="ContainerPlatform" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OlFYOZKadd" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZKade" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZKadf" role="gfFT$">
          <property role="TrG5h" value="dummyComopsition" />
          <ref role="2f7WfT" node="43rnOoaHxOH" resolve="appComp" />
          <ref role="2f7WfU" node="3BqcHtVCBV0" resolve="dummyApplicationInterface" />
          <node concept="2w_qc2" id="7OlFYOZKadg" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZKadh" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZKadi" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZKadj" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZKadk" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZKadl" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZKadm" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZKadn" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZKado" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZKadp" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZKadq" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZKadr" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKads" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZKadt" role="3clFbG">
                    <node concept="3cpWs3" id="7OlFYOZKadu" role="3uHU7B">
                      <node concept="2OqwBi" id="7OlFYOZKadv" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZKadw" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZKadx" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZKady" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZKadz" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7OlFYOZKad$" role="3uHU7w">
                        <property role="Xl_RC" value=" is composed of " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OlFYOZKad_" role="3uHU7w">
                      <node concept="2OqwBi" id="7OlFYOZKadA" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZKadB" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKadC" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZKadD" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZKadE" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZKadF" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZKadG" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKadH" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZKadI" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZKadJ" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZKadK" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZKadL" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZKadM" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKadN" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZKadO" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZKadP" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZKadQ" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKadR" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZKadS" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZKadT" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZKadU" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZKadV" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZKadW" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKadX" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZKadY" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZKadZ" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZKae0" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZKae1" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZKae2" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZKae3" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZKae4" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZKae5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZKae6" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZKae7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZKae8" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZKae9" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZKaei" role="3uHU7B">
                <node concept="2OqwBi" id="7OlFYOZKaej" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZKaek" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZKael" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZKaem" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZKaen" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKaeo" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZKaep" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZKaeq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZKaer" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZKaes" role="37wK5m">
                      <property role="Xl_RC" value="CloudProvider" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7OlFYOZKaet" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZKaeu" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OlFYOZKaev" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZKaew" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZKaex" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZKaey" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZKaez" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZKae$" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZKae_" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZKaeA" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7OlFYOZKaeB" role="2OqNvi">
                        <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="7OlFYOZKaeC" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7OlFYOZKaeD" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="7OlFYOZKaeE" role="37wK5m">
                      <property role="Xl_RC" value="ContainerPlatform" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="7OlFYOZHEVd" role="jxRDz" />
  </node>
  <node concept="jVnub" id="7OlFYOZKsIU">
    <property role="TrG5h" value="switchPlatformProviderComposition" />
    <property role="3GE5qa" value="template switches" />
    <node concept="3aamgX" id="7OlFYOZKt0c" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="wuz1:1sN103qRG4r" resolve="Relation" />
      <node concept="gft3U" id="7OlFYOZKt0d" role="1lVwrX">
        <node concept="3ayPfl" id="7OlFYOZKuY7" role="gfFT$">
          <property role="TrG5h" value="dummyComposotion" />
          <ref role="2f7WfT" node="43rnOobaxBr" resolve="localHostNode" />
          <ref role="2f7WfU" node="3BqcHtVCGA9" resolve="dummyDevice" />
          <node concept="2w_qc2" id="7OlFYOZKuY8" role="2wBCvS">
            <property role="2w_q9X" value="42" />
            <ref role="3aAs5u" node="6CaXf9UffSt" resolve="dummyDefiniton" />
            <node concept="1WS0z7" id="7OlFYOZKuY9" role="lGtFl">
              <node concept="3JmXsc" id="7OlFYOZKuYa" role="3Jn$fo">
                <node concept="3clFbS" id="7OlFYOZKuYb" role="2VODD2">
                  <node concept="3clFbF" id="7OlFYOZKuYc" role="3cqZAp">
                    <node concept="2OqwBi" id="7OlFYOZKuYd" role="3clFbG">
                      <node concept="30H73N" id="7OlFYOZKuYe" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7OlFYOZKuYf" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="5jKBG" id="7OlFYOZKuYg" role="lGtFl">
              <ref role="v9R2y" node="43rnOob5LhT" resolve="mapProperty" />
            </node>
          </node>
          <node concept="17Uvod" id="7OlFYOZKuYi" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="7OlFYOZKuYj" role="3zH0cK">
              <node concept="3clFbS" id="7OlFYOZKuYk" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKuYl" role="3cqZAp">
                  <node concept="3cpWs3" id="7OlFYOZPMzw" role="3clFbG">
                    <node concept="Xl_RD" id="7OlFYOZPMz$" role="3uHU7w">
                      <property role="Xl_RC" value=" Device" />
                    </node>
                    <node concept="3cpWs3" id="7OlFYOZKuYm" role="3uHU7B">
                      <node concept="3cpWs3" id="7OlFYOZKuYn" role="3uHU7B">
                        <node concept="2OqwBi" id="7OlFYOZKuYo" role="3uHU7B">
                          <node concept="2OqwBi" id="7OlFYOZKuYp" role="2Oq$k0">
                            <node concept="30H73N" id="7OlFYOZKuYq" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7OlFYOZKuYr" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7OlFYOZKuYs" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7OlFYOZKuYt" role="3uHU7w">
                          <property role="Xl_RC" value=" is composed of " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OlFYOZKuYu" role="3uHU7w">
                        <node concept="2OqwBi" id="7OlFYOZKuYv" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZKuYw" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZKuYx" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="7OlFYOZKuYy" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZKuYz" role="lGtFl">
            <property role="2qtEX8" value="source" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912293" />
            <node concept="3$xsQk" id="7OlFYOZKuY$" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZKuY_" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKuYA" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZKuYB" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZKuYC" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZKuYD" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVv949" resolve="componentToNode" />
                      <node concept="2OqwBi" id="7OlFYOZKuYE" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZKuYF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKuYG" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="7OlFYOZKuYH" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="430a72f5-df99-470c-b009-a2d7eda10a73/8896254119961644561/7717199285682912294" />
            <node concept="3$xsQk" id="7OlFYOZKuYI" role="3$ytzL">
              <node concept="3clFbS" id="7OlFYOZKuYJ" role="2VODD2">
                <node concept="3clFbF" id="7OlFYOZKuYK" role="3cqZAp">
                  <node concept="2OqwBi" id="7OlFYOZKuYL" role="3clFbG">
                    <node concept="1iwH7S" id="7OlFYOZKuYM" role="2Oq$k0" />
                    <node concept="1iwH70" id="7OlFYOZKuYN" role="2OqNvi">
                      <ref role="1iwH77" node="3BqcHtVEPLr" resolve="componentToDevice" />
                      <node concept="2OqwBi" id="7OlFYOZKuYO" role="1iwH7V">
                        <node concept="30H73N" id="7OlFYOZKuYP" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZKuYQ" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7OlFYOZKt0X" role="30HLyM">
        <node concept="3clFbS" id="7OlFYOZKt0Y" role="2VODD2">
          <node concept="3clFbF" id="7OlFYOZKt0Z" role="3cqZAp">
            <node concept="1Wc70l" id="7OlFYOZKt10" role="3clFbG">
              <node concept="2OqwBi" id="7OlFYOZKt11" role="3uHU7w">
                <node concept="2OqwBi" id="7OlFYOZKt12" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OlFYOZKt13" role="2Oq$k0">
                    <node concept="30H73N" id="7OlFYOZKt14" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7OlFYOZKt15" role="2OqNvi">
                      <ref role="3Tt5mk" to="wuz1:1sN103qRG4s" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7OlFYOZKt16" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="7OlFYOZKt17" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="7OlFYOZKt18" role="37wK5m">
                    <property role="Xl_RC" value="HostedOn" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7OlFYOZKvTc" role="3uHU7B">
                <node concept="3fqX7Q" id="7OlFYOZKAGH" role="3uHU7w">
                  <node concept="2OqwBi" id="7OlFYOZKAGJ" role="3fr31v">
                    <node concept="2OqwBi" id="7OlFYOZKAGK" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZKAGL" role="2Oq$k0">
                        <node concept="30H73N" id="7OlFYOZKAGM" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7OlFYOZMmgu" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7OlFYOZKAGO" role="2OqNvi">
                        <ref role="3TtcxE" to="wuz1:1sN103qRFs3" resolve="properties" />
                      </node>
                    </node>
                    <node concept="1v1jN8" id="7OlFYOZKAGP" role="2OqNvi" />
                  </node>
                </node>
                <node concept="1Wc70l" id="7OlFYOZKt19" role="3uHU7B">
                  <node concept="2OqwBi" id="7OlFYOZKt1a" role="3uHU7B">
                    <node concept="2OqwBi" id="7OlFYOZKt1b" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZKt1c" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZKt1d" role="2Oq$k0">
                          <node concept="30H73N" id="7OlFYOZKt1e" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7OlFYOZKt1f" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRG4u" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZKt1g" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZKt1h" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZKt1i" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZKt1j" role="37wK5m">
                        <property role="Xl_RC" value="CloudProvider" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7OlFYOZKt1k" role="3uHU7w">
                    <node concept="2OqwBi" id="7OlFYOZKt1l" role="2Oq$k0">
                      <node concept="2OqwBi" id="7OlFYOZKt1m" role="2Oq$k0">
                        <node concept="2OqwBi" id="7OlFYOZKt1n" role="2Oq$k0">
                          <node concept="2OqwBi" id="7OlFYOZKt1o" role="2Oq$k0">
                            <node concept="2OqwBi" id="7OlFYOZKt1p" role="2Oq$k0">
                              <node concept="30H73N" id="7OlFYOZKt1q" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7OlFYOZKt1r" role="2OqNvi">
                                <ref role="3Tt5mk" to="wuz1:1sN103qRG4t" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7OlFYOZKt1s" role="2OqNvi">
                              <ref role="3Tt5mk" to="wuz1:1sN103qRG4h" resolve="type" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="7OlFYOZKt1t" role="2OqNvi">
                            <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7OlFYOZKt1u" role="2OqNvi">
                          <ref role="3Tt5mk" to="wuz1:1sN103qRFrW" resolve="parentType" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="7OlFYOZKt1v" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7OlFYOZKt1w" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="7OlFYOZKt1x" role="37wK5m">
                        <property role="Xl_RC" value="ContainerPlatform" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="7OlFYOZKsIV" role="jxRDz" />
  </node>
  <node concept="1pmfR0" id="32jQqpfGMAO">
    <property role="TrG5h" value="pruneModelElements" />
    <property role="3GE5qa" value="post-processing scripts" />
    <node concept="1pplIY" id="32jQqpfGMAP" role="1pqMTA">
      <node concept="3clFbS" id="32jQqpfGMAQ" role="2VODD2">
        <node concept="2Gpval" id="697XFv3uhVp" role="3cqZAp">
          <node concept="2GrKxI" id="697XFv3uhVr" role="2Gsz3X">
            <property role="TrG5h" value="enterpriseArchitecture" />
          </node>
          <node concept="2OqwBi" id="697XFv3ujPQ" role="2GsD0m">
            <node concept="1Q6Npb" id="697XFv3ujCs" role="2Oq$k0" />
            <node concept="2RRcyG" id="697XFv3ujZI" role="2OqNvi">
              <node concept="chp4Y" id="697XFv3uk4m" role="3MHsoP">
                <ref role="cht4Q" to="gj8d:1IRV1xUxPyP" resolve="EnterpriseArchitecture" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="697XFv3uhVv" role="2LFqv$">
            <node concept="3cpWs8" id="32jQqpfHbVC" role="3cqZAp">
              <node concept="3cpWsn" id="32jQqpfHbVF" role="3cpWs9">
                <property role="TrG5h" value="referencedComponents" />
                <node concept="2hMVRd" id="32jQqpfHbV$" role="1tU5fm">
                  <node concept="3Tqbb2" id="32jQqpfHbW8" role="2hN53Y">
                    <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                  </node>
                </node>
                <node concept="2ShNRf" id="32jQqpfHc14" role="33vP2m">
                  <node concept="2i4dXS" id="32jQqpfHc0Z" role="2ShVmc">
                    <node concept="3Tqbb2" id="32jQqpfHc10" role="HW$YZ">
                      <ref role="ehGHo" to="gj8d:7HPPZNrUOPn" resolve="AbstractElement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="32jQqpfHc1W" role="3cqZAp" />
            <node concept="2Gpval" id="32jQqpfHc2E" role="3cqZAp">
              <node concept="2GrKxI" id="32jQqpfHc2G" role="2Gsz3X">
                <property role="TrG5h" value="rel" />
              </node>
              <node concept="2OqwBi" id="32jQqpfHcen" role="2GsD0m">
                <node concept="2GrUjf" id="697XFv3umdR" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="697XFv3uhVr" resolve="enterpriseArchitecture" />
                </node>
                <node concept="3Tsc0h" id="32jQqpfHcnI" role="2OqNvi">
                  <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                </node>
              </node>
              <node concept="3clFbS" id="32jQqpfHc2K" role="2LFqv$">
                <node concept="3clFbF" id="32jQqpfHcuh" role="3cqZAp">
                  <node concept="2OqwBi" id="32jQqpfHduH" role="3clFbG">
                    <node concept="37vLTw" id="32jQqpfHcug" role="2Oq$k0">
                      <ref role="3cqZAo" node="32jQqpfHbVF" resolve="referencedComponents" />
                    </node>
                    <node concept="TSZUe" id="32jQqpfHekH" role="2OqNvi">
                      <node concept="2OqwBi" id="32jQqpfHeB8" role="25WWJ7">
                        <node concept="2GrUjf" id="32jQqpfHenU" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="32jQqpfHc2G" resolve="rel" />
                        </node>
                        <node concept="3TrEf2" id="32jQqpfHg3K" role="2OqNvi">
                          <ref role="3Tt5mk" to="gj8d:6GoZXN$1NK_" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="32jQqpfHgaE" role="3cqZAp">
                  <node concept="2OqwBi" id="32jQqpfHhor" role="3clFbG">
                    <node concept="37vLTw" id="32jQqpfHgaC" role="2Oq$k0">
                      <ref role="3cqZAo" node="32jQqpfHbVF" resolve="referencedComponents" />
                    </node>
                    <node concept="TSZUe" id="32jQqpfHier" role="2OqNvi">
                      <node concept="2OqwBi" id="32jQqpfHitC" role="25WWJ7">
                        <node concept="2GrUjf" id="32jQqpfHigW" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="32jQqpfHc2G" resolve="rel" />
                        </node>
                        <node concept="3TrEf2" id="32jQqpfHklH" role="2OqNvi">
                          <ref role="3Tt5mk" to="gj8d:6GoZXN$1NKA" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="32jQqpfHkwQ" role="3cqZAp" />
            <node concept="2Gpval" id="32jQqpfHkxm" role="3cqZAp">
              <node concept="2GrKxI" id="32jQqpfHkxo" role="2Gsz3X">
                <property role="TrG5h" value="element" />
              </node>
              <node concept="2OqwBi" id="32jQqpfHkHH" role="2GsD0m">
                <node concept="2GrUjf" id="697XFv3umjJ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="697XFv3uhVr" resolve="enterpriseArchitecture" />
                </node>
                <node concept="3Tsc0h" id="32jQqpfHkRH" role="2OqNvi">
                  <ref role="3TtcxE" to="gj8d:7HPPZNrUP4M" resolve="elements" />
                </node>
              </node>
              <node concept="3clFbS" id="32jQqpfHkxs" role="2LFqv$">
                <node concept="3clFbJ" id="32jQqpfHkVY" role="3cqZAp">
                  <node concept="3fqX7Q" id="32jQqpfK9iy" role="3clFbw">
                    <node concept="2OqwBi" id="32jQqpfK9i$" role="3fr31v">
                      <node concept="37vLTw" id="32jQqpfK9i_" role="2Oq$k0">
                        <ref role="3cqZAo" node="32jQqpfHbVF" resolve="referencedComponents" />
                      </node>
                      <node concept="3JPx81" id="32jQqpfK9iA" role="2OqNvi">
                        <node concept="2GrUjf" id="32jQqpfK9iB" role="25WWJ7">
                          <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="32jQqpfHkW0" role="3clFbx">
                    <node concept="3clFbJ" id="32jQqpfHmRb" role="3cqZAp">
                      <node concept="3clFbS" id="32jQqpfHmRd" role="3clFbx">
                        <node concept="3clFbF" id="32jQqpfHyTr" role="3cqZAp">
                          <node concept="2OqwBi" id="32jQqpfHz3U" role="3clFbG">
                            <node concept="2GrUjf" id="32jQqpfHyTp" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                            </node>
                            <node concept="3YRAZt" id="32jQqpfH$QF" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="22lmx$" id="32jQqpfHw_0" role="3clFbw">
                        <node concept="2OqwBi" id="32jQqpfHxcO" role="3uHU7w">
                          <node concept="2GrUjf" id="32jQqpfHwDX" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                          </node>
                          <node concept="1mIQ4w" id="32jQqpfHyE8" role="2OqNvi">
                            <node concept="chp4Y" id="32jQqpfHyJi" role="cj9EA">
                              <ref role="cht4Q" to="gj8d:MYBoz6cHOL" resolve="Device" />
                            </node>
                          </node>
                        </node>
                        <node concept="22lmx$" id="32jQqpfHtvo" role="3uHU7B">
                          <node concept="22lmx$" id="32jQqpfHqUU" role="3uHU7B">
                            <node concept="22lmx$" id="32jQqpfHoNl" role="3uHU7B">
                              <node concept="2OqwBi" id="32jQqpfHn26" role="3uHU7B">
                                <node concept="2GrUjf" id="32jQqpfHmRE" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                                </node>
                                <node concept="1mIQ4w" id="32jQqpfHnZG" role="2OqNvi">
                                  <node concept="chp4Y" id="32jQqpfHo54" role="cj9EA">
                                    <ref role="cht4Q" to="gj8d:MYBoz6bfD3" resolve="TechnologyService" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="32jQqpfHpeC" role="3uHU7w">
                                <node concept="2GrUjf" id="32jQqpfHoQY" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                                </node>
                                <node concept="1mIQ4w" id="32jQqpfHqoj" role="2OqNvi">
                                  <node concept="chp4Y" id="32jQqpfHqs9" role="cj9EA">
                                    <ref role="cht4Q" to="gj8d:MYBoz6bYLT" resolve="Artifact" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="32jQqpfHrrS" role="3uHU7w">
                              <node concept="2GrUjf" id="32jQqpfHqYZ" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                              </node>
                              <node concept="1mIQ4w" id="32jQqpfHsmY" role="2OqNvi">
                                <node concept="chp4Y" id="32jQqpfHsrg" role="cj9EA">
                                  <ref role="cht4Q" to="gj8d:MYBoz6cHOA" resolve="TechnologyInterface" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="32jQqpfHu61" role="3uHU7w">
                            <node concept="2GrUjf" id="32jQqpfHtzT" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="32jQqpfHkxo" resolve="element" />
                            </node>
                            <node concept="1mIQ4w" id="32jQqpfHvH1" role="2OqNvi">
                              <node concept="chp4Y" id="32jQqpfHvLJ" role="cj9EA">
                                <ref role="cht4Q" to="gj8d:MYBoz6cHO_" resolve="ApplicationInterface" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1pmfR0" id="697XFv2YqUi">
    <property role="TrG5h" value="pruneModelRelations" />
    <property role="3GE5qa" value="post-processing scripts" />
    <node concept="1pplIY" id="697XFv2YqUj" role="1pqMTA">
      <node concept="3clFbS" id="697XFv2YqUk" role="2VODD2">
        <node concept="2Gpval" id="697XFv3unic" role="3cqZAp">
          <node concept="2GrKxI" id="697XFv3unie" role="2Gsz3X">
            <property role="TrG5h" value="enterpriseArchitecture" />
          </node>
          <node concept="2OqwBi" id="697XFv3uoTy" role="2GsD0m">
            <node concept="1Q6Npb" id="697XFv3uoFj" role="2Oq$k0" />
            <node concept="2RRcyG" id="697XFv3up32" role="2OqNvi">
              <node concept="chp4Y" id="697XFv3up7C" role="3MHsoP">
                <ref role="cht4Q" to="gj8d:1IRV1xUxPyP" resolve="EnterpriseArchitecture" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="697XFv3unii" role="2LFqv$">
            <node concept="3cpWs8" id="697XFv2YqVT" role="3cqZAp">
              <node concept="3cpWsn" id="697XFv2YqVU" role="3cpWs9">
                <property role="TrG5h" value="uniqueRelationships" />
                <node concept="2hMVRd" id="697XFv2YqVV" role="1tU5fm">
                  <node concept="3uibUv" id="697XFv2YBPp" role="2hN53Y">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2ShNRf" id="697XFv2YqVX" role="33vP2m">
                  <node concept="2i4dXS" id="697XFv2YqVY" role="2ShVmc">
                    <node concept="3uibUv" id="697XFv2YC0a" role="HW$YZ">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="697XFv2Yrb9" role="3cqZAp" />
            <node concept="2Gpval" id="697XFv2YrcF" role="3cqZAp">
              <node concept="2GrKxI" id="697XFv2YrcH" role="2Gsz3X">
                <property role="TrG5h" value="relation" />
              </node>
              <node concept="2OqwBi" id="697XFv2Yrp5" role="2GsD0m">
                <node concept="2GrUjf" id="697XFv3upIq" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="697XFv3unie" resolve="enterpriseArchitecture" />
                </node>
                <node concept="3Tsc0h" id="697XFv2YrzI" role="2OqNvi">
                  <ref role="3TtcxE" to="gj8d:7HPPZNrUOP9" resolve="relations" />
                </node>
              </node>
              <node concept="3clFbS" id="697XFv2YrcL" role="2LFqv$">
                <node concept="3cpWs8" id="697XFv2YrDR" role="3cqZAp">
                  <node concept="3cpWsn" id="697XFv2YrDS" role="3cpWs9">
                    <property role="TrG5h" value="key" />
                    <node concept="3uibUv" id="697XFv2YrDT" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3cpWs3" id="697XFv2Y_Rm" role="33vP2m">
                      <node concept="2OqwBi" id="697XFv2YB$6" role="3uHU7w">
                        <node concept="2OqwBi" id="697XFv2YAa3" role="2Oq$k0">
                          <node concept="2GrUjf" id="697XFv2Y_Z0" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="697XFv2YrcH" resolve="relation" />
                          </node>
                          <node concept="3TrEf2" id="697XFv2YBg_" role="2OqNvi">
                            <ref role="3Tt5mk" to="gj8d:6GoZXN$1NKA" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="697XFv2YBIM" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="697XFv2Y_oL" role="3uHU7B">
                        <node concept="3cpWs3" id="697XFv2YuVS" role="3uHU7B">
                          <node concept="3cpWs3" id="697XFv2YuCw" role="3uHU7B">
                            <node concept="2OqwBi" id="697XFv2YyF2" role="3uHU7B">
                              <node concept="2OqwBi" id="697XFv2YxsZ" role="2Oq$k0">
                                <node concept="2GrUjf" id="697XFv2YrFA" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="697XFv2YrcH" resolve="relation" />
                                </node>
                                <node concept="2yIwOk" id="697XFv2YyuR" role="2OqNvi" />
                              </node>
                              <node concept="liA8E" id="697XFv2YzfW" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="697XFv2YuKt" role="3uHU7w">
                              <property role="Xl_RC" value="-" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="697XFv2Y$Cv" role="3uHU7w">
                            <node concept="2OqwBi" id="697XFv2Yw5v" role="2Oq$k0">
                              <node concept="2GrUjf" id="697XFv2YvUG" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="697XFv2YrcH" resolve="relation" />
                              </node>
                              <node concept="3TrEf2" id="697XFv2YzO$" role="2OqNvi">
                                <ref role="3Tt5mk" to="gj8d:6GoZXN$1NK_" resolve="source" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="697XFv2Y$Ux" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="697XFv2Y_wj" role="3uHU7w">
                          <property role="Xl_RC" value="-" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="697XFv2YCqJ" role="3cqZAp">
                  <node concept="3clFbS" id="697XFv2YCqL" role="3clFbx">
                    <node concept="3clFbF" id="697XFv2YDT6" role="3cqZAp">
                      <node concept="2OqwBi" id="697XFv2YE3B" role="3clFbG">
                        <node concept="2GrUjf" id="697XFv2YDT4" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="697XFv2YrcH" resolve="relation" />
                        </node>
                        <node concept="3YRAZt" id="697XFv2YEZB" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="697XFv2YDfq" role="3clFbw">
                    <node concept="37vLTw" id="697XFv2YCyK" role="2Oq$k0">
                      <ref role="3cqZAo" node="697XFv2YqVU" resolve="uniqueRelationships" />
                    </node>
                    <node concept="3JPx81" id="697XFv2YDQe" role="2OqNvi">
                      <node concept="37vLTw" id="697XFv2YDRQ" role="25WWJ7">
                        <ref role="3cqZAo" node="697XFv2YrDS" resolve="key" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="697XFv2YF0b" role="9aQIa">
                    <node concept="3clFbS" id="697XFv2YF0c" role="9aQI4">
                      <node concept="3clFbF" id="697XFv2YF1x" role="3cqZAp">
                        <node concept="2OqwBi" id="697XFv2YFHm" role="3clFbG">
                          <node concept="37vLTw" id="697XFv2YF1w" role="2Oq$k0">
                            <ref role="3cqZAo" node="697XFv2YqVU" resolve="uniqueRelationships" />
                          </node>
                          <node concept="TSZUe" id="697XFv2YGv_" role="2OqNvi">
                            <node concept="37vLTw" id="697XFv2YGxs" role="25WWJ7">
                              <ref role="3cqZAo" node="697XFv2YrDS" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

