<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c5117ba6-e976-4971-bce0-4fd4b7f050e7(EDMM.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wuz1" ref="r:a9e59ede-7fd0-48c5-9ce0-ba11c2db39c7(EDMM.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1182233249301" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_childNode" flags="nn" index="12_Ws6" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="1182233390675" name="filter" index="12AuX0" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="1sN103qRkCT">
    <ref role="1XX52x" to="wuz1:1sN103qRkCK" resolve="Artifact" />
    <node concept="3EZMnI" id="1sN103qRkCX" role="2wV5jI">
      <node concept="3EZMnI" id="1sN103qRkD1" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRkD3" role="3F10Kt" />
        <node concept="3F0ifn" id="1sN103qRkD7" role="3EZMnx">
          <property role="3F0ifm" value="-" />
        </node>
        <node concept="3F0A7n" id="1sN103qRkDc" role="3EZMnx">
          <ref role="1NtTu8" to="wuz1:1sN103qRkCO" resolve="type" />
        </node>
        <node concept="3F0ifn" id="1sN103qRkDf" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="1sN103qRkD6" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1sN103qRkDW" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRkDY" role="3F10Kt" />
        <node concept="3EZMnI" id="1sN103qRkE3" role="3EZMnx">
          <node concept="VPM3Z" id="1sN103qRkE5" role="3F10Kt" />
          <node concept="3F0ifn" id="1sN103qRkEb" role="3EZMnx">
            <property role="3F0ifm" value="name:" />
          </node>
          <node concept="3F0A7n" id="1sN103qRkEe" role="3EZMnx">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="l2Vlx" id="1sN103qRkE8" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="1sN103qRkE1" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1sN103qRkDD" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRkDF" role="3F10Kt" />
        <node concept="3EZMnI" id="1sN103qRkDK" role="3EZMnx">
          <node concept="VPM3Z" id="1sN103qRkDM" role="3F10Kt" />
          <node concept="3F0ifn" id="1sN103qRkEg" role="3EZMnx">
            <property role="3F0ifm" value="fileURL: " />
          </node>
          <node concept="3F0A7n" id="1sN103qRkEl" role="3EZMnx">
            <ref role="1NtTu8" to="wuz1:1sN103qRkCQ" resolve="fileURI" />
          </node>
          <node concept="l2Vlx" id="1sN103qRkDP" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="1sN103qRkDI" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="1sN103qRkD0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1sN103qRMZ5">
    <ref role="1XX52x" to="wuz1:1sN103qRFK6" resolve="Component" />
    <node concept="3EZMnI" id="1sN103qRMZ7" role="2wV5jI">
      <node concept="3EZMnI" id="1sN103qRMZd" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRMZf" role="3F10Kt" />
        <node concept="3F0ifn" id="1sN103qRMZj" role="3EZMnx">
          <property role="3F0ifm" value="-" />
        </node>
        <node concept="3F0A7n" id="1sN103qRMZm" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="1sN103qRMZp" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="1sN103qRMZi" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1sN103qRMZu" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRMZw" role="3F10Kt" />
        <node concept="3EZMnI" id="1sN103qRMZ_" role="3EZMnx">
          <node concept="VPM3Z" id="1sN103qRMZB" role="3F10Kt" />
          <node concept="3F0ifn" id="1sN103qRMZD" role="3EZMnx">
            <property role="3F0ifm" value="type: " />
          </node>
          <node concept="1iCGBv" id="1sN103qRMZI" role="3EZMnx">
            <ref role="1NtTu8" to="wuz1:1sN103qRG4h" resolve="type" />
            <node concept="1sVBvm" id="1sN103qRMZK" role="1sWHZn">
              <node concept="3F0A7n" id="1sN103qRMZO" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="1sN103qRMZE" role="2iSdaV" />
        </node>
        <node concept="l2Vlx" id="1sN103qRMZz" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1sN103qRN0O" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRN0Q" role="3F10Kt" />
        <node concept="3EZMnI" id="1sN103qRN14" role="3EZMnx">
          <node concept="VPM3Z" id="1sN103qRN18" role="3F10Kt" />
          <node concept="3F0ifn" id="1sN103qRN1a" role="3EZMnx">
            <property role="3F0ifm" value="properties: " />
            <node concept="ljvvj" id="1sN103qRN1b" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="1sN103qRN1c" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="1sN103qRN1d" role="2iSdaV" />
          <node concept="lj46D" id="1sN103qRN1f" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F2HdR" id="1sN103qRN1l" role="3EZMnx">
            <ref role="1NtTu8" to="wuz1:1sN103qRFs3" resolve="properties" />
            <node concept="2iRkQZ" id="1sN103qRN1o" role="2czzBx" />
            <node concept="VPM3Z" id="1sN103qRN1p" role="3F10Kt" />
            <node concept="3F0ifn" id="1sN103qRN1q" role="2czzBI">
              <property role="3F0ifm" value="[]" />
            </node>
            <node concept="lj46D" id="1sN103qRN1r" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="1sN103qRN0T" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1sN103qRN1v" role="3EZMnx">
        <node concept="VPM3Z" id="1sN103qRN1x" role="3F10Kt" />
        <node concept="3EZMnI" id="1sN103qRN1B" role="3EZMnx">
          <node concept="VPM3Z" id="1sN103qRN1E" role="3F10Kt" />
          <node concept="3F0ifn" id="1sN103qRN1G" role="3EZMnx">
            <property role="3F0ifm" value="operations:" />
            <node concept="ljvvj" id="1sN103qRN1H" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="1sN103qRN1Q" role="3EZMnx">
            <ref role="1NtTu8" to="wuz1:1sN103qRFs4" resolve="operations" />
            <node concept="2iRkQZ" id="1sN103qRN1T" role="2czzBx" />
            <node concept="VPM3Z" id="1sN103qRN1U" role="3F10Kt" />
            <node concept="3F0ifn" id="1sN103qRN1V" role="2czzBI">
              <property role="3F0ifm" value="[]" />
            </node>
            <node concept="lj46D" id="1sN103qRN1W" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="1sN103qRN1I" role="2iSdaV" />
          <node concept="lj46D" id="1sN103qRN1K" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="1sN103qRN1$" role="2iSdaV" />
        <node concept="pj6Ft" id="1UTNBJcosCk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="1UTNBJcosCm" role="3EZMnx">
        <node concept="VPM3Z" id="1UTNBJcosCo" role="3F10Kt" />
        <node concept="3EZMnI" id="1UTNBJcosCY" role="3EZMnx">
          <node concept="VPM3Z" id="1UTNBJcosD1" role="3F10Kt" />
          <node concept="3F0ifn" id="1UTNBJcosD3" role="3EZMnx">
            <property role="3F0ifm" value="artifacts: " />
            <node concept="ljvvj" id="1UTNBJcosD8" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="1UTNBJcosDa" role="3EZMnx">
            <ref role="1NtTu8" to="wuz1:1sN103qRG4g" resolve="artifacts" />
            <node concept="2iRkQZ" id="1UTNBJcosDd" role="2czzBx" />
            <node concept="VPM3Z" id="1UTNBJcosDe" role="3F10Kt" />
            <node concept="3F0ifn" id="1UTNBJcosDf" role="2czzBI">
              <property role="3F0ifm" value="[]" />
            </node>
            <node concept="lj46D" id="1UTNBJcosDg" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="1UTNBJcosD5" role="2iSdaV" />
          <node concept="lj46D" id="1UTNBJcosD7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="1UTNBJcosCr" role="2iSdaV" />
        <node concept="pj6Ft" id="1UTNBJcosCU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRkQZ" id="1sN103qRMZa" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5W7OEz$QNSk">
    <ref role="1XX52x" to="wuz1:1sN103qRG4j" resolve="DeploymentModel" />
    <node concept="3EZMnI" id="5W7OEz$QNSX" role="2wV5jI">
      <node concept="3F0ifn" id="5W7OEz$QNUw" role="3EZMnx">
        <property role="3F0ifm" value="Poperties: " />
        <node concept="lj46D" id="5W7OEz$QNV_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5W7OEz$QPnq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5W7OEz$QNWq" role="3EZMnx">
        <ref role="1NtTu8" to="wuz1:1sN103qRG4l" resolve="property" />
        <node concept="2iRkQZ" id="5W7OEz$QNWt" role="2czzBx" />
        <node concept="VPM3Z" id="5W7OEz$QNWu" role="3F10Kt" />
        <node concept="ljvvj" id="5W7OEz$QPmZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPnP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5W7OEz$QPoE" role="2czzBI">
          <property role="3F0ifm" value="[]" />
        </node>
      </node>
      <node concept="3F0ifn" id="5W7OEz$QPpJ" role="3EZMnx">
        <property role="3F0ifm" value="Components: " />
        <node concept="lj46D" id="5W7OEz$QPs7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5W7OEz$QPsX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5W7OEz$QPqp" role="3EZMnx">
        <ref role="1NtTu8" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
        <node concept="2iRkQZ" id="5W7OEz$QPqs" role="2czzBx" />
        <node concept="VPM3Z" id="5W7OEz$QPqt" role="3F10Kt" />
        <node concept="3F0ifn" id="5W7OEz$QPrv" role="2czzBI">
          <property role="3F0ifm" value="[]" />
        </node>
        <node concept="ljvvj" id="5W7OEz$QPsy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPt_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="107P5z" id="5W7OEz$QPWR" role="12AuX0">
          <node concept="3clFbS" id="5W7OEz$QPWS" role="2VODD2">
            <node concept="3clFbF" id="5W7OEz$QQ1V" role="3cqZAp">
              <node concept="2OqwBi" id="5W7OEz$QQiY" role="3clFbG">
                <node concept="12_Ws6" id="5W7OEz$QQ1U" role="2Oq$k0" />
                <node concept="1mIQ4w" id="5W7OEz$QQGk" role="2OqNvi">
                  <node concept="chp4Y" id="5W7OEz$QQJT" role="cj9EA">
                    <ref role="cht4Q" to="wuz1:1sN103qRFK6" resolve="Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5W7OEz$QPv4" role="3EZMnx">
        <property role="3F0ifm" value="Relations: " />
        <node concept="lj46D" id="5W7OEz$QPxf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5W7OEz$QPxE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5W7OEz$QPvx" role="3EZMnx">
        <ref role="1NtTu8" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
        <node concept="2iRkQZ" id="5W7OEz$QPv$" role="2czzBx" />
        <node concept="VPM3Z" id="5W7OEz$QPv_" role="3F10Kt" />
        <node concept="3F0ifn" id="5W7OEz$QPwO" role="2czzBI">
          <property role="3F0ifm" value="[]" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPyi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="107P5z" id="5W7OEz$QQP3" role="12AuX0">
          <node concept="3clFbS" id="5W7OEz$QQP4" role="2VODD2">
            <node concept="3clFbF" id="5W7OEz$QQPV" role="3cqZAp">
              <node concept="2OqwBi" id="5W7OEz$QQWH" role="3clFbG">
                <node concept="12_Ws6" id="5W7OEz$QQPU" role="2Oq$k0" />
                <node concept="1mIQ4w" id="5W7OEz$QRlA" role="2OqNvi">
                  <node concept="chp4Y" id="5W7OEz$QRpB" role="cj9EA">
                    <ref role="cht4Q" to="wuz1:1sN103qRG4r" resolve="Relation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5W7OEz$QPGh" role="3EZMnx">
        <property role="3F0ifm" value="Commponent Types:" />
        <node concept="pVoyu" id="5W7OEz$QPJo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPJN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5W7OEz$QPLV" role="3EZMnx">
        <ref role="1NtTu8" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
        <node concept="2iRkQZ" id="5W7OEz$QPLY" role="2czzBx" />
        <node concept="VPM3Z" id="5W7OEz$QPLZ" role="3F10Kt" />
        <node concept="3F0ifn" id="5W7OEz$QPMO" role="2czzBI">
          <property role="3F0ifm" value="[]" />
        </node>
        <node concept="pVoyu" id="5W7OEz$QPOh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPOv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="107P5z" id="5W7OEz$QRuL" role="12AuX0">
          <node concept="3clFbS" id="5W7OEz$QRuM" role="2VODD2">
            <node concept="3clFbF" id="5W7OEz$QRvs" role="3cqZAp">
              <node concept="2OqwBi" id="5W7OEz$QRKl" role="3clFbG">
                <node concept="12_Ws6" id="5W7OEz$QRvr" role="2Oq$k0" />
                <node concept="1mIQ4w" id="5W7OEz$QSfN" role="2OqNvi">
                  <node concept="chp4Y" id="5W7OEz$QSiY" role="cj9EA">
                    <ref role="cht4Q" to="wuz1:1sN103qRFrV" resolve="ComponentType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5W7OEz$QPP8" role="3EZMnx">
        <property role="3F0ifm" value="Relation Types: " />
        <node concept="pVoyu" id="5W7OEz$QPQZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPS7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5W7OEz$QPRC" role="3EZMnx">
        <ref role="1NtTu8" to="wuz1:1sN103qRG4k" resolve="modelEntities" />
        <node concept="2iRkQZ" id="5W7OEz$QPRF" role="2czzBx" />
        <node concept="VPM3Z" id="5W7OEz$QPRG" role="3F10Kt" />
        <node concept="3F0ifn" id="5W7OEz$QPT9" role="2czzBI">
          <property role="3F0ifm" value="[]" />
        </node>
        <node concept="pVoyu" id="5W7OEz$QPTL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5W7OEz$QPTZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="107P5z" id="5W7OEz$QSol" role="12AuX0">
          <node concept="3clFbS" id="5W7OEz$QSom" role="2VODD2">
            <node concept="3clFbF" id="5W7OEz$QSpq" role="3cqZAp">
              <node concept="2OqwBi" id="5W7OEz$QSsa" role="3clFbG">
                <node concept="12_Ws6" id="5W7OEz$QSpp" role="2Oq$k0" />
                <node concept="1mIQ4w" id="5W7OEz$QSFN" role="2OqNvi">
                  <node concept="chp4Y" id="5W7OEz$QSNn" role="cj9EA">
                    <ref role="cht4Q" to="wuz1:1sN103qRG4n" resolve="RelationType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5W7OEz$QNT0" role="2iSdaV" />
    </node>
  </node>
</model>

