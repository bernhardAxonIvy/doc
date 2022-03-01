[Ivy]
167C7307A5664620 9.4.1 #module
>Proto >Proto Collection #zClass
es0 taskEventAndGateway Big #zClass
es0 B #cInfo
es0 #process
es0 @TextInP .colors .colors #zField
es0 @TextInP color color #zField
es0 @TextInP .type .type #zField
es0 @TextInP .processKind .processKind #zField
es0 @AnnotationInP-0n ai ai #zField
es0 @MessageFlowInP-0n messageIn messageIn #zField
es0 @MessageFlowOutP-0n messageOut messageOut #zField
es0 @TextInP .xml .xml #zField
es0 @TextInP .responsibility .responsibility #zField
es0 @StartRequest f5 '' #zField
es0 @EndTask f6 '' #zField
es0 @TaskSwitch f9 '' #zField
es0 @TkArc f7 '' #zField
es0 @PushWFArc f8 '' #zField
es0 @EndTask f0 '' #zField
es0 @StartRequest f2 '' #zField
es0 @UserTask f10 '' #zField
es0 @TkArc f1 '' #zField
es0 @TaskSwitchSimple f4 '' #zField
es0 @EndTask f11 '' #zField
es0 @StartRequest f12 '' #zField
es0 @TkArc f13 '' #zField
es0 @PushWFArc f14 '' #zField
es0 @TkArc f15 '' #zField
es0 @StartRequest f3 '' #zField
es0 @EndTask f16 '' #zField
es0 @UserTask f17 '' #zField
es0 @TkArc f18 '' #zField
es0 @PushWFArc f19 '' #zField
es0 @StartRequest f20 '' #zField
es0 @EndTask f21 '' #zField
es0 @UserTask f22 '' #zField
es0 @TkArc f23 '' #zField
es0 @PushWFArc f24 '' #zField
>Proto es0 es0 taskEventAndGateway #zField
es0 f5 outLink axonTimeline.ivp #txt
es0 f5 inParamDecl '<> param;' #txt
es0 f5 requestEnabled true #txt
es0 f5 triggerEnabled false #txt
es0 f5 callSignature axonTimeline() #txt
es0 f5 persist false #txt
es0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
es0 f5 caseData businessCase.attach=true #txt
es0 f5 showInStartList 1 #txt
es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f5 @C|.responsibility Everybody #txt
es0 f5 81 49 30 30 -24 19 #rect
es0 f6 337 49 30 30 0 15 #rect
es0 f9 actionTable 'out=in1;
' #txt
es0 f9 outLinks "TaskA.ivp" #txt
es0 f9 caseData 'case.category=Dossier/Create
case.description=Make sure all is up-to-date.
case.name=Stay updated
customFields.STRING.CustomVarCharField1="aCreDhbGFFGZ53Fg"' #txt
es0 f9 taskData 'TaskA.CATEGORY=Dossier
TaskA.DESC=We need to renew our licence.
TaskA.EXP=ivy.cal.getWorkDayIn(5).getDurationFromNow()
TaskA.EXPRI=1
TaskA.EXROL=IT-Manager
TaskA.EXTYPE=0
TaskA.NAM=Renew Licence
TaskA.PRI=2
TaskA.ROL=Secretary
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
es0 f9 template "/Layouts/1Axonivy.ivc" #txt
es0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Renew Licence</name>
    </language>
</elementInfo>
' #txt
es0 f9 208 48 32 32 -60 17 #rect
es0 f7 expr out #txt
es0 f7 type screenshot.project.Data #txt
es0 f7 var in1 #txt
es0 f7 template /Layouts/1Axonivy.ivc #txt
es0 f7 111 64 208 64 #arcP
es0 f8 expr data #txt
es0 f8 outCond ivp=="TaskA.ivp" #txt
es0 f8 240 64 337 64 #arcP
es0 f0 337 145 30 30 0 15 #rect
es0 f2 outLink axonTimeline2.ivp #txt
es0 f2 inParamDecl '<> param;' #txt
es0 f2 requestEnabled true #txt
es0 f2 triggerEnabled false #txt
es0 f2 callSignature axonTimeline2() #txt
es0 f2 persist false #txt
es0 f2 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
es0 f2 caseData businessCase.attach=true #txt
es0 f2 showInStartList 1 #txt
es0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startVerification.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f2 @C|.responsibility Everybody #txt
es0 f2 81 145 30 30 -24 19 #rect
es0 f10 dialogId com.acme.PersonEditor #txt
es0 f10 startMethod start(ch.ivyteam.test.Person) #txt
es0 f10 requestActionDecl '<ch.ivyteam.test.Person person> param;' #txt
es0 f10 requestMappingAction 'param.person.city=in.city;
' #txt
es0 f10 requestActionCode 'param.person.country = ivy.session.getContentLocale().getCountry();' #txt
es0 f10 responseActionDecl 'screenshot.project.Data out;
' #txt
es0 f10 responseMappingAction 'out=in;
' #txt
es0 f10 taskData 'TaskA.CATEGORY=Review/Procurement
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Verify Request
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
es0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
    </language>
