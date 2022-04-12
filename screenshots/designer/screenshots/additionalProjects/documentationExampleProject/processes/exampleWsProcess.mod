[Ivy]
167C6BD0817F2889 9.4.3 #module
>Proto >Proto Collection #zClass
el0 exampleWsProcess Big #zClass
el0 WS #cInfo
el0 #process
el0 @TextInP .colors .colors #zField
el0 @TextInP color color #zField
el0 @TextInP .webServiceName .webServiceName #zField
el0 @TextInP .implementationClassName .implementationClassName #zField
el0 @TextInP .authenticationType .authenticationType #zField
el0 @TextInP .type .type #zField
el0 @TextInP .processKind .processKind #zField
el0 @AnnotationInP-0n ai ai #zField
el0 @MessageFlowInP-0n messageIn messageIn #zField
el0 @MessageFlowOutP-0n messageOut messageOut #zField
el0 @TextInP .xml .xml #zField
el0 @TextInP .responsibility .responsibility #zField
el0 @StartWS ws0 '' #zField
el0 @EndWS ws1 '' #zField
el0 @PushWFArc f0 '' #zField
>Proto el0 el0 exampleWsProcess #zField
el0 ws0 inParamDecl '<screenshot.project.Order order> param;' #txt
el0 ws0 inParamTable 'out=param.order;
' #txt
el0 ws0 inParamCode 'ivy.log.debug("Order received for " + out.product);' #txt
el0 ws0 outParamDecl '<> result;' #txt
el0 ws0 actionDecl 'screenshot.project.Order out;
' #txt
el0 ws0 callSignature call(screenshot.project.Order) #txt
el0 ws0 useUserDefinedException false #txt
el0 ws0 taskData 'TaskTriggered.CATEGORY=Shop/Order
TaskTriggered.DESC=Accept Order from customer.
TaskTriggered.NAM=Shop Order' #txt
el0 ws0 caseData 'case.category=Shop/Request
case.name=Shop' #txt
el0 ws0 type screenshot.project.Order #txt
el0 ws0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
    </language>
</elementInfo>
' #txt
el0 ws0 @C|.responsibility Everybody #txt
el0 ws0 81 49 30 30 -15 17 #rect
el0 ws1 337 49 30 30 0 15 #rect
el0 f0 expr out #txt
el0 f0 111 64 337 64 #arcP
>Proto el0 .webServiceName screenshot.project.exampleWsCall #txt
>Proto el0 .authenticationType NONE #txt
>Proto el0 .type screenshot.project.Order #txt
>Proto el0 .processKind WEB_SERVICE #txt
>Proto el0 -8 -8 16 16 16 26 #rect
el0 ws0 mainOut f0 tail #connect
el0 f0 head ws1 mainIn #connect
