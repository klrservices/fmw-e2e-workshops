xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace cdm="http://acme.com/xsd";
(:: import schema at "../xsd/CDM.xsd" ::)
declare namespace db="http://xmlns.oracle.com/pcbpel/adapter/db/top/HRDB";
(:: import schema at "../Resources/HRDB_table.xsd" ::)

declare variable $salaryChange as element() (:: schema-element(cdm:salaryChange) ::) external;

declare function local:func($salaryChange as element() (:: schema-element(cdm:salaryChange) ::)) as element() (:: schema-element(db:EmployeesCollection) ::) {
    <db:EmployeesCollection>
        <db:Employees>
            <db:employeeId>{fn:data($salaryChange/cdm:empld)}</db:employeeId>
            <db:salary>{fn:data($salaryChange/cdm:newSalary)}</db:salary>
        </db:Employees>
    </db:EmployeesCollection>
};

local:func($salaryChange)
