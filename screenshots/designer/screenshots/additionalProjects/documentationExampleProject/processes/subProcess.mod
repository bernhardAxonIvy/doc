[Ivy]
16A7DD0A1D330578 9.4.0 #module
>Proto >Proto Collection #zClass
ss0 subProcess Big #zClass
ss0 B #cInfo
ss0 #process
ss0 @TextInP .type .type #zField
ss0 @TextInP .processKind .processKind #zField
ss0 @AnnotationInP-0n ai ai #zField
ss0 @MessageFlowInP-0n messageIn messageIn #zField
ss0 @MessageFlowOutP-0n messageOut messageOut #zField
ss0 @TextInP .xml .xml #zField
ss0 @TextInP .responsibility .responsibility #zField
ss0 @StartSub f0 '' #zField
ss0 @EndSub f1 '' #zField
ss0 @PushWFArc f2 '' #zField
>Proto ss0 ss0 subProcess #zField
ss0 f0 inParamDecl '<screenshot.project.Data data,String newCity> param;' #txt
ss0 f0 inParamTable 'out.data=param.data;
' #txt
ss0 f0 inParamCode 'out.data.city = param.newCity;' #txt
ss0 f0 outParamDecl '<screenshot.project.Data data,String oldCity> result;' #txt
ss0 f0 outParamTable 'result.data=in.data;
' #txt
ss0 f0 outParamCode 'result.oldCity = ivy.task.customFields()
												.stringField("oldCity").getOrDefault("undefined");' #txt
ss0 f0 callSignature call(screenshot.project.Data,String) #txt
ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data,String)</name>
    </language>
</elementInfo>
' #txt
ss0 f0 81 49 30 30 0 15 #rect
ss0 f1 337 49 30 30 0 15 #rect
ss0 f2 111 64 337 64 #arcP
>Proto ss0 .type screenshot.project.subProcessData #txt
>Proto ss0 .processKind CALLABLE_SUB #txt
>Proto ss0 0 0 32 24 18 0 #rect
>Proto ss0 @|BIcon #fIcon
ss0 f0 mainOut f2 tail #connect
ss0 f2 head f1 mainIn #connect
