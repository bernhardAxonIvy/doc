[Ivy]
1567F0BE1CC43932 9.4.7 #module
>Proto >Proto Collection #zClass
rs0 runtimeLogProcess Big #zClass
rs0 B #cInfo
rs0 #process
rs0 @TextInP .colors .colors #zField
rs0 @TextInP color color #zField
rs0 @TextInP .type .type #zField
rs0 @TextInP .processKind .processKind #zField
rs0 @AnnotationInP-0n ai ai #zField
rs0 @MessageFlowInP-0n messageIn messageIn #zField
rs0 @MessageFlowOutP-0n messageOut messageOut #zField
rs0 @TextInP .xml .xml #zField
rs0 @TextInP .responsibility .responsibility #zField
rs0 @StartRequest f0 '' #zField
rs0 @EndTask f1 '' #zField
rs0 @GridStep f3 '' #zField
rs0 @PushWFArc f4 '' #zField
rs0 @PushWFArc f2 '' #zField
>Proto rs0 rs0 runtimeLogProcess #zField
rs0 f0 outLink start.ivp #txt
rs0 f0 inParamDecl '<> param;' #txt
rs0 f0 requestEnabled true #txt
rs0 f0 triggerEnabled false #txt
rs0 f0 callSignature start() #txt
rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
rs0 f0 @C|.responsibility Everybody #txt
rs0 f0 81 49 30 30 -21 17 #rect
rs0 f1 337 49 30 30 0 15 #rect
rs0 f3 actionTable 'out=in;
' #txt
rs0 f3 actionCode 'ivy.log.error("This is an error");
ivy.log.debug("This is a debug message");
ivy.log.fatal("This is a fatal message");
ivy.log.warn("This is a warning");
ivy.log.info("This is an info message");
ivy.log.error("This is an error");
ivy.log.debug("This is a debug message");
ivy.log.warn("This is a warning");
ivy.log.info("This is an info message");' #txt
rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivyLog</name>
    </language>
</elementInfo>
' #txt
rs0 f3 168 42 112 44 -17 -8 #rect
rs0 f4 expr out #txt
rs0 f4 111 64 168 64 #arcP
rs0 f2 expr out #txt
rs0 f2 280 64 337 64 #arcP
>Proto rs0 .type screenshot.project.Data #txt
>Proto rs0 .processKind NORMAL #txt
>Proto rs0 0 0 32 24 18 0 #rect
>Proto rs0 @|BIcon #fIcon
rs0 f0 mainOut f4 tail #connect
rs0 f4 head f3 mainIn #connect
rs0 f3 mainOut f2 tail #connect
rs0 f2 head f1 mainIn #connect
