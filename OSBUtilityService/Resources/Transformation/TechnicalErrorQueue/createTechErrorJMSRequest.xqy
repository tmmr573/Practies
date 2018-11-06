xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.oracle.com/schemas/common/errorRequest";
(:: import schema at "../../../xsd/TechnicalErrorQueue/Errored-JmsRequestMessage.xsd" ::)

declare variable $service_name as xs:string external;
declare variable $operation_name as xs:string external;
declare variable $isProxy as xs:boolean external;
declare variable $message as element(*) external;

declare function local:func($service_name as xs:string, 
                            $operation_name as xs:string, 
                            $isProxy as xs:boolean, 
                            $message as element(*)) 
                            as element() (:: schema-element(ns1:errorRequest) ::) 
{
    <ns1:errorRequest>
     <ns1:service_name>{ $service_name }</ns1:service_name>
     <ns1:operation_name>{ $operation_name }</ns1:operation_name>
     <ns1:IsProxy>{ $isProxy }</ns1:IsProxy>
     <ns1:request_message>{ fn-bea:serialize($message) }</ns1:request_message>
   </ns1:errorRequest>
};

local:func($service_name, $operation_name, $isProxy, $message)
