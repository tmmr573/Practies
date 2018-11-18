xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../xsd/UpdateStuAdmissionInfo.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/SelectOrUpdateStudentAdmissionInfoBS";
(:: import schema at "../SelectOrUpdateStudentAdmissionInfoBS_table.xsd" ::)

declare variable $UpdateStuInfo as element() (:: schema-element(ns1:StudentsAdmissionInfo) ::) external;

declare function local:func($UpdateStuInfo as element() (:: schema-element(ns1:StudentsAdmissionInfo) ::)) as element() (:: schema-element(ns2:StudentsAdmissionInfoCollection) ::) {
    <ns2:StudentsAdmissionInfoCollection>
        <ns2:StudentsAdmissionInfo>
            <ns2:studentid>{fn:data($UpdateStuInfo/ns1:studentid)}</ns2:studentid>
        <ns2:studentadmisionno>{fn:data($UpdateStuInfo/ns1:studentadmisionno)}</ns2:studentadmisionno>
        <ns2:sAdmissionDate>{fn:data($UpdateStuInfo/ns1:sAdmissionDate)}</ns2:sAdmissionDate>
        <ns2:sAadharNo>{fn:data($UpdateStuInfo/ns1:sAadharNo)}</ns2:sAadharNo>
        <ns2:sSuarName>{fn:data($UpdateStuInfo/ns1:sSuarName)}</ns2:sSuarName>
        <ns2:sFullName>{fn:data($UpdateStuInfo/ns1:sFullName)}</ns2:sFullName>
        <ns2:sDob>{fn:data($UpdateStuInfo/ns1:sDob)}</ns2:sDob>
        <ns2:sStudingClass>{fn:data($UpdateStuInfo/ns1:sStudingClass)}</ns2:sStudingClass>
        <ns2:sPreviousStudingClass>{fn:data($UpdateStuInfo/ns1:sPreviousStudingClass)}</ns2:sPreviousStudingClass>
        <ns2:sMedium>{fn:data($UpdateStuInfo/ns1:sMedium)}</ns2:sMedium>
        <ns2:sTcNo>{fn:data($UpdateStuInfo/ns1:sTcNo)}</ns2:sTcNo>
        <ns2:studentstatus>{fn:data($UpdateStuInfo/ns1:studentstatus)}</ns2:studentstatus>
        <ns2:sFSuarName>{fn:data($UpdateStuInfo/ns1:sFSuarName)}</ns2:sFSuarName>
        <ns2:sFFullName>{fn:data($UpdateStuInfo/ns1:sFFullName)}</ns2:sFFullName>
        <ns2:sMSuarName>{fn:data($UpdateStuInfo/ns1:sMSuarName)}</ns2:sMSuarName>
        <ns2:sMFullName>{fn:data($UpdateStuInfo/ns1:sMFullName)}</ns2:sMFullName>
        <ns2:sAddress>{fn:data($UpdateStuInfo/ns1:sAddress)}</ns2:sAddress>
        <ns2:sPhoneNo>{fn:data($UpdateStuInfo/ns1:sPhoneNo)}</ns2:sPhoneNo>
        <ns2:sPhoto>{fn:data($UpdateStuInfo/ns1:sPhoto)}</ns2:sPhoto>
        <ns2:sGender>{fn:data($UpdateStuInfo/ns1:sGender)}</ns2:sGender>
        <ns2:sCaste>{fn:data($UpdateStuInfo/ns1:sCaste)}</ns2:sCaste>
        <ns2:sReligion>{fn:data($UpdateStuInfo/ns1:sReligion)}</ns2:sReligion>
        <ns2:schoolCode>{fn:data($UpdateStuInfo/ns1:schoolCode)}</ns2:schoolCode>
        <ns2:teacherid>{fn:data($UpdateStuInfo/ns1:teacherid)}</ns2:teacherid>
        <ns2:studentFingerprint>{fn:data($UpdateStuInfo/ns1:studentFingerprint)}</ns2:studentFingerprint></ns2:StudentsAdmissionInfo>
    </ns2:StudentsAdmissionInfoCollection>
};

local:func($UpdateStuInfo)
