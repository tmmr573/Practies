xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../xsd/AuditLogRequest.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/OSBDBLogServiceBS";
(:: import schema at "../OSBDBLogServiceBS_table.xsd" ::)

declare variable $DBAuditLog as element() (:: schema-element(ns1:DBAuditLogData) ::) external;

declare function local:func($DBAuditLog as element() (:: schema-element(ns1:DBAuditLogData) ::)) as element() (:: schema-element(ns2:OsbservicedblogsCollection) ::) {
    <ns2:OsbservicedblogsCollection>
        <ns2:Osbservicedblogs>
            <ns2:integrationservicename>mohan</ns2:integrationservicename>
            <ns2:integrationcomponent>{fn:data($DBAuditLog/integrationComponent)}</ns2:integrationcomponent>
            <ns2:integrationcomponentdetail>{fn:data($DBAuditLog/integrationComponentDetail)}</ns2:integrationcomponentdetail>
            <ns2:managedservername>{fn:data($DBAuditLog/managedServerName)}</ns2:managedservername>
            <ns2:loggingtype>AUDIT</ns2:loggingtype>
            <ns2:sourcerequest>{fn:data($DBAuditLog/sourcerequest)}</ns2:sourcerequest>
            <ns2:targetrequest>{fn:data($DBAuditLog/targetrequest)}</ns2:targetrequest>
            <ns2:targetsystem>{fn:data($DBAuditLog/targetSystem)}</ns2:targetsystem>
            <ns2:sourcesystem>{fn:data($DBAuditLog/sourceSystem)}</ns2:sourcesystem>
            <ns2:uniqueid>098765</ns2:uniqueid>
            <ns2:errordatetime>{fn:data($DBAuditLog/dateTime)}</ns2:errordatetime></ns2:Osbservicedblogs>
    </ns2:OsbservicedblogsCollection>
};

local:func($DBAuditLog)