</elementInfo>
' #txt
es0 f10 168 138 112 44 -45 -7 #rect
es0 f1 expr out #txt
es0 f1 type screenshot.project.Data #txt
es0 f1 var in1 #txt
es0 f1 111 160 168 160 #arcP
es0 f4 actionTable 'out=in1;
' #txt
es0 f4 outLinks "TaskA.ivp" #txt
es0 f4 taskData 'TaskA.CATEGORY=Implementation
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Implement Method
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
es0 f4 template "" #txt
es0 f4 209 241 30 30 0 16 #rect
es0 f11 337 241 30 30 0 15 #rect
es0 f12 outLink axonTimeline22.ivp #txt
es0 f12 inParamDecl '<> param;' #txt
es0 f12 requestEnabled true #txt
es0 f12 triggerEnabled false #txt
es0 f12 callSignature axonTimeline22() #txt
es0 f12 persist false #txt
es0 f12 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
es0 f12 caseData businessCase.attach=true #txt
es0 f12 showInStartList 1 #txt
es0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startImplementation.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f12 @C|.responsibility Everybody #txt
es0 f12 81 241 30 30 -24 19 #rect
es0 f13 expr out #txt
es0 f13 type screenshot.project.Data #txt
es0 f13 var in1 #txt
es0 f13 111 256 209 256 #arcP
es0 f14 expr data #txt
es0 f14 outCond ivp=="TaskA.ivp" #txt
es0 f14 239 256 337 256 #arcP
es0 f15 expr data #txt
es0 f15 outCond ivp=="TaskA.ivp" #txt
es0 f15 type screenshot.project.Data #txt
es0 f15 var in2 #txt
es0 f15 template /Layouts/1Axonivy.ivc #txt
es0 f15 224 138 224 80 #arcP
es0 f3 outLink start.ivp #txt
es0 f3 inParamDecl '<> param;' #txt
es0 f3 requestEnabled true #txt
es0 f3 triggerEnabled false #txt
es0 f3 callSignature start() #txt
es0 f3 persist false #txt
es0 f3 caseData businessCase.attach=true #txt
es0 f3 showInStartList 1 #txt
es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startEscalation.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f3 @C|.responsibility Everybody #txt
es0 f3 81 433 30 30 -25 17 #rect
es0 f16 337 433 30 30 0 15 #rect
es0 f17 dialogId screenshot.project.exampleHtmlDialog #txt
es0 f17 startMethod start(screenshot.project.Data) #txt
es0 f17 requestActionDecl '<screenshot.project.Data data> param;' #txt
es0 f17 responseActionDecl 'screenshot.project.Data out;
' #txt
es0 f17 responseMappingAction 'out=in;
' #txt
es0 f17 taskData 'TaskA.EXP=ivy.cal.getWorkDayIn(5).toDuration()
TaskA.EXPRI=1
TaskA.EXROL=IT-Manager
TaskA.EXTYPE=0
TaskA.SCRIPT=task.setBusinessCalendar(ivy.cal.get(in.city));
TaskA.customFields.NUMBER.leasingSum=in.get("sum").toNumber()
TaskA.customFields.STRING.carBrand=in.get("brand").toString()' #txt
es0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Escalate to manager</name>
    </language>
</elementInfo>
' #txt
es0 f17 152 426 144 44 -65 -7 #rect
es0 f18 expr out #txt
es0 f18 type screenshot.project.Data #txt
es0 f18 var in1 #txt
es0 f18 111 448 152 448 #arcP
es0 f19 expr data #txt
es0 f19 outCond ivp=="TaskA.ivp" #txt
es0 f19 296 448 337 448 #arcP
es0 f20 outLink start2.ivp #txt
es0 f20 inParamDecl '<> param;' #txt
es0 f20 requestEnabled true #txt
es0 f20 triggerEnabled false #txt
es0 f20 callSignature start2() #txt
es0 f20 persist false #txt
es0 f20 caseData businessCase.attach=true #txt
es0 f20 showInStartList 1 #txt
es0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkBudget.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f20 @C|.responsibility Everybody #txt
es0 f20 81 337 30 30 -29 17 #rect
es0 f21 337 337 30 30 0 15 #rect
es0 f22 dialogId screenshot.project.exampleHtmlDialog #txt
es0 f22 startMethod start(screenshot.project.Data) #txt
es0 f22 requestActionDecl '<screenshot.project.Data data> param;' #txt
es0 f22 responseActionDecl 'screenshot.project.Data out;
' #txt
es0 f22 responseMappingAction 'out=in;
' #txt
es0 f22 taskData TaskA.DEL=ivy.cal.getFirstWorkDayOfMonth(3).toDuration() #txt
es0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reset password</name>
    </language>
</elementInfo>
' #txt
es0 f22 168 330 112 44 -50 -7 #rect
es0 f23 expr out #txt
es0 f23 type screenshot.project.Data #txt
es0 f23 var in1 #txt
es0 f23 111 352 168 352 #arcP
es0 f24 expr data #txt
es0 f24 outCond ivp=="TaskA.ivp" #txt
es0 f24 280 352 337 352 #arcP
>Proto es0 .type screenshot.project.Data #txt
>Proto es0 .processKind NORMAL #txt
>Proto es0 0 0 32 24 18 0 #rect
>Proto es0 @|BIcon #fIcon
es0 f5 mainOut f7 tail #connect
es0 f7 head f9 in #connect
es0 f9 out f8 tail #connect
es0 f8 head f6 mainIn #connect
es0 f2 mainOut f1 tail #connect
es0 f1 head f10 in #connect
es0 f12 mainOut f13 tail #connect
es0 f13 head f4 in #connect
es0 f4 out f14 tail #connect
es0 f14 head f11 mainIn #connect
es0 f10 out f15 tail #connect
es0 f15 head f9 in #connect
es0 f3 mainOut f18 tail #connect
es0 f18 head f17 in #connect
es0 f17 out f19 tail #connect
es0 f19 head f16 mainIn #connect
es0 f20 mainOut f23 tail #connect
es0 f23 head f22 in #connect
es0 f22 out f24 tail #connect
es0 f24 head f21 mainIn #connect
