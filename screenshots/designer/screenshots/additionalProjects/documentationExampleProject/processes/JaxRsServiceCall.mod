[Ivy]
159FF3D428E42BB5 9.4.3 #module
>Proto >Proto Collection #zClass
Jl0 JaxRsServiceCall Big #zClass
Jl0 B #cInfo
Jl0 #process
Jl0 @TextInP .colors .colors #zField
Jl0 @TextInP color color #zField
Jl0 @TextInP .type .type #zField
Jl0 @TextInP .processKind .processKind #zField
Jl0 @AnnotationInP-0n ai ai #zField
Jl0 @MessageFlowInP-0n messageIn messageIn #zField
Jl0 @MessageFlowOutP-0n messageOut messageOut #zField
Jl0 @TextInP .xml .xml #zField
Jl0 @TextInP .responsibility .responsibility #zField
Jl0 @StartRequest f0 '' #zField
Jl0 @EndTask f1 '' #zField
Jl0 @RestClientCall f46 '' #zField
Jl0 @PushWFArc f3 '' #zField
Jl0 @PushWFArc f2 '' #zField
Jl0 @StartRequest f38 '' #zField
Jl0 @EndTask f37 '' #zField
Jl0 @RestClientCall f39 '' #zField
Jl0 @PushWFArc f41 '' #zField
Jl0 @PushWFArc f40 '' #zField
Jl0 @StartRequest f5 '' #zField
Jl0 @EndTask f6 '' #zField
Jl0 @RestClientCall f14 '' #zField
Jl0 @PushWFArc f7 '' #zField
Jl0 @PushWFArc f8 '' #zField
Jl0 @EndTask f4 '' #zField
Jl0 @RestClientCall f9 '' #zField
Jl0 @StartRequest f10 '' #zField
Jl0 @PushWFArc f11 '' #zField
Jl0 @PushWFArc f12 '' #zField
Jl0 @StartRequest f13 '' #zField
Jl0 @EndTask f15 '' #zField
Jl0 @RestClientCall f16 '' #zField
Jl0 @PushWFArc f17 '' #zField
Jl0 @PushWFArc f18 '' #zField
Jl0 @StartRequest f19 '' #zField
Jl0 @EndTask f20 '' #zField
Jl0 @RestClientCall f21 '' #zField
Jl0 @PushWFArc f22 '' #zField
Jl0 @PushWFArc f23 '' #zField
Jl0 @StartRequest f24 '' #zField
Jl0 @RestClientCall f25 '' #zField
Jl0 @EndTask f26 '' #zField
Jl0 @PushWFArc f27 '' #zField
Jl0 @PushWFArc f28 '' #zField
Jl0 @RestClientCall f29 '' #zField
Jl0 @StartRequest f30 '' #zField
Jl0 @EndTask f31 '' #zField
Jl0 @PushWFArc f32 '' #zField
Jl0 @PushWFArc f33 '' #zField
Jl0 @RestClientCall f44 '' #zField
Jl0 @EndTask f45 '' #zField
Jl0 @StartRequest f47 '' #zField
Jl0 @PushWFArc f48 '' #zField
Jl0 @PushWFArc f49 '' #zField
>Proto Jl0 Jl0 JaxRsServiceCall #zField
Jl0 f0 outLink axonTimeline.ivp #txt
Jl0 f0 inParamDecl '<> param;' #txt
Jl0 f0 requestEnabled true #txt
Jl0 f0 triggerEnabled false #txt
Jl0 f0 callSignature axonTimeline() #txt
Jl0 f0 persist false #txt
Jl0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f0 caseData businessCase.attach=true #txt
Jl0 f0 showInStartList true #txt
Jl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>axonTimeline.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f0 @C|.responsibility Everybody #txt
Jl0 f0 81 49 30 30 -51 17 #rect
Jl0 f1 337 49 30 30 0 15 #rect
Jl0 f46 clientId d6b7615f-1087-483d-9dbe-9b704bbe7f02 #txt
Jl0 f46 path statuses/user_timeline.json #txt
Jl0 f46 queryParams 'screen_name="AxonIvy";
' #txt
Jl0 f46 templateParams 'api.version="1.1";
' #txt
Jl0 f46 headers 'Accept=application/json;
' #txt
Jl0 f46 method GET #txt
Jl0 f46 clientCode 'import com.fasterxml.jackson.databind.JsonNode;

