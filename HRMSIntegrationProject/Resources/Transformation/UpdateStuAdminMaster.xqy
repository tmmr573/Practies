xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../xsd/CreateOrUpdateStuAdminMaster.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/CreateOrUpdateStAdminMasterBS";
(:: import schema at "../CreateOrUpdateStAdminMasterBS_table.xsd" ::)

declare variable $UpdateStuMaster as element() (:: schema-element(ns1:CreateOrUpdateStuAdminMaster) ::) external;

declare function local:func($UpdateStuMaster as element() (:: schema-element(ns1:CreateOrUpdateStuAdminMaster) ::)) as element() (:: schema-element(ns2:StudentsAdmissionMasterCollection) ::) {
    <ns2:StudentsAdmissionMasterCollection>
        <ns2:StudentsAdmissionMaster>
            <ns2:studentid>{fn:data($UpdateStuMaster/ns1:studentid)}</ns2:studentid>
            {
                if ($UpdateStuMaster/ns1:studentname)
                then <ns2:studentname>{fn:data($UpdateStuMaster/ns1:studentname)}</ns2:studentname>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentjoiningclass)
                then <ns2:studentjoiningclass>{fn:data($UpdateStuMaster/ns1:studentjoiningclass)}</ns2:studentjoiningclass>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentadmissiondate)
                then <ns2:studentadmissiondate>{fn:data($UpdateStuMaster/ns1:studentadmissiondate)}</ns2:studentadmissiondate>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentadmisionno)
                then <ns2:studentadmisionno>{fn:data($UpdateStuMaster/ns1:studentadmisionno)}</ns2:studentadmisionno>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentaadhaarno)
                then <ns2:studentaadhaarno>{fn:data($UpdateStuMaster/ns1:studentaadhaarno)}</ns2:studentaadhaarno>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentcellno)
                then <ns2:studentcellno>{fn:data($UpdateStuMaster/ns1:studentcellno)}</ns2:studentcellno>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentstatus)
                then <ns2:studentstatus>{fn:data($UpdateStuMaster/ns1:studentstatus)}</ns2:studentstatus>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentphoto)
                then <ns2:studentphoto>{fn:data($UpdateStuMaster/ns1:studentphoto)}</ns2:studentphoto>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:studentjoiningacademicyear)
                then <ns2:studentjoiningacademicyear>{fn:data($UpdateStuMaster/ns1:studentjoiningacademicyear)}</ns2:studentjoiningacademicyear>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:teacherid)
                then <ns2:teacherid>{fn:data($UpdateStuMaster/ns1:teacherid)}</ns2:teacherid>
                else ()
            }
            {
                if ($UpdateStuMaster/ns1:readflag)
                then <ns2:readflag>{fn:data($UpdateStuMaster/ns1:readflag)}</ns2:readflag>
                else ()
            }</ns2:StudentsAdmissionMaster>
    </ns2:StudentsAdmissionMasterCollection>
};

local:func($UpdateStuMaster)
