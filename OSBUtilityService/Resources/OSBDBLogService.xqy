xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "OSBDBLogServiceLPS.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/OSBDBLogServiceBS";
(:: import schema at "OSBDBLogServiceBS_table.xsd" ::)

declare variable $osbdbin as element() (:: schema-element(ns1:Osbservicedblogs) ::) external;

declare function local:func($osbdbin as element() (:: schema-element(ns1:Osbservicedblogs) ::)) as element() (:: schema-element(ns2:OsbservicedblogsCollection) ::) {
    <ns2:OsbservicedblogsCollection>
        <ns2:Osbservicedblogs>
            <ns2:integrationservicename>{fn:data($osbdbin/integrationservicename)}</ns2:integrationservicename>
            {
                if ($osbdbin/integrationcomponent)
                then <ns2:integrationcomponent>{fn:data($osbdbin/integrationcomponent)}</ns2:integrationcomponent>
                else ()
            }
            {
                if ($osbdbin/integrationcomponentdetail)
                then <ns2:integrationcomponentdetail>{fn:data($osbdbin/integrationcomponentdetail)}</ns2:integrationcomponentdetail>
                else ()
            }
            {
                if ($osbdbin/managedservername)
                then <ns2:managedservername>{fn:data($osbdbin/managedservername)}</ns2:managedservername>
                else ()
            }
            {
                if ($osbdbin/loggingtype)
                then <ns2:loggingtype>{fn:data($osbdbin/loggingtype)}</ns2:loggingtype>
                else ()
            }
            {
                if ($osbdbin/sourcerequest)
                then <ns2:sourcerequest>{fn:data($osbdbin/sourcerequest)}</ns2:sourcerequest>
                else ()
                
            }
            {
                if ($osbdbin/targetrequest)
                then <ns2:targetrequest>{fn:data($osbdbin/targetrequest)}</ns2:targetrequest>
                else ()
            }
            {
                if ($osbdbin/faultmessage)
                then <ns2:faultmessage>{fn:data($osbdbin/faultmessage)}</ns2:faultmessage>
                else ()
            }
            {
                if ($osbdbin/errortype)
                then <ns2:errortype>{fn:data($osbdbin/errortype)}</ns2:errortype>
                else ()
            }
            {
                if ($osbdbin/targetsystem)
                then <ns2:targetsystem>{fn:data($osbdbin/targetsystem)}</ns2:targetsystem>
                else ()
            }
            {
                if ($osbdbin/sourcesystem)
                then <ns2:sourcesystem>{fn:data($osbdbin/sourcesystem)}</ns2:sourcesystem>
                else ()
            }
            {
                if ($osbdbin/stacktrace)
                then <ns2:stacktrace>{fn:data($osbdbin/stacktrace)}</ns2:stacktrace>
                else ()
            }
            {
                if ($osbdbin/uniqueid)
                then <ns2:uniqueid>{fn:data($osbdbin/uniqueid)}</ns2:uniqueid>
                else ()
            }
            {
                if ($osbdbin/errordatetime)
                then <ns2:errordatetime>{fn:data($osbdbin/errordatetime)}</ns2:errordatetime>
                else ()
            }
            {
                if ($osbdbin/soainstance)
                then <ns2:soainstance>{fn:data($osbdbin/soainstance)}</ns2:soainstance>
                else ()
            }
            {
                if ($osbdbin/updated)
                then <ns2:updated>{fn:data($osbdbin/updated)}</ns2:updated>
                else ()
            }
        </ns2:Osbservicedblogs>
    </ns2:OsbservicedblogsCollection>
};

local:func($osbdbin)