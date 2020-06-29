[Ivy]
16C70B87DCB65433 7.5.0 #module
>Proto >Proto Collection #zClass
is0 intermediateEventElements Big #zClass
is0 B #cInfo
is0 #process
is0 @TextInP .type .type #zField
is0 @TextInP .processKind .processKind #zField
is0 @AnnotationInP-0n ai ai #zField
is0 @MessageFlowInP-0n messageIn messageIn #zField
is0 @MessageFlowOutP-0n messageOut messageOut #zField
is0 @TextInP .xml .xml #zField
is0 @TextInP .responsibility .responsibility #zField
is0 @IntermediateEvent f0 '' #zField
is0 @EndTask f2 '' #zField
is0 @PushWFArc f3 '' #zField
is0 @CallAndWait f1 '' #zField
is0 @StartRequest f4 '' #zField
is0 @PushWFArc f5 '' #zField
is0 @StartRequest f6 '' #zField
is0 @EndTask f7 '' #zField
is0 @PushWFArc f8 '' #zField
is0 @PushWFArc f9 '' #zField
is0 @ProcessException f10 '' #zField
>Proto is0 is0 intermediateEventElements #zField
is0 f0 eventIdConfig "in.customerId" #txt
is0 f0 timeoutConfig 'ACTION_AFTER_TIMEOUT=DESTROY_TASK
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=''2H30M''' #txt
is0 f0 taskData 'ivp.CATEGORY=Finance/Invoices/<%\=in.invoiceType%>
ivp.DESC=<%\=ivy.cms.co("/Task/Approval/Desc")%>
ivp.NAM=<%\=ivy.cms.co("/Task/Approval")%>' #txt
is0 f0 eventBeanClass "ch.ivyteam.ivy.process.intermediateevent.beans.FileIntermediateEventBean" #txt
is0 f0 eventBeanConfig '"/shared/company/addresses
customerId"' #txt
is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read address</name>
    </language>
</elementInfo>
' #txt
is0 f0 177 49 30 30 -33 16 #rect
is0 f0 @|IntermediateEventIcon #fIcon
is0 f2 305 49 30 30 0 15 #rect
is0 f2 @|EndIcon #fIcon
is0 f3 expr out #txt
is0 f3 207 64 305 64 #arcP
is0 f1 outerBean "ch.ivyteam.ivy.process.callandwait.beans.Wait" #txt
is0 f1 timeout 60 #txt
is0 f1 beanConfig "60000" #txt
is0 f1 timeoutExceptionHandler 16C70B87DCB65433-f10-buffer #txt
is0 f1 actionTable 'out=in;
' #txt
is0 f1 timeoutConfig 'ACTION_AFTER_TIMEOUT=CONTINUE_WITHOUT_EVENT
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=''60s''' #txt
is0 f1 taskData 'ivp.CATEGORY=Finance/Invoices/<%\=in.invoiceType%>
ivp.DESC=<%\=ivy.cms.co("/Task/Approval/Desc")%>
ivp.NAM=<%\=ivy.cms.co("/Task/Approval")%>' #txt
is0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wait for response</name>
    </language>
</elementInfo>
' #txt
is0 f1 177 177 30 30 -47 16 #rect
is0 f1 @|CallAndWaitIcon #fIcon
is0 f4 outLink start.ivp #txt
is0 f4 inParamDecl '<> param;' #txt
is0 f4 requestEnabled true #txt
is0 f4 triggerEnabled false #txt
is0 f4 callSignature start() #txt
is0 f4 caseData businessCase.attach=true #txt
is0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
is0 f4 @C|.responsibility Everybody #txt
is0 f4 49 49 30 30 -25 17 #rect
is0 f4 @|StartRequestIcon #fIcon
is0 f5 79 64 177 64 #arcP
is0 f6 outLink start2.ivp #txt
is0 f6 inParamDecl '<> param;' #txt
is0 f6 requestEnabled true #txt
is0 f6 triggerEnabled false #txt
is0 f6 callSignature start2() #txt
is0 f6 caseData businessCase.attach=true #txt
is0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
is0 f6 @C|.responsibility Everybody #txt
is0 f6 49 177 30 30 -29 17 #rect
is0 f6 @|StartRequestIcon #fIcon
is0 f7 305 177 30 30 0 15 #rect
is0 f7 @|EndIcon #fIcon
is0 f8 79 192 177 192 #arcP
is0 f9 207 192 305 192 #arcP
is0 f10 actionTable 'out=in;
' #txt
is0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>server not reachable</name>
    </language>
</elementInfo>
' #txt
is0 f10 49 305 30 30 -49 17 #rect
is0 f10 @|ExceptionIcon #fIcon
>Proto is0 .type screenshot.project.Invoice #txt
>Proto is0 .processKind NORMAL #txt
>Proto is0 0 0 32 24 18 0 #rect
>Proto is0 @|BIcon #fIcon
is0 f0 mainOut f3 tail #connect
is0 f3 head f2 mainIn #connect
is0 f4 mainOut f5 tail #connect
is0 f5 head f0 mainIn #connect
is0 f6 mainOut f8 tail #connect
is0 f8 head f1 mainIn #connect
is0 f1 mainOut f9 tail #connect
is0 f9 head f7 mainIn #connect
