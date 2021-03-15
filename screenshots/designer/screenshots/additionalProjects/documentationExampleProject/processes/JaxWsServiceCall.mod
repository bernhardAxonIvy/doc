[Ivy]
160DF556A2226E66 9.2.0 #module
>Proto >Proto Collection #zClass
Jl0 JaxWsServiceCall Big #zClass
Jl0 B #cInfo
Jl0 #process
Jl0 @TextInP .type .type #zField
Jl0 @TextInP .processKind .processKind #zField
Jl0 @AnnotationInP-0n ai ai #zField
Jl0 @MessageFlowInP-0n messageIn messageIn #zField
Jl0 @MessageFlowOutP-0n messageOut messageOut #zField
Jl0 @TextInP .xml .xml #zField
Jl0 @TextInP .responsibility .responsibility #zField
Jl0 @StartRequest f0 '' #zField
Jl0 @EndTask f1 '' #zField
Jl0 @WSElement f3 '' #zField
Jl0 @PushWFArc f4 '' #zField
Jl0 @PushWFArc f2 '' #zField
Jl0 @EndTask f5 '' #zField
Jl0 @WSElement f6 '' #zField
Jl0 @StartRequest f7 '' #zField
Jl0 @PushWFArc f8 '' #zField
Jl0 @PushWFArc f9 '' #zField
>Proto Jl0 Jl0 JaxWsServiceCall #zField
Jl0 f0 outLink geoIpCached.ivp #txt
Jl0 f0 inParamDecl '<> param;' #txt
Jl0 f0 requestEnabled true #txt
Jl0 f0 triggerEnabled false #txt
Jl0 f0 callSignature geoIpCached() #txt
Jl0 f0 persist false #txt
Jl0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f0 caseData businessCase.attach=true #txt
Jl0 f0 showInStartList 1 #txt
Jl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>geoIpCache.ivp</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Jl0 f0 @C|.responsibility Everybody #txt
Jl0 f0 81 49 30 30 -47 17 #rect
Jl0 f1 337 49 30 30 0 15 #rect
Jl0 f3 actionTable 'out=in;
' #txt
Jl0 f3 cache '{/cache true /invalidation false /scope 0 /groupname "\"geoip\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"address\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
Jl0 f3 clientId 160DF5320F0D7ACD #txt
Jl0 f3 port GeoIPServiceSoap #txt
Jl0 f3 operation GetGeoIPContext #txt
Jl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get GEO IP cached</name>
    </language>
</elementInfo>
' #txt
Jl0 f3 160 42 128 44 -58 -7 #rect
Jl0 f4 expr out #txt
Jl0 f4 111 64 160 64 #arcP
Jl0 f2 expr out #txt
Jl0 f2 288 64 337 64 #arcP
Jl0 f5 339 152 30 30 0 15 #rect
Jl0 f6 actionTable 'out=in;
out.user.country=wsResponse.countryCode;
' #txt
Jl0 f6 actionCode ivy.log.info(wsResponse.returnCode); #txt
Jl0 f6 cache '{/cache false /invalidation false /scope 0 /groupname "\"geoip\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"address\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
Jl0 f6 clientId 160DF5320F0D7ACD #txt
Jl0 f6 port GeoIPServiceSoap #txt
Jl0 f6 operation GetGeoIP #txt
Jl0 f6 inputParams 'parameters.iPAddress="172.217.19.163";
' #txt
Jl0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get GEO IP</name>
    </language>
</elementInfo>
' #txt
Jl0 f6 170 145 112 44 -33 -7 #rect
Jl0 f7 outLink geoIp.ivp #txt
Jl0 f7 inParamDecl '<> param;' #txt
Jl0 f7 requestEnabled true #txt
Jl0 f7 triggerEnabled false #txt
Jl0 f7 callSignature geoIp() #txt
Jl0 f7 persist false #txt
Jl0 f7 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Jl0 f7 caseData businessCase.attach=true #txt
Jl0 f7 showInStartList 1 #txt
Jl0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>geoIp.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Jl0 f7 @C|.responsibility Everybody #txt
Jl0 f7 83 152 30 30 -28 17 #rect
Jl0 f8 expr out #txt
Jl0 f8 113 167 170 167 #arcP
Jl0 f9 expr out #txt
Jl0 f9 282 167 339 167 #arcP
>Proto Jl0 .type com.axonivy.JaxWsServiceCallData #txt
>Proto Jl0 .processKind NORMAL #txt
>Proto Jl0 0 0 32 24 18 0 #rect
>Proto Jl0 @|BIcon #fIcon
Jl0 f0 mainOut f4 tail #connect
Jl0 f4 head f3 mainIn #connect
Jl0 f3 mainOut f2 tail #connect
Jl0 f2 head f1 mainIn #connect
Jl0 f7 mainOut f8 tail #connect
Jl0 f8 head f6 mainIn #connect
Jl0 f6 mainOut f9 tail #connect
Jl0 f9 head f5 mainIn #connect
