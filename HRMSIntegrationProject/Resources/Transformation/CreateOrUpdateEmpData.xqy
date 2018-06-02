xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../xsd/CreateOrUpdateEmpData.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/CreateOrUpdateEmpData";
(:: import schema at "../CreateOrUpdateEmpData_table.xsd" ::)

declare variable $EmpDataIn as element() (:: schema-element(ns1:CreateOrUpdateEmpData) ::) external;

declare function local:func($EmpDataIn as element() (:: schema-element(ns1:CreateOrUpdateEmpData) ::)) as element() (:: schema-element(ns2:EmpDataCollection) ::) {
    <ns2:EmpDataCollection>
        <ns2:EmpData>
            <ns2:empId>{fn:data($EmpDataIn/ns1:empId)}</ns2:empId>
            {
                if ($EmpDataIn/ns1:empFirstName)
                then <ns2:empFirstName>{fn:data($EmpDataIn/ns1:empFirstName)}</ns2:empFirstName>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empMiddleName)
                then <ns2:empMiddleName>{fn:data($EmpDataIn/ns1:empMiddleName)}</ns2:empMiddleName>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empLastName)
                then <ns2:empLastName>{fn:data($EmpDataIn/ns1:empLastName)}</ns2:empLastName>
                else ()
            }
            {
                if ($EmpDataIn/ns1:supervisorId)
                then <ns2:supervisorId>{fn:data($EmpDataIn/ns1:supervisorId)}</ns2:supervisorId>
                else ()
            }
            {
                if ($EmpDataIn/ns1:department)
                then <ns2:department>{fn:data($EmpDataIn/ns1:department)}</ns2:department>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empCurrentLoc)
                then <ns2:empCurrentLoc>{fn:data($EmpDataIn/ns1:empCurrentLoc)}</ns2:empCurrentLoc>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empWorkLoc)
                then <ns2:empWorkLoc>{fn:data($EmpDataIn/ns1:empWorkLoc)}</ns2:empWorkLoc>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empDoj)
                then <ns2:empDoj>{fn:data($EmpDataIn/ns1:empDoj)}</ns2:empDoj>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empTotalExp)
                then <ns2:empTotalExp>{fn:data($EmpDataIn/ns1:empTotalExp)}</ns2:empTotalExp>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empType)
                then <ns2:empType>{fn:data($EmpDataIn/ns1:empType)}</ns2:empType>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empQualification)
                then <ns2:empQualification>{fn:data($EmpDataIn/ns1:empQualification)}</ns2:empQualification>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empDesignation)
                then <ns2:empDesignation>{fn:data($EmpDataIn/ns1:empDesignation)}</ns2:empDesignation>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empPhMobile)
                then <ns2:empPhMobile>{fn:data($EmpDataIn/ns1:empPhMobile)}</ns2:empPhMobile>
                else ()
            }
            {
                if ($EmpDataIn/ns1:gender)
                then <ns2:gender>{fn:data($EmpDataIn/ns1:gender)}</ns2:gender>
                else ()
            }
            {
                if ($EmpDataIn/ns1:createDate)
                then <ns2:createDate>{fn:data($EmpDataIn/ns1:createDate)}</ns2:createDate>
                else ()
            }
            {
                if ($EmpDataIn/ns1:createdBy)
                then <ns2:createdBy>{fn:data($EmpDataIn/ns1:createdBy)}</ns2:createdBy>
                else ()
            }
            {
                if ($EmpDataIn/ns1:modifiedDate)
                then <ns2:modifiedDate>{fn:data($EmpDataIn/ns1:modifiedDate)}</ns2:modifiedDate>
                else ()
            }
            {
                if ($EmpDataIn/ns1:modifiedBy)
                then <ns2:modifiedBy>{fn:data($EmpDataIn/ns1:modifiedBy)}</ns2:modifiedBy>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empEmail)
                then <ns2:empEmail>{fn:data($EmpDataIn/ns1:empEmail)}</ns2:empEmail>
                else ()
            }
            {
                if ($EmpDataIn/ns1:internalRate)
                then <ns2:internalRate>{fn:data($EmpDataIn/ns1:internalRate)}</ns2:internalRate>
                else ()
            }
            {
                if ($EmpDataIn/ns1:onshoreOffshore)
                then <ns2:onshoreOffshore>{fn:data($EmpDataIn/ns1:onshoreOffshore)}</ns2:onshoreOffshore>
                else ()
            }
            {
                if ($EmpDataIn/ns1:terminationDate)
                then <ns2:terminationDate>{fn:data($EmpDataIn/ns1:terminationDate)}</ns2:terminationDate>
                else ()
            }
            {
                if ($EmpDataIn/ns1:targetHrsWeek)
                then <ns2:targetHrsWeek>{fn:data($EmpDataIn/ns1:targetHrsWeek)}</ns2:targetHrsWeek>
                else ()
            }
            {
                if ($EmpDataIn/ns1:hrStatus)
                then <ns2:hrStatus>{fn:data($EmpDataIn/ns1:hrStatus)}</ns2:hrStatus>
                else ()
            }
            {
                if ($EmpDataIn/ns1:legalEntity)
                then <ns2:legalEntity>{fn:data($EmpDataIn/ns1:legalEntity)}</ns2:legalEntity>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empDob)
                then <ns2:empDob>{fn:data($EmpDataIn/ns1:empDob)}</ns2:empDob>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empPan)
                then <ns2:empPan>{fn:data($EmpDataIn/ns1:empPan)}</ns2:empPan>
                else ()
            }
            {
                if ($EmpDataIn/ns1:maritalStatus)
                then <ns2:maritalStatus>{fn:data($EmpDataIn/ns1:maritalStatus)}</ns2:maritalStatus>
                else ()
            }
            {
                if ($EmpDataIn/ns1:massLoadStatus)
                then <ns2:massLoadStatus>{fn:data($EmpDataIn/ns1:massLoadStatus)}</ns2:massLoadStatus>
                else ()
            }
            {
                if ($EmpDataIn/ns1:remunerateStatus)
                then <ns2:remunerateStatus>{fn:data($EmpDataIn/ns1:remunerateStatus)}</ns2:remunerateStatus>
                else ()
            }
            {
                if ($EmpDataIn/ns1:locationCountry)
                then <ns2:locationCountry>{fn:data($EmpDataIn/ns1:locationCountry)}</ns2:locationCountry>
                else ()
            }
            {
                if ($EmpDataIn/ns1:indEmpFlag)
                then <ns2:indEmpFlag>{fn:data($EmpDataIn/ns1:indEmpFlag)}</ns2:indEmpFlag>
                else ()
            }
            {
                if ($EmpDataIn/ns1:payrollStatus)
                then <ns2:payrollStatus>{fn:data($EmpDataIn/ns1:payrollStatus)}</ns2:payrollStatus>
                else ()
            }
            {
                if ($EmpDataIn/ns1:regRegion)
                then <ns2:regRegion>{fn:data($EmpDataIn/ns1:regRegion)}</ns2:regRegion>
                else ()
            }
            {
                if ($EmpDataIn/ns1:businessUnit)
                then <ns2:businessUnit>{fn:data($EmpDataIn/ns1:businessUnit)}</ns2:businessUnit>
                else ()
            }
            {
                if ($EmpDataIn/ns1:deptid)
                then <ns2:deptid>{fn:data($EmpDataIn/ns1:deptid)}</ns2:deptid>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empPhBusiness)
                then <ns2:empPhBusiness>{fn:data($EmpDataIn/ns1:empPhBusiness)}</ns2:empPhBusiness>
                else ()
            }
            {
                if ($EmpDataIn/ns1:empPhOfficial)
                then <ns2:empPhOfficial>{fn:data($EmpDataIn/ns1:empPhOfficial)}</ns2:empPhOfficial>
                else ()
            }</ns2:EmpData></ns2:EmpDataCollection>
};

local:func($EmpDataIn)