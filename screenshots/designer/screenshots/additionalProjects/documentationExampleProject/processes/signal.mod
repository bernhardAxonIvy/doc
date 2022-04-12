[Ivy]
1675F79D89ABB65A 9.4.7 #module
>Proto >Proto Collection #zClass
sl0 signal Big #zClass
sl0 B #cInfo
sl0 #process
sl0 @TextInP .colors .colors #zField
sl0 @TextInP color color #zField
sl0 @TextInP .type .type #zField
sl0 @TextInP .processKind .processKind #zField
sl0 @AnnotationInP-0n ai ai #zField
sl0 @MessageFlowInP-0n messageIn messageIn #zField
sl0 @MessageFlowOutP-0n messageOut messageOut #zField
sl0 @TextInP .xml .xml #zField
sl0 @TextInP .responsibility .responsibility #zField
sl0 @StartRequest f0 '' #zField
sl0 @EndTask f1 '' #zField
sl0 @PushWFArc f2 '' #zField
sl0 @SignalStartEvent f47 '' #zField
sl0 @StartRequest f34 '' #zField
>Proto sl0 sl0 signal #zField
sl0 f0 outLink start.ivp #txt
sl0 f0 inParamDecl '<> param;' #txt
sl0 f0 requestEnabled true #txt
sl0 f0 triggerEnabled false #txt
sl0 f0 callSignature start() #txt
sl0 f0 caseData businessCase.attach=true #txt
sl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
sl0 f0 @C|.responsibility Everybody #txt
sl0 f0 81 49 30 30 -25 17 #rect
sl0 f1 337 49 30 30 0 15 #rect
sl0 f2 111 64 337 64 #arcP
sl0 f47 actionTable 'out.city="Lucerne";
' #txt
sl0 f47 signalCode user:created #txt
sl0 f47 attachToBusinessCase true #txt
sl0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
    </language>
</elementInfo>
' #txt
sl0 f47 329 145 30 30 -40 17 #rect
sl0 f34 outLink start2.ivp #txt
sl0 f34 inParamDecl '<ch.ivyteam.test.Person in> param;' #txt
sl0 f34 inParamTable 'out.city="Zug";
' #txt
sl0 f34 actionCode 'String calendarName = param.in.city;
ivy.case.setBusinessCalendar(calendarName is initialized ? ivy.cal.get(calendarName) : null);' #txt
sl0 f34 requestEnabled true #txt
sl0 f34 triggerEnabled true #txt
sl0 f34 callSignature start2(ch.ivyteam.test.Person) #txt
sl0 f34 persist true #txt
sl0 f34 startName tara2333 #txt
sl0 f34 startDescription bla #txt
sl0 f34 taskData 'TaskTriggered.DEL=''300s''
TaskTriggered.DESC=<%\=param.in.city%>
TaskTriggered.EXP=param.in.zip.toDuration()
TaskTriggered.EXPRI=2
TaskTriggered.EXTYPE=-1
TaskTriggered.NAM=<%\=param.in.city%>
TaskTriggered.PRI=2
TaskTriggered.ROL=FacilityManager
TaskTriggered.TYPE=0
TaskTriggered.customFields.NUMBER.CustomDecimalField1=param.in.zip
TaskTriggered.customFields.STRING.CustomVarCharField1=param.in.street
TaskTriggered.customFields.STRING.KindCode="taskStageCode"
TaskTriggered.customFields.STRING.KindName="taskNameCode"
TaskTriggered.customFields.TIMESTAMP.CustomTimestampField1=param.in.zip.toDateTime()' #txt
sl0 f34 caseData 'businessCase.attach=true
case.description=<%\=param.in.city%>
case.name=<%\=param.in.city%>
customFields.NUMBER.BusinessCorrespondentId=param.in.zip
customFields.NUMBER.BusinessMainContactId=param.in.zip
customFields.NUMBER.CustomDecimalField1=param.in.zip
customFields.STRING.BusinessCreatorUser=param.in.city
customFields.STRING.BusinessMainContactDocumentDbCode=param.in.city
customFields.STRING.BusinessMainContactFolderId=param.in.city
customFields.STRING.BusinessMainContactName=param.in.city
customFields.STRING.BusinessMainContactType=param.in.city
customFields.STRING.BusinessObjectCode=param.in.city
customFields.STRING.BusinessObjectDocumentDbCode=param.in.city
customFields.STRING.BusinessObjectFolderId=param.in.city
customFields.STRING.BusinessObjectName=param.in.city
customFields.STRING.BusinessPriority=param.in.city
customFields.STRING.CustomVarCharField1=param.in.city
customFields.STRING.ProcessCategoryCode=param.in.city
customFields.STRING.ProcessCategoryName=param.in.city
customFields.STRING.ProcessCode=param.in.city
customFields.STRING.ProcessName=param.in.city
customFields.STRING.SubTypeCode=param.in.city
customFields.STRING.SubTypeName=param.in.city
customFields.STRING.TypeCode=param.in.city
customFields.STRING.TypeName=param.in.city
customFields.TIMESTAMP.BusinessMilestoneTimestamp=param.in.city.toDateTime()
customFields.TIMESTAMP.BusinessStartTimestamp=param.in.city.toDateTime()' #txt
sl0 f34 wfuser 1 #txt
sl0 f34 showInStartList true #txt
sl0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startRequest</name>
        <desc>description should not be touched as it is a raw text field
param.in.city

&lt;%=param.in.city%&gt; aaa</desc>
    </language>
</elementInfo>
' #txt
sl0 f34 @C|.responsibility Everybody #txt
sl0 f34 81 137 30 30 -32 17 #rect
sl0 f34 -1|-1|-9671572 #nodeStyle
>Proto sl0 .type screenshot.project.Data #txt
>Proto sl0 .processKind NORMAL #txt
>Proto sl0 0 0 32 24 18 0 #rect
>Proto sl0 @|BIcon #fIcon
sl0 f0 mainOut f2 tail #connect
sl0 f2 head f1 mainIn #connect
