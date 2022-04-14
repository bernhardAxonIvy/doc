[Ivy]
169C999FAE8942AD 9.4.8 #module
>Proto >Proto Collection #zClass
Ps0 PaymentRegistrationProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .colors .colors #zField
Ps0 @TextInP color color #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
>Proto Ps0 Ps0 PaymentRegistrationProcess #zField
Ps0 f0 guid 169C999FAF956844 #txt
Ps0 f0 method start(ch.ivyteam.test.Person) #txt
Ps0 f0 inParameterDecl '<ch.ivyteam.test.Person person> param;' #txt
Ps0 f0 inParameterMapAction 'out.person=param.person;
' #txt
Ps0 f0 outParameterDecl '<> result;' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Person)</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 51 26 26 -42 15 #rect
Ps0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>User Dialog Process End</name>
    </language>
</elementInfo>
' #txt
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f2 expr out #txt
Ps0 f2 109 64 211 64 #arcP
Ps0 f3 guid 169C999FB18FE87E #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 147 26 26 -16 12 #rect
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>User Dialog Exit End</name>
    </language>
</elementInfo>
' #txt
Ps0 f4 211 147 26 26 0 12 #rect
Ps0 f5 expr out #txt
Ps0 f5 109 160 211 160 #arcP
>Proto Ps0 .type ch.ivyteam.wf.PaymentRegistration.PaymentRegistrationData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