JsonNode node = client
	.path("statuses/user_timeline.json")
	.request().get(JsonNode.class) as JsonNode;
in.name = node.get("user").asText();' #txt
Jl0 f46 resultType com.fasterxml.jackson.databind.JsonNode #txt
Jl0 f46 responseMapping 'out.name=result.get("user").asText();;
' #txt
Jl0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call twitter</name>
    </language>
</elementInfo>
' #txt
Jl0 f46 167 42 112 44 -33 -7 #rect
Jl0 f3 expr out #txt
Jl0 f3 111 64 167 64 #arcP
Jl0 f2 279 64 337 64 #arcP
Jl0 f38 outLink addDocument.ivp #txt
Jl0 f38 inParamDecl '<String name> param;' #txt
Jl0 f38 requestEnabled true #txt
Jl0 f38 triggerEnabled false #txt
Jl0 f38 callSignature addDocument(String) #txt
Jl0 f38 persist false #txt
Jl0 f38 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f38 caseData businessCase.attach=true #txt
Jl0 f38 showInStartList true #txt
Jl0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addDocument.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f38 @C|.responsibility Everybody #txt
Jl0 f38 82 141 30 30 -54 17 #rect
Jl0 f37 339 141 30 30 0 15 #rect
Jl0 f39 clientId a320a922-175c-43c0-adc6-b6694ecae306 #txt
Jl0 f39 path document #txt
Jl0 f39 method POST #txt
Jl0 f39 clientCode 'out.name = client.request().get().readEntity(String.class) as String;' #txt
Jl0 f39 bodyInputType RAW #txt
Jl0 f39 bodyRaw '{
	"id" : 42,
	"firstname" : "<%=in.name%>"
}' #txt
Jl0 f39 bodyForm 'title="I need a new car";
description="really, I''m sick of my old Fiat Punto";
' #txt
Jl0 f39 bodyObjectType ch.ivyteam.test.Person #txt
Jl0 f39 bodyObjectMapping 'param=in.person;
' #txt
Jl0 f39 resultType java.util.List<java.lang.Integer> #txt
Jl0 f39 responseMapping 'out.documentId=result.get(0).toNumber();
' #txt
Jl0 f39 responseCode 'if (response.hasLink("/"+out.documentId)){
	ivy.log.info(response.getLink("/"+out.documentId).getUri());
}' #txt
Jl0 f39 clientErrorCode ivy:error:rest:client #txt
Jl0 f39 statusErrorCode ivy:error:rest:client #txt
Jl0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update
document name</name>
    </language>
</elementInfo>
' #txt
Jl0 f39 162 134 128 44 -45 -15 #rect
Jl0 f41 290 156 339 156 #arcP
Jl0 f40 expr out #txt
Jl0 f40 112 156 162 156 #arcP
Jl0 f5 outLink approve.ivp #txt
Jl0 f5 inParamDecl '<> param;' #txt
Jl0 f5 requestEnabled true #txt
Jl0 f5 triggerEnabled false #txt
Jl0 f5 callSignature approve() #txt
Jl0 f5 persist false #txt
Jl0 f5 startName '3. Calls a BPM process from REST service' #txt
Jl0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f5 caseData businessCase.attach=false #txt
Jl0 f5 showInStartList true #txt
Jl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createApproval
viaREST.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f5 @C|.responsibility Everybody #txt
Jl0 f5 78 225 30 30 -40 17 #rect
Jl0 f6 334 225 30 30 0 15 #rect
Jl0 f14 clientId e61c6d1f-106e-46ea-8327-fe18e4c1d912 #txt
Jl0 f14 method JAX_RS #txt
Jl0 f14 clientCode 'import javax.ws.rs.client.Entity;
import com.fasterxml.jackson.databind.JsonNode;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;

MultivaluedMap map = new MultivaluedHashMap();
map.add("title","I need a new car");
map.add("description", "really, I''m sick of my old Fiat Punto");
map.add("cost", in.price.toString());

