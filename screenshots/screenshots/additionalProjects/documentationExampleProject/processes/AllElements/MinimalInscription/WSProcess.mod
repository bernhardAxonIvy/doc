[Ivy]
169A4A3BFDC7DFFE 7.5.0 #module
>Proto >Proto Collection #zClass
We0 WSProcess Big #zClass
We0 WS #cInfo
We0 #process
We0 @TextInP .webServiceName .webServiceName #zField
We0 @TextInP .implementationClassName .implementationClassName #zField
We0 @TextInP .authenticationType .authenticationType #zField
We0 @TextInP .type .type #zField
We0 @TextInP .processKind .processKind #zField
We0 @AnnotationInP-0n ai ai #zField
We0 @MessageFlowInP-0n messageIn messageIn #zField
We0 @MessageFlowOutP-0n messageOut messageOut #zField
We0 @TextInP .xml .xml #zField
We0 @TextInP .responsibility .responsibility #zField
We0 @StartWS ws0 '' #zField
We0 @EndWS ws1 '' #zField
We0 @PushWFArc f0 '' #zField
>Proto We0 We0 WSProcess #zField
We0 ws0 inParamDecl '<> param;' #txt
We0 ws0 outParamDecl '<> result;' #txt
We0 ws0 actionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
We0 ws0 callSignature call() #txt
We0 ws0 useUserDefinedException false #txt
We0 ws0 type ch.ivyteam.documentation.project.Data #txt
We0 ws0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
    </language>
</elementInfo>
' #txt
We0 ws0 81 49 30 30 0 15 #rect
We0 ws0 @|StartWSIcon #fIcon
We0 ws1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Ws Process End</name>
    </language>
</elementInfo>
' #txt
We0 ws1 337 49 30 30 0 15 #rect
We0 ws1 @|EndWSIcon #fIcon
We0 f0 expr out #txt
We0 f0 111 64 337 64 #arcP
>Proto We0 .webServiceName ch.ivyteam.test.WebService #txt
>Proto We0 .authenticationType 'None or Container' #txt
>Proto We0 .type ch.ivyteam.documentation.project.Data #txt
>Proto We0 .processKind WEB_SERVICE #txt
>Proto We0 -8 -8 16 16 16 26 #rect
>Proto We0 '' #fIcon
We0 ws0 mainOut f0 tail #connect
We0 f0 head ws1 mainIn #connect
