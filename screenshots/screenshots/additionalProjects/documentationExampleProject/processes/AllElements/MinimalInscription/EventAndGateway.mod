[Ivy]
169A4921D0EF0B91 7.5.0 #module
>Proto >Proto Collection #zClass
As0 EventAndGateway Big #zClass
As0 B #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @StartEvent f2 '' #zField
As0 @ProcessException f3 '' #zField
As0 @SignalStartEvent f4 '' #zField
As0 @Alternative f5 '' #zField
As0 @Split f6 '' #zField
As0 @Join f7 '' #zField
As0 @TaskSwitch f8 '' #zField
As0 @TaskSwitchSimple f9 '' #zField
As0 @IntermediateEvent f10 '' #zField
As0 @CallAndWait f11 '' #zField
As0 @EndRequest f12 '' #zField
As0 @ErrorEnd f13 '' #zField
As0 @SJArc f0 '' #zField
As0 @TkArc f1 '' #zField
As0 @TkArc f14 '' #zField
As0 @StartRequest f15 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @PushWFArc f17 '' #zField
As0 @PushWFArc f18 '' #zField
As0 @PushWFArc f19 '' #zField
>Proto As0 As0 EventAndGateway #zField
As0 f2 outerBean "ch.ivyteam.ivy.process.eventstart.beans.FilePickupStartEventBean" #txt
As0 f2 beanConfig "" #txt
As0 f2 outLink eventLink.ivp #txt
As0 f2 type ch.ivyteam.documentation.project.Data #txt
As0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Program Start</name>
    </language>
</elementInfo>
' #txt
As0 f2 @C|.responsibility Everybody #txt
As0 f2 81 113 30 30 0 15 #rect
As0 f2 @|StartEventIcon #fIcon
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Error Start Event</name>
    </language>
</elementInfo>
' #txt
As0 f3 81 177 30 30 0 15 #rect
As0 f3 @|ExceptionIcon #fIcon
As0 f4 actionTable 'out=null;
' #txt
As0 f4 attachToBusinessCase true #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Signal Start Event</name>
    </language>
</elementInfo>
' #txt
As0 f4 81 241 30 30 0 15 #rect
As0 f4 @|SignalStartEventIcon #fIcon
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Alternative Gateway</name>
    </language>
</elementInfo>
' #txt
As0 f5 80 48 32 32 0 16 #rect
As0 f5 @|AlternativeIcon #fIcon
As0 f6 actionTable 'out1=in;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Split Gateway</name>
    </language>
</elementInfo>
' #txt
As0 f6 176 48 32 32 0 16 #rect
As0 f6 @|ThreadIcon #fIcon
As0 f7 actionTable 'out=in1;
' #txt
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Join Gateway</name>
    </language>
</elementInfo>
' #txt
As0 f7 272 48 32 32 0 16 #rect
As0 f7 @|JoinIcon #fIcon
As0 f8 actionTable 'out=in1;
' #txt
As0 f8 outLinks "TaskA.ivp" #txt
As0 f8 template "layouts/basic.xhtml" #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task Switch Gateway</name>
    </language>
</elementInfo>
' #txt
As0 f8 368 48 32 32 0 16 #rect
As0 f8 @|TaskSwitchIcon #fIcon
As0 f9 actionTable 'out=in1;
' #txt
As0 f9 template "layouts/basic.xhtml" #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task Switch Event</name>
    </language>
</elementInfo>
' #txt
As0 f9 465 49 30 30 0 16 #rect
As0 f9 @|TaskSwitchSimpleIcon #fIcon
As0 f10 actionTable 'out=in;
' #txt
As0 f10 eventIdConfig """""" #txt
As0 f10 timeoutConfig 'ACTION_AFTER_TIMEOUT=NOTHING
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=' #txt
As0 f10 eventBeanClass "ch.ivyteam.ivy.process.intermediateevent.beans.FileIntermediateEventBean" #txt
As0 f10 eventBeanConfig '"""""
"""""' #txt
As0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Program Intermediate Event</name>
    </language>
</elementInfo>
' #txt
As0 f10 273 113 30 30 0 16 #rect
As0 f10 @|IntermediateEventIcon #fIcon
As0 f11 outerBean "ch.ivyteam.ivy.process.callandwait.beans.Wait" #txt
As0 f11 timeout 0 #txt
As0 f11 beanConfig "" #txt
As0 f11 actionTable 'out=in;
' #txt
As0 f11 timeoutConfig 'ACTION_AFTER_TIMEOUT=NOTHING
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call and Wait Event</name>
    </language>
</elementInfo>
' #txt
As0 f11 177 113 30 30 0 16 #rect
As0 f11 @|CallAndWaitIcon #fIcon
As0 f12 template "layouts/basic.xhtml" #txt
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>End Page</name>
    </language>
</elementInfo>
' #txt
As0 f12 561 49 30 30 0 15 #rect
As0 f12 @|EndRequestIcon #fIcon
As0 f13 errorCode null #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Error End Event</name>
    </language>
</elementInfo>
' #txt
As0 f13 177 177 30 30 -31 17 #rect
As0 f13 @|ErrorEndIcon #fIcon
As0 f0 expr out1 #txt
As0 f0 var in1 #txt
As0 f0 208 64 272 64 #arcP
As0 f1 expr out #txt
As0 f1 var in1 #txt
As0 f1 template layouts/basic.xhtml #txt
As0 f1 304 64 368 64 #arcP
As0 f14 expr data #txt
As0 f14 outCond ivp=="TaskA.ivp" #txt
As0 f14 400 64 465 64 #arcP
As0 f15 outLink start.ivp #txt
As0 f15 inParamDecl '<> param;' #txt
As0 f15 requestEnabled true #txt
As0 f15 triggerEnabled true #txt
As0 f15 callSignature start() #txt
As0 f15 persist false #txt
As0 f15 caseData businessCase.attach=true #txt
As0 f15 showInStartList 1 #txt
As0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp
start()</name>
    </language>
</elementInfo>
' #txt
As0 f15 @C|.responsibility Everybody #txt
As0 f15 81 305 30 30 -25 17 #rect
As0 f15 @|StartRequestIcon #fIcon
As0 f16 expr out #txt
As0 f16 105 308 183 203 #arcP
As0 f17 expr in #txt
As0 f17 outCond ivp=="TaskA.ivp" #txt
As0 f17 495 64 561 64 #arcP
As0 f18 112 64 176 64 #arcP
As0 f19 106 70 179 119 #arcP
>Proto As0 .type ch.ivyteam.documentation.project.Data #txt
>Proto As0 .processKind NORMAL #txt
>Proto As0 0 0 32 24 18 0 #rect
>Proto As0 @|BIcon #fIcon
As0 f6 out f0 tail #connect
As0 f0 head f7 in #connect
As0 f7 mainOut f1 tail #connect
As0 f1 head f8 in #connect
As0 f8 out f14 tail #connect
As0 f14 head f9 in #connect
As0 f15 mainOut f16 tail #connect
As0 f16 head f13 mainIn #connect
As0 f9 out f17 tail #connect
As0 f17 head f12 mainIn #connect
As0 f5 out f18 tail #connect
As0 f18 head f6 in #connect
As0 f5 out f19 tail #connect
As0 f19 head f11 mainIn #connect