JsonNode result = client.request()
	.put(Entity.form(map))
	.readEntity(JsonNode.class) as JsonNode;
	
ivy.log.info(result);' #txt
Jl0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create
JAX-RS approval</name>
    </language>
</elementInfo>
' #txt
Jl0 f14 157 218 128 44 -44 -15 #rect
Jl0 f7 expr out #txt
Jl0 f7 108 240 157 240 #arcP
Jl0 f8 285 240 334 240 #arcP
Jl0 f4 334 312 30 30 0 15 #rect
Jl0 f9 clientId e61c6d1f-106e-46ea-8327-fe18e4c1d912 #txt
Jl0 f9 method PUT #txt
Jl0 f9 bodyInputType FORM #txt
Jl0 f9 bodyForm 'title="I need a new car";
description="really, I''m sick of my old Fiat Punto";
' #txt
Jl0 f9 resultType com.fasterxml.jackson.databind.JsonNode #txt
Jl0 f9 responseCode ivy.log.info(result); #txt
Jl0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>form approval</name>
    </language>
</elementInfo>
' #txt
Jl0 f9 165 305 112 44 -43 -7 #rect
Jl0 f10 outLink formInput.ivp #txt
Jl0 f10 inParamDecl '<> param;' #txt
Jl0 f10 requestEnabled true #txt
Jl0 f10 triggerEnabled false #txt
Jl0 f10 callSignature formInput() #txt
Jl0 f10 persist false #txt
Jl0 f10 startName '3. Calls a BPM process from REST service' #txt
Jl0 f10 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f10 caseData businessCase.attach=false #txt
Jl0 f10 showInStartList true #txt
Jl0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>formInput.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f10 @C|.responsibility Everybody #txt
Jl0 f10 78 312 30 30 -40 17 #rect
Jl0 f11 277 327 334 327 #arcP
Jl0 f12 expr out #txt
Jl0 f12 108 327 165 327 #arcP
Jl0 f13 outLink entityInput.ivp #txt
Jl0 f13 inParamDecl '<> param;' #txt
Jl0 f13 requestEnabled true #txt
Jl0 f13 triggerEnabled false #txt
Jl0 f13 callSignature entityInput() #txt
Jl0 f13 persist false #txt
Jl0 f13 startName '3. Calls a BPM process from REST service' #txt
Jl0 f13 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f13 caseData businessCase.attach=false #txt
Jl0 f13 showInStartList true #txt
Jl0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>entityInput.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f13 @C|.responsibility Everybody #txt
Jl0 f13 76 391 30 30 -44 17 #rect
Jl0 f15 332 391 30 30 0 15 #rect
Jl0 f16 clientId a320a922-175c-43c0-adc6-b6694ecae306 #txt
Jl0 f16 path crm #txt
Jl0 f16 method PUT #txt
Jl0 f16 bodyInputType ENTITY #txt
Jl0 f16 bodyForm 'title="I need a new car";
description="really, I''m sick of my old Fiat Punto";
' #txt
Jl0 f16 bodyObjectType ch.ivyteam.test.Person #txt
Jl0 f16 bodyObjectMapping 'param=in.person;
' #txt
Jl0 f16 resultType com.fasterxml.jackson.databind.JsonNode #txt
Jl0 f16 responseCode ivy.log.info(result); #txt
Jl0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>entity CRM</name>
    </language>
</elementInfo>
' #txt
Jl0 f16 163 384 112 44 -32 -7 #rect
Jl0 f17 275 406 332 406 #arcP
Jl0 f18 expr out #txt
Jl0 f18 106 406 163 406 #arcP
Jl0 f19 outLink dynamicProperties.ivp #txt
Jl0 f19 inParamDecl '<> param;' #txt
Jl0 f19 requestEnabled true #txt
Jl0 f19 triggerEnabled false #txt
Jl0 f19 callSignature dynamicProperties() #txt
Jl0 f19 persist false #txt
Jl0 f19 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f19 caseData businessCase.attach=true #txt
Jl0 f19 showInStartList true #txt
Jl0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>dynamicProperties.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f19 @C|.responsibility Everybody #txt
Jl0 f19 81 465 30 30 -68 17 #rect
Jl0 f20 337 465 30 30 0 15 #rect
Jl0 f21 clientId a320a922-175c-43c0-adc6-b6694ecae306 #txt
Jl0 f21 path document #txt
Jl0 f21 properties 'username=in.person.name;
password=in.generatedPassword;
' #txt
Jl0 f21 method HEAD #txt
Jl0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check NEW docs</name>
    </language>
