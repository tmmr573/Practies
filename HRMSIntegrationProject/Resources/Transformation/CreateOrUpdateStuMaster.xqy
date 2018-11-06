xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../xsd/CreateOrUpdateStuAdminMaster.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/CreateOrUpdateStuAdminMasterBS";
(:: import schema at "../CreateOrUpdateStuAdminMasterBS_table.xsd" ::)

declare variable $StuMst as element() (:: schema-element(ns1:CreateOrUpdateStuAdminMaster) ::) external;

declare function local:func($StuMst as element() (:: schema-element(ns1:CreateOrUpdateStuAdminMaster) ::)) as element() (:: schema-element(ns2:StudentsAdmissionMasterCollection) ::) {
    <ns2:StudentsAdmissionMasterCollection>
        <ns2:StudentsAdmissionMaster>
            <ns2:studentid>{fn:data($StuMst/ns1:studentid)}</ns2:studentid>
            {
                if ($StuMst/ns1:studentname)
                then <ns2:studentname>{fn:data($StuMst/ns1:studentname)}</ns2:studentname>
                else ()
            }
            {
                if ($StuMst/ns1:studentjoiningclass)
                then <ns2:studentjoiningclass>{fn:data($StuMst/ns1:studentjoiningclass)}</ns2:studentjoiningclass>
                else ()
            }
            {
                if ($StuMst/ns1:studentadmissiondate)
                then <ns2:studentadmissiondate>{fn:data($StuMst/ns1:studentadmissiondate)}</ns2:studentadmissiondate>
                else ()
            }
            {
                if ($StuMst/ns1:studentadmisionno)
                then <ns2:studentadmisionno>{fn:data($StuMst/ns1:studentadmisionno)}</ns2:studentadmisionno>
                else ()
            }
            {
                if ($StuMst/ns1:studentaadhaarno)
                then <ns2:studentaadhaarno>{fn:data($StuMst/ns1:studentaadhaarno)}</ns2:studentaadhaarno>
                else ()
            }
            {
                if ($StuMst/ns1:studentcellno)
                then <ns2:studentcellno>{fn:data($StuMst/ns1:studentcellno)}</ns2:studentcellno>
                else ()
            }
            {
                if ($StuMst/ns1:studentstatus)
                then <ns2:studentstatus>{fn:data($StuMst/ns1:studentstatus)}</ns2:studentstatus>
                else ()
            }
            {
                if ($StuMst/ns1:studentphoto)
                then <ns2:studentphoto>{fn:data($StuMst/ns1:studentphoto)}</ns2:studentphoto>
                else ()
            }
            {
                if ($StuMst/ns1:studentjoiningacademicyear)
                then <ns2:studentjoiningacademicyear>{fn:data($StuMst/ns1:studentjoiningacademicyear)}</ns2:studentjoiningacademicyear>
                else ()
            }
            {
                if ($StuMst/ns1:teacherid)
                then <ns2:teacherid>{fn:data($StuMst/ns1:teacherid)}</ns2:teacherid>
                else ()
            }
            {
                if ($StuMst/ns1:readflag)
                then <ns2:readflag>{fn:data($StuMst/ns1:readflag)}</ns2:readflag>
                else ()
            }
            <ns2:loadTs></ns2:loadTs>
           
            </ns2:StudentsAdmissionMaster>
    </ns2:StudentsAdmissionMasterCollection>
};

local:func($StuMst)