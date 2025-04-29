%dw 2.0 
import * from dw::core::Strings 
import * from dw::util::Values
type TracePoint = "REQUEST_RECEIVED" | "RESPONSE_RETURNED" | "FLOW_ENTRY" | "FLOW_COMPLETE" | "PROCESS_INFO" | "BEFORE_OUTBOUND" | "AFTER_OUTBOUND" | "BEFORE_TRANSFORM_MESSAGE" | "AFTER_TRANSFORM_MESSAGE" | "ERROR"  
fun log(env: String, priority: String, tracePoint: TracePoint,component: String, correlationId: String) = 
{ 
	"priority": priority, 
	"timeStamp": now(), 
	"correlationId": correlationId, 
	"environment": env, 
	"component": component, 
	"tracePoint": tracePoint   
} 

fun log(env: String, priority: String, tracePoint: TracePoint,component: String, correlationId: String, content: Any | Null) = 
{ 
	"priority": priority, 
	"timeStamp": now(), 
	"correlationId": correlationId, 
	"environment": env, 
	"component": component, 
	"tracePoint": tracePoint, 
	"content": content 
}