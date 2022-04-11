[Ivy]
1562D1CBAC49CCF8 9.4.6 #module
>Proto >Proto Collection #zClass
es0 exampleProcess Big #zClass
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
es0 @StartRequest f0 '' #zField
es0 @EndTask f1 '' #zField
es0 @UserDialog f3 '' #zField
es0 @PushWFArc f4 '' #zField
es0 @PushWFArc f2 '' #zField
>Proto es0 es0 exampleProcess #zField
es0 f0 outLink start.ivp #txt
es0 f0 inParamDecl '<String city> param;' #txt
es0 f0 actionCode 'ivy.log.debug("City added: " + param.city);' #txt
es0 f0 requestEnabled true #txt
es0 f0 triggerEnabled false #txt
es0 f0 callSignature start(String) #txt
es0 f0 persist false #txt
es0 f0 startName 'Create new invoice' #txt
es0 f0 startDescription 'Region: City' #txt
es0 f0 taskData 'TaskTriggered.CATEGORY=Personal/Tasks
TaskTriggered.EXP=ivy.cal.getWorkDayIn(3).getDurationFromNow()
TaskTriggered.EXPRI=2
TaskTriggered.EXROL="Supervisor"
TaskTriggered.EXTYPE=3
TaskTriggered.NAM=Call Manager
TaskTriggered.PRI=1
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0
TaskTriggered.customFields.NUMBER.CustomDecimalField1=0416666666' #txt
es0 f0 caseData 'businessCase.attach=true
case.category=Personal
case.name=Personal Case' #txt
es0 f0 wfuser 1 #txt
es0 f0 showInStartList true #txt
es0 f0 roleExceptionId '>> Ignore Exception' #txt
es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
es0 f0 @C|.responsibility Secretary #txt
es0 f0 81 49 30 30 -21 17 #rect
es0 f1 337 49 30 30 0 15 #rect
es0 f3 dialogId com.acme.PersonEditor #txt
es0 f3 startMethod start(ch.ivyteam.test.Person) #txt
es0 f3 requestActionDecl '<ch.ivyteam.test.Person person> param;' #txt
es0 f3 requestMappingAction 'param.person=in.customer;
' #txt
es0 f3 requestActionCode 'param.person.country = ivy.session.getContentLocale().getCountry();' #txt
es0 f3 responseActionDecl 'com.axonivy.CreditDossier out;
' #txt
es0 f3 responseMappingAction 'out=in;
' #txt
es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call Html Dialog</name>
    </language>
</elementInfo>
' #txt
es0 f3 168 42 112 44 -48 -7 #rect
es0 f4 expr out #txt
es0 f4 111 64 168 64 #arcP
es0 f2 expr out #txt
es0 f2 280 64 337 64 #arcP
>Proto es0 .type com.axonivy.CreditDossier #txt
>Proto es0 .processKind NORMAL #txt
>Proto es0 0 0 32 24 18 0 #rect
>Proto es0 @|BIcon #fIcon
es0 f0 mainOut f4 tail #connect
es0 f4 head f3 mainIn #connect
es0 f3 mainOut f2 tail #connect
es0 f2 head f1 mainIn #connect
