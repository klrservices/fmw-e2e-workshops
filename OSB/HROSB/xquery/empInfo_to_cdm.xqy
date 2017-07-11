xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace cdm="http://acme.com/xsd";
(:: import schema at "../xsd/CDM.xsd" ::)
declare namespace db="http://xmlns.oracle.com/pcbpel/adapter/db/EmployeeInfo";
(:: import schema at "../Resources/EmployeeInfo.xsd" ::)

declare variable $empInfo as element() (:: schema-element(db:EmployeeInfoOutputCollection) ::) external;

declare function local:func($empInfo as element() (:: schema-element(db:EmployeeInfoOutputCollection) ::)) as element() (:: schema-element(cdm:employee) ::) {
    <cdm:employee>
        <cdm:employeeId>{fn:data($empInfo/db:EmployeeInfoOutput/db:employee_id)}</cdm:employeeId>
        <cdm:firstName>{fn:data($empInfo/db:EmployeeInfoOutput/db:first_name)}</cdm:firstName>
        <cdm:lastName>{fn:data($empInfo/db:EmployeeInfoOutput/db:last_name)}</cdm:lastName>
        <cdm:jobId>{fn:data($empInfo/db:EmployeeInfoOutput/db:job_id)}</cdm:jobId>
        <cdm:salary>{fn:data($empInfo/db:EmployeeInfoOutput/db:SALARY)}</cdm:salary>
    </cdm:employee>
};

local:func($empInfo)
