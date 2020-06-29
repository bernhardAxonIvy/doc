[Ivy]
1690A66F13A54F43 7.5.0 #module
>Proto >Proto Collection #zClass
Is0 IvyScriptProcess Big #zClass
Is0 B #cInfo
Is0 #process
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @MessageFlowInP-0n messageIn messageIn #zField
Is0 @MessageFlowOutP-0n messageOut messageOut #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @StartRequest f0 '' #zField
Is0 @EndTask f1 '' #zField
Is0 @UserTask f3 '' #zField
Is0 @TkArc f4 '' #zField
Is0 @PushWFArc f2 '' #zField
>Proto Is0 Is0 IvyScriptProcess #zField
Is0 f0 outLink start.ivp #txt
Is0 f0 inParamDecl '<> param;' #txt
Is0 f0 requestEnabled true #txt
Is0 f0 triggerEnabled false #txt
Is0 f0 callSignature start() #txt
Is0 f0 caseData businessCase.attach=true #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Is0 f0 @C|.responsibility Everybody #txt
Is0 f0 81 49 30 30 -25 17 #rect
Is0 f0 @|StartRequestIcon #fIcon
Is0 f1 337 49 30 30 0 15 #rect
Is0 f1 @|EndIcon #fIcon
Is0 f3 dialogId screenshot.project.exampleHtmlDialog #txt
Is0 f3 startMethod start(screenshot.project.Data) #txt
Is0 f3 requestActionDecl '<screenshot.project.Data data> param;' #txt
Is0 f3 responseActionDecl 'com.axonivy.CreditDossier out;
' #txt
Is0 f3 responseMappingAction 'out=in;
' #txt
Is0 f3 taskData 'TaskA.DESC=Need to notify customer about new changes.
TaskA.NAM=Notify <%\=in.customer.name%> <%\=in.customer.lastname%> 
TaskA.PRI=2
TaskA.ROL=in.needsApproval ? "Supervisor" \: "Secretary"
TaskA.TYPE=3' #txt
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Notify Customer</name>
    </language>
</elementInfo>
' #txt
Is0 f3 168 42 112 44 -49 -7 #rect
Is0 f3 @|UserTaskIcon #fIcon
Is0 f4 expr out #txt
Is0 f4 111 64 168 64 #arcP
Is0 f2 expr in #txt
Is0 f2 outCond ivp=="TaskA.ivp" #txt
Is0 f2 280 64 337 64 #arcP
>Proto Is0 .type com.axonivy.CreditDossier #txt
>Proto Is0 .processKind NORMAL #txt
>Proto Is0 0 0 32 24 18 0 #rect
>Proto Is0 @|BIcon #fIcon
Is0 f0 mainOut f4 tail #connect
Is0 f4 head f3 in #connect
Is0 f3 out f2 tail #connect
Is0 f2 head f1 mainIn #connect
