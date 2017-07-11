xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace cdm="http://acme.com/xsd";
(:: import schema at "../xsd/CDM.xsd" ::)
declare namespace db="http://xmlns.oracle.com/pcbpel/adapter/db/EmployeeInfo";
(:: import schema at "../Resources/EmployeeInfo.xsd" ::)

declare variable $empIdentifier as element() (:: schema-element(cdm:employeeIdentifier) ::) external;

declare function local:func($empIdentifier as element() (:: schema-element(cdm:employeeIdentifier) ::)) as element() (:: schema-element(db:EmployeeInfoInput) ::) {
    <db:EmployeeInfoInput>
        <db:empId>{fn:data($empIdentifier/cdm:employeeId)}</db:empId>
    </db:EmployeeInfoInput>
};

local:func($empIdentifier)