</elementInfo>
' #txt
Jl0 f21 168 458 112 44 -52 -7 #rect
Jl0 f22 expr out #txt
Jl0 f22 111 480 168 480 #arcP
Jl0 f23 280 480 337 480 #arcP
Jl0 f24 outLink readRobots.ivp #txt
Jl0 f24 inParamDecl '<> param;' #txt
Jl0 f24 requestEnabled true #txt
Jl0 f24 triggerEnabled false #txt
Jl0 f24 callSignature readRobots() #txt
Jl0 f24 caseData businessCase.attach=true #txt
Jl0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readRobots.ivp</name>
        <desc>read with OPENAPI</desc>
    </language>
</elementInfo>
' #txt
Jl0 f24 @C|.responsibility Everybody #txt
Jl0 f24 465 49 30 30 -39 17 #rect
Jl0 f25 clientId dd8023aa-c07a-456b-8b00-192a4ce9684f #txt
Jl0 f25 path /odata/Robots #txt
Jl0 f25 queryParams '$$expand=;
$$filter="Type eq ''UNATTENDED''";
$$select=;
$$orderby=;
$$top=;
$$skip=;
$$count=;
' #txt
Jl0 f25 resultType com.uipath.orchestrator.client.ODataValueOfIEnumerableOfRobotDto #txt
Jl0 f25 responseMapping 'out.robots=result.value;
' #txt
Jl0 f25 clientErrorCode ivy:error:rest:client #txt
Jl0 f25 statusErrorCode ivy:error:rest:client #txt
Jl0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: get robots</name>
    </language>
</elementInfo>
' #txt
Jl0 f25 552 42 112 44 -49 -7 #rect
Jl0 f26 721 49 30 30 16 0 #rect
Jl0 f27 495 64 552 64 #arcP
Jl0 f28 664 64 721 64 #arcP
Jl0 f29 clientId dd8023aa-c07a-456b-8b00-192a4ce9684f #txt
Jl0 f29 path /odata/Jobs/UiPath.Server.Configuration.OData.StartJobs #txt
Jl0 f29 queryParams '$$expand=;
$$filter=;
$$select=;
$$orderby=;
$$count=;
' #txt
Jl0 f29 method POST #txt
Jl0 f29 bodyInputType ENTITY #txt
Jl0 f29 bodyObjectType com.uipath.orchestrator.client.JobsStartJobsParameters #txt
Jl0 f29 bodyObjectMapping 'param.startInfo.inputArguments=in.name;
param.startInfo.robotIds=[in.robots.get(0).getId()];
' #txt
Jl0 f29 resultType com.uipath.orchestrator.client.ODataValueOfIEnumerableOfJobDto #txt
Jl0 f29 clientErrorCode ivy:error:rest:client #txt
Jl0 f29 statusErrorCode ivy:error:rest:client #txt
Jl0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: start job</name>
    </language>
</elementInfo>
' #txt
Jl0 f29 552 138 112 44 -42 -7 #rect
Jl0 f30 outLink runJob.ivp #txt
Jl0 f30 inParamDecl '<> param;' #txt
Jl0 f30 requestEnabled true #txt
Jl0 f30 triggerEnabled false #txt
Jl0 f30 callSignature runJob() #txt
Jl0 f30 caseData businessCase.attach=true #txt
Jl0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>runJob.ivp</name>
        <desc>POST payload bean</desc>
    </language>
