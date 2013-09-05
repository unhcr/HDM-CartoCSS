<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.9.0-Master" minimumScale="-4.65661e-10" maximumScale="1e+08" minLabelScale="1" maxLabelScale="1e+08" hasScaleBasedVisibilityFlag="0" scaleBasedLabelVisibilityFlag="0">
  <renderer-v2 symbollevels="0" type="RuleRenderer">
    <rules>
      <rule scalemaxdenom="30000" filter=" &quot;highway&quot;  IN ( 'tertiary','secondary')" symbol="0" label="Main Road"/>
      <rule scalemaxdenom="30000" filter=" &quot;highway&quot;  IN ('residential')" symbol="1" label="Road"/>
      <rule scalemaxdenom="50000" filter=" &quot;highway&quot;  IN ('service', 'road', 'unclassified', 'track')" symbol="2" scalemindenom="1000" label="Small Road"/>
      <rule scalemaxdenom="50000" filter="&quot;highway&quot; IN ('footway', 'path')" symbol="3" scalemindenom="1000" label="Paths"/>
      <rule scalemaxdenom="200000" filter=" &quot;aeroway&quot; = 'runway'" symbol="4" label="Airport Runway"/>
    </rules>
    <symbols>
      <symbol alpha="1" type="line" name="0">
        <layer pass="4" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="color" v="143,143,143,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="1.7"/>
          <prop k="width_unit" v="MM"/>
        </layer>
        <layer pass="5" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="color" v="255,251,137,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="1.5"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="1">
        <layer pass="1" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="color" v="143,143,143,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="1.3"/>
          <prop k="width_unit" v="MM"/>
        </layer>
        <layer pass="2" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="1"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="2">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="209,209,209,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.4"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
      <symbol alpha="0.486275" type="line" name="3">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="132,158,126,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="dash"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.26"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="4">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="color" v="200,200,200,255"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="2"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferDraw" value="true"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="0.25"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="CASE WHEN ( &quot;highway&quot; = 'motorway') THEN  &quot;ref&quot; ELSE &quot;name&quot; END"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="Sans Serif"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="8"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="2000"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="1"/>
    <property key="labeling/multilineAlign" value="0"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="3"/>
    <property key="labeling/placementFlags" value="9"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="5"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="10000000"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="false"/>
    <property key="labeling/shadowBlendMode" value="6"/>
    <property key="labeling/shadowColorB" value="0"/>
    <property key="labeling/shadowColorG" value="0"/>
    <property key="labeling/shadowColorR" value="0"/>
    <property key="labeling/shadowDraw" value="false"/>
    <property key="labeling/shadowOffsetAngle" value="135"/>
    <property key="labeling/shadowOffsetDist" value="1"/>
    <property key="labeling/shadowOffsetGlobal" value="true"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusUnits" value="1"/>
    <property key="labeling/shadowScale" value="100"/>
    <property key="labeling/shadowTransparency" value="30"/>
    <property key="labeling/shadowUnder" value="0"/>
    <property key="labeling/shapeBlendMode" value="0"/>
    <property key="labeling/shapeBorderColorA" value="255"/>
    <property key="labeling/shapeBorderColorB" value="128"/>
    <property key="labeling/shapeBorderColorG" value="128"/>
    <property key="labeling/shapeBorderColorR" value="128"/>
    <property key="labeling/shapeBorderWidth" value="0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="false"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="64"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0"/>
    <property key="labeling/shapeSizeY" value="0"/>
    <property key="labeling/shapeTransparency" value="0"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="20"/>
    <property key="labeling/textColorG" value="20"/>
    <property key="labeling/textColorR" value="20"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>name</displayfield>
  <label>0</label>
  <labelfield>ref</labelfield>
  <labelattributes>
    <label fieldname="ref" text=""/>
    <family fieldname="" name="MS Shell Dlg 2"/>
    <size fieldname="" units="pt" value="8"/>
    <bold fieldname="" on="1"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="255" blue="255" green="255"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="4.25" y="4.5" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="34" blue="34" green="34"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on="1"/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <edittypes>
    <edittype labelontop="0" editable="1" type="0" name="NOTE"/>
    <edittype labelontop="0" editable="1" type="0" name="abandoned"/>
    <edittype labelontop="0" editable="1" type="0" name="access"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:flats"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:housename"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:housenumber"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:interpolation"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:postcode"/>
    <edittype labelontop="0" editable="1" type="0" name="addr:street"/>
    <edittype labelontop="0" editable="1" type="0" name="admin_level"/>
    <edittype labelontop="0" editable="1" type="0" name="aerialway"/>
    <edittype labelontop="0" editable="1" type="0" name="aerodrome:type"/>
    <edittype labelontop="0" editable="1" type="0" name="aeroway"/>
    <edittype labelontop="0" editable="1" type="0" name="agricultural"/>
    <edittype labelontop="0" editable="1" type="0" name="alt_name"/>
    <edittype labelontop="0" editable="1" type="0" name="amenity"/>
    <edittype labelontop="0" editable="1" type="0" name="area"/>
    <edittype labelontop="0" editable="1" type="0" name="barrier"/>
    <edittype labelontop="0" editable="1" type="0" name="barrier:obstacle_type"/>
    <edittype labelontop="0" editable="1" type="0" name="bicycle"/>
    <edittype labelontop="0" editable="1" type="0" name="bicycle_parking"/>
    <edittype labelontop="0" editable="1" type="0" name="boundary"/>
    <edittype labelontop="0" editable="1" type="0" name="brand"/>
    <edittype labelontop="0" editable="1" type="0" name="bridge"/>
    <edittype labelontop="0" editable="1" type="0" name="building"/>
    <edittype labelontop="0" editable="1" type="0" name="building:levels"/>
    <edittype labelontop="0" editable="1" type="0" name="cables"/>
    <edittype labelontop="0" editable="1" type="0" name="canal_type"/>
    <edittype labelontop="0" editable="1" type="0" name="capacity"/>
    <edittype labelontop="0" editable="1" type="0" name="capacity:beds"/>
    <edittype labelontop="0" editable="1" type="0" name="capacity:disabled"/>
    <edittype labelontop="0" editable="1" type="0" name="capacity:parent"/>
    <edittype labelontop="0" editable="1" type="0" name="capacity:women"/>
    <edittype labelontop="0" editable="1" type="0" name="clothes"/>
    <edittype labelontop="0" editable="1" type="0" name="condition"/>
    <edittype labelontop="0" editable="1" type="0" name="construction"/>
    <edittype labelontop="0" editable="1" type="0" name="content"/>
    <edittype labelontop="0" editable="1" type="0" name="content:source"/>
    <edittype labelontop="0" editable="1" type="0" name="country"/>
    <edittype labelontop="0" editable="1" type="0" name="covered"/>
    <edittype labelontop="0" editable="1" type="0" name="craft"/>
    <edittype labelontop="0" editable="1" type="0" name="culvert"/>
    <edittype labelontop="0" editable="1" type="0" name="cutting"/>
    <edittype labelontop="0" editable="1" type="0" name="damage-type"/>
    <edittype labelontop="0" editable="1" type="0" name="damage_prone"/>
    <edittype labelontop="0" editable="1" type="0" name="denomination"/>
    <edittype labelontop="0" editable="1" type="0" name="depth"/>
    <edittype labelontop="0" editable="1" type="0" name="direction"/>
    <edittype labelontop="0" editable="1" type="0" name="dispensing"/>
    <edittype labelontop="0" editable="1" type="0" name="disused"/>
    <edittype labelontop="0" editable="1" type="0" name="drinking_water"/>
    <edittype labelontop="0" editable="1" type="0" name="email"/>
    <edittype labelontop="0" editable="1" type="0" name="embankment"/>
    <edittype labelontop="0" editable="1" type="0" name="emergency"/>
    <edittype labelontop="0" editable="1" type="0" name="entrance"/>
    <edittype labelontop="0" editable="1" type="0" name="fax"/>
    <edittype labelontop="0" editable="1" type="0" name="fee"/>
    <edittype labelontop="0" editable="1" type="0" name="female"/>
    <edittype labelontop="0" editable="1" type="0" name="fire_hydrant:type"/>
    <edittype labelontop="0" editable="1" type="0" name="foot"/>
    <edittype labelontop="0" editable="1" type="0" name="ford"/>
    <edittype labelontop="0" editable="1" type="0" name="function"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:method"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:battery_charging"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:cold_air"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:cold_water"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:compressed_air"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:electricity"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:hot_air"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:hot_water"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:steam"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:output:vacuum"/>
    <edittype labelontop="0" editable="1" type="0" name="generator:source"/>
    <edittype labelontop="0" editable="1" type="0" name="goods"/>
    <edittype labelontop="0" editable="1" type="0" name="harbour"/>
    <edittype labelontop="0" editable="1" type="0" name="hazard_prone"/>
    <edittype labelontop="0" editable="1" type="0" name="hazard_type"/>
    <edittype labelontop="0" editable="1" type="0" name="health_facility:type"/>
    <edittype labelontop="0" editable="1" type="0" name="healthcare:cholera"/>
    <edittype labelontop="0" editable="1" type="0" name="height"/>
    <edittype labelontop="0" editable="1" type="0" name="hgv"/>
    <edittype labelontop="0" editable="1" type="0" name="highway"/>
    <edittype labelontop="0" editable="1" type="0" name="historic"/>
    <edittype labelontop="0" editable="1" type="0" name="horse"/>
    <edittype labelontop="0" editable="1" type="0" name="hov"/>
    <edittype labelontop="0" editable="1" type="0" name="id:db_ctc"/>
    <edittype labelontop="0" editable="1" type="0" name="information"/>
    <edittype labelontop="0" editable="1" type="0" name="intermittent"/>
    <edittype labelontop="0" editable="1" type="0" name="internet_access"/>
    <edittype labelontop="0" editable="1" type="0" name="junction"/>
    <edittype labelontop="0" editable="1" type="0" name="landuse"/>
    <edittype labelontop="0" editable="1" type="0" name="lawyer"/>
    <edittype labelontop="0" editable="1" type="0" name="layer"/>
    <edittype labelontop="0" editable="1" type="0" name="learning"/>
    <edittype labelontop="0" editable="1" type="0" name="leisure"/>
    <edittype labelontop="0" editable="1" type="0" name="lit"/>
    <edittype labelontop="0" editable="1" type="0" name="loc_name"/>
    <edittype labelontop="0" editable="1" type="0" name="location"/>
    <edittype labelontop="0" editable="1" type="0" name="lock"/>
    <edittype labelontop="0" editable="1" type="0" name="male"/>
    <edittype labelontop="0" editable="1" type="0" name="man_made"/>
    <edittype labelontop="0" editable="1" type="0" name="material"/>
    <edittype labelontop="0" editable="1" type="0" name="maxaxleload"/>
    <edittype labelontop="0" editable="1" type="0" name="maxheight"/>
    <edittype labelontop="0" editable="1" type="0" name="maxlength"/>
    <edittype labelontop="0" editable="1" type="0" name="maxspeed"/>
    <edittype labelontop="0" editable="1" type="0" name="maxweight"/>
    <edittype labelontop="0" editable="1" type="0" name="maxwidth"/>
    <edittype labelontop="0" editable="1" type="0" name="military"/>
    <edittype labelontop="0" editable="1" type="0" name="minspeed"/>
    <edittype labelontop="0" editable="1" type="0" name="motor_vehicle"/>
    <edittype labelontop="0" editable="1" type="0" name="motorcar"/>
    <edittype labelontop="0" editable="1" type="0" name="motorcycle"/>
    <edittype labelontop="0" editable="1" type="0" name="name"/>
    <edittype labelontop="0" editable="1" type="0" name="natural"/>
    <edittype labelontop="0" editable="1" type="0" name="noexit"/>
    <edittype labelontop="0" editable="1" type="0" name="office"/>
    <edittype labelontop="0" editable="1" type="0" name="old_name"/>
    <edittype labelontop="0" editable="1" type="0" name="oneway"/>
    <edittype labelontop="0" editable="1" type="0" name="opening_hours"/>
    <edittype labelontop="0" editable="1" type="0" name="operator"/>
    <edittype labelontop="0" editable="1" type="0" name="operator:type"/>
    <edittype labelontop="0" editable="1" type="0" name="osm_id"/>
    <edittype labelontop="0" editable="1" type="0" name="osm_timestamp"/>
    <edittype labelontop="0" editable="1" type="0" name="osm_uid"/>
    <edittype labelontop="0" editable="1" type="0" name="osm_user"/>
    <edittype labelontop="0" editable="1" type="0" name="osm_version"/>
    <edittype labelontop="0" editable="1" type="0" name="park_ride"/>
    <edittype labelontop="0" editable="1" type="0" name="parking"/>
    <edittype labelontop="0" editable="1" type="0" name="parts"/>
    <edittype labelontop="0" editable="1" type="0" name="phone"/>
    <edittype labelontop="0" editable="1" type="0" name="place"/>
    <edittype labelontop="0" editable="1" type="0" name="population"/>
    <edittype labelontop="0" editable="1" type="0" name="power"/>
    <edittype labelontop="0" editable="1" type="0" name="power_source"/>
    <edittype labelontop="0" editable="1" type="0" name="practicability:4x4"/>
    <edittype labelontop="0" editable="1" type="0" name="practicability:heavy_truck"/>
    <edittype labelontop="0" editable="1" type="0" name="practicability:light_truck"/>
    <edittype labelontop="0" editable="1" type="0" name="practicability:motorcycle"/>
    <edittype labelontop="0" editable="1" type="0" name="practicability:truck+trailer"/>
    <edittype labelontop="0" editable="1" type="0" name="psv"/>
    <edittype labelontop="0" editable="1" type="0" name="public_transport"/>
    <edittype labelontop="0" editable="1" type="0" name="pump"/>
    <edittype labelontop="0" editable="1" type="0" name="railway"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:batteries"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:cans"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:clothes"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:glass"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:paper"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling:scrap_metal"/>
    <edittype labelontop="0" editable="1" type="0" name="recycling_type"/>
    <edittype labelontop="0" editable="1" type="0" name="ref"/>
    <edittype labelontop="0" editable="1" type="0" name="refugee"/>
    <edittype labelontop="0" editable="1" type="0" name="religion"/>
    <edittype labelontop="0" editable="1" type="0" name="rental"/>
    <edittype labelontop="0" editable="1" type="0" name="repair"/>
    <edittype labelontop="0" editable="1" type="0" name="residence"/>
    <edittype labelontop="0" editable="1" type="0" name="rickshaw"/>
    <edittype labelontop="0" editable="1" type="0" name="route"/>
    <edittype labelontop="0" editable="1" type="0" name="safety_inspection"/>
    <edittype labelontop="0" editable="1" type="0" name="sale"/>
    <edittype labelontop="0" editable="1" type="0" name="school:HT"/>
    <edittype labelontop="0" editable="1" type="0" name="service"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:cleaning"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:diy"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:pump"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:rental"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:repair"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:retail"/>
    <edittype labelontop="0" editable="1" type="0" name="service:bicycle:second_hand"/>
    <edittype labelontop="0" editable="1" type="0" name="services"/>
    <edittype labelontop="0" editable="1" type="0" name="shop"/>
    <edittype labelontop="0" editable="1" type="0" name="short_name"/>
    <edittype labelontop="0" editable="1" type="0" name="smoothness"/>
    <edittype labelontop="0" editable="1" type="0" name="social_facility"/>
    <edittype labelontop="0" editable="1" type="0" name="social_facility:for"/>
    <edittype labelontop="0" editable="1" type="0" name="sport"/>
    <edittype labelontop="0" editable="1" type="0" name="stars"/>
    <edittype labelontop="0" editable="1" type="0" name="stay"/>
    <edittype labelontop="0" editable="1" type="0" name="storage_tank:type"/>
    <edittype labelontop="0" editable="1" type="0" name="supervised"/>
    <edittype labelontop="0" editable="1" type="0" name="surface"/>
    <edittype labelontop="0" editable="1" type="0" name="surface_type"/>
    <edittype labelontop="0" editable="1" type="0" name="tags"/>
    <edittype labelontop="0" editable="1" type="0" name="toilets:type"/>
    <edittype labelontop="0" editable="1" type="0" name="toll"/>
    <edittype labelontop="0" editable="1" type="0" name="tourism"/>
    <edittype labelontop="0" editable="1" type="0" name="tower:type"/>
    <edittype labelontop="0" editable="1" type="0" name="tracktype"/>
    <edittype labelontop="0" editable="1" type="0" name="trade"/>
    <edittype labelontop="0" editable="1" type="0" name="traffic_calming"/>
    <edittype labelontop="0" editable="1" type="0" name="tunnel"/>
    <edittype labelontop="0" editable="1" type="0" name="type"/>
    <edittype labelontop="0" editable="1" type="0" name="unisex"/>
    <edittype labelontop="0" editable="1" type="0" name="vehicle"/>
    <edittype labelontop="0" editable="1" type="0" name="voltage"/>
    <edittype labelontop="0" editable="1" type="0" name="water"/>
    <edittype labelontop="0" editable="1" type="0" name="waterway"/>
    <edittype labelontop="0" editable="1" type="0" name="way_area"/>
    <edittype labelontop="0" editable="1" type="0" name="website"/>
    <edittype labelontop="0" editable="1" type="0" name="wetland"/>
    <edittype labelontop="0" editable="1" type="0" name="wheelchair"/>
    <edittype labelontop="0" editable="1" type="0" name="width"/>
    <edittype labelontop="0" editable="1" type="0" name="wikipedia"/>
    <edittype labelontop="0" editable="1" type="0" name="wood"/>
    <edittype labelontop="0" editable="1" type="0" name="works:description"/>
    <edittype labelontop="0" editable="1" type="0" name="works:type"/>
    <edittype labelontop="0" editable="1" type="0" name="z_order"/>
  </edittypes>
  <editform>../../Documents/Jordan/ZaatriGovernance/zaatari-osm/qgis-osm/hdm-qgis</editform>
  <editforminit></editforminit>
  <annotationform>../../Documents/Jordan/ZaatriGovernance/zaatari-osm/qgis-osm</annotationform>
  <editorlayout>generatedlayout</editorlayout>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions/>
</qgis>
