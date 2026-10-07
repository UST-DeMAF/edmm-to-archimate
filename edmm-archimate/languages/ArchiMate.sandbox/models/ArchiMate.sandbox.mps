<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:677ec425-7d0c-4566-9714-7b959d087b1e(ArchiMate.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="430a72f5-df99-470c-b009-a2d7eda10a73" name="ArchiMate" version="0" />
    <use id="76428ba2-9a00-4f87-a4b0-1090bd2898f6" name="EDMM" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="76428ba2-9a00-4f87-a4b0-1090bd2898f6" name="EDMM">
      <concept id="1671684288403125999" name="EDMM.structure.Property" flags="ng" index="3dVrbJ">
        <property id="1671684288403126002" name="key" index="3dVrbM" />
        <property id="1671684288403126003" name="value" index="3dVrbN" />
        <property id="1671684288403126004" name="type" index="3dVrbO" />
        <property id="1671684288403126005" name="required" index="3dVrbP" />
      </concept>
      <concept id="1671684288403126007" name="EDMM.structure.Operation" flags="ng" index="3dVrbR">
        <child id="1671684288403126009" name="artifacts" index="3dVrbT" />
      </concept>
      <concept id="1671684288403126011" name="EDMM.structure.ComponentType" flags="ng" index="3dVrbV">
        <reference id="1671684288403126012" name="parentType" index="3dVrbW" />
      </concept>
      <concept id="1671684288403126016" name="EDMM.structure.ModelEntity" flags="ng" index="3dVrc0">
        <child id="1671684288403126019" name="properties" index="3dVrc3" />
        <child id="1671684288403126020" name="operations" index="3dVrc4" />
      </concept>
      <concept id="1671684288403127302" name="EDMM.structure.Component" flags="ng" index="3dVrw6">
        <reference id="1671684288403128593" name="type" index="3dVskh" />
        <child id="1671684288403128592" name="artifacts" index="3dVskg" />
      </concept>
      <concept id="1671684288403128595" name="EDMM.structure.DeploymentModel" flags="ng" index="3dVskj">
        <child id="1671684288403128596" name="modelEntities" index="3dVskk" />
      </concept>
      <concept id="1671684288403128599" name="EDMM.structure.RelationType" flags="ng" index="3dVskn">
        <reference id="1671684288403128601" name="parentType" index="3dVskp" />
      </concept>
      <concept id="1671684288403128603" name="EDMM.structure.Relation" flags="ng" index="3dVskr">
        <reference id="1671684288403128604" name="type" index="3dVsks" />
        <reference id="1671684288403128605" name="source" index="3dVskt" />
        <reference id="1671684288403128606" name="target" index="3dVsku" />
      </concept>
      <concept id="1671684288403032624" name="EDMM.structure.Artifact" flags="ng" index="3dV$SK">
        <property id="1671684288403032628" name="type" index="3dV$SO" />
        <property id="1671684288403032630" name="fileURI" index="3dV$SQ" />
      </concept>
    </language>
  </registry>
  <node concept="3dVskj" id="59vxrWeskNy">
    <property role="TrG5h" value="otelshopTerraform_expected.yaml" />
    <node concept="3dVrbV" id="59vxrWeskNz" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskN$" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="59vxrWeskNz" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskN_" role="3dVskk">
      <property role="TrG5h" value="DockerEngine" />
      <ref role="3dVrbW" node="59vxrWeskN$" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskNA" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNz" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskNB" role="3dVskk">
      <property role="TrG5h" value="grafana-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskNC" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskND" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNE" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNF" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="100" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNG" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNH" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNI" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/grafana/provisioning/&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNJ" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/grafana/provisioning/" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNK" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/grafana/grafana.ini&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNL" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/grafana/grafana.ini" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNM" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="3000" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskNN" role="3dVskk">
      <property role="TrG5h" value="all-in-one-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskNO" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="jaeger" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNP" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--memory.max-traces=5000 --query.base-path=/jaeger/ui --prometheus.server-url=http://prometheus:9090 --prometheus.query.normalize-calls=true --prometheus.query.normalize-duration=true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNQ" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="400" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNR" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNS" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNT" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNU" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNV" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNW" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbN" value="prometheus" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskNX" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-collector-contrib-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskNY" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="otel-col" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskNZ" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[jaeger]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO0" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO1" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO2" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO3" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="200" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO4" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO5" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--config=/etc/otelcol-config.yml --config=/etc/otelcol-config-extras.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO6" role="3dVrc3">
        <property role="3dVrbM" value="user" />
        <property role="3dVrbN" value="0:0" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO7" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="/var/run/docker.sock" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO8" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/var/run/docker.sock" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO9" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/otelcollector/otelcol-config-extras.yml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOa" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/otelcol-config-extras.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOb" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/otelcollector/otelcol-config.yml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOc" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/otelcol-config.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOd" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOe" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOf" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOi" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskOj" role="3dVskk">
      <property role="TrG5h" value="prometheus-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskOk" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOl" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--web.console.templates=/etc/prometheus/consoles --web.console.libraries=/etc/prometheus/console_libraries --storage.tsdb.retention.time=1h --config.file=/etc/prometheus/prometheus-config.yaml --storage.tsdb.path=/prometheus --web.enable-lifecycle --web.route-prefix=/ --enable-feature=exemplar-storage --enable-feature=otlp-write-receiver" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOm" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOn" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOo" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/prometheus/prometheus-config.yaml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOp" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/prometheus/prometheus-config.yaml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOq" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOr" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOs" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOt" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskOu" role="3dVskk">
      <property role="TrG5h" value="accountingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskOv" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="accounting-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOw" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOx" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOy" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOz" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO$" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskO_" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOA" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOB" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskOF" role="3dVskk">
      <property role="TrG5h" value="adservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskOG" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="ad-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOH" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOI" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOJ" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOK" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="adservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOL" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOM" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskON" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOO" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOP" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOQ" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOR" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOS" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOT" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="adservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskOW" role="3dVskk">
      <property role="TrG5h" value="cartservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskOX" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="cart-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOY" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[valkey-cart,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskOZ" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP0" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP1" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP2" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="160" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP3" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP4" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP5" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP6" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP7" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP8" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbN" value="valkey-cart:6379" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskP9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPc" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbN" value="http://*:7070" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskPd" role="3dVskk">
      <property role="TrG5h" value="checkoutservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskPe" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="checkout-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPf" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[cartservice,currencyservice,emailservice,paymentservice,productcatalogservice,shippingservice,otelcol,flagd,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPg" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPh" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPi" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPj" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPk" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPl" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPm" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPn" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPo" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPp" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPq" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPr" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://emailservice:6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPs" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPt" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPu" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPv" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskP$" role="3dVskk">
      <property role="TrG5h" value="currencyservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskP_" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="currency-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPA" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPB" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPC" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPD" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPE" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPF" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPG" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPH" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbN" value="7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPI" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskPM" role="3dVskk">
      <property role="TrG5h" value="emailservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskPN" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="email-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPO" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPP" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPQ" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPR" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="emailservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPS" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="100" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPT" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPU" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPV" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbN" value="production" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPW" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskPZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="emailservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskQ0" role="3dVskk">
      <property role="TrG5h" value="flagd-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskQ1" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ2" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="50" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ3" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbN" value="otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ4" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ5" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ7" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ8" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ9" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="start --uri file:./etc/flagd/demo.flagd.json" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQa" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQb" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/flagd&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQc" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/flagd" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskQd" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskQe" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frauddetection-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQf" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQg" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQh" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQi" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQj" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQk" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQl" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQm" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQn" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_KAFKA_EXPERIMENTAL_SPAN_ATTRIBUTES" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_MESSAGING_EXPERIMENTAL_RECEIVE_TELEMETRY_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskQu" role="3dVskk">
      <property role="TrG5h" value="frontend-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskQv" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQw" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[adservice,cartservice,checkoutservice,currencyservice,productcatalogservice,recommendationservice,shippingservice,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQx" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQy" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQz" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="250" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ$" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQ_" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQA" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQB" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value=":8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQC" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQD" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQE" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQF" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQG" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQH" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="recommendationservice:9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQI" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQL" role="3dVrc3">
        <property role="3dVrbM" value="ENV_PLATFORM" />
        <property role="3dVrbN" value="local" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQN" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://localhost:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQP" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQR" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQS" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskQT" role="3dVskk">
      <property role="TrG5h" value="frontendproxy-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskQU" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frontend-proxy" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQV" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[frontend,loadgenerator,jaeger,otelcol,imageprovider,flagd,grafana]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQW" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQX" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQY" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="frontendproxy" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskQZ" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="50" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR0" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR1" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR2" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR3" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR4" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR5" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR6" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR7" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR8" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskR9" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbN" value="80" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRa" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRb" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRc" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbN" value="jaeger-query" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRe" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRf" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRi" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRj" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRk" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRl" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskRm" role="3dVskk">
      <property role="TrG5h" value="imageprovider-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskRn" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="image-provider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRo" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRp" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRq" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRr" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRs" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRt" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRu" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRv" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskR$" role="3dVskk">
      <property role="TrG5h" value="loadgenerator-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskR_" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="load-generator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRA" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[frontendproxy,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRB" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRC" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRD" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRE" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRF" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRG" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRH" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRI" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRJ" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbN" value="http://frontend-proxy:8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRK" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRL" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRM" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRR" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRS" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRT" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRU" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskRV" role="3dVskk">
      <property role="TrG5h" value="paymentservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskRW" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="payment-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRX" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRY" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskRZ" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS0" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS1" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS2" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS3" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS4" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS5" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS6" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskSb" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskSc" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="product-catalog-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSd" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd,mongodb-catalog]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSe" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSf" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSg" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSh" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSi" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSj" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSk" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSl" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSm" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSr" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSs" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSt" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSu" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbN" value="27017" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskSv" role="3dVskk">
      <property role="TrG5h" value="quoteservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskSw" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="quote-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSx" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSy" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSz" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS$" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskS_" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="40" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSA" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSB" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSE" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbN" value="8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSG" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_INTERNAL_METRICS_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskSI" role="3dVskk">
      <property role="TrG5h" value="recommendationservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskSJ" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="recommendation-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSK" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[productcatalogservice,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSL" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSM" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSN" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSO" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="500" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSP" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSQ" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSR" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSS" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskST" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSU" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskSZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT0" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskT1" role="3dVskk">
      <property role="TrG5h" value="shippingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskT2" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="shipping-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT3" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,quoteservice]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT4" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT5" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT6" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT7" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT8" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT9" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTa" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTb" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://quoteservice:8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTe" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskTf" role="3dVskk">
      <property role="TrG5h" value="opensearch-SoftwareApplication" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskTg" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="opensearch" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTh" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTi" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTj" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTk" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTl" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTm" role="3dVrc3">
        <property role="3dVrbM" value="node.name" />
        <property role="3dVrbN" value="demo-node" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTn" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTo" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTp" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTq" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTr" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTs" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9200" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskTt" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskTu" role="3dVskk">
      <property role="TrG5h" value="mongo-DatabaseSystem" />
      <ref role="3dVrbW" node="59vxrWeskTt" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="59vxrWeskTv" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="mongodb-catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTw" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="256" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTx" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTy" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTz" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT$" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskT_" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTA" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTB" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTC" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTD" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.test" />
        <property role="3dVrbN" value="echo db.runCommand(ping).ok | mongosh localhost:27017/test --quiet" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTE" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.start_period" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTF" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.interval" />
        <property role="3dVrbN" value="5s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTG" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.timeout" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTH" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.retries" />
        <property role="3dVrbN" value="10" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskTI" role="3dVskk">
      <property role="TrG5h" value="valkey-DatabaseSystem" />
      <ref role="3dVrbW" node="59vxrWeskTt" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="59vxrWeskTJ" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="valkey-cart" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTK" role="3dVrc3">
        <property role="3dVrbM" value="user" />
        <property role="3dVrbN" value="valkey" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTL" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTM" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTN" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTO" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTP" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="6379" />
      </node>
    </node>
    <node concept="3dVrbV" id="59vxrWeskTQ" role="3dVskk">
      <property role="TrG5h" value="MessageBroker" />
      <ref role="3dVrbW" node="59vxrWeskNA" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="59vxrWeskTR" role="3dVskk">
      <property role="TrG5h" value="kafka-MessageBroker" />
      <ref role="3dVrbW" node="59vxrWeskTQ" resolve="MessageBroker" />
      <node concept="3dVrbJ" id="59vxrWeskTS" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTT" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="600" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTU" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTV" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTW" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTX" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTY" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="PLAINTEXT://kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskTZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU1" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU2" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU3" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx400M -Xms400M" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU4" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.test" />
        <property role="3dVrbN" value="nc -z kafka 9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU5" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.start_period" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU6" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.interval" />
        <property role="3dVrbN" value="5s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU7" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.timeout" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU8" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.retries" />
        <property role="3dVrbN" value="10" />
      </node>
    </node>
    <node concept="3dVskn" id="59vxrWeskU9" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="59vxrWeskUa" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="59vxrWeskU9" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="59vxrWeskUb" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="59vxrWeskU9" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="59vxrWeskUc" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="59vxrWeskU9" resolve="DependsOn" />
      <node concept="3dVrbJ" id="59vxrWeskUd" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskUe" role="3dVskk">
      <property role="TrG5h" value="DefaultDockerEngine" />
      <ref role="3dVskh" node="59vxrWeskN_" resolve="DockerEngine" />
    </node>
    <node concept="3dVrw6" id="59vxrWeskUf" role="3dVskk">
      <property role="TrG5h" value="accountingservice" />
      <ref role="3dVskh" node="59vxrWeskOu" resolve="accountingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskUg" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="accounting-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUh" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUi" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUj" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUk" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUl" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUm" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUn" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskUs" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskUt" role="3dVskk">
      <property role="TrG5h" value="adservice" />
      <ref role="3dVskh" node="59vxrWeskOF" resolve="adservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskUu" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="ad-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUv" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUw" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUx" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUy" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="adservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUz" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU$" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskU_" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUA" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUB" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUC" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUG" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="adservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskUI" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskUJ" role="3dVskk">
      <property role="TrG5h" value="cartservice" />
      <ref role="3dVskh" node="59vxrWeskOW" resolve="cartservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskUK" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="cart-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUL" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[valkey-cart,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUM" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUN" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUO" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUP" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="160" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUQ" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUR" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUS" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUT" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUU" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUV" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbN" value="valkey-cart:6379" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskUZ" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbN" value="http://*:7070" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskV0" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskV1" role="3dVskk">
      <property role="TrG5h" value="checkoutservice" />
      <ref role="3dVskh" node="59vxrWeskPd" resolve="checkoutservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskV2" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="checkout-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV3" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[cartservice,currencyservice,emailservice,paymentservice,productcatalogservice,shippingservice,otelcol,flagd,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV4" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV5" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV6" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV7" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV8" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV9" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVa" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVb" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVc" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVd" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVe" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVf" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://emailservice:6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVg" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVh" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVi" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVj" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVk" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVl" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVm" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskVo" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskVp" role="3dVskk">
      <property role="TrG5h" value="currencyservice" />
      <ref role="3dVskh" node="59vxrWeskP$" resolve="currencyservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskVq" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="currency-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVr" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVs" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVt" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVu" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVv" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVw" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVx" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVy" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbN" value="7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVz" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskV_" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVA" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskVB" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskVC" role="3dVskk">
      <property role="TrG5h" value="emailservice" />
      <ref role="3dVskh" node="59vxrWeskPM" resolve="emailservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskVD" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="email-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVE" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVF" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVG" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVH" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="emailservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVI" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="100" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVJ" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVK" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVL" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbN" value="production" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVM" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="emailservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskVQ" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskVR" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice" />
      <ref role="3dVskh" node="59vxrWeskQd" resolve="frauddetectionservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskVS" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frauddetection-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVT" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd,kafka]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVU" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVV" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVW" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVX" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVY" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskVZ" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW0" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW1" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW2" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW3" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="Cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW4" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_KAFKA_EXPERIMENTAL_SPAN_ATTRIBUTES" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW5" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_MESSAGING_EXPERIMENTAL_RECEIVE_TELEMETRY_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskW7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskW8" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskW9" role="3dVskk">
      <property role="TrG5h" value="frontend" />
      <ref role="3dVskh" node="59vxrWeskQu" resolve="frontend-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskWa" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWb" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[adservice,cartservice,checkoutservice,currencyservice,productcatalogservice,recommendationservice,shippingservice,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWc" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWd" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWe" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="250" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWf" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWg" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWh" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWi" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value="frontend:8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWj" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWk" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWl" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWm" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWn" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWo" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="recommendationservice:9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWp" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWs" role="3dVrc3">
        <property role="3dVrbM" value="ENV_PLATFORM" />
        <property role="3dVrbN" value="local" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWu" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://localhost:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWv" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWw" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWy" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWz" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskW$" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskW_" role="3dVskk">
      <property role="TrG5h" value="frontendproxy" />
      <ref role="3dVskh" node="59vxrWeskQT" resolve="frontendproxy-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskWA" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="frontend-proxy" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWB" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[frontend,loadgenerator,jaeger,otelcol,imageprovider,flagd,grafana]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWC" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWD" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWE" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="frontendproxy" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWF" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="50" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWG" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWH" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWI" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWJ" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWK" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWL" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWM" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWN" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWO" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWP" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbN" value="3000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWQ" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWR" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWS" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbN" value="jaeger" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWT" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWU" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWV" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskWZ" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX0" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX1" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskX2" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskX3" role="3dVskk">
      <property role="TrG5h" value="imageprovider" />
      <ref role="3dVskh" node="59vxrWeskRm" resolve="imageprovider-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskX4" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="image-provider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX5" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX6" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX7" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX8" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX9" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXa" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXb" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXc" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXe" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskXh" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskXi" role="3dVskk">
      <property role="TrG5h" value="loadgenerator" />
      <ref role="3dVskh" node="59vxrWeskR$" resolve="loadgenerator-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskXj" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="load-generator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXk" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[frontendproxy,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXl" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXm" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXn" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXo" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXp" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXq" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXr" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXs" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXt" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbN" value="http://frontend-proxy:8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXu" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXv" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXw" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskX_" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXA" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXB" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXC" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskXD" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskXE" role="3dVskk">
      <property role="TrG5h" value="paymentservice" />
      <ref role="3dVskh" node="59vxrWeskRV" resolve="paymentservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskXF" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="payment-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXG" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXH" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXI" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXJ" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXK" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="120" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXL" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXM" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXN" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXO" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXP" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXR" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXS" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXT" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskXU" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskXV" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice" />
      <ref role="3dVskh" node="59vxrWeskSb" resolve="productcatalogservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskXW" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="product-catalog-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXX" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,flagd,mongodb-catalog]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXY" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskXZ" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY0" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY1" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY2" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY3" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY4" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY5" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY6" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYb" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYc" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYd" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOSTNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYe" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskYf" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/ust-demaf/demo:1.11.1-productcatalogservice" />
        <property role="3dV$SQ" value="ghcr.io/ust-demaf/demo:1.11.1-productcatalogservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskYg" role="3dVskk">
      <property role="TrG5h" value="quoteservice" />
      <ref role="3dVskh" node="59vxrWeskSv" resolve="quoteservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskYh" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="quote-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYi" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYj" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYk" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYl" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYm" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="40" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYn" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYo" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYr" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbN" value="8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_INTERNAL_METRICS_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskYv" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskYw" role="3dVskk">
      <property role="TrG5h" value="recommendationservice" />
      <ref role="3dVskh" node="59vxrWeskSI" resolve="recommendationservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskYx" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="recommendation-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYy" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[productcatalogservice,otelcol,flagd]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYz" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY$" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskY_" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYA" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="500" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYB" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYC" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYD" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYE" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYF" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYG" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYM" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskYN" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskYO" role="3dVskk">
      <property role="TrG5h" value="shippingservice" />
      <ref role="3dVskh" node="59vxrWeskT1" resolve="shippingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskYP" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="shipping-service" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYQ" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[otelcol,quoteservice]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYR" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYS" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYT" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYU" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYV" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYW" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYX" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYY" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://quoteservice:8090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskYZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ1" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskZ2" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskZ3" role="3dVskk">
      <property role="TrG5h" value="flagd" />
      <ref role="3dVskh" node="59vxrWeskQ0" resolve="flagd-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskZ4" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ5" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="50" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ6" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbN" value="otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ7" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZ9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZa" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZb" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZc" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="start --uri file:./etc/flagd/demo.flagd.json" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZd" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZe" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/flagd&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZf" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/flagd" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskZg" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-feature/flagd:v0.11.2" />
        <property role="3dV$SQ" value="ghcr.io/open-feature/flagd:v0.11.2" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskZh" role="3dVskk">
      <property role="TrG5h" value="kafka" />
      <ref role="3dVskh" node="59vxrWeskTR" resolve="kafka-MessageBroker" />
      <node concept="3dVrbJ" id="59vxrWeskZi" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZj" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="600" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZk" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZl" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZm" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZn" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZo" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="PLAINTEXT://kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZt" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx400m -Xms400m" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZu" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.test" />
        <property role="3dVrbN" value="nc -z kafka 9092" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZv" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.start_period" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZw" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.interval" />
        <property role="3dVrbN" value="5s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZx" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.timeout" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZy" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.retries" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskZz" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskZ$" role="3dVskk">
      <property role="TrG5h" value="valkey-cart" />
      <ref role="3dVskh" node="59vxrWeskTI" resolve="valkey-DatabaseSystem" />
      <node concept="3dVrbJ" id="59vxrWeskZ_" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="valkey-cart" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZA" role="3dVrc3">
        <property role="3dVrbM" value="user" />
        <property role="3dVrbN" value="valkey" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZB" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="20" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZC" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZD" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZE" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZF" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskZG" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="valkey/valkey:8.0-alpine" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/valkey/valkey" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskZH" role="3dVskk">
      <property role="TrG5h" value="mongodb-catalog" />
      <ref role="3dVskh" node="59vxrWeskTu" resolve="mongo-DatabaseSystem" />
      <node concept="3dVrbJ" id="59vxrWeskZI" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="mongodb-catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZJ" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="256" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZK" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZL" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZM" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZN" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZO" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZP" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZQ" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZR" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZS" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.test" />
        <property role="3dVrbN" value="echo db.runCommand(ping).ok | mongosh localhost:27017/test --quiet" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZT" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.start_period" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZU" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.interval" />
        <property role="3dVrbN" value="5s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZV" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.timeout" />
        <property role="3dVrbN" value="10s" />
      </node>
      <node concept="3dVrbJ" id="59vxrWeskZW" role="3dVrc3">
        <property role="3dVrbM" value="healthcheck.retries" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dV$SK" id="59vxrWeskZX" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="mongo:8.0.0-rc9" />
        <property role="3dV$SQ" value="https://hub.docker.com/_/mongo" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWeskZY" role="3dVskk">
      <property role="TrG5h" value="jaeger" />
      <ref role="3dVskh" node="59vxrWeskNN" resolve="all-in-one-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWeskZZ" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="jaeger" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl00" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--memory.max-traces=5000 --query.base-path=/jaeger/ui --prometheus.server-url=http://prometheus:9090 --prometheus.query.normalize-calls=true --prometheus.query.normalize-duration=true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl01" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="400" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl02" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl03" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl04" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl05" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl06" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl07" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dV$SK" id="59vxrWesl08" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="jaegertracing/all-in-one:1.60" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/jaegertracing/all-in-one" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWesl09" role="3dVskk">
      <property role="TrG5h" value="grafana" />
      <ref role="3dVskh" node="59vxrWeskNB" resolve="grafana-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWesl0a" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0b" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0c" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0d" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="100" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0e" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0f" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0g" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/grafana/provisioning/" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0h" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/grafana/provisioning/&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0i" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/grafana/grafana.ini" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0j" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/grafana/grafana.ini&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0k" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="3000" />
      </node>
      <node concept="3dV$SK" id="59vxrWesl0l" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="grafana/grafana:11.2.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/grafana/grafana" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWesl0m" role="3dVskk">
      <property role="TrG5h" value="otelcol" />
      <ref role="3dVskh" node="59vxrWeskNX" resolve="opentelemetry-collector-contrib-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWesl0n" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="otel-col" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0o" role="3dVrc3">
        <property role="3dVrbM" value="depends_on" />
        <property role="3dVrbN" value="[jaeger]" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0p" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0q" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0r" role="3dVrc3">
        <property role="3dVrbM" value="hostname" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0s" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="200" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0t" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0u" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--config=/etc/otelcol-config.yml --config=/etc/otelcol-config-extras.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0v" role="3dVrc3">
        <property role="3dVrbM" value="user" />
        <property role="3dVrbN" value="0:0" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0w" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="/var/run/docker.sock" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0x" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/var/run/docker.sock" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0y" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/otelcollector/otelcol-config-extras.yml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0z" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/otelcol-config-extras.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0$" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/otelcollector/otelcol-config.yml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0_" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/otelcol-config.yml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0A" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0B" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0C" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0D" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0E" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0F" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dV$SK" id="59vxrWesl0G" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="otel/opentelemetry-collector-contrib:0.108.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/otel/opentelemetry-collector-contrib" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWesl0H" role="3dVskk">
      <property role="TrG5h" value="prometheus" />
      <ref role="3dVskh" node="59vxrWeskOj" resolve="prometheus-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWesl0I" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0J" role="3dVrc3">
        <property role="3dVrbM" value="command" />
        <property role="3dVrbN" value="--web.console.templates=/etc/prometheus/consoles --web.console.libraries=/etc/prometheus/console_libraries --storage.tsdb.retention.time=1h --config.file=/etc/prometheus/prometheus-config.yaml --storage.tsdb.path=/prometheus --web.enable-lifecycle --web.route-prefix=/ --enable-feature=exemplar-storage --enable-feature=otlp-write-receiver" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0K" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0L" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0M" role="3dVrc3">
        <property role="3dVrbM" value="volumes.host_path" />
        <property role="3dVrbN" value="abspath(&quot;files/prometheus/prometheus-config.yaml&quot;)" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0N" role="3dVrc3">
        <property role="3dVrbM" value="volumes.container_path" />
        <property role="3dVrbN" value="/etc/prometheus/prometheus-config.yaml" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0O" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="300" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0P" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0Q" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0R" role="3dVrc3">
        <property role="3dVrbM" value="ports.external" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dV$SK" id="59vxrWesl0S" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="quay.io/prometheus/prometheus:v2.54.1" />
        <property role="3dV$SQ" value="quay.io/prometheus/prometheus:v2.54.1" />
      </node>
    </node>
    <node concept="3dVrw6" id="59vxrWesl0T" role="3dVskk">
      <property role="TrG5h" value="opensearch" />
      <ref role="3dVskh" node="59vxrWeskTf" resolve="opensearch-SoftwareApplication" />
      <node concept="3dVrbJ" id="59vxrWesl0U" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="opensearch" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0V" role="3dVrc3">
        <property role="3dVrbM" value="network_mode" />
        <property role="3dVrbN" value="bridge" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0W" role="3dVrc3">
        <property role="3dVrbM" value="networks_advanced.name" />
        <property role="3dVrbN" value="opentelemetry-demo" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0X" role="3dVrc3">
        <property role="3dVrbM" value="memory" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0Y" role="3dVrc3">
        <property role="3dVrbM" value="restart" />
        <property role="3dVrbN" value="unless-stopped" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl0Z" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl10" role="3dVrc3">
        <property role="3dVrbM" value="node.name" />
        <property role="3dVrbN" value="demo-node" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl11" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl12" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl13" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl14" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl15" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="59vxrWesl16" role="3dVrc3">
        <property role="3dVrbM" value="ports.internal" />
        <property role="3dVrbN" value="9200" />
      </node>
      <node concept="3dV$SK" id="59vxrWesl17" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="opensearchproject/opensearch:2.16.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/opensearchproject/opensearch" />
      </node>
    </node>
    <node concept="3dVskr" id="59vxrWesl18" role="3dVskk">
      <property role="TrG5h" value="jaeger_ConnectsTo_prometheus-server" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskZY" resolve="jaeger" />
      <ref role="3dVsku" node="59vxrWesl0H" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="59vxrWesl19" role="3dVskk">
      <property role="TrG5h" value="accountingservice_ConnectsTo_kafka" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUf" resolve="accountingservice" />
      <ref role="3dVsku" node="59vxrWeskZh" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1a" role="3dVskk">
      <property role="TrG5h" value="accountingservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUf" resolve="accountingservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1b" role="3dVskk">
      <property role="TrG5h" value="adservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUt" resolve="adservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1c" role="3dVskk">
      <property role="TrG5h" value="adservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUt" resolve="adservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1d" role="3dVskk">
      <property role="TrG5h" value="cartservice_ConnectsTo_valkey-cart" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUJ" resolve="cartservice" />
      <ref role="3dVsku" node="59vxrWeskZ$" resolve="valkey-cart" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1e" role="3dVskk">
      <property role="TrG5h" value="cartservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUJ" resolve="cartservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1f" role="3dVskk">
      <property role="TrG5h" value="cartservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskUJ" resolve="cartservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1g" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_cartservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskUJ" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1h" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_currencyservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskVp" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1i" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_emailservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskVC" resolve="emailservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1j" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_paymentservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskXE" resolve="paymentservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1k" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskXV" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1l" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_shippingservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskYO" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1m" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_kafka" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskZh" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1n" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1o" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1p" role="3dVskk">
      <property role="TrG5h" value="currencyservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskVp" resolve="currencyservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1q" role="3dVskk">
      <property role="TrG5h" value="emailservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskVC" resolve="emailservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1r" role="3dVskk">
      <property role="TrG5h" value="flagd_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskZ3" resolve="flagd" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1s" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_ConnectsTo_kafka" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskVR" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="59vxrWeskZh" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1t" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskVR" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1u" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskVR" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1v" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_adservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskUt" resolve="adservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1w" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_cartservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskUJ" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1x" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_checkoutservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskV1" resolve="checkoutservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1y" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_currencyservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskVp" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1z" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskXV" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1$" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_recommendationservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskYw" resolve="recommendationservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1_" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_shippingservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskYO" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1A" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1B" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1C" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1D" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_frontend" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskW9" resolve="frontend" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1E" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_grafana" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWesl09" resolve="grafana" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1F" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_imageprovider" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskX3" resolve="imageprovider" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1G" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_jaeger" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskZY" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1H" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_loadgenerator" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskXi" resolve="loadgenerator" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1I" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1J" role="3dVskk">
      <property role="TrG5h" value="imageprovider_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskX3" resolve="imageprovider" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1K" role="3dVskk">
      <property role="TrG5h" value="kafka_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskZh" resolve="kafka" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1L" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_ConnectsTo_frontendproxy" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXi" resolve="loadgenerator" />
      <ref role="3dVsku" node="59vxrWeskW_" resolve="frontendproxy" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1M" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXi" resolve="loadgenerator" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1N" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXi" resolve="loadgenerator" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1O" role="3dVskk">
      <property role="TrG5h" value="paymentservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXE" resolve="paymentservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1P" role="3dVskk">
      <property role="TrG5h" value="paymentservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXE" resolve="paymentservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1Q" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXV" resolve="productcatalogservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1R" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXV" resolve="productcatalogservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1S" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_ConnectsTo_mongodb-catalog" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskXV" resolve="productcatalogservice" />
      <ref role="3dVsku" node="59vxrWeskZH" resolve="mongodb-catalog" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1T" role="3dVskk">
      <property role="TrG5h" value="quoteservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYg" resolve="quoteservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1U" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYw" resolve="recommendationservice" />
      <ref role="3dVsku" node="59vxrWeskXV" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1V" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_ConnectsTo_flagd" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYw" resolve="recommendationservice" />
      <ref role="3dVsku" node="59vxrWeskZ3" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1W" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYw" resolve="recommendationservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1X" role="3dVskk">
      <property role="TrG5h" value="shippingservice_ConnectsTo_quoteservice" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYO" resolve="shippingservice" />
      <ref role="3dVsku" node="59vxrWeskYg" resolve="quoteservice" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1Y" role="3dVskk">
      <property role="TrG5h" value="shippingservice_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWeskYO" resolve="shippingservice" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl1Z" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_frontendproxy" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWeskW_" resolve="frontendproxy" />
    </node>
    <node concept="3dVskr" id="59vxrWesl20" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl21" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_valkey-cart" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWeskZ$" resolve="valkey-cart" />
    </node>
    <node concept="3dVskr" id="59vxrWesl22" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_opensearch" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWesl0T" resolve="opensearch" />
    </node>
    <node concept="3dVskr" id="59vxrWesl23" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_prometheus-server" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWesl0H" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="59vxrWesl24" role="3dVskk">
      <property role="TrG5h" value="otelcol_ConnectsTo_jaeger" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWeskZY" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="59vxrWesl25" role="3dVskk">
      <property role="TrG5h" value="prometheus-server_ConnectsTo_otelcol" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl0H" resolve="prometheus" />
      <ref role="3dVsku" node="59vxrWesl0m" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="59vxrWesl26" role="3dVskk">
      <property role="TrG5h" value="grafana_ConnectsTo_prometheus" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl09" resolve="grafana" />
      <ref role="3dVsku" node="59vxrWesl0H" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="59vxrWesl27" role="3dVskk">
      <property role="TrG5h" value="grafana_ConnectsTo_jaeger" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl09" resolve="grafana" />
      <ref role="3dVsku" node="59vxrWeskZY" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="59vxrWesl28" role="3dVskk">
      <property role="TrG5h" value="grafana_ConnectsTo_opensearch" />
      <ref role="3dVsks" node="59vxrWeskUb" resolve="ConnectsTo" />
      <ref role="3dVskt" node="59vxrWesl09" resolve="grafana" />
      <ref role="3dVsku" node="59vxrWesl0T" resolve="opensearch" />
    </node>
    <node concept="3dVskr" id="59vxrWesl29" role="3dVskk">
      <property role="TrG5h" value="accountingservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskUf" resolve="accountingservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2a" role="3dVskk">
      <property role="TrG5h" value="adservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskUt" resolve="adservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2b" role="3dVskk">
      <property role="TrG5h" value="cartservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskUJ" resolve="cartservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2c" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskV1" resolve="checkoutservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2d" role="3dVskk">
      <property role="TrG5h" value="currencyservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskVp" resolve="currencyservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2e" role="3dVskk">
      <property role="TrG5h" value="emailservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskVC" resolve="emailservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2f" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskVR" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2g" role="3dVskk">
      <property role="TrG5h" value="frontend_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskW9" resolve="frontend" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2h" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskW_" resolve="frontendproxy" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2i" role="3dVskk">
      <property role="TrG5h" value="imageprovider_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskX3" resolve="imageprovider" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2j" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskXi" resolve="loadgenerator" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2k" role="3dVskk">
      <property role="TrG5h" value="paymentservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskXE" resolve="paymentservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2l" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskXV" resolve="productcatalogservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2m" role="3dVskk">
      <property role="TrG5h" value="quoteservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskYg" resolve="quoteservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2n" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskYw" resolve="recommendationservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2o" role="3dVskk">
      <property role="TrG5h" value="shippingservice_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskYO" resolve="shippingservice" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2p" role="3dVskk">
      <property role="TrG5h" value="flagd_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskZ3" resolve="flagd" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2q" role="3dVskk">
      <property role="TrG5h" value="kafka_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskZh" resolve="kafka" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2r" role="3dVskk">
      <property role="TrG5h" value="valkey-cart_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskZ$" resolve="valkey-cart" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2s" role="3dVskk">
      <property role="TrG5h" value="mongodb-catalog_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskZH" resolve="mongodb-catalog" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2t" role="3dVskk">
      <property role="TrG5h" value="jaeger_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWeskZY" resolve="jaeger" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2u" role="3dVskk">
      <property role="TrG5h" value="grafana_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWesl09" resolve="grafana" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2v" role="3dVskk">
      <property role="TrG5h" value="otelcol_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWesl0m" resolve="otelcol" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2w" role="3dVskk">
      <property role="TrG5h" value="prometheus_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWesl0H" resolve="prometheus" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
    <node concept="3dVskr" id="59vxrWesl2x" role="3dVskk">
      <property role="TrG5h" value="opensearch_HostedOn_DefaultDockerEngine" />
      <ref role="3dVsks" node="59vxrWeskUa" resolve="HostedOn" />
      <ref role="3dVskt" node="59vxrWesl0T" resolve="opensearch" />
      <ref role="3dVsku" node="59vxrWeskUe" resolve="DefaultDockerEngine" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKkSlf1">
    <property role="TrG5h" value="meitrex_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKkSlf2" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlf3" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="71ZUOKkSlf2" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlf4" role="3dVskk">
      <property role="TrG5h" value="KubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSlf3" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlf5" role="3dVskk">
      <property role="TrG5h" value="DefaultKubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSlf4" resolve="KubernetesCluster" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlf6" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf2" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlf7" role="3dVskk">
      <property role="TrG5h" value="content_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlf8" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlf9" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://content-service-db-postgresql:5432/content-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfa" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfb" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfc" role="3dVskk">
      <property role="TrG5h" value="course_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfd" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfe" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://course-service-db-postgresql:5432/course-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlff" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfg" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfh" role="3dVskk">
      <property role="TrG5h" value="flashcard_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfi" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfj" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://flashcard-service-db-postgresql:5432/flashcard-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfk" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfl" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfm" role="3dVskk">
      <property role="TrG5h" value="frontend-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfn" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfo" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_BACKEND_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/api" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfp" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_REDIRECT_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://orange.informatik.uni-stuttgart.de" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfq" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_CLIENT_ID" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits-frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfr" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_AUTHORITY" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://orange.informatik.uni-stuttgart.de/keycloak/realms/GITS" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfs" role="3dVskk">
      <property role="TrG5h" value="graphql_gateway-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlft" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfu" role="3dVrc3">
        <property role="3dVrbM" value="GATEWAY_HOSTNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfv" role="3dVrc3">
        <property role="3dVrbM" value="GATEWAY_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfw" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfx" role="3dVrc3">
        <property role="3dVrbM" value="MEDIA_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/media-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfy" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfz" role="3dVrc3">
        <property role="3dVrbM" value="USER_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/user-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlf$" role="3dVrc3">
        <property role="3dVrbM" value="FLASHCARD_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/flashcard-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlf_" role="3dVrc3">
        <property role="3dVrbM" value="REWARD_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/reward-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfA" role="3dVrc3">
        <property role="3dVrbM" value="QUIZ_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/quiz-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfB" role="3dVrc3">
        <property role="3dVrbM" value="SKILLLEVEL_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/skilllevel-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfC" role="3dVrc3">
        <property role="3dVrbM" value="JWKS_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://keycloak:80/keycloak/realms/GITS/protocol/openid-connect/certs" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfD" role="3dVskk">
      <property role="TrG5h" value="media_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfE" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfF" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://media-service-db-postgresql:5432/media-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfG" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfH" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfI" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://minio:9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfJ" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ACCESS_KEY" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfK" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ACCESS_SECRET" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfL" role="3dVskk">
      <property role="TrG5h" value="quiz_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfM" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfN" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://quiz-service-db-postgresql:5432/quiz-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfO" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfP" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfQ" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfR" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfS" role="3dVskk">
      <property role="TrG5h" value="reward_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlfT" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfU" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://reward-service-db-postgresql:5432/reward-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfV" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfW" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfX" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlfY" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlfZ" role="3dVskk">
      <property role="TrG5h" value="skilllevel_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlg0" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg1" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://skilllevel-service-db-postgresql:5432/skilllevel-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg2" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg3" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg4" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg5" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlg6" role="3dVskk">
      <property role="TrG5h" value="user_service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlg7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg8" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://user-service-db-postgresql:5432/user-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg9" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlga" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgb" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://keycloak:80/keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgc" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="test" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlgd" role="3dVskk">
      <property role="TrG5h" value="operator-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlge" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgf" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6500" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgg" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgh" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="443:6500" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgi" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_legacy" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:6500" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgj" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlgk" role="3dVskk">
      <property role="TrG5h" value="sentry-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlgl" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50001" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgn" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgo" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="443:50001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgp" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlgq" role="3dVskk">
      <property role="TrG5h" value="injector-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlgr" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgs" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_TRUST_ANCHORS_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/var/run/secrets/dapr.io/tls/ca.crt" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgt" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_CONTROL_PLANE_TRUST_DOMAIN" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgu" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_SENTRY_ADDRESS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="dapr-sentry.default.svc.cluster.local:443" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgv" role="3dVrc3">
        <property role="3dVrbM" value="KUBE_CLUSTER_DOMAIN" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgw" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_IMAGE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="ghcr.io/dapr/daprd:1.15.6" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgx" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_IMAGE_PULL_POLICY" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgy" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_RUN_AS_NON_ROOT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgz" role="3dVrc3">
        <property role="3dVrbM" value="ENABLE_K8S_DOWNWARD_APIS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg$" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_DROP_ALL_CAPABILITIES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlg_" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_READ_ONLY_ROOT_FILESYSTEM" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgA" role="3dVrc3">
        <property role="3dVrbM" value="IGNORE_ENTRYPOINT_TOLERATIONS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="[{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;alibabacloud.com/eci\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;azure.com/aci\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;aws\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;huawei.com/cci\&quot;}]" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgB" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgC" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_SERVICE_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="placement" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgD" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_SERVICE_ADDRESS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="dapr-placement-server:50005" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgE" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_https" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4000" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgF" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgG" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_https" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="443:4000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgH" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlgI" role="3dVskk">
      <property role="TrG5h" value="placement-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlgJ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgK" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_api" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50005" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgL" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_raft-node" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8201" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgM" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgN" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50005:50005" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgO" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_raft-node" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8201:8201" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgP" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlgQ" role="3dVskk">
      <property role="TrG5h" value="scheduler-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlgR" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgS" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50006" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgT" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_etcd-client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2379" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgU" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_etcd-peer" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2380" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgV" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgW" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api_443:50006" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="443:50006" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgX" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api_50006:50006" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50006:50006" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_etcd-client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2379:2379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlgZ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_etcd-peer" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2380:2380" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh0" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlh1" role="3dVskk">
      <property role="TrG5h" value="keel-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlh2" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh3" role="3dVrc3">
        <property role="3dVrbM" value="POLL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh4" role="3dVrc3">
        <property role="3dVrbM" value="POLL_DEFAULTSCHEDULE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="@every 1m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh5" role="3dVrc3">
        <property role="3dVrbM" value="NOTIFICATION_LEVEL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="info" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh6" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9300" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlh7" role="3dVskk">
      <property role="TrG5h" value="keycloak-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlh8" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh9" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlha" role="3dVrc3">
        <property role="3dVrbM" value="KC_BOOTSTRAP_ADMIN_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/keycloak/secrets/admin-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhb" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/keycloak/secrets/db-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhc" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_HTTP_RELATIVE_PATH" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/keycloak/" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhd" role="3dVrc3">
        <property role="3dVrbM" value="KC_SPI_ADMIN_REALM" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="master" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhe" role="3dVrc3">
        <property role="3dVrbM" value="KC_BOOTSTRAP_ADMIN_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="admin" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhf" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_HTTP_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhg" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PROXY_HEADERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="xforwarded" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhh" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_ENABLE_STATISTICS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhi" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="keycloak-postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhj" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhk" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="bitnami_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhl" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_USER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="bn_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhm" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PRODUCTION" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhn" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_ENABLE_HTTPS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlho" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="ispn" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhp" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_STACK" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kubernetes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhq" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_CONFIG_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cache-ispn.xml" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhr" role="3dVrc3">
        <property role="3dVrbM" value="JAVA_OPTS_APPEND" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="-Djgroups.dns.query=keycloak-headless.default.svc.cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhs" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_LOG_OUTPUT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="default" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlht" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_LOG_LEVEL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="INFO" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhu" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhv" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_discovery" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7800" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhw" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http_8080:8080" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhx" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http_80:8080" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlhy" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlhz" role="3dVskk">
      <property role="TrG5h" value="postgresql-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSlhy" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlh$" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlh_" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhA" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhB" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhC" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhD" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="bn_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhE" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhF" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhG" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="bitnami_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhH" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhI" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhJ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhK" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhL" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhM" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhO" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhP" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhQ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlhR" role="3dVskk">
      <property role="TrG5h" value="minio-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSlhy" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlhS" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhT" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhU" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_DISTRIBUTED_MODE_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhV" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_SCHEME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhW" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_FORCE_NEW_KEYS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhX" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ROOT_USER_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/minio/secrets/root-user" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhY" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ROOT_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/minio/secrets/root-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlhZ" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_SKIP_CLIENT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli0" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_API_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli1" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_BROWSER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli2" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_PROMETHEUS_AUTH_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="public" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli3" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_DATA_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/bitnami/minio/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli4" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_api" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9000" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli5" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-api" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9000:9000" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSli6" role="3dVskk">
      <property role="TrG5h" value="minio-object-browser-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSlf6" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSli7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli8" role="3dVrc3">
        <property role="3dVrbM" value="CONSOLE_MINIO_SERVER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://minio:9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli9" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlia" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlib" role="3dVskk">
      <property role="TrG5h" value="redis-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSlhy" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlic" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlid" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlie" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_REPLICATION_MODE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="master" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlif" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlig" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/redis/secrets/redis-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlih" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_TLS_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlii" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlij" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_redis" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlik" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-redis" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlil" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="redis-master-0.redis-headless.default.svc.cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlim" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_PASSWORD_FILE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/redis/secrets/redis-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlin" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSlio" role="3dVskk">
      <property role="TrG5h" value="Storage" />
      <ref role="3dVrbW" node="71ZUOKkSlf2" resolve="BaseType" />
      <node concept="3dVrbJ" id="71ZUOKkSlip" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKkSliq" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSlir" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKkSliq" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSlis" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKkSliq" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSlit" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKkSliq" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKkSliu" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSliv" role="3dVskk">
      <property role="TrG5h" value="defaultKubernetesCluster" />
      <ref role="3dVskh" node="71ZUOKkSlf5" resolve="DefaultKubernetesCluster" />
    </node>
    <node concept="3dVrw6" id="71ZUOKkSliw" role="3dVskk">
      <property role="TrG5h" value="gits-content-service" />
      <ref role="3dVskh" node="71ZUOKkSlf7" resolve="content_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlix" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliy" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://content-service-db-postgresql:5432/content-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliz" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSli$" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSli_" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/content_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/content_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSliA" role="3dVskk">
      <property role="TrG5h" value="content-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSliB" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliC" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliD" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliE" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliF" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliG" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliH" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliI" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliJ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="content-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliK" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliL" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliM" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliO" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliP" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliQ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliR" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliS" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliT" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSliU" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSliV" role="3dVskk">
      <property role="TrG5h" value="content-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSliW" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSliX" role="3dVskk">
      <property role="TrG5h" value="gits-course-service" />
      <ref role="3dVskh" node="71ZUOKkSlfc" resolve="course_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSliY" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSliZ" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://course-service-db-postgresql:5432/course-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj0" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj1" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlj2" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/course_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/course_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlj3" role="3dVskk">
      <property role="TrG5h" value="course-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlj4" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj5" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj6" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj7" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj8" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj9" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlja" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljb" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljc" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="course-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljd" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlje" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljf" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljg" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljh" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlji" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljj" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljk" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljl" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljm" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSljn" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljo" role="3dVskk">
      <property role="TrG5h" value="course-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSljp" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljq" role="3dVskk">
      <property role="TrG5h" value="gits-flashcard-service" />
      <ref role="3dVskh" node="71ZUOKkSlfh" resolve="flashcard_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSljr" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljs" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://flashcard-service-db-postgresql:5432/flashcard-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljt" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlju" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSljv" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/flashcard_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/flashcard_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljw" role="3dVskk">
      <property role="TrG5h" value="flashcard-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSljx" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljy" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljz" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj$" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlj_" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljA" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljB" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljC" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljD" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="flashcard-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljE" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljF" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljG" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljH" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljI" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljJ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljK" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljL" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljM" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljN" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSljO" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljP" role="3dVskk">
      <property role="TrG5h" value="flashcard-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSljQ" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljR" role="3dVskk">
      <property role="TrG5h" value="gits-frontend" />
      <ref role="3dVskh" node="71ZUOKkSlfm" resolve="frontend-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSljS" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljT" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_BACKEND_URL" />
        <property role="3dVrbN" value="/api" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljU" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_REDIRECT_URL" />
        <property role="3dVrbN" value="http://orange.informatik.uni-stuttgart.de" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljV" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_CLIENT_ID" />
        <property role="3dVrbN" value="gits-frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSljW" role="3dVrc3">
        <property role="3dVrbM" value="NEXT_PUBLIC_OAUTH_AUTHORITY" />
        <property role="3dVrbN" value="http://orange.informatik.uni-stuttgart.de/keycloak/realms/GITS" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSljX" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/frontend:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/frontend:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSljY" role="3dVskk">
      <property role="TrG5h" value="gits-gateway" />
      <ref role="3dVskh" node="71ZUOKkSlfs" resolve="graphql_gateway-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSljZ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk0" role="3dVrc3">
        <property role="3dVrbM" value="GATEWAY_HOSTNAME" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk1" role="3dVrc3">
        <property role="3dVrbM" value="GATEWAY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk2" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk3" role="3dVrc3">
        <property role="3dVrbM" value="MEDIA_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/media-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk4" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk5" role="3dVrc3">
        <property role="3dVrbM" value="USER_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/user-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk6" role="3dVrc3">
        <property role="3dVrbM" value="FLASHCARD_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/flashcard-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk7" role="3dVrc3">
        <property role="3dVrbM" value="REWARD_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/reward-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk8" role="3dVrc3">
        <property role="3dVrbM" value="QUIZ_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/quiz-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk9" role="3dVrc3">
        <property role="3dVrbM" value="SKILLLEVEL_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/skilllevel-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlka" role="3dVrc3">
        <property role="3dVrbM" value="JWKS_URL" />
        <property role="3dVrbN" value="http://keycloak:80/keycloak/realms/GITS/protocol/openid-connect/certs" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlkb" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/graphql_gateway:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/graphql_gateway:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlkc" role="3dVskk">
      <property role="TrG5h" value="keel" />
      <ref role="3dVskh" node="71ZUOKkSlh1" resolve="keel-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlkd" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlke" role="3dVrc3">
        <property role="3dVrbM" value="POLL" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkf" role="3dVrc3">
        <property role="3dVrbM" value="POLL_DEFAULTSCHEDULE" />
        <property role="3dVrbN" value="@every 1m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkg" role="3dVrc3">
        <property role="3dVrbM" value="NOTIFICATION_LEVEL" />
        <property role="3dVrbN" value="info" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkh" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="9300" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlki" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="keelhq/keel:0.19.1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/keelhq/keel" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlkj" role="3dVskk">
      <property role="TrG5h" value="keycloak" />
      <ref role="3dVskh" node="71ZUOKkSlh7" resolve="keycloak-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlkk" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkl" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkm" role="3dVrc3">
        <property role="3dVrbM" value="KC_BOOTSTRAP_ADMIN_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/keycloak/secrets/admin-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkn" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/keycloak/secrets/db-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlko" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_HTTP_RELATIVE_PATH" />
        <property role="3dVrbN" value="/keycloak/" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkp" role="3dVrc3">
        <property role="3dVrbM" value="KC_SPI_ADMIN_REALM" />
        <property role="3dVrbN" value="master" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkq" role="3dVrc3">
        <property role="3dVrbM" value="KC_BOOTSTRAP_ADMIN_USERNAME" />
        <property role="3dVrbN" value="admin" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkr" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_HTTP_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlks" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PROXY_HEADERS" />
        <property role="3dVrbN" value="xforwarded" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkt" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_ENABLE_STATISTICS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlku" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_HOST" />
        <property role="3dVrbN" value="keycloak-postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkv" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_PORT" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkw" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_NAME" />
        <property role="3dVrbN" value="bitnami_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkx" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_DATABASE_USER" />
        <property role="3dVrbN" value="bn_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlky" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PRODUCTION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkz" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_ENABLE_HTTPS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk$" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_TYPE" />
        <property role="3dVrbN" value="ispn" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlk_" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_STACK" />
        <property role="3dVrbN" value="kubernetes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkA" role="3dVrc3">
        <property role="3dVrbM" value="KC_CACHE_CONFIG_FILE" />
        <property role="3dVrbN" value="cache-ispn.xml" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkB" role="3dVrc3">
        <property role="3dVrbM" value="JAVA_OPTS_APPEND" />
        <property role="3dVrbN" value="-Djgroups.dns.query=keycloak-headless.default.svc.cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkC" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_LOG_OUTPUT" />
        <property role="3dVrbN" value="default" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkD" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_LOG_LEVEL" />
        <property role="3dVrbN" value="INFO" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkE" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkF" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_discovery" />
        <property role="3dVrbN" value="7800" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkG" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http_8080:8080" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkH" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http_80:8080" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlkI" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/keycloak:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/keycloak:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlkJ" role="3dVskk">
      <property role="TrG5h" value="keycloak-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlkK" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkL" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkM" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkO" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkP" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="bn_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkQ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkR" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkS" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="bitnami_keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkT" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkU" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkV" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkW" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkX" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkY" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlkZ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSll0" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSll1" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSll2" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSll3" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.4.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSll4" role="3dVskk">
      <property role="TrG5h" value="keycloak-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSll5" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSll6" role="3dVskk">
      <property role="TrG5h" value="gits-media-service" />
      <ref role="3dVskh" node="71ZUOKkSlfD" resolve="media_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSll7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSll8" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://media-service-db-postgresql:5432/media-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSll9" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlla" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllb" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_URL" />
        <property role="3dVrbN" value="http://minio:9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllc" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ACCESS_KEY" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlld" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ACCESS_SECRET" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlle" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/media_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/media_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSllf" role="3dVskk">
      <property role="TrG5h" value="media-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSllg" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllh" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlli" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllj" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllk" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlll" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllm" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlln" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllo" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="media-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllp" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllq" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllr" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlls" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllt" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllu" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllv" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllw" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllx" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlly" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSllz" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSll$" role="3dVskk">
      <property role="TrG5h" value="media-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSll_" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSllA" role="3dVskk">
      <property role="TrG5h" value="minio" />
      <ref role="3dVskh" node="71ZUOKkSlhR" resolve="minio-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSllB" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllC" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllD" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_DISTRIBUTED_MODE_ENABLED" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllE" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_SCHEME" />
        <property role="3dVrbN" value="http" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllF" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_FORCE_NEW_KEYS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllG" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ROOT_USER_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/minio/secrets/root-user" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllH" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_ROOT_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/minio/secrets/root-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllI" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_SKIP_CLIENT" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllJ" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_API_PORT_NUMBER" />
        <property role="3dVrbN" value="9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllK" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_BROWSER" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllL" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_PROMETHEUS_AUTH_TYPE" />
        <property role="3dVrbN" value="public" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllM" role="3dVrc3">
        <property role="3dVrbM" value="MINIO_DATA_DIR" />
        <property role="3dVrbN" value="/bitnami/minio/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllN" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_api" />
        <property role="3dVrbN" value="9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllO" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-api" />
        <property role="3dVrbN" value="9000:9000" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSllP" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/minio:2025.6.13-debian-12-r1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/minio" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSllQ" role="3dVskk">
      <property role="TrG5h" value="minio-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSllR" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSllS" role="3dVskk">
      <property role="TrG5h" value="minio-console" />
      <ref role="3dVskh" node="71ZUOKkSli6" resolve="minio-object-browser-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSllT" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllU" role="3dVrc3">
        <property role="3dVrbM" value="CONSOLE_MINIO_SERVER" />
        <property role="3dVrbN" value="http://minio:9000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllV" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSllW" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSllX" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/minio-object-browser:2.0.2-debian-12-r1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/minio-object-browser" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSllY" role="3dVskk">
      <property role="TrG5h" value="gits-quiz-service" />
      <ref role="3dVskh" node="71ZUOKkSlfL" resolve="quiz_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSllZ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm0" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://quiz-service-db-postgresql:5432/quiz-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm1" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm2" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm3" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm4" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlm5" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/quiz_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/quiz_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlm6" role="3dVskk">
      <property role="TrG5h" value="quiz-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlm7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm8" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlm9" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlma" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmb" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmc" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmd" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlme" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmf" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="quiz-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmg" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmh" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmi" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmj" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmk" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlml" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmm" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmn" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmo" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmp" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlmq" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlmr" role="3dVskk">
      <property role="TrG5h" value="quiz-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlms" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlmt" role="3dVskk">
      <property role="TrG5h" value="gits-reward-service" />
      <ref role="3dVskh" node="71ZUOKkSlfS" resolve="reward_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlmu" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmv" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://reward-service-db-postgresql:5432/reward-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmw" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmx" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmy" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmz" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlm$" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/reward_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/reward_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlm_" role="3dVskk">
      <property role="TrG5h" value="reward-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlmA" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmB" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmC" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmD" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmE" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmF" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmG" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmH" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmI" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="reward-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmJ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmK" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmL" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmM" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmO" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmP" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmQ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmR" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmS" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlmT" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlmU" role="3dVskk">
      <property role="TrG5h" value="reward-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlmV" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlmW" role="3dVskk">
      <property role="TrG5h" value="gits-skilllevel-service" />
      <ref role="3dVskh" node="71ZUOKkSlfZ" resolve="skilllevel_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlmX" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmY" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://skilllevel-service-db-postgresql:5432/skilllevel-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlmZ" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln0" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln1" role="3dVrc3">
        <property role="3dVrbM" value="COURSE_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/course-service/method/graphql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln2" role="3dVrc3">
        <property role="3dVrbM" value="CONTENT_SERVICE_URL" />
        <property role="3dVrbN" value="http://localhost:3500/v1.0/invoke/content-service/method/graphql" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSln3" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/skilllevel_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/skilllevel_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSln4" role="3dVskk">
      <property role="TrG5h" value="skilllevel-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSln5" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln6" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln7" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln8" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln9" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlna" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnb" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnc" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnd" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="skilllevel-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlne" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnf" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlng" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnh" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlni" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnj" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnk" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnl" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnn" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlno" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlnp" role="3dVskk">
      <property role="TrG5h" value="skilllevel-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlnq" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlnr" role="3dVskk">
      <property role="TrG5h" value="gits-user-service" />
      <ref role="3dVskh" node="71ZUOKkSlg6" resolve="user_service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlns" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnt" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://user-service-db-postgresql:5432/user-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnu" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnv" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="randomGeneratedValue" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnw" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_URL" />
        <property role="3dVrbN" value="http://keycloak:80/keycloak" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnx" role="3dVrc3">
        <property role="3dVrbM" value="KEYCLOAK_PASSWORD" />
        <property role="3dVrbN" value="test" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlny" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/it-rex-platform/user_service:latest" />
        <property role="3dV$SQ" value="ghcr.io/it-rex-platform/user_service:latest" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlnz" role="3dVskk">
      <property role="TrG5h" value="user-service-db-postgresql" />
      <ref role="3dVskh" node="71ZUOKkSlhz" resolve="postgresql-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSln$" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSln_" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnA" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PORT_NUMBER" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnB" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnC" role="3dVrc3">
        <property role="3dVrbM" value="PGDATA" />
        <property role="3dVrbN" value="/bitnami/postgresql/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnD" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="gits" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnE" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnF" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_POSTGRES_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/postgresql/secrets/postgres-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnG" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DATABASE" />
        <property role="3dVrbN" value="user-service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnH" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_LDAP" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnI" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_ENABLE_TLS" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnJ" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_HOSTNAME" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnK" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_CONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnL" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_LOG_DISCONNECTIONS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnM" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_PGAUDIT_LOG_CATALOG" />
        <property role="3dVrbN" value="off" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_CLIENT_MIN_MESSAGES" />
        <property role="3dVrbN" value="error" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnO" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRESQL_SHARED_PRELOAD_LIBRARIES" />
        <property role="3dVrbN" value="pgaudit" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnP" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnQ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-postgresql" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlnR" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/postgresql:17.5.0-debian-12-r17" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlnS" role="3dVskk">
      <property role="TrG5h" value="user-service-db-postgresql-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlnT" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlnU" role="3dVskk">
      <property role="TrG5h" value="dapr-operator" />
      <ref role="3dVskh" node="71ZUOKkSlgd" resolve="operator-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlnV" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnW" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="6500" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnX" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="443:6500" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlnZ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_legacy" />
        <property role="3dVrbN" value="80:6500" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo0" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlo1" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/dapr/operator:1.15.6" />
        <property role="3dV$SQ" value="ghcr.io/dapr/operator:1.15.6" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlo2" role="3dVskk">
      <property role="TrG5h" value="dapr-sentry" />
      <ref role="3dVskh" node="71ZUOKkSlgk" resolve="sentry-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlo3" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo4" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="50001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo5" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo6" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="443:50001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo7" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlo8" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/dapr/sentry:1.15.6" />
        <property role="3dV$SQ" value="ghcr.io/dapr/sentry:1.15.6" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlo9" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector" />
      <ref role="3dVskh" node="71ZUOKkSlgq" resolve="injector-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSloa" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlob" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_TRUST_ANCHORS_FILE" />
        <property role="3dVrbN" value="/var/run/secrets/dapr.io/tls/ca.crt" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloc" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_CONTROL_PLANE_TRUST_DOMAIN" />
        <property role="3dVrbN" value="cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlod" role="3dVrc3">
        <property role="3dVrbM" value="DAPR_SENTRY_ADDRESS" />
        <property role="3dVrbN" value="dapr-sentry.default.svc.cluster.local:443" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloe" role="3dVrc3">
        <property role="3dVrbM" value="KUBE_CLUSTER_DOMAIN" />
        <property role="3dVrbN" value="cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlof" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_IMAGE" />
        <property role="3dVrbN" value="ghcr.io/dapr/daprd:1.15.6" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlog" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_IMAGE_PULL_POLICY" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloh" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_RUN_AS_NON_ROOT" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloi" role="3dVrc3">
        <property role="3dVrbM" value="ENABLE_K8S_DOWNWARD_APIS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloj" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_DROP_ALL_CAPABILITIES" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlok" role="3dVrc3">
        <property role="3dVrbM" value="SIDECAR_READ_ONLY_ROOT_FILESYSTEM" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlol" role="3dVrc3">
        <property role="3dVrbM" value="IGNORE_ENTRYPOINT_TOLERATIONS" />
        <property role="3dVrbN" value="[{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;alibabacloud.com/eci\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;azure.com/aci\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;aws\&quot;},{\&quot;effect\&quot;:\&quot;NoSchedule\&quot;,\&quot;key\&quot;:\&quot;huawei.com/cci\&quot;}]" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlom" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlon" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_SERVICE_NAME" />
        <property role="3dVrbN" value="placement" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloo" role="3dVrc3">
        <property role="3dVrbM" value="ACTORS_SERVICE_ADDRESS" />
        <property role="3dVrbN" value="dapr-placement-server:50005" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlop" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_https" />
        <property role="3dVrbN" value="4000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloq" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlor" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_https" />
        <property role="3dVrbN" value="443:4000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlos" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlot" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/dapr/injector:1.15.6" />
        <property role="3dV$SQ" value="ghcr.io/dapr/injector:1.15.6" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlou" role="3dVskk">
      <property role="TrG5h" value="dapr-placement-server" />
      <ref role="3dVskh" node="71ZUOKkSlgI" resolve="placement-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSlov" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlow" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_api" />
        <property role="3dVrbN" value="50005" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlox" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_raft-node" />
        <property role="3dVrbN" value="8201" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloy" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloz" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api" />
        <property role="3dVrbN" value="50005:50005" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo$" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_raft-node" />
        <property role="3dVrbN" value="8201:8201" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlo_" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSloA" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/dapr/placement:1.15.6" />
        <property role="3dV$SQ" value="ghcr.io/dapr/placement:1.15.6" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSloB" role="3dVskk">
      <property role="TrG5h" value="dapr-scheduler-server" />
      <ref role="3dVskh" node="71ZUOKkSlgQ" resolve="scheduler-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSloC" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloD" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="50006" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloE" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_etcd-client" />
        <property role="3dVrbN" value="2379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloF" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_etcd-peer" />
        <property role="3dVrbN" value="2380" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloG" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloH" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api_443:50006" />
        <property role="3dVrbN" value="443:50006" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloI" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_api_50006:50006" />
        <property role="3dVrbN" value="50006:50006" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloJ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_etcd-client" />
        <property role="3dVrbN" value="2379:2379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloK" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_etcd-peer" />
        <property role="3dVrbN" value="2380:2380" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloL" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSloM" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/dapr/scheduler:1.15.6" />
        <property role="3dV$SQ" value="ghcr.io/dapr/scheduler:1.15.6" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSloN" role="3dVskk">
      <property role="TrG5h" value="dapr-scheduler-server-dapr-scheduler-data-dir-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSloO" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="1Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSloP" role="3dVskk">
      <property role="TrG5h" value="redis-master" />
      <ref role="3dVskh" node="71ZUOKkSlib" resolve="redis-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSloQ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloR" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloS" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_REPLICATION_MODE" />
        <property role="3dVrbN" value="master" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloT" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloU" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/redis/secrets/redis-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloV" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_TLS_ENABLED" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloW" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PORT" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloX" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_redis" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSloY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-redis" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSloZ" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/redis:8.0.3-debian-12-r1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/redis" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlp0" role="3dVskk">
      <property role="TrG5h" value="redis-master-redis-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlp1" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlp2" role="3dVskk">
      <property role="TrG5h" value="redis-replicas" />
      <ref role="3dVskh" node="71ZUOKkSlib" resolve="redis-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSlp3" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp4" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp5" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_REPLICATION_MODE" />
        <property role="3dVrbN" value="replica" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp6" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_HOST" />
        <property role="3dVrbN" value="redis-master-0.redis-headless.default.svc.cluster.local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp7" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_PORT_NUMBER" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp8" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlp9" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/redis/secrets/redis-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlpa" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_MASTER_PASSWORD_FILE" />
        <property role="3dVrbN" value="/opt/bitnami/redis/secrets/redis-password" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlpb" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_TLS_ENABLED" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlpc" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_PORT" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlpd" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_redis" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSlpe" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-redis" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSlpf" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/redis:8.0.3-debian-12-r1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/redis" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSlpg" role="3dVskk">
      <property role="TrG5h" value="redis-replicas-redis-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSlio" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSlph" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpi" role="3dVskk">
      <property role="TrG5h" value="gits-content-service_ConnectsTo_content-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliw" resolve="gits-content-service" />
      <ref role="3dVsku" node="71ZUOKkSliA" resolve="content-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpj" role="3dVskk">
      <property role="TrG5h" value="content-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSliV" resolve="content-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliA" resolve="content-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpk" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpl" role="3dVskk">
      <property role="TrG5h" value="gits-content-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSliw" resolve="gits-content-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpm" role="3dVskk">
      <property role="TrG5h" value="content-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSliA" resolve="content-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpn" role="3dVskk">
      <property role="TrG5h" value="content-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSliV" resolve="content-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpo" role="3dVskk">
      <property role="TrG5h" value="gits-course-service_ConnectsTo_course-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliX" resolve="gits-course-service" />
      <ref role="3dVsku" node="71ZUOKkSlj3" resolve="course-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpp" role="3dVskk">
      <property role="TrG5h" value="course-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSljo" resolve="course-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlj3" resolve="course-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpq" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpr" role="3dVskk">
      <property role="TrG5h" value="gits-course-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSliX" resolve="gits-course-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlps" role="3dVskk">
      <property role="TrG5h" value="course-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlj3" resolve="course-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpt" role="3dVskk">
      <property role="TrG5h" value="course-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljo" resolve="course-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpu" role="3dVskk">
      <property role="TrG5h" value="gits-flashcard-service_ConnectsTo_flashcard-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljq" resolve="gits-flashcard-service" />
      <ref role="3dVsku" node="71ZUOKkSljw" resolve="flashcard-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpv" role="3dVskk">
      <property role="TrG5h" value="flashcard-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSljP" resolve="flashcard-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSljw" resolve="flashcard-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpw" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpx" role="3dVskk">
      <property role="TrG5h" value="gits-flashcard-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljq" resolve="gits-flashcard-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpy" role="3dVskk">
      <property role="TrG5h" value="flashcard-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljw" resolve="flashcard-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpz" role="3dVskk">
      <property role="TrG5h" value="flashcard-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljP" resolve="flashcard-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlp$" role="3dVskk">
      <property role="TrG5h" value="gits-frontend_ConnectsTo_gits-gateway" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljR" resolve="gits-frontend" />
      <ref role="3dVsku" node="71ZUOKkSljY" resolve="gits-gateway" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlp_" role="3dVskk">
      <property role="TrG5h" value="gits-frontend_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljR" resolve="gits-frontend" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpA" role="3dVskk">
      <property role="TrG5h" value="gits-gateway_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSljY" resolve="gits-gateway" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpB" role="3dVskk">
      <property role="TrG5h" value="keel_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlkc" resolve="keel" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpC" role="3dVskk">
      <property role="TrG5h" value="keycloak_ConnectsTo_keycloak-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlkj" resolve="keycloak" />
      <ref role="3dVsku" node="71ZUOKkSlkJ" resolve="keycloak-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpD" role="3dVskk">
      <property role="TrG5h" value="keycloak-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSll4" resolve="keycloak-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlkJ" resolve="keycloak-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpE" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpF" role="3dVskk">
      <property role="TrG5h" value="keycloak_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlkj" resolve="keycloak" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpG" role="3dVskk">
      <property role="TrG5h" value="keycloak-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlkJ" resolve="keycloak-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpH" role="3dVskk">
      <property role="TrG5h" value="keycloak-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSll4" resolve="keycloak-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpI" role="3dVskk">
      <property role="TrG5h" value="gits-media-service_ConnectsTo_media-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSll6" resolve="gits-media-service" />
      <ref role="3dVsku" node="71ZUOKkSllf" resolve="media-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpJ" role="3dVskk">
      <property role="TrG5h" value="media-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSll$" resolve="media-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSllf" resolve="media-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpK" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpL" role="3dVskk">
      <property role="TrG5h" value="gits-media-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSll6" resolve="gits-media-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpM" role="3dVskk">
      <property role="TrG5h" value="media-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSllf" resolve="media-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpN" role="3dVskk">
      <property role="TrG5h" value="media-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSll$" resolve="media-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpO" role="3dVskk">
      <property role="TrG5h" value="gits-media-service_ConnectsTo_minio" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSll6" resolve="gits-media-service" />
      <ref role="3dVsku" node="71ZUOKkSllA" resolve="minio" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpP" role="3dVskk">
      <property role="TrG5h" value="minio-console_ConnectsTo_minio" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSllS" resolve="minio-console" />
      <ref role="3dVsku" node="71ZUOKkSllA" resolve="minio" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpQ" role="3dVskk">
      <property role="TrG5h" value="minio-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSllQ" resolve="minio-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSllA" resolve="minio" />
      <node concept="3dVrbJ" id="71ZUOKkSlpR" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/minio/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpS" role="3dVskk">
      <property role="TrG5h" value="minio_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSllA" resolve="minio" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpT" role="3dVskk">
      <property role="TrG5h" value="minio-console_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSllS" resolve="minio-console" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpU" role="3dVskk">
      <property role="TrG5h" value="minio-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSllQ" resolve="minio-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpV" role="3dVskk">
      <property role="TrG5h" value="gits-quiz-service_ConnectsTo_quiz-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSllY" resolve="gits-quiz-service" />
      <ref role="3dVsku" node="71ZUOKkSlm6" resolve="quiz-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpW" role="3dVskk">
      <property role="TrG5h" value="quiz-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlmr" resolve="quiz-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlm6" resolve="quiz-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlpX" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpY" role="3dVskk">
      <property role="TrG5h" value="gits-quiz-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSllY" resolve="gits-quiz-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlpZ" role="3dVskk">
      <property role="TrG5h" value="quiz-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlm6" resolve="quiz-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq0" role="3dVskk">
      <property role="TrG5h" value="quiz-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlmr" resolve="quiz-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq1" role="3dVskk">
      <property role="TrG5h" value="gits-reward-service_ConnectsTo_reward-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmt" resolve="gits-reward-service" />
      <ref role="3dVsku" node="71ZUOKkSlm_" resolve="reward-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq2" role="3dVskk">
      <property role="TrG5h" value="reward-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlmU" resolve="reward-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlm_" resolve="reward-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlq3" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq4" role="3dVskk">
      <property role="TrG5h" value="gits-reward-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlmt" resolve="gits-reward-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq5" role="3dVskk">
      <property role="TrG5h" value="reward-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlm_" resolve="reward-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq6" role="3dVskk">
      <property role="TrG5h" value="reward-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlmU" resolve="reward-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq7" role="3dVskk">
      <property role="TrG5h" value="gits-skilllevel-service_ConnectsTo_skilllevel-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmW" resolve="gits-skilllevel-service" />
      <ref role="3dVsku" node="71ZUOKkSln4" resolve="skilllevel-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq8" role="3dVskk">
      <property role="TrG5h" value="skilllevel-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlnp" resolve="skilllevel-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSln4" resolve="skilllevel-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlq9" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqa" role="3dVskk">
      <property role="TrG5h" value="gits-skilllevel-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlmW" resolve="gits-skilllevel-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqb" role="3dVskk">
      <property role="TrG5h" value="skilllevel-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSln4" resolve="skilllevel-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqc" role="3dVskk">
      <property role="TrG5h" value="skilllevel-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlnp" resolve="skilllevel-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqd" role="3dVskk">
      <property role="TrG5h" value="gits-user-service_ConnectsTo_user-service-db-postgresql" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlnr" resolve="gits-user-service" />
      <ref role="3dVsku" node="71ZUOKkSlnz" resolve="user-service-db-postgresql" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqe" role="3dVskk">
      <property role="TrG5h" value="user-service-db-postgresql-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlnS" resolve="user-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlnz" resolve="user-service-db-postgresql" />
      <node concept="3dVrbJ" id="71ZUOKkSlqf" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/postgresql" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqg" role="3dVskk">
      <property role="TrG5h" value="gits-user-service_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlnr" resolve="gits-user-service" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqh" role="3dVskk">
      <property role="TrG5h" value="user-service-db-postgresql_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlnz" resolve="user-service-db-postgresql" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqi" role="3dVskk">
      <property role="TrG5h" value="user-service-db-postgresql-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlnS" resolve="user-service-db-postgresql-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqj" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_dapr-sentry" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSlo2" resolve="dapr-sentry" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqk" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_dapr-placement-server" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSlou" resolve="dapr-placement-server" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlql" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-content-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSliw" resolve="gits-content-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqm" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-course-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSliX" resolve="gits-course-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqn" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-flashcard-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSljq" resolve="gits-flashcard-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqo" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-gateway" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSljY" resolve="gits-gateway" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqp" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-media-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSll6" resolve="gits-media-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqq" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-quiz-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSllY" resolve="gits-quiz-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqr" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-reward-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSlmt" resolve="gits-reward-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqs" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-skilllevel-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSlmW" resolve="gits-skilllevel-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqt" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_ConnectsTo_gits-user-service" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSlnr" resolve="gits-user-service" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqu" role="3dVskk">
      <property role="TrG5h" value="dapr-operator_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlnU" resolve="dapr-operator" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqv" role="3dVskk">
      <property role="TrG5h" value="dapr-sentry_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlo2" resolve="dapr-sentry" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqw" role="3dVskk">
      <property role="TrG5h" value="dapr-sidecar-injector_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlo9" resolve="dapr-sidecar-injector" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqx" role="3dVskk">
      <property role="TrG5h" value="dapr-placement-server_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlou" resolve="dapr-placement-server" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqy" role="3dVskk">
      <property role="TrG5h" value="dapr-scheduler-server_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSloB" resolve="dapr-scheduler-server" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqz" role="3dVskk">
      <property role="TrG5h" value="dapr-scheduler-server-dapr-scheduler-data-dir-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSloN" resolve="dapr-scheduler-server-dapr-scheduler-data-dir-volume" />
      <ref role="3dVsku" node="71ZUOKkSloB" resolve="dapr-scheduler-server" />
      <node concept="3dVrbJ" id="71ZUOKkSlq$" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/var/run/data/dapr-scheduler/" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlq_" role="3dVskk">
      <property role="TrG5h" value="dapr-scheduler-server-dapr-scheduler-data-dir-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSloN" resolve="dapr-scheduler-server-dapr-scheduler-data-dir-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqA" role="3dVskk">
      <property role="TrG5h" value="redis-replicas_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlp2" resolve="redis-replicas" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqB" role="3dVskk">
      <property role="TrG5h" value="redis-master-redis-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlp0" resolve="redis-master-redis-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
      <node concept="3dVrbJ" id="71ZUOKkSlqC" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqD" role="3dVskk">
      <property role="TrG5h" value="redis-replicas-redis-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSlit" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSlpg" resolve="redis-replicas-redis-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSlp2" resolve="redis-replicas" />
      <node concept="3dVrbJ" id="71ZUOKkSlqE" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqF" role="3dVskk">
      <property role="TrG5h" value="redis-master_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSloP" resolve="redis-master" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqG" role="3dVskk">
      <property role="TrG5h" value="redis-master-redis-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlp0" resolve="redis-master-redis-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqH" role="3dVskk">
      <property role="TrG5h" value="redis-replicas_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlp2" resolve="redis-replicas" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqI" role="3dVskk">
      <property role="TrG5h" value="redis-replicas-redis-data-volume_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSlir" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSlpg" resolve="redis-replicas-redis-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSliv" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqJ" role="3dVskk">
      <property role="TrG5h" value="gits-content-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliw" resolve="gits-content-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqK" role="3dVskk">
      <property role="TrG5h" value="gits-content-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliw" resolve="gits-content-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqL" role="3dVskk">
      <property role="TrG5h" value="gits-course-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliX" resolve="gits-course-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqM" role="3dVskk">
      <property role="TrG5h" value="gits-course-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSliX" resolve="gits-course-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqN" role="3dVskk">
      <property role="TrG5h" value="gits-flashcard-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljq" resolve="gits-flashcard-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqO" role="3dVskk">
      <property role="TrG5h" value="gits-flashcard-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljq" resolve="gits-flashcard-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqP" role="3dVskk">
      <property role="TrG5h" value="gits-gateway_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljY" resolve="gits-gateway" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqQ" role="3dVskk">
      <property role="TrG5h" value="gits-gateway_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljY" resolve="gits-gateway" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqR" role="3dVskk">
      <property role="TrG5h" value="gits-gateway_ConnectsTo_keycloak" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSljY" resolve="gits-gateway" />
      <ref role="3dVsku" node="71ZUOKkSlkj" resolve="keycloak" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqS" role="3dVskk">
      <property role="TrG5h" value="gits-media-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSll6" resolve="gits-media-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqT" role="3dVskk">
      <property role="TrG5h" value="gits-media-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSll6" resolve="gits-media-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqU" role="3dVskk">
      <property role="TrG5h" value="gits-quiz-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSllY" resolve="gits-quiz-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqV" role="3dVskk">
      <property role="TrG5h" value="gits-quiz-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSllY" resolve="gits-quiz-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqW" role="3dVskk">
      <property role="TrG5h" value="gits-reward-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmt" resolve="gits-reward-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqX" role="3dVskk">
      <property role="TrG5h" value="gits-reward-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmt" resolve="gits-reward-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqY" role="3dVskk">
      <property role="TrG5h" value="gits-skilllevel-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmW" resolve="gits-skilllevel-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlqZ" role="3dVskk">
      <property role="TrG5h" value="gits-skilllevel-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlmW" resolve="gits-skilllevel-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlr0" role="3dVskk">
      <property role="TrG5h" value="gits-user-service_ConnectsTo_keycloak" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlnr" resolve="gits-user-service" />
      <ref role="3dVsku" node="71ZUOKkSlkj" resolve="keycloak" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlr1" role="3dVskk">
      <property role="TrG5h" value="gits-user-service_ConnectsTo_redis-master" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlnr" resolve="gits-user-service" />
      <ref role="3dVsku" node="71ZUOKkSloP" resolve="redis-master" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSlr2" role="3dVskk">
      <property role="TrG5h" value="gits-user-service_ConnectsTo_keel" />
      <ref role="3dVsks" node="71ZUOKkSlis" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSlnr" resolve="gits-user-service" />
      <ref role="3dVsku" node="71ZUOKkSlkc" resolve="keel" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKkSnLi">
    <property role="TrG5h" value="otelshopKubernetes_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKkSnLj" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnLk" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="71ZUOKkSnLj" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnLl" role="3dVskk">
      <property role="TrG5h" value="KubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSnLk" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnLm" role="3dVskk">
      <property role="TrG5h" value="DefaultKubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSnLl" resolve="KubernetesCluster" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnLn" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLj" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnLo" role="3dVskk">
      <property role="TrG5h" value="grafana-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnLp" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLq" role="3dVrc3">
        <property role="3dVrbM" value="GF_SECURITY_ADMIN_USER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="YWRtaW4=" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLr" role="3dVrc3">
        <property role="3dVrbM" value="GF_SECURITY_ADMIN_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="YWRtaW4=" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLs" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLt" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_DATA" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/var/lib/grafana/" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLu" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_LOGS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/var/log/grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLv" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_PLUGINS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/var/lib/grafana/plugins" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLw" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_PROVISIONING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/etc/grafana/provisioning" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLx" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_grafana" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3000" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLy" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_gossip-tcp" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9094" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLz" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_gossip-udp" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9094" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnL$" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:3000" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnL_" role="3dVskk">
      <property role="TrG5h" value="all-in-one-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnLA" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLB" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLC" role="3dVrc3">
        <property role="3dVrbM" value="SPAN_STORAGE_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="memory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLD" role="3dVrc3">
        <property role="3dVrbM" value="COLLECTOR_ZIPKIN_HOST_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value=":9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLE" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_DISABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLF" role="3dVrc3">
        <property role="3dVrbM" value="COLLECTOR_OTLP_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLG" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_5775" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5775" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLH" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_6831" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6831" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLI" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_6832" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6832" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLJ" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_5778" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5778" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLK" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_16686" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="16686" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLL" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_16685" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="16685" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLM" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_9411" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9411" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLN" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_4317" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLO" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_4318" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4318" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLP" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_zk-compact-trft" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5775:5775" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLQ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_config-rest" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5778:5778" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLR" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jg-compact-trft" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6831:6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLS" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jg-binary-trft" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6832:6832" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLT" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-zipkin" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9411:9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLU" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLV" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4318:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLW" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-query" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="16686:16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLX" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc-query" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="16685:16685" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_c-tchan-trft" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14267:14267" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnLZ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-c-binary-trft" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14268:14268" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM0" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc-http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14250:14250" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnM1" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-collector-contrib-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnM2" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM3" role="3dVrc3">
        <property role="3dVrbM" value="GOMEMLIMIT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="160MiB" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM4" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-compact" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6831" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM5" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14250" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM6" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-thrift" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14268" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM7" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8888" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM8" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_otlp" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM9" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_otlp-http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4318" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMa" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_prometheus" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9464" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMb" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_zipkin" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9411" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMc" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-compact" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6831:6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMd" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14250:14250" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMe" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-thrift" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="14268:14268" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMf" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8888:8888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMg" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMh" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4318:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMi" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_prometheus" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9464:9464" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMj" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_zipkin" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9411:9411" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnMk" role="3dVskk">
      <property role="TrG5h" value="prometheus-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnMl" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMn" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnMo" role="3dVskk">
      <property role="TrG5h" value="accountingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnMp" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMs" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnMv" role="3dVskk">
      <property role="TrG5h" value="adservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnMw" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMz" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM$" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnM_" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMA" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMB" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMD" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnME" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnMF" role="3dVskk">
      <property role="TrG5h" value="cartservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnMG" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMJ" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMK" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://*:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnML" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-valkey:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMM" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMN" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMQ" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMR" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnMS" role="3dVskk">
      <property role="TrG5h" value="checkoutservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnMT" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMW" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMX" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-cartservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMY" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-currencyservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnMZ" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-emailservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN0" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-paymentservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN1" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN2" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-shippingservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN3" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN4" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN5" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN8" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN9" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnNa" role="3dVskk">
      <property role="TrG5h" value="currencyservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnNb" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNe" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNg" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNi" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNj" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnNk" role="3dVskk">
      <property role="TrG5h" value="emailservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnNl" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNm" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNo" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNp" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="production" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNs" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNt" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnNu" role="3dVskk">
      <property role="TrG5h" value="flagd-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnNv" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNy" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNz" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnN_" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNA" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013:8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnNB" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnNC" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnND" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNF" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNG" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNH" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnNK" role="3dVskk">
      <property role="TrG5h" value="frontend-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnNL" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNO" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNP" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value=":8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNQ" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-adservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNR" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-cartservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNS" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-checkoutservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNT" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-currencyservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNU" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNV" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-recommendationservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNW" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-shippingservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNX" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNY" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnNZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO1" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO2" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://localhost:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO3" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO4" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO5" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnO6" role="3dVskk">
      <property role="TrG5h" value="frontendproxy-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnO7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOa" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOb" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOc" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOd" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOe" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOf" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOg" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOh" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOi" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOj" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-jaeger-query" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOk" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOl" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOm" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOr" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOs" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnOt" role="3dVskk">
      <property role="TrG5h" value="imageprovider-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnOu" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOv" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOx" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnO_" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8081" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOA" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8081:8081" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnOB" role="3dVskk">
      <property role="TrG5h" value="loadgenerator-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnOC" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOF" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOG" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOH" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_SPAWN_RATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOI" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-frontendproxy:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOJ" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOK" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOL" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOM" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnON" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOO" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOR" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8089" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOS" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8089:8089" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnOT" role="3dVskk">
      <property role="TrG5h" value="paymentservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnOU" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOX" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOY" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnOZ" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP1" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP2" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP3" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnP4" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnP5" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP8" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP9" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPa" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPd" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPe" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPf" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPg" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPh" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPi" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnPj" role="3dVskk">
      <property role="TrG5h" value="quoteservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnPk" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPl" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPm" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPn" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPr" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPs" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnPt" role="3dVskk">
      <property role="TrG5h" value="recommendationservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnPu" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPv" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPx" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPy" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP$" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnP_" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPA" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPB" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPD" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPE" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnPF" role="3dVskk">
      <property role="TrG5h" value="shippingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnPG" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPJ" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPK" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-quoteservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPN" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPO" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnPP" role="3dVskk">
      <property role="TrG5h" value="opensearch-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnPQ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPR" role="3dVrc3">
        <property role="3dVrbM" value="discovery.seed_hosts" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opensearch-cluster-master-headless" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPS" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPT" role="3dVrc3">
        <property role="3dVrbM" value="network.host" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPU" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPV" role="3dVrc3">
        <property role="3dVrbM" value="node.roles" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="master,ingest,data,remote_cluster_client," />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPW" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPX" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPY" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnPZ" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ0" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9200" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ1" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_transport" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9300" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ2" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9600" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ3" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9200:9200" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ4" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_transport" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9300:9300" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ5" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9600:9600" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnQ6" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnQ7" role="3dVskk">
      <property role="TrG5h" value="mongo-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnQ6" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnQ8" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQ9" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQa" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQb" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_plaintext" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQc" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_plaintext" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnQd" role="3dVskk">
      <property role="TrG5h" value="valkey-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnQ6" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnQe" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQi" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_valkey" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQj" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_valkey" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnQk" role="3dVskk">
      <property role="TrG5h" value="MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKkSnLn" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnQl" role="3dVskk">
      <property role="TrG5h" value="kafka-MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKkSnQk" resolve="MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKkSnQm" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQo" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQp" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="PLAINTEXT://opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQr" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="-Xmx400M -Xms400M" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQt" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_plaintext" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9092" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQu" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_controller" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9093" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQv" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_plaintext" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9092:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQw" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_controller" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9093:9093" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKkSnQx" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSnQy" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKkSnQx" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSnQz" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKkSnQx" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSnQ$" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKkSnQx" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKkSnQ_" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnQA" role="3dVskk">
      <property role="TrG5h" value="defaultKubernetesCluster" />
      <ref role="3dVskh" node="71ZUOKkSnLm" resolve="DefaultKubernetesCluster" />
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnQB" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-grafana" />
      <ref role="3dVskh" node="71ZUOKkSnLo" resolve="grafana-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnQC" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQD" role="3dVrc3">
        <property role="3dVrbM" value="GF_SECURITY_ADMIN_USER" />
        <property role="3dVrbN" value="YWRtaW4=" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQE" role="3dVrc3">
        <property role="3dVrbM" value="GF_SECURITY_ADMIN_PASSWORD" />
        <property role="3dVrbN" value="YWRtaW4=" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQF" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQG" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_DATA" />
        <property role="3dVrbN" value="/var/lib/grafana/" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQH" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_LOGS" />
        <property role="3dVrbN" value="/var/log/grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQI" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_PLUGINS" />
        <property role="3dVrbN" value="/var/lib/grafana/plugins" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQJ" role="3dVrc3">
        <property role="3dVrbM" value="GF_PATHS_PROVISIONING" />
        <property role="3dVrbN" value="/etc/grafana/provisioning" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQK" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_grafana" />
        <property role="3dVrbN" value="3000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQL" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_gossip-tcp" />
        <property role="3dVrbN" value="9094" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQM" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_gossip-udp" />
        <property role="3dVrbN" value="9094" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQN" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_service" />
        <property role="3dVrbN" value="80:3000" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnQO" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/grafana/grafana:11.1.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/grafana/grafana" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnQP" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-jaeger" />
      <ref role="3dVskh" node="71ZUOKkSnL_" resolve="all-in-one-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnQQ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQR" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQS" role="3dVrc3">
        <property role="3dVrbM" value="SPAN_STORAGE_TYPE" />
        <property role="3dVrbN" value="memory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQT" role="3dVrc3">
        <property role="3dVrbM" value="COLLECTOR_ZIPKIN_HOST_PORT" />
        <property role="3dVrbN" value=":9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQU" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_DISABLED" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQV" role="3dVrc3">
        <property role="3dVrbM" value="COLLECTOR_OTLP_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQW" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_5775" />
        <property role="3dVrbN" value="5775" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQX" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_6831" />
        <property role="3dVrbN" value="6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQY" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_6832" />
        <property role="3dVrbN" value="6832" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnQZ" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_5778" />
        <property role="3dVrbN" value="5778" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR0" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_16686" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR1" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_16685" />
        <property role="3dVrbN" value="16685" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR2" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_9411" />
        <property role="3dVrbN" value="9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR3" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_4317" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR4" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_4318" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR5" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_zk-compact-trft" />
        <property role="3dVrbN" value="5775:5775" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR6" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_config-rest" />
        <property role="3dVrbN" value="5778:5778" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR7" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jg-compact-trft" />
        <property role="3dVrbN" value="6831:6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR8" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jg-binary-trft" />
        <property role="3dVrbN" value="6832:6832" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR9" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-zipkin" />
        <property role="3dVrbN" value="9411:9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRa" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-grpc" />
        <property role="3dVrbN" value="4317:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRb" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-http" />
        <property role="3dVrbN" value="4318:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRc" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-query" />
        <property role="3dVrbN" value="16686:16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRd" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc-query" />
        <property role="3dVrbN" value="16685:16685" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRe" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_c-tchan-trft" />
        <property role="3dVrbN" value="14267:14267" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRf" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc-http" />
        <property role="3dVrbN" value="14250:14250" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRg" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http-c-binary-trft" />
        <property role="3dVrbN" value="14268:14268" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnRh" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="jaegertracing/all-in-one:1.53.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/jaegertracing/all-in-one" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnRi" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol" />
      <ref role="3dVskh" node="71ZUOKkSnM1" resolve="opentelemetry-collector-contrib-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnRj" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRk" role="3dVrc3">
        <property role="3dVrbM" value="GOMEMLIMIT" />
        <property role="3dVrbN" value="160MiB" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRl" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-compact" />
        <property role="3dVrbN" value="6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-grpc" />
        <property role="3dVrbN" value="14250" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRn" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_jaeger-thrift" />
        <property role="3dVrbN" value="14268" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRo" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="8888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRp" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_otlp" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRq" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_otlp-http" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRr" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_prometheus" />
        <property role="3dVrbN" value="9464" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRs" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_zipkin" />
        <property role="3dVrbN" value="9411" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRt" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-compact" />
        <property role="3dVrbN" value="6831:6831" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRu" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-grpc" />
        <property role="3dVrbN" value="14250:14250" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRv" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_jaeger-thrift" />
        <property role="3dVrbN" value="14268:14268" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRw" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="8888:8888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRx" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp" />
        <property role="3dVrbN" value="4317:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRy" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_otlp-http" />
        <property role="3dVrbN" value="4318:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRz" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_prometheus" />
        <property role="3dVrbN" value="9464:9464" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnR$" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_zipkin" />
        <property role="3dVrbN" value="9411:9411" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnR_" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="otel/opentelemetry-collector-contrib:0.105.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/otel/opentelemetry-collector-contrib" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnRA" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-prometheus-server" />
      <ref role="3dVskh" node="71ZUOKkSnMk" resolve="prometheus-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnRB" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRC" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="9090" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRD" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbN" value="9090:9090" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnRE" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="quay.io/prometheus/prometheus:v2.53.1" />
        <property role="3dV$SQ" value="quay.io/prometheus/prometheus:v2.53.1" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnRF" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-accountingservice" />
      <ref role="3dVskh" node="71ZUOKkSnMo" resolve="accountingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnRG" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRJ" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnRM" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnRN" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-adservice" />
      <ref role="3dVskh" node="71ZUOKkSnMv" resolve="adservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnRO" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRR" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRS" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRT" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRX" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnRY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnRZ" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnS0" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-cartservice" />
      <ref role="3dVskh" node="71ZUOKkSnMF" resolve="cartservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnS1" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS2" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS3" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS4" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS5" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbN" value="http://*:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS6" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-valkey:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS7" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS8" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSb" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSc" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnSd" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnSe" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice" />
      <ref role="3dVskh" node="71ZUOKkSnMS" resolve="checkoutservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnSf" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSi" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSj" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-cartservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSk" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-currencyservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSl" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://opentelemetry-demo-emailservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSm" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-paymentservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSn" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSo" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-shippingservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSp" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSq" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSr" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSu" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSv" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnSw" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnSx" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-currencyservice" />
      <ref role="3dVskh" node="71ZUOKkSnNa" resolve="currencyservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnSy" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnS_" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSA" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSB" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSD" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSE" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnSF" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnSG" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-emailservice" />
      <ref role="3dVskh" node="71ZUOKkSnNk" resolve="emailservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnSH" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSK" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSL" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbN" value="production" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSO" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSP" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnSQ" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnSR" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-flagd" />
      <ref role="3dVskh" node="71ZUOKkSnNu" resolve="flagd-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnSS" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnST" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSV" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSW" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSY" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnSZ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8013:8013" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnT0" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-feature/flagd:v0.11.2" />
        <property role="3dV$SQ" value="ghcr.io/open-feature/flagd:v0.11.2" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnT1" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frauddetectionservice" />
      <ref role="3dVskh" node="71ZUOKkSnNB" resolve="frauddetectionservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnT2" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT3" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT4" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT5" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT6" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT7" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnTa" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnTb" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend" />
      <ref role="3dVskh" node="71ZUOKkSnNK" resolve="frontend-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnTc" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTe" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTf" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTg" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value=":8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTh" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-adservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTi" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-cartservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTj" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-checkoutservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTk" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-currencyservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTl" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTm" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-recommendationservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTn" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-shippingservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTo" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTp" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTs" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTt" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://localhost:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTv" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTw" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnTx" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnTy" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy" />
      <ref role="3dVskh" node="71ZUOKkSnO6" resolve="frontendproxy-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnTz" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnT_" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTA" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTB" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTC" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTD" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTE" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTF" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTG" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbN" value="80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTH" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTI" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTJ" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-jaeger-query" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTK" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTL" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTM" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTR" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTS" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnTT" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnTU" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-imageprovider" />
      <ref role="3dVskh" node="71ZUOKkSnOt" resolve="imageprovider-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnTV" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTY" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnTZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU1" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU2" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU3" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8081:8081" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnU4" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnU5" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-kafka" />
      <ref role="3dVskh" node="71ZUOKkSnQl" resolve="kafka-MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKkSnU6" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU9" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="PLAINTEXT://opentelemetry-demo-kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUb" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx400M -Xms400M" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUd" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_plaintext" />
        <property role="3dVrbN" value="9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUe" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_controller" />
        <property role="3dVrbN" value="9093" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUf" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_plaintext" />
        <property role="3dVrbN" value="9092:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUg" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_controller" />
        <property role="3dVrbN" value="9093:9093" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnUh" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnUi" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-mongo" />
      <ref role="3dVskh" node="71ZUOKkSnQ7" resolve="mongo-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnUj" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUk" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUl" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_plaintext" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUn" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_plaintext" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnUo" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="mongo:8.0.0-rc9" />
        <property role="3dV$SQ" value="https://hub.docker.com/_/mongo" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnUp" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-loadgenerator" />
      <ref role="3dVskh" node="71ZUOKkSnOB" resolve="loadgenerator-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnUq" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUs" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUt" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUu" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUv" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_SPAWN_RATE" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUw" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbN" value="http://opentelemetry-demo-frontendproxy:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUx" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUy" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUz" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU$" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnU_" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUA" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUB" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUD" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUE" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8089:8089" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnUF" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnUG" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-paymentservice" />
      <ref role="3dVskh" node="71ZUOKkSnOT" resolve="paymentservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnUH" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUK" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUL" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUM" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUP" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUQ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnUR" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnUS" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-productcatalogservice" />
      <ref role="3dVskh" node="71ZUOKkSnP4" resolve="productcatalogservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnUT" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUW" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUX" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUY" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnUZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV1" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV2" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV3" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV4" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV5" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV6" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnV7" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/ust-demaf/demo:1.11.1-productcatalogservice" />
        <property role="3dV$SQ" value="ghcr.io/ust-demaf/demo:1.11.1-productcatalogservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnV8" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-quoteservice" />
      <ref role="3dVskh" node="71ZUOKkSnPj" resolve="quoteservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnV9" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVa" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVc" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVe" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVg" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVh" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnVi" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnVj" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-recommendationservice" />
      <ref role="3dVskh" node="71ZUOKkSnPt" resolve="recommendationservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnVk" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVl" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVm" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVn" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVo" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="opentelemetry-demo-productcatalogservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVq" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVr" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="opentelemetry-demo-flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVs" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVv" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVw" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnVx" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnVy" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-shippingservice" />
      <ref role="3dVskh" node="71ZUOKkSnPF" resolve="shippingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnVz" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnV_" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVA" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVB" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://opentelemetry-demo-quoteservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://opentelemetry-demo-otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVE" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_service" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVF" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-service" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnVG" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnVH" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-valkey" />
      <ref role="3dVskh" node="71ZUOKkSnQd" resolve="valkey-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnVI" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_NAME" />
        <property role="3dVrbN" value="opentelemetry-demo-otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=$(OTEL_SERVICE_NAME),service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVM" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_valkey" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVN" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_valkey" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnVO" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="valkey/valkey:7.2-alpine" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/valkey/valkey" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSnVP" role="3dVskk">
      <property role="TrG5h" value="otel-demo-opensearch" />
      <ref role="3dVskh" node="71ZUOKkSnPP" resolve="opensearch-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnVQ" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVR" role="3dVrc3">
        <property role="3dVrbM" value="discovery.seed_hosts" />
        <property role="3dVrbN" value="opensearch-cluster-master-headless" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVS" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVT" role="3dVrc3">
        <property role="3dVrbM" value="network.host" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVU" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVV" role="3dVrc3">
        <property role="3dVrbM" value="node.roles" />
        <property role="3dVrbN" value="master,ingest,data,remote_cluster_client," />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVW" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVX" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVY" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnVZ" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW0" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_http" />
        <property role="3dVrbN" value="9200" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW1" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_transport" />
        <property role="3dVrbN" value="9300" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW2" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_metrics" />
        <property role="3dVrbN" value="9600" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW3" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbN" value="9200:9200" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW4" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_transport" />
        <property role="3dVrbN" value="9300:9300" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnW5" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_metrics" />
        <property role="3dVrbN" value="9600:9600" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSnW6" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="opensearchproject/opensearch:2.15.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/opensearchproject/opensearch" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSnW7" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-jaeger_ConnectsTo_opentelemetry-demo-prometheus-server" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
      <ref role="3dVsku" node="71ZUOKkSnRA" resolve="opentelemetry-demo-prometheus-server" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnW8" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-jaeger_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnW9" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-jaeger_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWa" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-accountingservice_ConnectsTo_opentelemetry-demo-kafka" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRF" resolve="opentelemetry-demo-accountingservice" />
      <ref role="3dVsku" node="71ZUOKkSnU5" resolve="opentelemetry-demo-kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWb" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-accountingservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRF" resolve="opentelemetry-demo-accountingservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWc" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-accountingservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnRF" resolve="opentelemetry-demo-accountingservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWd" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-adservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRN" resolve="opentelemetry-demo-adservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWe" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-adservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRN" resolve="opentelemetry-demo-adservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWf" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-adservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnRN" resolve="opentelemetry-demo-adservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWg" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-cartservice_ConnectsTo_opentelemetry-demo-valkey" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
      <ref role="3dVsku" node="71ZUOKkSnVH" resolve="opentelemetry-demo-valkey" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWh" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-cartservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWi" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-cartservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWj" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-cartservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWk" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-cartservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWl" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-currencyservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnSx" resolve="opentelemetry-demo-currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWm" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-emailservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnSG" resolve="opentelemetry-demo-emailservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWn" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-paymentservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnUG" resolve="opentelemetry-demo-paymentservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWo" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWp" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-shippingservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnVy" resolve="opentelemetry-demo-shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWq" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-kafka" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnU5" resolve="opentelemetry-demo-kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWr" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWs" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWt" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-checkoutservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWu" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-currencyservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSx" resolve="opentelemetry-demo-currencyservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWv" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-currencyservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnSx" resolve="opentelemetry-demo-currencyservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWw" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-emailservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSG" resolve="opentelemetry-demo-emailservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWx" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-emailservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnSG" resolve="opentelemetry-demo-emailservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWy" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-flagd_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWz" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-flagd_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnW$" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frauddetectionservice_ConnectsTo_opentelemetry-demo-kafka" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnT1" resolve="opentelemetry-demo-frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKkSnU5" resolve="opentelemetry-demo-kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnW_" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frauddetectionservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnT1" resolve="opentelemetry-demo-frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWA" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frauddetectionservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnT1" resolve="opentelemetry-demo-frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWB" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frauddetectionservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnT1" resolve="opentelemetry-demo-frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWC" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-adservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnRN" resolve="opentelemetry-demo-adservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWD" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-cartservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnS0" resolve="opentelemetry-demo-cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWE" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-checkoutservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnSe" resolve="opentelemetry-demo-checkoutservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWF" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-currencyservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnSx" resolve="opentelemetry-demo-currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWG" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWH" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-recommendationservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnVj" resolve="opentelemetry-demo-recommendationservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWI" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-shippingservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnVy" resolve="opentelemetry-demo-shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWJ" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWK" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWL" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontend_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWM" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWN" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-frontend" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnTb" resolve="opentelemetry-demo-frontend" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWO" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-grafana" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnQB" resolve="opentelemetry-demo-grafana" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWP" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-imageprovider" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnTU" resolve="opentelemetry-demo-imageprovider" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWQ" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-jaeger" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWR" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-loadgenerator" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnUp" resolve="opentelemetry-demo-loadgenerator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWS" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWT" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-frontendproxy_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWU" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-imageprovider_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnTU" resolve="opentelemetry-demo-imageprovider" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWV" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-imageprovider_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnTU" resolve="opentelemetry-demo-imageprovider" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWW" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-kafka_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnU5" resolve="opentelemetry-demo-kafka" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWX" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-kafka_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnU5" resolve="opentelemetry-demo-kafka" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWY" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-loadgenerator_ConnectsTo_opentelemetry-demo-frontendproxy" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUp" resolve="opentelemetry-demo-loadgenerator" />
      <ref role="3dVsku" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnWZ" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-loadgenerator_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUp" resolve="opentelemetry-demo-loadgenerator" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX0" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-loadgenerator_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUp" resolve="opentelemetry-demo-loadgenerator" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX1" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-loadgenerator_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnUp" resolve="opentelemetry-demo-loadgenerator" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX2" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-paymentservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUG" resolve="opentelemetry-demo-paymentservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX3" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-paymentservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUG" resolve="opentelemetry-demo-paymentservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX4" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-paymentservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnUG" resolve="opentelemetry-demo-paymentservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX5" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-productcatalogservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX6" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-productcatalogservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX7" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-productcatalogservice_ConnectsTo_opentelemetry-demo-mongo" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKkSnUi" resolve="opentelemetry-demo-mongo" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX8" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-productcatalogservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnX9" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-quoteservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnV8" resolve="opentelemetry-demo-quoteservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXa" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-quoteservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnV8" resolve="opentelemetry-demo-quoteservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXb" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-recommendationservice_ConnectsTo_opentelemetry-demo-productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnVj" resolve="opentelemetry-demo-recommendationservice" />
      <ref role="3dVsku" node="71ZUOKkSnUS" resolve="opentelemetry-demo-productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXc" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-recommendationservice_ConnectsTo_opentelemetry-demo-flagd" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnVj" resolve="opentelemetry-demo-recommendationservice" />
      <ref role="3dVsku" node="71ZUOKkSnSR" resolve="opentelemetry-demo-flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXd" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-recommendationservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnVj" resolve="opentelemetry-demo-recommendationservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXe" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-recommendationservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnVj" resolve="opentelemetry-demo-recommendationservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXf" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-shippingservice_ConnectsTo_opentelemetry-demo-quoteservice" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnVy" resolve="opentelemetry-demo-shippingservice" />
      <ref role="3dVsku" node="71ZUOKkSnV8" resolve="opentelemetry-demo-quoteservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXg" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-shippingservice_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnVy" resolve="opentelemetry-demo-shippingservice" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXh" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-shippingservice_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnVy" resolve="opentelemetry-demo-shippingservice" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXi" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_ConnectsTo_opentelemetry-demo-frontendproxy" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnTy" resolve="opentelemetry-demo-frontendproxy" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXj" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_ConnectsTo_opentelemetry-demo-valkey" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnVH" resolve="opentelemetry-demo-valkey" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXk" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_ConnectsTo_otel-demo-opensearch" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnVP" resolve="otel-demo-opensearch" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXl" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_ConnectsTo_opentelemetry-demo-prometheus-server" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnRA" resolve="opentelemetry-demo-prometheus-server" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXm" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_ConnectsTo_opentelemetry-demo-jaeger" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXn" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-otelcol_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXo" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-prometheus-server_ConnectsTo_opentelemetry-demo-otelcol" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnRA" resolve="opentelemetry-demo-prometheus-server" />
      <ref role="3dVsku" node="71ZUOKkSnRi" resolve="opentelemetry-demo-otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXp" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-prometheus-server_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnRA" resolve="opentelemetry-demo-prometheus-server" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXq" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-grafana_ConnectsTo_opentelemetry-demo-prometheus-server" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnQB" resolve="opentelemetry-demo-grafana" />
      <ref role="3dVsku" node="71ZUOKkSnRA" resolve="opentelemetry-demo-prometheus-server" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXr" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-grafana_ConnectsTo_opentelemetry-demo-jaeger" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnQB" resolve="opentelemetry-demo-grafana" />
      <ref role="3dVsku" node="71ZUOKkSnQP" resolve="opentelemetry-demo-jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXs" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-grafana_ConnectsTo_otel-demo-opensearch" />
      <ref role="3dVsks" node="71ZUOKkSnQz" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSnQB" resolve="opentelemetry-demo-grafana" />
      <ref role="3dVsku" node="71ZUOKkSnVP" resolve="otel-demo-opensearch" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXt" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-grafana_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnQB" resolve="opentelemetry-demo-grafana" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXu" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-mongo_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnUi" resolve="opentelemetry-demo-mongo" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXv" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-demo-valkey_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnVH" resolve="opentelemetry-demo-valkey" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSnXw" role="3dVskk">
      <property role="TrG5h" value="otel-demo-opensearch_HostedOn_defaultKubernetesCluster" />
      <ref role="3dVsks" node="71ZUOKkSnQy" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSnVP" resolve="otel-demo-opensearch" />
      <ref role="3dVsku" node="71ZUOKkSnQA" resolve="defaultKubernetesCluster" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKkSnXx">
    <property role="TrG5h" value="t2storeMicroservices_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKkSnXy" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnXz" role="3dVskk">
      <property role="TrG5h" value="CloudProvider" />
      <ref role="3dVrbW" node="71ZUOKkSnXy" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnX$" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="71ZUOKkSnXy" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnX_" role="3dVskk">
      <property role="TrG5h" value="KubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSnX$" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnXA" role="3dVskk">
      <property role="TrG5h" value="azurerm_kubernetes_cluster" />
      <ref role="3dVrbW" node="71ZUOKkSnX_" resolve="KubernetesCluster" />
      <node concept="3dVrbJ" id="71ZUOKkSnXB" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="t2store-aks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXC" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="West Europe" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXD" role="3dVrc3">
        <property role="3dVrbM" value="resource_group_name" />
        <property role="3dVrbN" value="t2store-resources" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXE" role="3dVrc3">
        <property role="3dVrbM" value="dns_prefix" />
        <property role="3dVrbN" value="t2storeaks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXF" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.name" />
        <property role="3dVrbN" value="default_node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXG" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.node_count" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXH" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.vm_size" />
        <property role="3dVrbN" value="standard_b4ms" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXI" role="3dVrc3">
        <property role="3dVrbM" value="identity.type" />
        <property role="3dVrbN" value="SystemAssigned" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXJ" role="3dVrc3">
        <property role="3dVrbM" value="tags" />
        <property role="3dVrbN" value="{&quot;Environment&quot;:&quot;Production&quot;}" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnXK" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXy" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnXL" role="3dVskk">
      <property role="TrG5h" value="cart-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnXM" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXN" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo-cart-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXO" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TTL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXP" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TASKRATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXQ" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXR" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXS" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXT" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnXU" role="3dVskk">
      <property role="TrG5h" value="eventuate-cdc-service-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnXV" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXW" role="3dVrc3">
        <property role="3dVrbM" value="JAVA_OPTS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="-Xmx64m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXX" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXY" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnXZ" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE1_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate-tram" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY0" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE1_READER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="reader1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY1" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE2_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate-tram" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY2" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE2_READER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="reader2" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY3" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres-wal" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY4" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEURL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY5" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEUSERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY6" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEPASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY7" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEDRIVERCLASSNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY8" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_LEADERSHIPLOCKPATH" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/eventuate/cdc/leader/orchestrator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY9" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_OUTBOXID" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYa" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_TYPE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres-wal" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYb" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEURL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYc" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEUSERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYd" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEPASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYe" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEDRIVERCLASSNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYf" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_LEADERSHIPLOCKPATH" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/eventuate/cdc/leader/inventory_service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYg" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_OUTBOXID" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYh" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYi" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_8099" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8099:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnYj" role="3dVskk">
      <property role="TrG5h" value="creditinstitute-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnYk" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYl" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYm" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYn" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYo" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnYp" role="3dVskk">
      <property role="TrG5h" value="inventory-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnYq" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYr" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYs" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYt" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SIZE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="25" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYu" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TASKRATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYv" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TTL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYw" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SET_UNITS_TO_MAX" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYx" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYy" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYz" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY$" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnY_" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_PROFILES_ACTIVE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="saga" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYA" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYB" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYC" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYD" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnYE" role="3dVskk">
      <property role="TrG5h" value="orchestrator-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnYF" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYG" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYH" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYI" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYJ" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYK" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYL" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYM" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYN" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYO" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYP" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnYQ" role="3dVskk">
      <property role="TrG5h" value="order-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnYR" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYS" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYT" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYU" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo-order-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYV" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYW" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYX" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYY" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnYZ" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ0" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ1" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ2" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZ3" role="3dVskk">
      <property role="TrG5h" value="payment-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnZ4" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ5" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ6" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ7" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ8" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZ9" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZa" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZb" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="TRUE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZc" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_DUMMY_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://creditinstitute/pay" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZd" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_TIMEOUT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZe" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZf" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZg" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZh" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZi" role="3dVskk">
      <property role="TrG5h" value="ui-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnZj" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZk" role="3dVrc3">
        <property role="3dVrbM" value="T2_UIBACKEND_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://uibackend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZl" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZm" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZn" role="3dVskk">
      <property role="TrG5h" value="uibackend-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSnZo" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZp" role="3dVrc3">
        <property role="3dVrbM" value="T2_ORCHESTRATOR_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://orchestrator/order" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZq" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://cart/cart" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZr" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZs" role="3dVrc3">
        <property role="3dVrbM" value="T2_RESERVATION_ENDPOINT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="reservation" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZt" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZu" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://computation-simulator/compute" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZv" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZw" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZx" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZy" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZz" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZ$" role="3dVskk">
      <property role="TrG5h" value="mongodb-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnZz" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnZ_" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZA" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZB" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZC" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_SYSTEM_LOG_VERBOSITY" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZD" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_SYSTEM_LOG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZE" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_JAVASCRIPT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZF" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_JOURNAL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZG" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZH" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_IPV6" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZI" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_DIRECTORY_PER_DB" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZJ" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_mongodb" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZK" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_mongodb" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZL" role="3dVskk">
      <property role="TrG5h" value="postgres-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSnZz" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSnZM" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZN" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DB" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZO" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZP" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZQ" role="3dVrc3">
        <property role="3dVrbM" value="USE_DB_ID" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZR" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZS" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZT" role="3dVskk">
      <property role="TrG5h" value="MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSnZU" role="3dVskk">
      <property role="TrG5h" value="kafka-MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKkSnZT" resolve="MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKkSnZV" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZW" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZX" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ZOOKEEPER_CONNECT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZY" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_INTER_BROKER_LISTENER_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="INTERNAL" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSnZZ" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LISTENER_SECURITY_PROTOCOL_MAP" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="INTERNAL:PLAINTEXT,CLIENT:PLAINTEXT" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo00" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LISTENERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="INTERNAL://:9093,CLIENT://:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo01" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ADVERTISED_LISTENERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="INTERNAL://$(MY_POD_NAME).kafka-headless.default.svc.cluster.local:9093,CLIENT://$(MY_POD_NAME).kafka-headless.default.svc.cluster.local:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo02" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_PLAINTEXT_LISTENER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo03" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ZOOKEEPER_PROTOCOL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="PLAINTEXT" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo04" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_VOLUME_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/bitnami/kafka" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo05" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_LOG_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/opt/bitnami/kafka/logs" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo06" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_DELETE_TOPIC_ENABLE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo07" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_AUTO_CREATE_TOPICS_ENABLE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo08" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="-Xmx1024m -Xms1024m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo09" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_FLUSH_INTERVAL_MESSAGES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="10000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0a" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_FLUSH_INTERVAL_MS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0b" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1073741824" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0c" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_CHECK_INTERVAL_MS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="300000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0d" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_HOURS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="168" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0e" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_MESSAGE_MAX_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1000012" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0f" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_SEGMENT_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1073741824" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0g" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_DIRS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="/bitnami/kafka/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0h" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_DEFAULT_REPLICATION_FACTOR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0i" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_OFFSETS_TOPIC_REPLICATION_FACTOR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0j" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_TRANSACTION_STATE_LOG_REPLICATION_FACTOR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0k" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_TRANSACTION_STATE_LOG_MIN_ISR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0l" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_IO_THREADS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0m" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_NETWORK_THREADS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0n" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_PARTITIONS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0o" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_RECOVERY_THREADS_PER_DATA_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0p" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_RECEIVE_BUFFER_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="102400" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0q" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_REQUEST_MAX_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="104857600" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0r" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_SEND_BUFFER_BYTES" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="102400" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0s" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ZOOKEEPER_CONNECTION_TIMEOUT_MS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="6000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0t" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_AUTHORIZER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0u" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ALLOW_EVERYONE_IF_NO_ACL_FOUND" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0v" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SUPER_USERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="User:admin" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0w" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_kafka-client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9092" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0x" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_kafka-internal" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9093" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0y" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9092:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0z" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-internal" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9093:9093" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo0$" role="3dVskk">
      <property role="TrG5h" value="zookeeper-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSnXK" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo0_" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0A" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0B" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_DATA_LOG_DIR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0C" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0D" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_TICK_TIME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0E" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_INIT_LIMIT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0F" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SYNC_LIMIT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0G" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_PRE_ALLOC_SIZE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="65536" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0H" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SNAPCOUNT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="100000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0I" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_MAX_CLIENT_CNXNS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="60" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0J" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_4LW_COMMANDS_WHITELIST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="srvr, mntr, ruok" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0K" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_LISTEN_ALLIPS_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0L" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_AUTOPURGE_INTERVAL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0M" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_AUTOPURGE_RETAIN_COUNT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0N" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_MAX_SESSION_TIMEOUT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="40000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0O" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SERVERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="kafka-zookeeper-0.kafka-zookeeper-headless.default.svc.cluster.local:2888:3888::1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0P" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_ENABLE_AUTH" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0Q" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_ENABLE_QUORUM_AUTH" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0R" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_HEAP_SIZE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1024" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0S" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_LOG_LEVEL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="ERROR" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0T" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_ANONYMOUS_LOGIN" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0U" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2181" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0V" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_follower" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2888" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0W" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_election" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3888" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0X" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-client" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2181:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0Y" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-follower" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="2888:2888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo0Z" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-election" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3888:3888" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo10" role="3dVskk">
      <property role="TrG5h" value="Storage" />
      <ref role="3dVrbW" node="71ZUOKkSnXy" resolve="BaseType" />
      <node concept="3dVrbJ" id="71ZUOKkSo11" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKkSo12" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo13" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKkSo12" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo14" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKkSo12" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo15" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKkSo12" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKkSo16" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo17" role="3dVskk">
      <property role="TrG5h" value="MicrosoftAzure" />
      <ref role="3dVskh" node="71ZUOKkSnXz" resolve="CloudProvider" />
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo18" role="3dVskk">
      <property role="TrG5h" value="t2store" />
      <ref role="3dVskh" node="71ZUOKkSnXA" resolve="azurerm_kubernetes_cluster" />
      <node concept="3dVrbJ" id="71ZUOKkSo19" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="t2store-aks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1a" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="West Europe" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1b" role="3dVrc3">
        <property role="3dVrbM" value="resource_group_name" />
        <property role="3dVrbN" value="t2store-resources" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1c" role="3dVrc3">
        <property role="3dVrbM" value="dns_prefix" />
        <property role="3dVrbN" value="t2storeaks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1d" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.name" />
        <property role="3dVrbN" value="default_node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1e" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.node_count" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1f" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.vm_size" />
        <property role="3dVrbN" value="standard_b4ms" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1g" role="3dVrc3">
        <property role="3dVrbM" value="identity.type" />
        <property role="3dVrbN" value="SystemAssigned" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1h" role="3dVrc3">
        <property role="3dVrbM" value="tags" />
        <property role="3dVrbN" value="{&quot;Environment&quot;:&quot;Production&quot;}" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo1i" role="3dVskk">
      <property role="TrG5h" value="mongo-cart-mongodb" />
      <ref role="3dVskh" node="71ZUOKkSnZ$" resolve="mongodb-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo1j" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1k" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1l" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1m" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_SYSTEM_LOG_VERBOSITY" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1n" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_SYSTEM_LOG" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1o" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_JAVASCRIPT" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1p" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_JOURNAL" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1q" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_PORT_NUMBER" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1r" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_IPV6" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1s" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_DIRECTORY_PER_DB" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1t" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_mongodb" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1u" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_mongodb" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo1v" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/mongodb:8.0.11-debian-12-r0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo1w" role="3dVskk">
      <property role="TrG5h" value="mongo-cart-mongodb-datadir-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo1x" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo1y" role="3dVskk">
      <property role="TrG5h" value="mongo-order-mongodb" />
      <ref role="3dVskh" node="71ZUOKkSnZ$" resolve="mongodb-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo1z" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1$" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1_" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1A" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_SYSTEM_LOG_VERBOSITY" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1B" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_SYSTEM_LOG" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1C" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_JAVASCRIPT" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1D" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_JOURNAL" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1E" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_PORT_NUMBER" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1F" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_IPV6" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1G" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_DIRECTORY_PER_DB" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1H" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_mongodb" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1I" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_mongodb" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo1J" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/mongodb:8.0.11-debian-12-r0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo1K" role="3dVskk">
      <property role="TrG5h" value="mongo-order-mongodb-datadir-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo1L" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo1M" role="3dVskk">
      <property role="TrG5h" value="kafka" />
      <ref role="3dVskh" node="71ZUOKkSnZU" resolve="kafka-MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKkSo1N" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1O" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1P" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ZOOKEEPER_CONNECT" />
        <property role="3dVrbN" value="kafka-zookeeper" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1Q" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_INTER_BROKER_LISTENER_NAME" />
        <property role="3dVrbN" value="INTERNAL" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1R" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LISTENER_SECURITY_PROTOCOL_MAP" />
        <property role="3dVrbN" value="INTERNAL:PLAINTEXT,CLIENT:PLAINTEXT" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1S" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LISTENERS" />
        <property role="3dVrbN" value="INTERNAL://:9093,CLIENT://:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1T" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="INTERNAL://$(MY_POD_NAME).kafka-headless.default.svc.cluster.local:9093,CLIENT://$(MY_POD_NAME).kafka-headless.default.svc.cluster.local:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1U" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_PLAINTEXT_LISTENER" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1V" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ZOOKEEPER_PROTOCOL" />
        <property role="3dVrbN" value="PLAINTEXT" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1W" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_VOLUME_DIR" />
        <property role="3dVrbN" value="/bitnami/kafka" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1X" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_LOG_DIR" />
        <property role="3dVrbN" value="/opt/bitnami/kafka/logs" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1Y" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_DELETE_TOPIC_ENABLE" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo1Z" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_AUTO_CREATE_TOPICS_ENABLE" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo20" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx1024m -Xms1024m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo21" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_FLUSH_INTERVAL_MESSAGES" />
        <property role="3dVrbN" value="10000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo22" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_FLUSH_INTERVAL_MS" />
        <property role="3dVrbN" value="1000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo23" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_BYTES" />
        <property role="3dVrbN" value="1073741824" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo24" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_CHECK_INTERVAL_MS" />
        <property role="3dVrbN" value="300000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo25" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_RETENTION_HOURS" />
        <property role="3dVrbN" value="168" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo26" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_MESSAGE_MAX_BYTES" />
        <property role="3dVrbN" value="1000012" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo27" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_SEGMENT_BYTES" />
        <property role="3dVrbN" value="1073741824" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo28" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_LOG_DIRS" />
        <property role="3dVrbN" value="/bitnami/kafka/data" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo29" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_DEFAULT_REPLICATION_FACTOR" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2a" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_OFFSETS_TOPIC_REPLICATION_FACTOR" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2b" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_TRANSACTION_STATE_LOG_REPLICATION_FACTOR" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2c" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_TRANSACTION_STATE_LOG_MIN_ISR" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2d" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_IO_THREADS" />
        <property role="3dVrbN" value="8" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2e" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_NETWORK_THREADS" />
        <property role="3dVrbN" value="3" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2f" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_PARTITIONS" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2g" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_NUM_RECOVERY_THREADS_PER_DATA_DIR" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2h" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_RECEIVE_BUFFER_BYTES" />
        <property role="3dVrbN" value="102400" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2i" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_REQUEST_MAX_BYTES" />
        <property role="3dVrbN" value="104857600" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2j" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SOCKET_SEND_BUFFER_BYTES" />
        <property role="3dVrbN" value="102400" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2k" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ZOOKEEPER_CONNECTION_TIMEOUT_MS" />
        <property role="3dVrbN" value="6000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2l" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_AUTHORIZER_CLASS_NAME" />
        <property role="3dVrbN" value="" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2m" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_ALLOW_EVERYONE_IF_NO_ACL_FOUND" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2n" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_CFG_SUPER_USERS" />
        <property role="3dVrbN" value="User:admin" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2o" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_kafka-client" />
        <property role="3dVrbN" value="9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2p" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_kafka-internal" />
        <property role="3dVrbN" value="9093" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2q" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-client" />
        <property role="3dVrbN" value="9092:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2r" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-internal" />
        <property role="3dVrbN" value="9093:9093" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo2s" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/kafka:3.2.3-debian-11-r1" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/kafka" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo2t" role="3dVskk">
      <property role="TrG5h" value="kafka-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo2u" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo2v" role="3dVskk">
      <property role="TrG5h" value="kafka-zookeeper" />
      <ref role="3dVskh" node="71ZUOKkSo0$" resolve="zookeeper-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo2w" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2x" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2y" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_DATA_LOG_DIR" />
        <property role="3dVrbN" value="" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2z" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_PORT_NUMBER" />
        <property role="3dVrbN" value="2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2$" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_TICK_TIME" />
        <property role="3dVrbN" value="2000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2_" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_INIT_LIMIT" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2A" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SYNC_LIMIT" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2B" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_PRE_ALLOC_SIZE" />
        <property role="3dVrbN" value="65536" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2C" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SNAPCOUNT" />
        <property role="3dVrbN" value="100000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2D" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_MAX_CLIENT_CNXNS" />
        <property role="3dVrbN" value="60" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2E" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_4LW_COMMANDS_WHITELIST" />
        <property role="3dVrbN" value="srvr, mntr, ruok" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2F" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_LISTEN_ALLIPS_ENABLED" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2G" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_AUTOPURGE_INTERVAL" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2H" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_AUTOPURGE_RETAIN_COUNT" />
        <property role="3dVrbN" value="3" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2I" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_MAX_SESSION_TIMEOUT" />
        <property role="3dVrbN" value="40000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2J" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_SERVERS" />
        <property role="3dVrbN" value="kafka-zookeeper-0.kafka-zookeeper-headless.default.svc.cluster.local:2888:3888::1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2K" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_ENABLE_AUTH" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2L" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_ENABLE_QUORUM_AUTH" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2M" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_HEAP_SIZE" />
        <property role="3dVrbN" value="1024" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2N" role="3dVrc3">
        <property role="3dVrbM" value="ZOO_LOG_LEVEL" />
        <property role="3dVrbN" value="ERROR" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2O" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_ANONYMOUS_LOGIN" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2P" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_client" />
        <property role="3dVrbN" value="2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2Q" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_follower" />
        <property role="3dVrbN" value="2888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2R" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_election" />
        <property role="3dVrbN" value="3888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2S" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-client" />
        <property role="3dVrbN" value="2181:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2T" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-follower" />
        <property role="3dVrbN" value="2888:2888" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo2U" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-election" />
        <property role="3dVrbN" value="3888:3888" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo2V" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/zookeeper:3.8.0-debian-11-r36" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/zookeeper" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo2W" role="3dVskk">
      <property role="TrG5h" value="kafka-zookeeper-data-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo2X" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo2Y" role="3dVskk">
      <property role="TrG5h" value="cart" />
      <ref role="3dVskh" node="71ZUOKkSnXL" resolve="cart-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo2Z" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo30" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbN" value="mongo-cart-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo31" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TTL" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo32" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TASKRATE" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo33" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo34" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo35" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo36" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo37" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/cart:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/cart" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo38" role="3dVskk">
      <property role="TrG5h" value="cdcservice" />
      <ref role="3dVskh" node="71ZUOKkSnXU" resolve="eventuate-cdc-service-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo39" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3a" role="3dVrc3">
        <property role="3dVrbM" value="JAVA_OPTS" />
        <property role="3dVrbN" value="-Xmx64m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3b" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3c" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3d" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE1_TYPE" />
        <property role="3dVrbN" value="eventuate-tram" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3e" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE1_READER" />
        <property role="3dVrbN" value="reader1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3f" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE2_TYPE" />
        <property role="3dVrbN" value="eventuate-tram" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3g" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_PIPELINE_PIPELINE2_READER" />
        <property role="3dVrbN" value="reader2" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3h" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_TYPE" />
        <property role="3dVrbN" value="postgres-wal" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3i" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEURL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3j" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEUSERNAME" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3k" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEPASSWORD" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3l" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_DATASOURCEDRIVERCLASSNAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3m" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_LEADERSHIPLOCKPATH" />
        <property role="3dVrbN" value="/eventuate/cdc/leader/orchestrator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3n" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER1_OUTBOXID" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3o" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_TYPE" />
        <property role="3dVrbN" value="postgres-wal" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3p" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEURL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3q" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEUSERNAME" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3r" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEPASSWORD" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3s" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_DATASOURCEDRIVERCLASSNAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3t" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_LEADERSHIPLOCKPATH" />
        <property role="3dVrbN" value="/eventuate/cdc/leader/inventory_service" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3u" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATE_CDC_READER_READER2_OUTBOXID" />
        <property role="3dVrbN" value="2" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3v" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3w" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_8099" />
        <property role="3dVrbN" value="8099:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo3x" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="eventuateio/eventuate-cdc-service:0.16.0.RELEASE" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/eventuateio/eventuate-cdc-service" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo3y" role="3dVskk">
      <property role="TrG5h" value="creditinstitute" />
      <ref role="3dVskh" node="71ZUOKkSnYj" resolve="creditinstitute-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo3z" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3$" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3_" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3A" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3B" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo3C" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/creditinstitute:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/creditinstitute" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo3D" role="3dVskk">
      <property role="TrG5h" value="inventory" />
      <ref role="3dVskh" node="71ZUOKkSnYp" resolve="inventory-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo3E" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3F" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3G" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3H" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SIZE" />
        <property role="3dVrbN" value="25" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3I" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TASKRATE" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3J" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TTL" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3K" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SET_UNITS_TO_MAX" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3L" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3M" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3N" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3O" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3P" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_PROFILES_ACTIVE" />
        <property role="3dVrbN" value="saga" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3Q" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3R" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3S" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3T" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo3U" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/inventory:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/inventory" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo3V" role="3dVskk">
      <property role="TrG5h" value="orchestrator" />
      <ref role="3dVskh" node="71ZUOKkSnYE" resolve="orchestrator-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo3W" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3X" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3Y" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo3Z" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo40" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo41" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo42" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo43" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo44" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo45" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo46" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo47" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/orchestrator:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/orchestrator" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo48" role="3dVskk">
      <property role="TrG5h" value="order" />
      <ref role="3dVskh" node="71ZUOKkSnYQ" resolve="order-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo49" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4a" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4b" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4c" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbN" value="mongo-order-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4d" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4e" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4f" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4g" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4h" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4i" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4j" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4k" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo4l" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/order:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/order" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4m" role="3dVskk">
      <property role="TrG5h" value="payment" />
      <ref role="3dVskh" node="71ZUOKkSnZ3" resolve="payment-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo4n" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4o" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_KAFKA_BOOTSTRAP_SERVERS" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4p" role="3dVrc3">
        <property role="3dVrbM" value="EVENTUATELOCAL_ZOOKEEPER_CONNECTION_STRING" />
        <property role="3dVrbN" value="kafka-zookeeper:2181" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4q" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4r" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4s" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres-orchestrator/eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4t" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4u" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_ENABLED" />
        <property role="3dVrbN" value="TRUE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4v" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_DUMMY_URL" />
        <property role="3dVrbN" value="http://creditinstitute/pay" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4w" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_TIMEOUT" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4x" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4y" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4z" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4$" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo4_" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/payment:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/payment" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4A" role="3dVskk">
      <property role="TrG5h" value="postgres-inventory" />
      <ref role="3dVskh" node="71ZUOKkSnZL" resolve="postgres-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo4B" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4C" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DB" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4D" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4E" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4F" role="3dVrc3">
        <property role="3dVrbM" value="USE_DB_ID" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4G" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4H" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo4I" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="eventuateio/eventuate-tram-sagas-postgres:0.23.0.RELEASE" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/eventuateio/eventuate-tram-sagas-postgres" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4J" role="3dVskk">
      <property role="TrG5h" value="postgres-inventory-datadir-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo4K" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="1Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4L" role="3dVskk">
      <property role="TrG5h" value="postgres-orchestrator" />
      <ref role="3dVskh" node="71ZUOKkSnZL" resolve="postgres-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo4M" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4N" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_DB" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4O" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4P" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="eventuate" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4Q" role="3dVrc3">
        <property role="3dVrbM" value="USE_DB_ID" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4R" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4S" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo4T" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="eventuateio/eventuate-tram-sagas-postgres:0.23.0.RELEASE" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/eventuateio/eventuate-tram-sagas-postgres" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4U" role="3dVskk">
      <property role="TrG5h" value="postgres-orchestrator-datadir-volume" />
      <ref role="3dVskh" node="71ZUOKkSo10" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo4V" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="1Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo4W" role="3dVskk">
      <property role="TrG5h" value="ui" />
      <ref role="3dVskh" node="71ZUOKkSnZi" resolve="ui-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo4X" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4Y" role="3dVrc3">
        <property role="3dVrbM" value="T2_UIBACKEND_URL" />
        <property role="3dVrbN" value="http://uibackend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo4Z" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo50" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo51" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/ui:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/ui" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo52" role="3dVskk">
      <property role="TrG5h" value="uibackend" />
      <ref role="3dVskh" node="71ZUOKkSnZn" resolve="uibackend-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo53" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo54" role="3dVrc3">
        <property role="3dVrbM" value="T2_ORCHESTRATOR_URL" />
        <property role="3dVrbN" value="http://orchestrator/order" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo55" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_URL" />
        <property role="3dVrbN" value="http://cart/cart" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo56" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_URL" />
        <property role="3dVrbN" value="http://inventory/inventory" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo57" role="3dVrc3">
        <property role="3dVrbM" value="T2_RESERVATION_ENDPOINT" />
        <property role="3dVrbN" value="reservation" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo58" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo59" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_URL" />
        <property role="3dVrbN" value="http://computation-simulator/compute" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo5a" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo5b" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo5c" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo5d" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo5e" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/uibackend:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/uibackend" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5f" role="3dVskk">
      <property role="TrG5h" value="mongo-cart-mongodb-datadir-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo1w" resolve="mongo-cart-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo1i" resolve="mongo-cart-mongodb" />
      <node concept="3dVrbJ" id="71ZUOKkSo5g" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5h" role="3dVskk">
      <property role="TrG5h" value="mongo-order-mongodb-datadir-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo1K" resolve="mongo-order-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo1y" resolve="mongo-order-mongodb" />
      <node concept="3dVrbJ" id="71ZUOKkSo5i" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5j" role="3dVskk">
      <property role="TrG5h" value="kafka-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo2t" resolve="kafka-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
      <node concept="3dVrbJ" id="71ZUOKkSo5k" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/kafka" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5l" role="3dVskk">
      <property role="TrG5h" value="kafka-zookeeper-data-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo2W" resolve="kafka-zookeeper-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
      <node concept="3dVrbJ" id="71ZUOKkSo5m" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/zookeeper" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5n" role="3dVskk">
      <property role="TrG5h" value="postgres-inventory-datadir-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo4J" resolve="postgres-inventory-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo4A" resolve="postgres-inventory" />
      <node concept="3dVrbJ" id="71ZUOKkSo5o" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/var/lib/postgresql/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5p" role="3dVskk">
      <property role="TrG5h" value="postgres-orchestrator-datadir-mount" />
      <ref role="3dVsks" node="71ZUOKkSo15" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo4U" resolve="postgres-orchestrator-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
      <node concept="3dVrbJ" id="71ZUOKkSo5q" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/var/lib/postgresql/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5r" role="3dVskk">
      <property role="TrG5h" value="kafka_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo1M" resolve="kafka" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5s" role="3dVskk">
      <property role="TrG5h" value="cart_ConnectsTo_mongo-cart-mongodb" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo2Y" resolve="cart" />
      <ref role="3dVsku" node="71ZUOKkSo1i" resolve="mongo-cart-mongodb" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5t" role="3dVskk">
      <property role="TrG5h" value="cdcservice_ConnectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo38" resolve="cdcservice" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5u" role="3dVskk">
      <property role="TrG5h" value="cdcservice_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo38" resolve="cdcservice" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5v" role="3dVskk">
      <property role="TrG5h" value="cdcservice_ConnectsTo_postgres-orchestrator" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo38" resolve="cdcservice" />
      <ref role="3dVsku" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5w" role="3dVskk">
      <property role="TrG5h" value="cdcservice_ConnectsTo_postgres-inventory" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo38" resolve="cdcservice" />
      <ref role="3dVsku" node="71ZUOKkSo4A" resolve="postgres-inventory" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5x" role="3dVskk">
      <property role="TrG5h" value="inventory_ConnectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3D" resolve="inventory" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5y" role="3dVskk">
      <property role="TrG5h" value="inventory_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3D" resolve="inventory" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5z" role="3dVskk">
      <property role="TrG5h" value="inventory_ConnectsTo_postgres-inventory" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3D" resolve="inventory" />
      <ref role="3dVsku" node="71ZUOKkSo4A" resolve="postgres-inventory" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5$" role="3dVskk">
      <property role="TrG5h" value="orchestrator_ConnectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3V" resolve="orchestrator" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5_" role="3dVskk">
      <property role="TrG5h" value="orchestrator_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3V" resolve="orchestrator" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5A" role="3dVskk">
      <property role="TrG5h" value="orchestrator_ConnectsTo_postgres-orchestrator" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo3V" resolve="orchestrator" />
      <ref role="3dVsku" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5B" role="3dVskk">
      <property role="TrG5h" value="order_ConnectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo48" resolve="order" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5C" role="3dVskk">
      <property role="TrG5h" value="order_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo48" resolve="order" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5D" role="3dVskk">
      <property role="TrG5h" value="order_ConnectsTo_mongo-order-mongodb" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo48" resolve="order" />
      <ref role="3dVsku" node="71ZUOKkSo1y" resolve="mongo-order-mongodb" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5E" role="3dVskk">
      <property role="TrG5h" value="order_ConnectsTo_postgres-orchestrator" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo48" resolve="order" />
      <ref role="3dVsku" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5F" role="3dVskk">
      <property role="TrG5h" value="payment_ConnectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo4m" resolve="payment" />
      <ref role="3dVsku" node="71ZUOKkSo1M" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5G" role="3dVskk">
      <property role="TrG5h" value="payment_ConnectsTo_kafka-zookeeper" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo4m" resolve="payment" />
      <ref role="3dVsku" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5H" role="3dVskk">
      <property role="TrG5h" value="payment_ConnectsTo_postgres-orchestrator" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo4m" resolve="payment" />
      <ref role="3dVsku" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5I" role="3dVskk">
      <property role="TrG5h" value="payment_ConnectsTo_creditinstitute" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo4m" resolve="payment" />
      <ref role="3dVsku" node="71ZUOKkSo3y" resolve="creditinstitute" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5J" role="3dVskk">
      <property role="TrG5h" value="ui_ConnectsTo_uibackend" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo4W" resolve="ui" />
      <ref role="3dVsku" node="71ZUOKkSo52" resolve="uibackend" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5K" role="3dVskk">
      <property role="TrG5h" value="uibackend_ConnectsTo_orchestrator" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo52" resolve="uibackend" />
      <ref role="3dVsku" node="71ZUOKkSo3V" resolve="orchestrator" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5L" role="3dVskk">
      <property role="TrG5h" value="uibackend_ConnectsTo_cart" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo52" resolve="uibackend" />
      <ref role="3dVsku" node="71ZUOKkSo2Y" resolve="cart" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5M" role="3dVskk">
      <property role="TrG5h" value="uibackend_ConnectsTo_inventory" />
      <ref role="3dVsks" node="71ZUOKkSo14" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo52" resolve="uibackend" />
      <ref role="3dVsku" node="71ZUOKkSo3D" resolve="inventory" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5N" role="3dVskk">
      <property role="TrG5h" value="mongo-cart-mongodb_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo1i" resolve="mongo-cart-mongodb" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5O" role="3dVskk">
      <property role="TrG5h" value="mongo-cart-mongodb-datadir-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo1w" resolve="mongo-cart-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5P" role="3dVskk">
      <property role="TrG5h" value="mongo-order-mongodb_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo1y" resolve="mongo-order-mongodb" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5Q" role="3dVskk">
      <property role="TrG5h" value="mongo-order-mongodb-datadir-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo1K" resolve="mongo-order-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5R" role="3dVskk">
      <property role="TrG5h" value="kafka_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo1M" resolve="kafka" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5S" role="3dVskk">
      <property role="TrG5h" value="kafka-data-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo2t" resolve="kafka-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5T" role="3dVskk">
      <property role="TrG5h" value="kafka-zookeeper_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo2v" resolve="kafka-zookeeper" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5U" role="3dVskk">
      <property role="TrG5h" value="kafka-zookeeper-data-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo2W" resolve="kafka-zookeeper-data-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5V" role="3dVskk">
      <property role="TrG5h" value="cart_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo2Y" resolve="cart" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5W" role="3dVskk">
      <property role="TrG5h" value="cdcservice_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo38" resolve="cdcservice" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5X" role="3dVskk">
      <property role="TrG5h" value="creditinstitute_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo3y" resolve="creditinstitute" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5Y" role="3dVskk">
      <property role="TrG5h" value="inventory_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo3D" resolve="inventory" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo5Z" role="3dVskk">
      <property role="TrG5h" value="orchestrator_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo3V" resolve="orchestrator" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo60" role="3dVskk">
      <property role="TrG5h" value="order_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo48" resolve="order" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo61" role="3dVskk">
      <property role="TrG5h" value="payment_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4m" resolve="payment" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo62" role="3dVskk">
      <property role="TrG5h" value="postgres-inventory_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4A" resolve="postgres-inventory" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo63" role="3dVskk">
      <property role="TrG5h" value="postgres-inventory-datadir-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4J" resolve="postgres-inventory-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo64" role="3dVskk">
      <property role="TrG5h" value="postgres-orchestrator_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4L" resolve="postgres-orchestrator" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo65" role="3dVskk">
      <property role="TrG5h" value="postgres-orchestrator-datadir-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4U" resolve="postgres-orchestrator-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo66" role="3dVskk">
      <property role="TrG5h" value="ui_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo4W" resolve="ui" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo67" role="3dVskk">
      <property role="TrG5h" value="uibackend_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo52" resolve="uibackend" />
      <ref role="3dVsku" node="71ZUOKkSo18" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo68" role="3dVskk">
      <property role="TrG5h" value="t2store_HostedOn_MicrosoftAzure" />
      <ref role="3dVsks" node="71ZUOKkSo13" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo18" resolve="t2store" />
      <ref role="3dVsku" node="71ZUOKkSo17" resolve="MicrosoftAzure" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKkSo69">
    <property role="TrG5h" value="t2storeModulith_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKkSo6a" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6b" role="3dVskk">
      <property role="TrG5h" value="CloudProvider" />
      <ref role="3dVrbW" node="71ZUOKkSo6a" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6c" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="71ZUOKkSo6a" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6d" role="3dVskk">
      <property role="TrG5h" value="KubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKkSo6c" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6e" role="3dVskk">
      <property role="TrG5h" value="azurerm_kubernetes_cluster" />
      <ref role="3dVrbW" node="71ZUOKkSo6d" resolve="KubernetesCluster" />
      <node concept="3dVrbJ" id="71ZUOKkSo6f" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="t2store-aks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6g" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="West Europe" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6h" role="3dVrc3">
        <property role="3dVrbM" value="resource_group_name" />
        <property role="3dVrbN" value="t2store-resources" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6i" role="3dVrc3">
        <property role="3dVrbM" value="dns_prefix" />
        <property role="3dVrbN" value="t2storeaks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6j" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.name" />
        <property role="3dVrbN" value="default_node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6k" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.node_count" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6l" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.vm_size" />
        <property role="3dVrbN" value="standard_b4ms" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6m" role="3dVrc3">
        <property role="3dVrbM" value="identity.type" />
        <property role="3dVrbN" value="SystemAssigned" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6n" role="3dVrc3">
        <property role="3dVrbM" value="tags" />
        <property role="3dVrbN" value="{&quot;Environment&quot;:&quot;Production&quot;}" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6o" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSo6a" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6p" role="3dVskk">
      <property role="TrG5h" value="modulith-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSo6o" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo6q" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6r" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_PROFILES_ACTIVE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="prod" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6s" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="mongo-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6t" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6u" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6v" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres:5432/postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6w" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6x" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TTL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6y" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TASKRATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6z" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SIZE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="25" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6$" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TASKRATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6_" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TTL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6A" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SET_UNITS_TO_MAX" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6B" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="TRUE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6C" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_DUMMY_URL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="http://creditinstitute/pay" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6D" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_TIMEOUT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6E" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6F" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_PI_TOTAL_POINTS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1000000000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6G" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6H" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6I" role="3dVskk">
      <property role="TrG5h" value="creditinstitute-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKkSo6o" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo6J" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6K" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6L" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6M" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6N" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6O" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSo6o" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo6P" role="3dVskk">
      <property role="TrG5h" value="mongodb-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSo6O" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo6Q" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6R" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6S" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6T" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_SYSTEM_LOG_VERBOSITY" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6U" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_SYSTEM_LOG" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6V" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_JAVASCRIPT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6W" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_JOURNAL" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6X" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_PORT_NUMBER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6Y" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_IPV6" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo6Z" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_DIRECTORY_PER_DB" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo70" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_mongodb" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo71" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_mongodb" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo72" role="3dVskk">
      <property role="TrG5h" value="postgres-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKkSo6O" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo73" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo74" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo75" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo76" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo77" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKkSo78" role="3dVskk">
      <property role="TrG5h" value="Storage" />
      <ref role="3dVrbW" node="71ZUOKkSo6a" resolve="BaseType" />
      <node concept="3dVrbJ" id="71ZUOKkSo79" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKkSo7a" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo7b" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKkSo7a" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo7c" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKkSo7a" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKkSo7d" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKkSo7a" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKkSo7e" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo7f" role="3dVskk">
      <property role="TrG5h" value="MicrosoftAzure" />
      <ref role="3dVskh" node="71ZUOKkSo6b" resolve="CloudProvider" />
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo7g" role="3dVskk">
      <property role="TrG5h" value="t2store" />
      <ref role="3dVskh" node="71ZUOKkSo6e" resolve="azurerm_kubernetes_cluster" />
      <node concept="3dVrbJ" id="71ZUOKkSo7h" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="t2store-aks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7i" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="West Europe" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7j" role="3dVrc3">
        <property role="3dVrbM" value="resource_group_name" />
        <property role="3dVrbN" value="t2store-resources" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7k" role="3dVrc3">
        <property role="3dVrbM" value="dns_prefix" />
        <property role="3dVrbN" value="t2storeaks1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7l" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.name" />
        <property role="3dVrbN" value="default_node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7m" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.node_count" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7n" role="3dVrc3">
        <property role="3dVrbM" value="default_node_pool.vm_size" />
        <property role="3dVrbN" value="standard_b4ms" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7o" role="3dVrc3">
        <property role="3dVrbM" value="identity.type" />
        <property role="3dVrbN" value="SystemAssigned" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7p" role="3dVrc3">
        <property role="3dVrbM" value="tags" />
        <property role="3dVrbN" value="{&quot;Environment&quot;:&quot;Production&quot;}" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo7q" role="3dVskk">
      <property role="TrG5h" value="mongo-mongodb" />
      <ref role="3dVskh" node="71ZUOKkSo6P" resolve="mongodb-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo7r" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7s" role="3dVrc3">
        <property role="3dVrbM" value="BITNAMI_DEBUG" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7t" role="3dVrc3">
        <property role="3dVrbM" value="ALLOW_EMPTY_PASSWORD" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7u" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_SYSTEM_LOG_VERBOSITY" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7v" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_SYSTEM_LOG" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7w" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_DISABLE_JAVASCRIPT" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7x" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_JOURNAL" />
        <property role="3dVrbN" value="yes" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7y" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_PORT_NUMBER" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7z" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_IPV6" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7$" role="3dVrc3">
        <property role="3dVrbM" value="MONGODB_ENABLE_DIRECTORY_PER_DB" />
        <property role="3dVrbN" value="no" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7_" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_mongodb" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7A" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_mongodb" />
        <property role="3dVrbN" value="27017:27017" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo7B" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="docker.io/bitnami/mongodb:8.0.11-debian-12-r0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo7C" role="3dVskk">
      <property role="TrG5h" value="mongo-mongodb-datadir-volume" />
      <ref role="3dVskh" node="71ZUOKkSo78" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo7D" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="8Gi" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo7E" role="3dVskk">
      <property role="TrG5h" value="backend" />
      <ref role="3dVskh" node="71ZUOKkSo6p" resolve="modulith-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo7F" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7G" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_PROFILES_ACTIVE" />
        <property role="3dVrbN" value="prod" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7H" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOST" />
        <property role="3dVrbN" value="mongo-mongodb" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7I" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_USERNAME" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7J" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_PASSWORD" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7K" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_URL" />
        <property role="3dVrbN" value="jdbc:postgresql://postgres:5432/postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7L" role="3dVrc3">
        <property role="3dVrbM" value="SPRING_DATASOURCE_DRIVER_CLASS_NAME" />
        <property role="3dVrbN" value="org.postgresql.Driver" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7M" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TTL" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7N" role="3dVrc3">
        <property role="3dVrbM" value="T2_CART_TASKRATE" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7O" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SIZE" />
        <property role="3dVrbN" value="25" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7P" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TASKRATE" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7Q" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_TTL" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7R" role="3dVrc3">
        <property role="3dVrbM" value="T2_INVENTORY_SET_UNITS_TO_MAX" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7S" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_ENABLED" />
        <property role="3dVrbN" value="TRUE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7T" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_DUMMY_URL" />
        <property role="3dVrbN" value="http://creditinstitute/pay" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7U" role="3dVrc3">
        <property role="3dVrbM" value="T2_PAYMENT_PROVIDER_TIMEOUT" />
        <property role="3dVrbN" value="5" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7V" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7W" role="3dVrc3">
        <property role="3dVrbM" value="T2_COMPUTATION_SIMULATOR_PI_TOTAL_POINTS" />
        <property role="3dVrbN" value="1000000000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7X" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo7Y" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo7Z" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/modulith:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/modulith" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo80" role="3dVskk">
      <property role="TrG5h" value="creditinstitute" />
      <ref role="3dVskh" node="71ZUOKkSo6I" resolve="creditinstitute-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKkSo81" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="Always" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo82" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_ENABLED" />
        <property role="3dVrbN" value="FALSE" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo83" role="3dVrc3">
        <property role="3dVrbM" value="T2_JAEGER_HOST" />
        <property role="3dVrbN" value="simplest-agent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo84" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo85" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo86" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="t2project/creditinstitute:main" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/t2project/creditinstitute" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo87" role="3dVskk">
      <property role="TrG5h" value="postgres" />
      <ref role="3dVskh" node="71ZUOKkSo72" resolve="postgres-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKkSo88" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo89" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_PASSWORD" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo8a" role="3dVrc3">
        <property role="3dVrbM" value="POSTGRES_USER" />
        <property role="3dVrbN" value="postgres" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo8b" role="3dVrc3">
        <property role="3dVrbM" value="containerPort" />
        <property role="3dVrbN" value="5432" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKkSo8c" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort" />
        <property role="3dVrbN" value="5432:5432" />
      </node>
      <node concept="3dV$SK" id="71ZUOKkSo8d" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="postgres:12.16-bullseye" />
        <property role="3dV$SQ" value="https://hub.docker.com/_/postgres" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKkSo8e" role="3dVskk">
      <property role="TrG5h" value="postgres-postgres-storage-volume" />
      <ref role="3dVskh" node="71ZUOKkSo78" resolve="Storage" />
      <node concept="3dVrbJ" id="71ZUOKkSo8f" role="3dVrc3">
        <property role="3dVrbM" value="storage_size" />
        <property role="3dVrbN" value="1Gi" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8g" role="3dVskk">
      <property role="TrG5h" value="mongo-mongodb-datadir-mount" />
      <ref role="3dVsks" node="71ZUOKkSo7d" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo7C" resolve="mongo-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo7q" resolve="mongo-mongodb" />
      <node concept="3dVrbJ" id="71ZUOKkSo8h" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/bitnami/mongodb" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8i" role="3dVskk">
      <property role="TrG5h" value="postgres-postgres-storage-mount" />
      <ref role="3dVsks" node="71ZUOKkSo7d" resolve="AttachesTo" />
      <ref role="3dVskt" node="71ZUOKkSo8e" resolve="postgres-postgres-storage-volume" />
      <ref role="3dVsku" node="71ZUOKkSo87" resolve="postgres" />
      <node concept="3dVrbJ" id="71ZUOKkSo8j" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="/var/lib/postgresql/data" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8k" role="3dVskk">
      <property role="TrG5h" value="backend_ConnectsTo_postgres" />
      <ref role="3dVsks" node="71ZUOKkSo7c" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo7E" resolve="backend" />
      <ref role="3dVsku" node="71ZUOKkSo87" resolve="postgres" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8l" role="3dVskk">
      <property role="TrG5h" value="backend_ConnectsTo_mongo-mongodb" />
      <ref role="3dVsks" node="71ZUOKkSo7c" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo7E" resolve="backend" />
      <ref role="3dVsku" node="71ZUOKkSo7q" resolve="mongo-mongodb" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8m" role="3dVskk">
      <property role="TrG5h" value="backend_ConnectsTo_creditinstitute" />
      <ref role="3dVsks" node="71ZUOKkSo7c" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKkSo7E" resolve="backend" />
      <ref role="3dVsku" node="71ZUOKkSo80" resolve="creditinstitute" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8n" role="3dVskk">
      <property role="TrG5h" value="mongo-mongodb_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo7q" resolve="mongo-mongodb" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8o" role="3dVskk">
      <property role="TrG5h" value="mongo-mongodb-datadir-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo7C" resolve="mongo-mongodb-datadir-volume" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8p" role="3dVskk">
      <property role="TrG5h" value="backend_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo7E" resolve="backend" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8q" role="3dVskk">
      <property role="TrG5h" value="creditinstitute_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo80" resolve="creditinstitute" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8r" role="3dVskk">
      <property role="TrG5h" value="postgres_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo87" resolve="postgres" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8s" role="3dVskk">
      <property role="TrG5h" value="postgres-postgres-storage-volume_HostedOn_t2store" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo8e" resolve="postgres-postgres-storage-volume" />
      <ref role="3dVsku" node="71ZUOKkSo7g" resolve="t2store" />
    </node>
    <node concept="3dVskr" id="71ZUOKkSo8t" role="3dVskk">
      <property role="TrG5h" value="t2store_HostedOn_MicrosoftAzure" />
      <ref role="3dVsks" node="71ZUOKkSo7b" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKkSo7g" resolve="t2store" />
      <ref role="3dVsku" node="71ZUOKkSo7f" resolve="MicrosoftAzure" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKl1rh7">
    <property role="TrG5h" value="otelshopAnsible_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKl1rh8" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rh9" role="3dVskk">
      <property role="TrG5h" value="localhost-type" />
      <ref role="3dVrbW" node="71ZUOKl1rh8" resolve="BaseType" />
      <node concept="3dVrbJ" id="71ZUOKl1rha" role="3dVrc3">
        <property role="3dVrbM" value="ansible_connection" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhb" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rh8" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhc" role="3dVskk">
      <property role="TrG5h" value="grafana-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhd" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhe" role="3dVskk">
      <property role="TrG5h" value="all-in-one-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhf" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbN" value="prometheus" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhg" role="3dVskk">
      <property role="TrG5h" value="opentelemetry-collector-contrib-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhh" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhi" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhj" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhk" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhl" role="3dVskk">
      <property role="TrG5h" value="prometheus-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhm" role="3dVskk">
      <property role="TrG5h" value="accountingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhn" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rho" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=accountingservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhs" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rht" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhu" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhv" role="3dVskk">
      <property role="TrG5h" value="adservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=adservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="adservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rh$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rh_" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhA" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhB" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhC" role="3dVskk">
      <property role="TrG5h" value="cartservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=cartservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhG" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhH" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbN" value="valkeycart:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhI" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_ADDR" />
        <property role="3dVrbN" value="valkeycart:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhJ" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbN" value="http://*:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhK" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhL" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rhM" role="3dVskk">
      <property role="TrG5h" value="checkoutservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rhN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=checkoutservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhR" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhS" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhT" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhU" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhV" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhW" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhX" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://emailservice:6060" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhY" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rhZ" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri0" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri1" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1ri2" role="3dVskk">
      <property role="TrG5h" value="currencyservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1ri3" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri4" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=currencyservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri5" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri6" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri7" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbN" value="7001" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1ri8" role="3dVskk">
      <property role="TrG5h" value="emailservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1ri9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ria" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=emailservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rib" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="emailservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ric" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rid" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbN" value="production" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rie" role="3dVskk">
      <property role="TrG5h" value="flagd-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rif" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbN" value="otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rig" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rih" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=flagd,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rii" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="flagd" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rij" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rik" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ril" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frauddetectionservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rim" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rin" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rio" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rip" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rir" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_KAFKA_EXPERIMENTAL_SPAN_ATTRIBUTES" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ris" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_MESSAGING_EXPERIMENTAL_RECEIVE_TELEMETRY_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rit" role="3dVskk">
      <property role="TrG5h" value="frontend-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1riu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riv" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frontend,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rix" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riy" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riz" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri$" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ri_" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riA" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riB" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value="frontend:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riC" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riD" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riE" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riF" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riG" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riH" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="recommendationservice:9001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riI" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riJ" role="3dVrc3">
        <property role="3dVrbM" value="ENV_PLATFORM" />
        <property role="3dVrbN" value="local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riK" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riL" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1riN" role="3dVskk">
      <property role="TrG5h" value="frontendproxy-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1riO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frontendproxy,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontendproxy" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riR" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riS" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riT" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riU" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riV" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riW" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riX" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riY" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbN" value="3000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1riZ" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj0" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj1" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbN" value="jaeger" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj2" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj3" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj4" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj5" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rj6" role="3dVskk">
      <property role="TrG5h" value="imageprovider-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rj7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=imageprovider,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj9" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rja" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjc" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rjd" role="3dVskk">
      <property role="TrG5h" value="loadgenerator-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rje" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=loadgenerator,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjh" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rji" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjj" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjk" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjl" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjm" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjn" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbN" value="http://frontendproxy:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjo" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjp" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjq" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjr" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjs" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjt" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rju" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rjv" role="3dVskk">
      <property role="TrG5h" value="paymentservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rjw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=paymentservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjz" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj$" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rj_" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjA" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rjB" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rjC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=productcatalogservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjG" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjH" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjI" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjJ" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOSTNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjK" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjL" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjM" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rjN" role="3dVskk">
      <property role="TrG5h" value="quoteservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rjO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=quoteservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjQ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjR" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjS" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_INTERNAL_METRICS_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjT" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbN" value="8090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rjU" role="3dVskk">
      <property role="TrG5h" value="recommendationservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rjV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=recommendationservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rjZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk0" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk1" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk2" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk3" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk4" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rk5" role="3dVskk">
      <property role="TrG5h" value="shippingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rk6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=shippingservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rk9" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rka" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://quoteservice:8090" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rkb" role="3dVskk">
      <property role="TrG5h" value="opensearch-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rkc" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkd" role="3dVrc3">
        <property role="3dVrbM" value="node.name" />
        <property role="3dVrbN" value="demo-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rke" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkf" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkg" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkh" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rki" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbN" value="true" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rkj" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rkk" role="3dVskk">
      <property role="TrG5h" value="mongo-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKl1rkj" resolve="DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKl1rkl" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkm" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rkn" role="3dVskk">
      <property role="TrG5h" value="valkey-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKl1rkj" resolve="DatabaseSystem" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rko" role="3dVskk">
      <property role="TrG5h" value="MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKl1rhb" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKl1rkp" role="3dVskk">
      <property role="TrG5h" value="kafka-MessageBroker" />
      <ref role="3dVrbW" node="71ZUOKl1rko" resolve="MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKl1rkq" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rks" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=kafka,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rku" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx400m -Xms400m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkv" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="PLAINTEXT://kafka:9092" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKl1rkw" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKl1rkx" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKl1rkw" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKl1rky" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKl1rkw" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKl1rkz" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKl1rkw" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKl1rk$" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rk_" role="3dVskk">
      <property role="TrG5h" value="localhost" />
      <ref role="3dVskh" node="71ZUOKl1rh9" resolve="localhost-type" />
      <node concept="3dVrbJ" id="71ZUOKl1rkA" role="3dVrc3">
        <property role="3dVrbM" value="ansible_connection" />
        <property role="3dVrbN" value="local" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rkB" role="3dVrc4">
        <property role="TrG5h" value="Ensure default network is created" />
        <node concept="3dV$SK" id="71ZUOKl1rkC" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker network create -d bridge opentelemetry-demo" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rkD" role="3dVrc4">
        <property role="TrG5h" value="Ensure services are started" />
        <node concept="3dV$SK" id="71ZUOKl1rkE" role="3dVrbT">
          <property role="3dV$SO" value="launchd" />
          <property role="TrG5h" value="[accountingservice, adservice, cartservice, checkoutservice, emailservice, flagd, frauddetectionserice, frontend, frontendproxy, grafana, imageprovider, jaeger, kafka, loadgenerator, mongo, opensearch, otelcol, paymentservice, productcatalogservice, prometheus, quoteservice, recommendationservice, shippingservice, valkeycart] started" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rkF" role="3dVrc4">
        <property role="TrG5h" value="Ensure services are enabled to start at boot" />
        <node concept="3dV$SK" id="71ZUOKl1rkG" role="3dVrbT">
          <property role="3dV$SO" value="launchd" />
          <property role="TrG5h" value="[accountingservice, adservice, cartservice, checkoutservice, emailservice, flagd, frauddetectionserice, frontend, frontendproxy, grafana, imageprovider, jaeger, kafka, loadgenerator, mongo, opensearch, otelcol, paymentservice, productcatalogservice, prometheus, quoteservice, recommendationservice, shippingservice, valkeycart] enabled" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rkH" role="3dVskk">
      <property role="TrG5h" value="accountingservice" />
      <ref role="3dVskh" node="71ZUOKl1rhm" resolve="accountingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rkI" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkJ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkK" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=accountingservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkL" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="accountingservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkM" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rkN" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rkO" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rkP" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rkQ" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rkR" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rkS" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rkT" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-accountingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rkU" role="3dVskk">
      <property role="TrG5h" value="adservice" />
      <ref role="3dVskh" node="71ZUOKl1rhv" resolve="adservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rkV" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkW" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkX" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=adservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkY" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="adservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rkZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rl0" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rl1" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rl2" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rl3" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rl4" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rl5" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-adservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rl6" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rl7" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rl8" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-adservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rl9" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-adservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rla" role="3dVskk">
      <property role="TrG5h" value="cartservice" />
      <ref role="3dVskh" node="71ZUOKl1rhC" resolve="cartservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rlb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=cartservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rld" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="cartservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rle" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_PORT" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlf" role="3dVrc3">
        <property role="3dVrbM" value="VALKEY_ADDR" />
        <property role="3dVrbN" value="valkeycart:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlg" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_ADDR" />
        <property role="3dVrbN" value="valkeycart:6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlh" role="3dVrc3">
        <property role="3dVrbM" value="ASPNETCORE_URLS" />
        <property role="3dVrbN" value="http://*:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rli" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlj" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rlk" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rll" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlm" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rln" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rlo" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlp" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rlq" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-cartservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rlr" role="3dVskk">
      <property role="TrG5h" value="checkoutservice" />
      <ref role="3dVskh" node="71ZUOKl1rhM" resolve="checkoutservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rls" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlt" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlu" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=checkoutservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlv" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="checkoutservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_LOGS_EXPORTER" />
        <property role="3dVrbN" value="otlp" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlx" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_PORT" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rly" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlz" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rl$" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rl_" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlA" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://emailservice:6060" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlB" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlC" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlD" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlE" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rlF" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rlG" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlH" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rlI" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rlJ" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlK" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rlL" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-checkoutservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rlM" role="3dVskk">
      <property role="TrG5h" value="currencyservice" />
      <ref role="3dVskh" node="71ZUOKl1ri2" resolve="currencyservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rlN" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=currencyservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="currencyservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlQ" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rlR" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_PORT" />
        <property role="3dVrbN" value="7001" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rlS" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rlT" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlU" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rlV" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rlW" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rlX" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rlY" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-currencyservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rlZ" role="3dVskk">
      <property role="TrG5h" value="emailservice" />
      <ref role="3dVskh" node="71ZUOKl1ri8" resolve="emailservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rm0" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rm1" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=emailservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rm2" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="emailservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rm3" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_PORT" />
        <property role="3dVrbN" value="6060" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rm4" role="3dVrc3">
        <property role="3dVrbM" value="APP_ENV" />
        <property role="3dVrbN" value="production" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rm5" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rm6" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rm7" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rm8" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rm9" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rma" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rmb" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-emailservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rmc" role="3dVskk">
      <property role="TrG5h" value="flagd" />
      <ref role="3dVskh" node="71ZUOKl1rie" resolve="flagd-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rmd" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_OTEL_COLLECTOR_URI" />
        <property role="3dVrbN" value="otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rme" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_METRICS_EXPORTER" />
        <property role="3dVrbN" value="otel" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmf" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=flagd,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmg" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rmh" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rmi" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-feature/flagd:v0.11.2" />
          <property role="3dV$SQ" value="ghcr.io/open-feature/flagd:v0.11.2" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rmj" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-feature/flagd:v0.11.2" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rmk" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rml" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-feature/flagd:v0.11.2" />
          <property role="3dV$SQ" value="ghcr.io/open-feature/flagd:v0.11.2" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rmm" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-feature/flagd:v0.11.2" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rmn" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-feature/flagd:v0.11.2" />
        <property role="3dV$SQ" value="ghcr.io/open-feature/flagd:v0.11.2" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rmo" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="demo.flagd.json" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/flagd/files/demo.flagd.json" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rmp" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice" />
      <ref role="3dVskh" node="71ZUOKl1rij" resolve="frauddetectionservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rmq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frauddetectionservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rms" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frauddetectionservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmt" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmu" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmv" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmw" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmx" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_KAFKA_EXPERIMENTAL_SPAN_ATTRIBUTES" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmy" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_INSTRUMENTATION_MESSAGING_EXPERIMENTAL_RECEIVE_TELEMETRY_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rmz" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rm$" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rm_" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rmA" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rmB" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rmC" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rmD" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frauddetectionservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rmE" role="3dVskk">
      <property role="TrG5h" value="frontend" />
      <ref role="3dVskh" node="71ZUOKl1rit" resolve="frontend-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rmF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmG" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frontend,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmH" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmI" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmJ" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmK" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmL" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmM" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmN" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmO" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value="frontend:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmP" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmQ" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmR" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmS" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmT" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmU" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="recommendationservice:9001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmV" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmW" role="3dVrc3">
        <property role="3dVrbM" value="ENV_PLATFORM" />
        <property role="3dVrbN" value="local" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmX" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmY" role="3dVrc3">
        <property role="3dVrbM" value="WEB_OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontend-web" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rmZ" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rn0" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rn1" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rn2" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-frontend" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rn3" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rn4" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rn5" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-frontend" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rn6" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontend" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rn7" role="3dVskk">
      <property role="TrG5h" value="frontendproxy" />
      <ref role="3dVskh" node="71ZUOKl1riN" resolve="frontendproxy-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rn8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=frontendproxy,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rn9" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="frontendproxy" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rna" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnb" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnc" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rne" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnf" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_HOST" />
        <property role="3dVrbN" value="frontend" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rng" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnh" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_HOST" />
        <property role="3dVrbN" value="grafana" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rni" role="3dVrc3">
        <property role="3dVrbM" value="GRAFANA_SERVICE_PORT" />
        <property role="3dVrbN" value="3000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnj" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_HOST" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnk" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnl" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_HOST" />
        <property role="3dVrbN" value="jaeger" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnm" role="3dVrc3">
        <property role="3dVrbM" value="JAEGER_SERVICE_PORT" />
        <property role="3dVrbN" value="16686" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnn" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rno" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnp" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnq" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rnr" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rns" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnt" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rnu" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rnv" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnw" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-frontendproxy" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rnx" role="3dVskk">
      <property role="TrG5h" value="grafana" />
      <ref role="3dVskh" node="71ZUOKl1rhc" resolve="grafana-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rny" role="3dVrc3">
        <property role="3dVrbM" value="GF_INSTALL_PLUGINS" />
        <property role="3dVrbN" value="grafana-opensearch-datasource" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnz" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rn$" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="grafana/grafana:11.2.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/grafana/grafana" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rn_" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull grafana/grafana:11.2.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnA" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rnB" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="grafana/grafana:11.2.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/grafana/grafana" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rnC" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run grafana/grafana:11.2.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnD" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="grafana/grafana:11.2.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/grafana/grafana" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnE" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="opentelemetry-collector.json" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/dashboards/demo/opentelemetry-collector.json" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnF" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="demo-dashboard.json" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/dashboards/demo/demo-dashboard.json" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnG" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="opensearch.yaml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/datasources/opensearch.yaml" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnH" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="jaeger.yaml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/datasources/jaeger.yaml" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnI" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="grafana.ini" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/grafana.ini" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnJ" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="demo.yaml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/dashboards/demo.yaml" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnK" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="default.yaml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/datasources/default.yaml" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnL" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="spanmetrics-dashboard.json" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/dashboards/demo/spanmetrics-dashboard.json" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rnM" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="opentelemetry-collector-data-flow.json" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/grafana/files/provisioning/dashboards/demo/opentelemetry-collector-data-flow.json" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rnN" role="3dVskk">
      <property role="TrG5h" value="imageprovider" />
      <ref role="3dVskh" node="71ZUOKl1rj6" resolve="imageprovider-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rnO" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=imageprovider,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnP" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="imageprovider" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnQ" role="3dVrc3">
        <property role="3dVrbM" value="VERSION" />
        <property role="3dVrbN" value="1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnR" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnS" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rnT" role="3dVrc3">
        <property role="3dVrbM" value="IMAGE_PROVIDER_PORT" />
        <property role="3dVrbN" value="8081" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnU" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rnV" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rnW" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rnX" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rnY" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rnZ" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1ro0" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-imageprovider" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1ro1" role="3dVskk">
      <property role="TrG5h" value="jaeger" />
      <ref role="3dVskh" node="71ZUOKl1rhe" resolve="all-in-one-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1ro2" role="3dVrc3">
        <property role="3dVrbM" value="METRICS_STORAGE_TYPE" />
        <property role="3dVrbN" value="prometheus" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1ro3" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1ro4" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="jaegertracing/all-in-one:1.60" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/jaegertracing/all-in-one" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1ro5" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull jaegertracing/all-in-one:1.60" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1ro6" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1ro7" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="jaegertracing/all-in-one:1.60" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/jaegertracing/all-in-one" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1ro8" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run jaegertracing/all-in-one:1.60" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1ro9" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="jaegertracing/all-in-one:1.60" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/jaegertracing/all-in-one" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1roa" role="3dVskk">
      <property role="TrG5h" value="kafka" />
      <ref role="3dVskh" node="71ZUOKl1rkp" resolve="kafka-MessageBroker" />
      <node concept="3dVrbJ" id="71ZUOKl1rob" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rod" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=kafka,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roe" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="kafka" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rof" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_HEAP_OPTS" />
        <property role="3dVrbN" value="-Xmx400m -Xms400m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rog" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_ADVERTISED_LISTENERS" />
        <property role="3dVrbN" value="PLAINTEXT://kafka:9092" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1roh" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1roi" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1roj" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-kafka" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rok" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rol" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rom" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-kafka" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1ron" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-kafka" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1roo" role="3dVskk">
      <property role="TrG5h" value="loadgenerator" />
      <ref role="3dVskh" node="71ZUOKl1rjd" resolve="loadgenerator-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rop" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=loadgenerator,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ror" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="loadgenerator" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ros" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rot" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rou" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rov" role="3dVrc3">
        <property role="3dVrbM" value="KAFKA_SERVICE_ADDR" />
        <property role="3dVrbN" value="kafka:9092" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1row" role="3dVrc3">
        <property role="3dVrbM" value="PUBLIC_OTEL_EXPORTER_OTLP_TRACES_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:8080/otlp-http/v1/traces" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rox" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roy" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HOST" />
        <property role="3dVrbN" value="http://frontendproxy:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roz" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_PORT" />
        <property role="3dVrbN" value="8089" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ro$" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1ro_" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_HEADLESS" />
        <property role="3dVrbN" value="false" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roA" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_AUTOSTART" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roB" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_BROWSER_TRAFFIC_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roC" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roD" role="3dVrc3">
        <property role="3dVrbM" value="LOCUST_WEB_HOST" />
        <property role="3dVrbN" value="0.0.0.0" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1roE" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1roF" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1roG" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1roH" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1roI" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1roJ" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1roK" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-loadgenerator" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1roL" role="3dVskk">
      <property role="TrG5h" value="mongo" />
      <ref role="3dVskh" node="71ZUOKl1rkk" resolve="mongo-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKl1roM" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roN" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_INITDB_ROOT_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1roO" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1roP" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="mongo:8.0.0-rc9" />
          <property role="3dV$SQ" value="https://hub.docker.com/_/mongo" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1roQ" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull mongo:8.0.0-rc9" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1roR" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1roS" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="mongo:8.0.0-rc9" />
          <property role="3dV$SQ" value="https://hub.docker.com/_/mongo" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1roT" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run mongo:8.0.0-rc9" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1roU" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="mongo:8.0.0-rc9" />
        <property role="3dV$SQ" value="https://hub.docker.com/_/mongo" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1roV" role="3dVskk">
      <property role="TrG5h" value="opensearch" />
      <ref role="3dVskh" node="71ZUOKl1rkb" resolve="opensearch-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1roW" role="3dVrc3">
        <property role="3dVrbM" value="cluster.name" />
        <property role="3dVrbN" value="demo-cluster" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roX" role="3dVrc3">
        <property role="3dVrbM" value="node.name" />
        <property role="3dVrbN" value="demo-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roY" role="3dVrc3">
        <property role="3dVrbM" value="bootstrap.memory_lock" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1roZ" role="3dVrc3">
        <property role="3dVrbM" value="discovery.type" />
        <property role="3dVrbN" value="single-node" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rp0" role="3dVrc3">
        <property role="3dVrbM" value="OPENSEARCH_JAVA_OPTS" />
        <property role="3dVrbN" value="-Xms300m -Xmx300m" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rp1" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_INSTALL_DEMO_CONFIG" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rp2" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_SECURITY_PLUGIN" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rp3" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rp4" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="opensearchproject/opensearch:2.16.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/opensearchproject/opensearch" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rp5" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull opensearchproject/opensearch:2.16.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rp6" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rp7" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="opensearchproject/opensearch:2.16.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/opensearchproject/opensearch" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rp8" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run opensearchproject/opensearch:2.16.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rp9" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="opensearchproject/opensearch:2.16.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/opensearchproject/opensearch" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rpa" role="3dVskk">
      <property role="TrG5h" value="otelcol" />
      <ref role="3dVskh" node="71ZUOKl1rhg" resolve="opentelemetry-collector-contrib-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rpb" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_HOST" />
        <property role="3dVrbN" value="otelcol" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpc" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_GRPC" />
        <property role="3dVrbN" value="4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpd" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_COLLECTOR_PORT_HTTP" />
        <property role="3dVrbN" value="4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpe" role="3dVrc3">
        <property role="3dVrbM" value="ENVOY_PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpf" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rpg" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="otel/opentelemetry-collector-contrib:0.108.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/otel/opentelemetry-collector-contrib" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rph" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull otel/opentelemetry-collector-contrib:0.108.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpi" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rpj" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="otel/opentelemetry-collector-contrib:0.108.0" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/otel/opentelemetry-collector-contrib" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rpk" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run otel/opentelemetry-collector-contrib:0.108.0" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rpl" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="otel/opentelemetry-collector-contrib:0.108.0" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/otel/opentelemetry-collector-contrib" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rpm" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="otelcol-config-extras.yml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/otelcol/files/otelcol-config-extras.yml" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rpn" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="otelcol-config.yml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/otelcol/files/otelcol-config.yml" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rpo" role="3dVskk">
      <property role="TrG5h" value="paymentservice" />
      <ref role="3dVskh" node="71ZUOKl1rjv" resolve="paymentservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rpp" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpq" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=paymentservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpr" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="paymentservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rps" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpt" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpu" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpv" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpw" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rpx" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rpy" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpz" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rp$" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rp_" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rpA" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-paymentservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rpB" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice" />
      <ref role="3dVskh" node="71ZUOKl1rjB" resolve="productcatalogservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rpC" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpD" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=productcatalogservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpE" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="productcatalogservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpF" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpG" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpH" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpI" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_PORT" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpJ" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_HOSTNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpK" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PORT" />
        <property role="3dVrbN" value="27017" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpL" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_USERNAME" />
        <property role="3dVrbN" value="mongo" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rpM" role="3dVrc3">
        <property role="3dVrbM" value="MONGO_PASSWORD" />
        <property role="3dVrbN" value="mongo_product_catalog" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpN" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rpO" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rpP" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpQ" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rpR" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rpS" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rpT" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-productcatalogservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rpU" role="3dVskk">
      <property role="TrG5h" value="prometheus" />
      <ref role="3dVskh" node="71ZUOKl1rhl" resolve="prometheus-SoftwareApplication" />
      <node concept="3dVrbR" id="71ZUOKl1rpV" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rpW" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="quay.io/prometheus/prometheus:v2.54.1" />
          <property role="3dV$SQ" value="quay.io/prometheus/prometheus:v2.54.1" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rpX" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull quay.io/prometheus/prometheus:v2.54.1" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rpY" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rpZ" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="quay.io/prometheus/prometheus:v2.54.1" />
          <property role="3dV$SQ" value="quay.io/prometheus/prometheus:v2.54.1" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rq0" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run quay.io/prometheus/prometheus:v2.54.1" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rq1" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="quay.io/prometheus/prometheus:v2.54.1" />
        <property role="3dV$SQ" value="quay.io/prometheus/prometheus:v2.54.1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rq2" role="3dVskg">
        <property role="3dV$SO" value="file" />
        <property role="TrG5h" value="prometheus-config.yaml" />
        <property role="3dV$SQ" value="file:/usr/share/Evaluation/OTEL-Shop-Ansible/deploymentModel/roles/prometheus/files/prometheus-config.yaml" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rq3" role="3dVskk">
      <property role="TrG5h" value="quoteservice" />
      <ref role="3dVskh" node="71ZUOKl1rjN" resolve="quoteservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rq4" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4318" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq5" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=quoteservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq6" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="quoteservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq7" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_AUTOLOAD_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq8" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PHP_INTERNAL_METRICS_ENABLED" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq9" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_PORT" />
        <property role="3dVrbN" value="8090" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqa" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rqb" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqc" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqd" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rqe" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqf" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rqg" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-quoteservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rqh" role="3dVskk">
      <property role="TrG5h" value="recommendationservice" />
      <ref role="3dVskh" node="71ZUOKl1rjU" resolve="recommendationservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rqi" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqj" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=recommendationservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqk" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="recommendationservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rql" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE" />
        <property role="3dVrbN" value="cumulative" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqm" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_PYTHON_LOG_CORRELATION" />
        <property role="3dVrbN" value="true" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqn" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_PORT" />
        <property role="3dVrbN" value="9001" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqo" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqp" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_HOST" />
        <property role="3dVrbN" value="flagd" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqq" role="3dVrc3">
        <property role="3dVrbM" value="FLAGD_PORT" />
        <property role="3dVrbN" value="8013" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqr" role="3dVrc3">
        <property role="3dVrbM" value="PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION" />
        <property role="3dVrbN" value="python" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqs" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rqt" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqu" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqv" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rqw" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqx" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rqy" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-recommendationservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rqz" role="3dVskk">
      <property role="TrG5h" value="shippingservice" />
      <ref role="3dVskh" node="71ZUOKl1rk5" resolve="shippingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKl1rq$" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_EXPORTER_OTLP_ENDPOINT" />
        <property role="3dVrbN" value="http://otelcol:4317" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rq_" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_RESOURCE_ATTRIBUTES" />
        <property role="3dVrbN" value="service.name=shippingservice,service.namespace=opentelemetry-demo,service.version=1.11.1" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqA" role="3dVrc3">
        <property role="3dVrbM" value="OTEL_SERVICE_NAME" />
        <property role="3dVrbN" value="shippingservice" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqB" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_PORT" />
        <property role="3dVrbN" value="50050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKl1rqC" role="3dVrc3">
        <property role="3dVrbM" value="QUOTE_SERVICE_ADDR" />
        <property role="3dVrbN" value="http://quoteservice:8090" />
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqD" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rqE" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqF" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqG" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rqH" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
          <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqI" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rqJ" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
        <property role="3dV$SQ" value="ghcr.io/open-telemetry/demo:1.11.1-shippingservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKl1rqK" role="3dVskk">
      <property role="TrG5h" value="valkeycart" />
      <ref role="3dVskh" node="71ZUOKl1rkn" resolve="valkey-DatabaseSystem" />
      <node concept="3dVrbR" id="71ZUOKl1rqL" role="3dVrc4">
        <property role="TrG5h" value="Pull the latest Docker image" />
        <node concept="3dV$SK" id="71ZUOKl1rqM" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="valkey/valkey:8.0-alpine" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/valkey/valkey" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqN" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker pull valkey/valkey:8.0-alpine" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dVrbR" id="71ZUOKl1rqO" role="3dVrc4">
        <property role="TrG5h" value="Deploy Service" />
        <node concept="3dV$SK" id="71ZUOKl1rqP" role="3dVrbT">
          <property role="3dV$SO" value="docker_image" />
          <property role="TrG5h" value="valkey/valkey:8.0-alpine" />
          <property role="3dV$SQ" value="https://hub.docker.com/r/valkey/valkey" />
        </node>
        <node concept="3dV$SK" id="71ZUOKl1rqQ" role="3dVrbT">
          <property role="3dV$SO" value="bash" />
          <property role="TrG5h" value="/bin/sh docker run valkey/valkey:8.0-alpine" />
          <property role="3dV$SQ" value="-" />
        </node>
      </node>
      <node concept="3dV$SK" id="71ZUOKl1rqR" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="valkey/valkey:8.0-alpine" />
        <property role="3dV$SQ" value="https://hub.docker.com/r/valkey/valkey" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqS" role="3dVskk">
      <property role="TrG5h" value="jaeger_connectsTo_prometheus" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1ro1" resolve="jaeger" />
      <ref role="3dVsku" node="71ZUOKl1rpU" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqT" role="3dVskk">
      <property role="TrG5h" value="accountingservice_connectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rkH" resolve="accountingservice" />
      <ref role="3dVsku" node="71ZUOKl1roa" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqU" role="3dVskk">
      <property role="TrG5h" value="accountingservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rkH" resolve="accountingservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqV" role="3dVskk">
      <property role="TrG5h" value="adservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rkU" resolve="adservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqW" role="3dVskk">
      <property role="TrG5h" value="adservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rkU" resolve="adservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqX" role="3dVskk">
      <property role="TrG5h" value="cartservice_connectsTo_valkeycart" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rla" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKl1rqK" resolve="valkeycart" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqY" role="3dVskk">
      <property role="TrG5h" value="cartservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rla" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rqZ" role="3dVskk">
      <property role="TrG5h" value="cartservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rla" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr0" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_cartservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rla" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr1" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_currencyservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rlM" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr2" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_emailservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rlZ" resolve="emailservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr3" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_paymentservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rpo" resolve="paymentservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr4" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rpB" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr5" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_shippingservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rqz" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr6" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1roa" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr7" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr8" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr9" role="3dVskk">
      <property role="TrG5h" value="currencyservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlM" resolve="currencyservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rra" role="3dVskk">
      <property role="TrG5h" value="emailservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rlZ" resolve="emailservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrb" role="3dVskk">
      <property role="TrG5h" value="flagd_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmc" resolve="flagd" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrc" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_connectsTo_kafka" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmp" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKl1roa" resolve="kafka" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrd" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmp" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rre" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmp" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrf" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_adservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rkU" resolve="adservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrg" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_cartservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rla" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrh" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_checkoutservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rlr" resolve="checkoutservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rri" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_currencyservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rlM" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrj" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rpB" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrk" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_recommendationservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rqh" resolve="recommendationservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrl" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_shippingservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rqz" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrm" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrn" role="3dVskk">
      <property role="TrG5h" value="frontend_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rro" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrp" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_frontend" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rmE" resolve="frontend" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrq" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_grafana" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rnx" resolve="grafana" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrr" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_imageprovider" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rnN" resolve="imageprovider" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrs" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_jaeger" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1ro1" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrt" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_loadgenerator" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1roo" resolve="loadgenerator" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rru" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrv" role="3dVskk">
      <property role="TrG5h" value="imageprovider_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rnN" resolve="imageprovider" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrw" role="3dVskk">
      <property role="TrG5h" value="kafka_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1roa" resolve="kafka" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrx" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_connectsTo_frontendproxy" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1roo" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKl1rn7" resolve="frontendproxy" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rry" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1roo" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrz" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1roo" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr$" role="3dVskk">
      <property role="TrG5h" value="paymentservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpo" resolve="paymentservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rr_" role="3dVskk">
      <property role="TrG5h" value="paymentservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpo" resolve="paymentservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrA" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpB" resolve="productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrB" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpB" resolve="productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrC" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_connectsTo_mongo" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpB" resolve="productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKl1roL" resolve="mongo" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrD" role="3dVskk">
      <property role="TrG5h" value="quoteservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rq3" resolve="quoteservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrE" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_connectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rqh" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKl1rpB" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrF" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_connectsTo_flagd" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rqh" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKl1rmc" resolve="flagd" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrG" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rqh" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrH" role="3dVskk">
      <property role="TrG5h" value="shippingservice_connectsTo_quoteservice" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rqz" resolve="shippingservice" />
      <ref role="3dVsku" node="71ZUOKl1rq3" resolve="quoteservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrI" role="3dVskk">
      <property role="TrG5h" value="shippingservice_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rqz" resolve="shippingservice" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrJ" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_frontendproxy" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1rn7" resolve="frontendproxy" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrK" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrL" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_valkeycart" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1rqK" resolve="valkeycart" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrM" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_prometheus" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1rpU" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrN" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_jaeger" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1ro1" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrO" role="3dVskk">
      <property role="TrG5h" value="otelcol_connectsTo_opensearch" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1roV" resolve="opensearch" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrP" role="3dVskk">
      <property role="TrG5h" value="prometheus_connectsTo_otelcol" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rpU" resolve="prometheus" />
      <ref role="3dVsku" node="71ZUOKl1rpa" resolve="otelcol" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrQ" role="3dVskk">
      <property role="TrG5h" value="grafana_connectsTo_prometheus" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rnx" resolve="grafana" />
      <ref role="3dVsku" node="71ZUOKl1rpU" resolve="prometheus" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrR" role="3dVskk">
      <property role="TrG5h" value="grafana_connectsTo_jaeger" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rnx" resolve="grafana" />
      <ref role="3dVsku" node="71ZUOKl1ro1" resolve="jaeger" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrS" role="3dVskk">
      <property role="TrG5h" value="grafana_connectsTo_opensearch" />
      <ref role="3dVsks" node="71ZUOKl1rky" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKl1rnx" resolve="grafana" />
      <ref role="3dVsku" node="71ZUOKl1roV" resolve="opensearch" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrT" role="3dVskk">
      <property role="TrG5h" value="accountingservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rkH" resolve="accountingservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrU" role="3dVskk">
      <property role="TrG5h" value="adservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rkU" resolve="adservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrV" role="3dVskk">
      <property role="TrG5h" value="cartservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rla" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrW" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rlr" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrX" role="3dVskk">
      <property role="TrG5h" value="currencyservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rlM" resolve="currencyservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrY" role="3dVskk">
      <property role="TrG5h" value="emailservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rlZ" resolve="emailservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rrZ" role="3dVskk">
      <property role="TrG5h" value="frauddetectionservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rmp" resolve="frauddetectionservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs0" role="3dVskk">
      <property role="TrG5h" value="frontend_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rmE" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs1" role="3dVskk">
      <property role="TrG5h" value="frontendproxy_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rn7" resolve="frontendproxy" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs2" role="3dVskk">
      <property role="TrG5h" value="imageprovider_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rnN" resolve="imageprovider" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs3" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1roo" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs4" role="3dVskk">
      <property role="TrG5h" value="paymentservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rpo" resolve="paymentservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs5" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rpB" resolve="productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs6" role="3dVskk">
      <property role="TrG5h" value="quoteservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rq3" resolve="quoteservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs7" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rqh" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs8" role="3dVskk">
      <property role="TrG5h" value="shippingservice_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rqz" resolve="shippingservice" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rs9" role="3dVskk">
      <property role="TrG5h" value="flagd_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rmc" resolve="flagd" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsa" role="3dVskk">
      <property role="TrG5h" value="kafka_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1roa" resolve="kafka" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsb" role="3dVskk">
      <property role="TrG5h" value="valkeycart_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rqK" resolve="valkeycart" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsc" role="3dVskk">
      <property role="TrG5h" value="mongo_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1roL" resolve="mongo" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsd" role="3dVskk">
      <property role="TrG5h" value="jaeger_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1ro1" resolve="jaeger" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rse" role="3dVskk">
      <property role="TrG5h" value="grafana_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rnx" resolve="grafana" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsf" role="3dVskk">
      <property role="TrG5h" value="otelcol_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rpa" resolve="otelcol" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsg" role="3dVskk">
      <property role="TrG5h" value="prometheus_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1rpU" resolve="prometheus" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
    <node concept="3dVskr" id="71ZUOKl1rsh" role="3dVskk">
      <property role="TrG5h" value="opensearch_hostedOn_localhost" />
      <ref role="3dVsks" node="71ZUOKl1rkx" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKl1roV" resolve="opensearch" />
      <ref role="3dVsku" node="71ZUOKl1rk_" resolve="localhost" />
    </node>
  </node>
  <node concept="3dVskj" id="71ZUOKlbCN_">
    <property role="TrG5h" value="boutiqueshop_expected.yaml" />
    <node concept="3dVrbV" id="71ZUOKlbCNA" role="3dVskk">
      <property role="TrG5h" value="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNB" role="3dVskk">
      <property role="TrG5h" value="CloudProvider" />
      <ref role="3dVrbW" node="71ZUOKlbCNA" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNC" role="3dVskk">
      <property role="TrG5h" value="ContainerPlatform" />
      <ref role="3dVrbW" node="71ZUOKlbCNA" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCND" role="3dVskk">
      <property role="TrG5h" value="KubernetesCluster" />
      <ref role="3dVrbW" node="71ZUOKlbCNC" resolve="ContainerPlatform" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNE" role="3dVskk">
      <property role="TrG5h" value="google_container_cluster" />
      <ref role="3dVrbW" node="71ZUOKlbCND" resolve="KubernetesCluster" />
      <node concept="3dVrbJ" id="71ZUOKlbCNF" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="var.name" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNG" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="var.region" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNH" role="3dVrc3">
        <property role="3dVrbM" value="enable_autopilot" />
        <property role="3dVrbN" value="true" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNI" role="3dVskk">
      <property role="TrG5h" value="SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNA" resolve="BaseType" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNJ" role="3dVskk">
      <property role="TrG5h" value="DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNK" role="3dVskk">
      <property role="TrG5h" value="redis-DatabaseSystem" />
      <ref role="3dVrbW" node="71ZUOKlbCNJ" resolve="DatabaseSystem" />
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNL" role="3dVskk">
      <property role="TrG5h" value="adservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCNM" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNN" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9555" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNO" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9555:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNP" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="9555" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNQ" role="3dVskk">
      <property role="TrG5h" value="cartservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCNR" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNS" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7070" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNT" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7070:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNU" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="redis-cart:6379" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCNV" role="3dVskk">
      <property role="TrG5h" value="checkoutservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCNW" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNX" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5050" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNY" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5050:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCNZ" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO0" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO1" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="shippingservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO2" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO3" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="emailservice:5000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO4" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="currencyservice:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO5" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCO6" role="3dVskk">
      <property role="TrG5h" value="currencyservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCO7" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO8" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7000" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO9" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7000:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOa" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOb" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOc" role="3dVskk">
      <property role="TrG5h" value="emailservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOd" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOe" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOf" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="5000:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOg" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOh" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOi" role="3dVskk">
      <property role="TrG5h" value="frontend-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOj" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOk" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOl" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOm" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOn" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOo" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="currencyservice:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOp" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOq" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="recommendationservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOr" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="shippingservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOs" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOt" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOu" role="3dVrc3">
        <property role="3dVrbM" value="SHOPPING_ASSISTANT_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="shoppingassistantservice:80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOv" role="3dVrc3">
        <property role="3dVrbM" value="ENABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="0" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOw" role="3dVskk">
      <property role="TrG5h" value="loadgenerator-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOx" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOy" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="frontend:80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOz" role="3dVrc3">
        <property role="3dVrbM" value="USERS" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCO$" role="3dVrc3">
        <property role="3dVrbM" value="RATE" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCO_" role="3dVskk">
      <property role="TrG5h" value="paymentservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOA" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOB" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOC" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOD" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOE" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOF" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOG" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOH" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3550" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOI" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3550:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOJ" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOK" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOL" role="3dVskk">
      <property role="TrG5h" value="recommendationservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOM" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCON" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOO" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOP" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOQ" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOR" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVrbV" id="71ZUOKlbCOS" role="3dVskk">
      <property role="TrG5h" value="shippingservice-SoftwareApplication" />
      <ref role="3dVrbW" node="71ZUOKlbCNI" resolve="SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCOT" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOU" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051" />
        <property role="3dVrbO" value="1sN103qRkEr/INTEGER" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOV" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOW" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCOX" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="1" />
      </node>
    </node>
    <node concept="3dVskn" id="71ZUOKlbCOY" role="3dVskk">
      <property role="TrG5h" value="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKlbCOZ" role="3dVskk">
      <property role="TrG5h" value="HostedOn" />
      <ref role="3dVskp" node="71ZUOKlbCOY" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKlbCP0" role="3dVskk">
      <property role="TrG5h" value="ConnectsTo" />
      <ref role="3dVskp" node="71ZUOKlbCOY" resolve="DependsOn" />
    </node>
    <node concept="3dVskn" id="71ZUOKlbCP1" role="3dVskk">
      <property role="TrG5h" value="AttachesTo" />
      <ref role="3dVskp" node="71ZUOKlbCOY" resolve="DependsOn" />
      <node concept="3dVrbJ" id="71ZUOKlbCP2" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbP" value="true" />
        <property role="3dVrbN" value="" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCP3" role="3dVskk">
      <property role="TrG5h" value="GoogleCloud" />
      <ref role="3dVskh" node="71ZUOKlbCNB" resolve="CloudProvider" />
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCP4" role="3dVskk">
      <property role="TrG5h" value="my_cluster" />
      <ref role="3dVskh" node="71ZUOKlbCNE" resolve="google_container_cluster" />
      <node concept="3dVrbJ" id="71ZUOKlbCP5" role="3dVrc3">
        <property role="3dVrbM" value="name" />
        <property role="3dVrbN" value="var.name" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCP6" role="3dVrc3">
        <property role="3dVrbM" value="location" />
        <property role="3dVrbN" value="var.region" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCP7" role="3dVrc3">
        <property role="3dVrbM" value="enable_autopilot" />
        <property role="3dVrbN" value="true" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCP8" role="3dVskk">
      <property role="TrG5h" value="adservice" />
      <ref role="3dVskh" node="71ZUOKlbCNL" resolve="adservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCP9" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPa" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPb" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="9555:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPc" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="9555" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCPd" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/adservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/adservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCPe" role="3dVskk">
      <property role="TrG5h" value="cartservice" />
      <ref role="3dVskh" node="71ZUOKlbCNQ" resolve="cartservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCPf" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPg" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPh" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="7070:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPi" role="3dVrc3">
        <property role="3dVrbM" value="REDIS_ADDR" />
        <property role="3dVrbN" value="redis-cart:6379" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCPj" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/cartservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/cartservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCPk" role="3dVskk">
      <property role="TrG5h" value="redis-cart" />
      <ref role="3dVskh" node="71ZUOKlbCNK" resolve="redis-DatabaseSystem" />
      <node concept="3dVrbJ" id="71ZUOKlbCPl" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPm" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="6379" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPn" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_tcp-redis" />
        <property role="3dVrbN" value="6379:6379" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCPo" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="redis:alpine" />
        <property role="3dV$SQ" value="https://hub.docker.com/_/redis" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCPp" role="3dVskk">
      <property role="TrG5h" value="checkoutservice" />
      <ref role="3dVskh" node="71ZUOKlbCNV" resolve="checkoutservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCPq" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPr" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPs" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="5050:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPt" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPu" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPv" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPw" role="3dVrc3">
        <property role="3dVrbM" value="PAYMENT_SERVICE_ADDR" />
        <property role="3dVrbN" value="paymentservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPx" role="3dVrc3">
        <property role="3dVrbM" value="EMAIL_SERVICE_ADDR" />
        <property role="3dVrbN" value="emailservice:5000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPy" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPz" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCP$" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/checkoutservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/checkoutservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCP_" role="3dVskk">
      <property role="TrG5h" value="currencyservice" />
      <ref role="3dVskh" node="71ZUOKlbCO6" resolve="currencyservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCPA" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPB" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_grpc" />
        <property role="3dVrbN" value="7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPC" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="7000:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPD" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPE" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCPF" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/currencyservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/currencyservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCPG" role="3dVskk">
      <property role="TrG5h" value="emailservice" />
      <ref role="3dVskh" node="71ZUOKlbCOc" resolve="emailservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCPH" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPI" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPJ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="5000:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPK" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPL" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCPM" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/emailservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/emailservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCPN" role="3dVskk">
      <property role="TrG5h" value="frontend" />
      <ref role="3dVskh" node="71ZUOKlbCOi" resolve="frontend-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCPO" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPP" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPQ" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_http" />
        <property role="3dVrbN" value="80:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPR" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPS" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPT" role="3dVrc3">
        <property role="3dVrbM" value="CURRENCY_SERVICE_ADDR" />
        <property role="3dVrbN" value="currencyservice:7000" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPU" role="3dVrc3">
        <property role="3dVrbM" value="CART_SERVICE_ADDR" />
        <property role="3dVrbN" value="cartservice:7070" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPV" role="3dVrc3">
        <property role="3dVrbM" value="RECOMMENDATION_SERVICE_ADDR" />
        <property role="3dVrbN" value="recommendationservice:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPW" role="3dVrc3">
        <property role="3dVrbM" value="SHIPPING_SERVICE_ADDR" />
        <property role="3dVrbN" value="shippingservice:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPX" role="3dVrc3">
        <property role="3dVrbM" value="CHECKOUT_SERVICE_ADDR" />
        <property role="3dVrbN" value="checkoutservice:5050" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPY" role="3dVrc3">
        <property role="3dVrbM" value="AD_SERVICE_ADDR" />
        <property role="3dVrbN" value="adservice:9555" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCPZ" role="3dVrc3">
        <property role="3dVrbM" value="SHOPPING_ASSISTANT_SERVICE_ADDR" />
        <property role="3dVrbN" value="shoppingassistantservice:80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQ0" role="3dVrc3">
        <property role="3dVrbM" value="ENABLE_PROFILER" />
        <property role="3dVrbN" value="0" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQ1" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/frontend" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/frontend" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCQ2" role="3dVskk">
      <property role="TrG5h" value="loadgenerator" />
      <ref role="3dVskh" node="71ZUOKlbCOw" resolve="loadgenerator-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCQ3" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQ4" role="3dVrc3">
        <property role="3dVrbM" value="FRONTEND_ADDR" />
        <property role="3dVrbN" value="frontend:80" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQ5" role="3dVrc3">
        <property role="3dVrbM" value="USERS" />
        <property role="3dVrbN" value="10" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQ6" role="3dVrc3">
        <property role="3dVrbM" value="RATE" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQ7" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/loadgenerator" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/loadgenerator" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCQ8" role="3dVskk">
      <property role="TrG5h" value="paymentservice" />
      <ref role="3dVskh" node="71ZUOKlbCO_" resolve="paymentservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCQ9" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQa" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQb" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="50051:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQc" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQd" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQe" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/paymentservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/paymentservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCQf" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice" />
      <ref role="3dVskh" node="71ZUOKlbCOF" resolve="productcatalogservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCQg" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQh" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQi" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="3550:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQj" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQk" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQl" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/productcatalogservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/productcatalogservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCQm" role="3dVskk">
      <property role="TrG5h" value="recommendationservice" />
      <ref role="3dVskh" node="71ZUOKlbCOL" resolve="recommendationservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCQn" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQo" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQp" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="8080:8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQq" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="8080" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQr" role="3dVrc3">
        <property role="3dVrbM" value="PRODUCT_CATALOG_SERVICE_ADDR" />
        <property role="3dVrbN" value="productcatalogservice:3550" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQs" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQt" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/recommendationservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/recommendationservice" />
      </node>
    </node>
    <node concept="3dVrw6" id="71ZUOKlbCQu" role="3dVskk">
      <property role="TrG5h" value="shippingservice" />
      <ref role="3dVskh" node="71ZUOKlbCOS" resolve="shippingservice-SoftwareApplication" />
      <node concept="3dVrbJ" id="71ZUOKlbCQv" role="3dVrc3">
        <property role="3dVrbM" value="imagePullPolicy" />
        <property role="3dVrbN" value="IfNotPresent" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQw" role="3dVrc3">
        <property role="3dVrbM" value="containerPort_port" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQx" role="3dVrc3">
        <property role="3dVrbM" value="exposedPort_grpc" />
        <property role="3dVrbN" value="50051:50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQy" role="3dVrc3">
        <property role="3dVrbM" value="PORT" />
        <property role="3dVrbN" value="50051" />
      </node>
      <node concept="3dVrbJ" id="71ZUOKlbCQz" role="3dVrc3">
        <property role="3dVrbM" value="DISABLE_PROFILER" />
        <property role="3dVrbN" value="1" />
      </node>
      <node concept="3dV$SK" id="71ZUOKlbCQ$" role="3dVskg">
        <property role="3dV$SO" value="docker_image" />
        <property role="TrG5h" value="us-docker.pkg.dev/google-samples/microservices-demo/shippingservice" />
        <property role="3dV$SQ" value="https://us-docker.pkg.dev/google-samples/microservices-demo/shippingservice" />
      </node>
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQ_" role="3dVskk">
      <property role="TrG5h" value="my_cluster_HostedOn_GoogleCloud" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCP4" resolve="my_cluster" />
      <ref role="3dVsku" node="71ZUOKlbCP3" resolve="GoogleCloud" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQA" role="3dVskk">
      <property role="TrG5h" value="adservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCP8" resolve="adservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQB" role="3dVskk">
      <property role="TrG5h" value="cartservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCPe" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQC" role="3dVskk">
      <property role="TrG5h" value="cartservice_ConnectsTo_redis-cart" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPe" resolve="cartservice" />
      <ref role="3dVsku" node="71ZUOKlbCPk" resolve="redis-cart" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQD" role="3dVskk">
      <property role="TrG5h" value="redis-cart_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCPk" resolve="redis-cart" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQE" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQF" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCQf" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQG" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_shippingservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCQu" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQH" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_paymentservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCQ8" resolve="paymentservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQI" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_emailservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCPG" resolve="emailservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQJ" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_currencyservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCP_" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQK" role="3dVskk">
      <property role="TrG5h" value="checkoutservice_ConnectsTo_cartservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPp" resolve="checkoutservice" />
      <ref role="3dVsku" node="71ZUOKlbCPe" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQL" role="3dVskk">
      <property role="TrG5h" value="currencyservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCP_" resolve="currencyservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQM" role="3dVskk">
      <property role="TrG5h" value="emailservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCPG" resolve="emailservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQN" role="3dVskk">
      <property role="TrG5h" value="frontend_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQO" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCQf" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQP" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_currencyservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCP_" resolve="currencyservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQQ" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_cartservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCPe" resolve="cartservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQR" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_recommendationservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCQm" resolve="recommendationservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQS" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_shippingservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCQu" resolve="shippingservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQT" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_checkoutservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCPp" resolve="checkoutservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQU" role="3dVskk">
      <property role="TrG5h" value="frontend_ConnectsTo_adservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCPN" resolve="frontend" />
      <ref role="3dVsku" node="71ZUOKlbCP8" resolve="adservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQV" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCQ2" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQW" role="3dVskk">
      <property role="TrG5h" value="loadgenerator_ConnectsTo_frontend" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCQ2" resolve="loadgenerator" />
      <ref role="3dVsku" node="71ZUOKlbCPN" resolve="frontend" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQX" role="3dVskk">
      <property role="TrG5h" value="paymentservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCQ8" resolve="paymentservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQY" role="3dVskk">
      <property role="TrG5h" value="productcatalogservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCQf" resolve="productcatalogservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCQZ" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCQm" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCR0" role="3dVskk">
      <property role="TrG5h" value="recommendationservice_ConnectsTo_productcatalogservice" />
      <ref role="3dVsks" node="71ZUOKlbCP0" resolve="ConnectsTo" />
      <ref role="3dVskt" node="71ZUOKlbCQm" resolve="recommendationservice" />
      <ref role="3dVsku" node="71ZUOKlbCQf" resolve="productcatalogservice" />
    </node>
    <node concept="3dVskr" id="71ZUOKlbCR1" role="3dVskk">
      <property role="TrG5h" value="shippingservice_HostedOn_my_cluster" />
      <ref role="3dVsks" node="71ZUOKlbCOZ" resolve="HostedOn" />
      <ref role="3dVskt" node="71ZUOKlbCQu" resolve="shippingservice" />
      <ref role="3dVsku" node="71ZUOKlbCP4" resolve="my_cluster" />
    </node>
  </node>
</model>