</elementInfo>
' #txt
Jl0 f30 @C|.responsibility Everybody #txt
Jl0 f30 465 145 30 30 -39 17 #rect
Jl0 f31 721 145 30 30 16 0 #rect
Jl0 f32 664 160 721 160 #arcP
Jl0 f33 495 160 552 160 #arcP
Jl0 f44 clientId dd8023aa-c07a-456b-8b00-192a4ce9684f #txt
Jl0 f44 path /api/RobotsService/UploadScreenshot #txt
Jl0 f44 queryParams '$$expand=;
$$filter=;
$$select=;
$$orderby=;
$$count=;
' #txt
Jl0 f44 method POST #txt
Jl0 f44 bodyInputType FORM #txt
Jl0 f44 bodyMediaType multipart/form-data #txt
Jl0 f44 bodyForm 'file=new java.io.File("/tmp/screen.png");
robotKey=in.name;
jobKey=in.documentId.toString();
' #txt
Jl0 f44 bodyObjectType com.uipath.orchestrator.client.Body #txt
Jl0 f44 bodyObjectMapping 'param.startInfo.inputArguments=in.name;
param.startInfo.robotIds=[in.robots.get(0).getId()];
' #txt
Jl0 f44 clientErrorCode ivy:error:rest:client #txt
Jl0 f44 statusErrorCode ivy:error:rest:client #txt
Jl0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RPA: screenshot</name>
        <desc>mulitpart file upload</desc>
    </language>
</elementInfo>
' #txt
Jl0 f44 552 234 112 44 -51 -7 #rect
Jl0 f45 721 241 30 30 16 0 #rect
Jl0 f47 outLink monitor.ivp #txt
Jl0 f47 inParamDecl '<> param;' #txt
Jl0 f47 requestEnabled true #txt
Jl0 f47 triggerEnabled false #txt
Jl0 f47 callSignature monitor() #txt
Jl0 f47 caseData businessCase.attach=true #txt
Jl0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>monitor.ivp</name>
    </language>
</elementInfo>
' #txt
Jl0 f47 @C|.responsibility Everybody #txt
Jl0 f47 465 241 30 30 -39 17 #rect
Jl0 f48 664 256 721 256 #arcP
Jl0 f49 495 256 552 256 #arcP
>Proto Jl0 .type com.axonivy.JaxRsServiceCallData #txt
>Proto Jl0 .processKind NORMAL #txt
>Proto Jl0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>classic REST</swimlaneLabel>
        <swimlaneLabel>open API</swimlaneLabel>
    </language>
    <swimlaneOrientation>true</swimlaneOrientation>
    <swimlaneSize>416</swimlaneSize>
    <swimlaneSize>384</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Jl0 0 0 32 24 18 0 #rect
>Proto Jl0 @|BIcon #fIcon
Jl0 f0 mainOut f3 tail #connect
Jl0 f3 head f46 mainIn #connect
Jl0 f46 mainOut f2 tail #connect
Jl0 f2 head f1 mainIn #connect
Jl0 f39 mainOut f41 tail #connect
Jl0 f41 head f37 mainIn #connect
Jl0 f38 mainOut f40 tail #connect
Jl0 f40 head f39 mainIn #connect
Jl0 f5 mainOut f7 tail #connect
Jl0 f7 head f14 mainIn #connect
Jl0 f14 mainOut f8 tail #connect
Jl0 f8 head f6 mainIn #connect
Jl0 f10 mainOut f12 tail #connect
Jl0 f12 head f9 mainIn #connect
Jl0 f9 mainOut f11 tail #connect
Jl0 f11 head f4 mainIn #connect
Jl0 f13 mainOut f18 tail #connect
Jl0 f18 head f16 mainIn #connect
Jl0 f16 mainOut f17 tail #connect
Jl0 f17 head f15 mainIn #connect
Jl0 f19 mainOut f22 tail #connect
Jl0 f22 head f21 mainIn #connect
Jl0 f21 mainOut f23 tail #connect
Jl0 f23 head f20 mainIn #connect
Jl0 f24 mainOut f27 tail #connect
Jl0 f27 head f25 mainIn #connect
Jl0 f25 mainOut f28 tail #connect
Jl0 f28 head f26 mainIn #connect
Jl0 f30 mainOut f33 tail #connect
Jl0 f33 head f29 mainIn #connect
Jl0 f29 mainOut f32 tail #connect
Jl0 f32 head f31 mainIn #connect
Jl0 f47 mainOut f49 tail #connect
Jl0 f49 head f44 mainIn #connect
Jl0 f44 mainOut f48 tail #connect
Jl0 f48 head f45 mainIn #connect
