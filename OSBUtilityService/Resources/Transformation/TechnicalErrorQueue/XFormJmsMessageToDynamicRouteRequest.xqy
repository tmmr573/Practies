xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.bea.com/wli/sb/context";
(:: import schema at "../../xsd/TechnicalErrorQueue/DynamicRouteRequest.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/schemas/common/errorRequest";
(:: import schema at "../../xsd/TechnicalErrorQueue/Errored-JmsRequestMessage.xsd" ::)

declare variable $JMSReq as element() (:: schema-element(ns1:errorRequest) ::) external;

declare function local:func($JMSReq as element() (:: schema-element(ns1:errorRequest) ::)) as element() (:: schema-element(ns2:route) ::) 
{
    <ns2:route>
	<ns2:service isProxy = "{ data($JMSReq/ns1:IsProxy) }">{ data($JMSReq/ns1:service_name) }</ns2:service>

	<ns2:operation>
        {
            if ($JMSReq/ns1:operation_name/text() != '') then
                (data($JMSReq/ns1:operation_name))
            else 
                ()
        }
	</ns2:operation>
        
</ns2:route>
};

local:func($JMSReq)
