<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:ns0="http://acme.com/xsd" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/StoreSalaryChange" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../xsd/CDM.xsd"/>
            <oracle-xsl-mapper:rootElement name="salaryChange" namespace="http://acme.com/xsd"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/StoreSalaryChange_table.xsd"/>
            <oracle-xsl-mapper:rootElement name="SalaryChangesCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/StoreSalaryChange"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON JUL 10 16:34:56 CEST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:SalaryChangesCollection>
         <tns:SalaryChanges>
            <tns:employeeId>
               <xsl:value-of select="/ns0:salaryChange/ns0:empld"/>
            </tns:employeeId>
            <tns:oldSalary>0</tns:oldSalary>
            <tns:newSalary>
               <xsl:value-of select="/ns0:salaryChange/ns0:newSalary"/>
            </tns:newSalary>
            <tns:changeStamp>
               <xsl:value-of select="xp20:current-dateTime ( )"/>
            </tns:changeStamp>
            <tns:changeStatus>INITIATED</tns:changeStatus>
         </tns:SalaryChanges>
      </tns:SalaryChangesCollection>
   </xsl:template>
</xsl:stylesheet>
