[Ivy]
16C51F1EE34D5EF5 7.5.0 #module
>Proto >Proto Collection #zClass
Ad0 AllElementsInscribedProcess Big #zClass
Ad0 B #cInfo
Ad0 #process
Ad0 @TextInP .type .type #zField
Ad0 @TextInP .processKind .processKind #zField
Ad0 @AnnotationInP-0n ai ai #zField
Ad0 @MessageFlowInP-0n messageIn messageIn #zField
Ad0 @MessageFlowOutP-0n messageOut messageOut #zField
Ad0 @TextInP .xml .xml #zField
Ad0 @TextInP .responsibility .responsibility #zField
Ad0 @StartRequest f0 '' #zField
Ad0 @EndTask f1 '' #zField
Ad0 @Alternative f8 '' #zField
Ad0 @Split f11 '' #zField
Ad0 @Join f10 '' #zField
Ad0 @PushWFArc f9 '' #zField
Ad0 @UserTask f2 '' #zField
Ad0 @TkArc f14 '' #zField
Ad0 @UserDialog f15 '' #zField
Ad0 @SJArc f17 '' #zField
Ad0 @GridStep f19 '' #zField
Ad0 @PushWFArc f21 '' #zField
Ad0 @PushWFArc f12 '' #zField
Ad0 @EndRequest f20 '' #zField
Ad0 @PushWFArc f22 '' #zField
Ad0 @InfoButton f25 '' #zField
Ad0 @AnnotationArc f26 '' #zField
Ad0 @CallSub f3 '' #zField
Ad0 @PushWFArc f4 '' #zField
Ad0 @PushWFArc f16 '' #zField
Ad0 @WSElement f5 '' #zField
Ad0 @PushWFArc f6 '' #zField
Ad0 @PushWFArc f7 '' #zField
Ad0 @RestClientCall f18 '' #zField
Ad0 @PushWFArc f23 '' #zField
Ad0 @SJArc f13 '' #zField
>Proto Ad0 Ad0 AllElementsInscribedProcess #zField
Ad0 f0 outLink start.ivp #txt
Ad0 f0 inParamDecl '<String requester,String product,Number quantity,Number unitPrice,String street,Number housenumber,String city> param;' #txt
Ad0 f0 inParamTable 'out.product=param.product;
out.quantity=param.quantity;
out.requester=param.requester;
out.unitPrice=param.unitPrice;
' #txt
Ad0 f0 requestEnabled true #txt
Ad0 f0 triggerEnabled true #txt
Ad0 f0 callSignature start(String,String,Number,Number,String,Number,String) #txt
Ad0 f0 persist true #txt
Ad0 f0 startName 'New order' #txt
Ad0 f0 startDescription 'Place new order' #txt
Ad0 f0 taskData 'TaskTriggered.CATEGORY=<%\=param.product%>
TaskTriggered.DEL=''1s''
TaskTriggered.DESC=For\: <%\=param.requester%>
TaskTriggered.EXP=ivy.cal.getWorkDayIn(5).getDurationFromNow()
TaskTriggered.EXPRI=1
TaskTriggered.EXROL=CREATOR
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=New Order
TaskTriggered.PRI=1
TaskTriggered.customFields.NUMBER.price=param.quantity * param.unitPrice\t
TaskTriggered.customFields.NUMBER.quantity=param.quantity
TaskTriggered.customFields.STRING.city=param.city
TaskTriggered.customFields.STRING.product=param.product\t
TaskTriggered.customFields.STRING.requester=param.requester' #txt
Ad0 f0 caseData 'businessCase.attach=true
case.category=<%\=param.product%>
case.name=Order <%\=param.requester%>
customFields.NUMBER.price=param.unitPrice\t
customFields.NUMBER.quantity=\tparam.quantity
customFields.STRING.city=param.city
customFields.STRING.product=param.product
customFields.STRING.requester=\tparam.requester' #txt
Ad0 f0 wfuser 1 #txt
Ad0 f0 roleExceptionId '>> Ignore Exception' #txt
Ad0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <desc>Place new order</desc>
    </language>
</elementInfo>
' #txt
Ad0 f0 @C|.responsibility Everybody #txt
Ad0 f0 81 49 30 30 -25 17 #rect
Ad0 f0 @|StartRequestIcon #fIcon
Ad0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order placed</name>
    </language>
</elementInfo>
' #txt
Ad0 f1 1049 49 30 30 -35 18 #rect
Ad0 f1 @|EndIcon #fIcon
Ad0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check discount</name>
    </language>
</elementInfo>
' #txt
Ad0 f8 920 48 32 32 -43 -35 #rect
Ad0 f8 @|AlternativeIcon #fIcon
Ad0 f11 actionTable 'out1=in;
' #txt
Ad0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check stock and validate customer</name>
    </language>
</elementInfo>
' #txt
Ad0 f11 336 48 32 32 -56 -36 #rect
Ad0 f11 @|ThreadIcon #fIcon
Ad0 f10 actionTable 'out=in1;
' #txt
Ad0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Customer validated and product available</name>
    </language>
</elementInfo>
' #txt
Ad0 f10 728 48 32 32 -111 36 #rect
Ad0 f10 @|JoinIcon #fIcon
Ad0 f9 760 64 920 64 #arcP
Ad0 f2 dialogId screenshot.project.exampleHtmlDialog #txt
Ad0 f2 startMethod start(screenshot.project.Data) #txt
Ad0 f2 requestActionDecl '<screenshot.project.Data data> param;' #txt
Ad0 f2 responseMappingAction 'out=in;
' #txt
Ad0 f2 taskData 'TaskA.DESC=Ordered quantity\: <%\=in.quantity%>
TaskA.NAM=Check stock\: <%\=in.product%>' #txt
Ad0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check stock</name>
    </language>
</elementInfo>
' #txt
Ad0 f2 296 138 112 44 -38 -7 #rect
Ad0 f2 @|UserTaskIcon #fIcon
Ad0 f14 expr out2 #txt
Ad0 f14 352 80 352 138 #arcP
Ad0 f15 dialogId com.acme.PersonEditor #txt
Ad0 f15 startMethod start(ch.ivyteam.test.Person) #txt
Ad0 f15 requestActionDecl '<ch.ivyteam.test.Person person> param;' #txt
Ad0 f15 responseMappingAction 'out=in;
' #txt
Ad0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify customer address</name>
        <desc>Verify that customer exists and that order is real.</desc>
    </language>
</elementInfo>
' #txt
Ad0 f15 536 42 160 44 -76 -7 #rect
Ad0 f15 @|UserDialogIcon #fIcon
Ad0 f17 var in1 #txt
Ad0 f17 696 64 728 64 #arcP
Ad0 f19 actionTable 'out=in;
' #txt
Ad0 f19 actionCode '/*
* Calcualte new unit price
*/
out.unitPrice = in.unitPrice * (in.quantity * 0.01);' #txt
Ad0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Calculate discount</name>
        <desc>Discount is calculated on basis of unit price and quantity</desc>
    </language>
</elementInfo>
' #txt
Ad0 f19 872 298 128 44 -58 -7 #rect
Ad0 f19 @|StepIcon #fIcon
Ad0 f21 expr in #txt
Ad0 f21 outCond 'in.quantity <= 100' #txt
Ad0 f21 952 64 1049 64 #arcP
Ad0 f12 expr in #txt
Ad0 f12 outCond 'in.quantity > 100 && in.quantity <= 500	' #txt
Ad0 f12 936 80 936 298 #arcP
Ad0 f20 template "endpage.xhtml" #txt
Ad0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Manual discount check</name>
    </language>
</elementInfo>
' #txt
Ad0 f20 921 409 30 30 -65 17 #rect
Ad0 f20 @|EndRequestIcon #fIcon
Ad0 f22 936 342 936 409 #arcP
Ad0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Automatically calculate discount</name>
        <desc>Discount is calculated on basis of unit price and quantity</desc>
    </language>
</elementInfo>
' #txt
Ad0 f25 848 377 208 30 -101 -7 #rect
Ad0 f25 @|IBIcon #fIcon
Ad0 f26 952 377 936 342 #arcP
Ad0 f3 processCall AllElements/MinimalInscription/SubProcess:call() #txt
Ad0 f3 requestActionDecl '<> param;' #txt
Ad0 f3 responseMappingAction 'out=in;
' #txt
Ad0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Custom discount</name>
    </language>
</elementInfo>
' #txt
Ad0 f3 1000 170 112 44 -52 -7 #rect
Ad0 f3 @|CallSubIcon #fIcon
Ad0 f4 expr in #txt
Ad0 f4 outCond 'in.quantity > 500' #txt
Ad0 f4 944 72 1056 170 #arcP
Ad0 f16 expr out1 #txt
Ad0 f16 368 64 536 64 #arcP
Ad0 f5 actionTable 'out=in;
' #txt
Ad0 f5 cache '{/cache true /invalidation false /scope 2 /groupname "\"ip-group\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"ip-entry\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
Ad0 f5 clientId 160DF5320F0D7ACD #txt
Ad0 f5 port GeoIPServiceSoap #txt
Ad0 f5 operation GetGeoIP #txt
Ad0 f5 properties 'proxy.auth.username="proxy-admin";
proxy.auth.password="proxy-password";
username="admin";
password="password";
policy.disabled=true;
proxy.port=1234;
schema-validation-enabled=false;
' #txt
Ad0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check IP</name>
    </language>
</elementInfo>
' #txt
Ad0 f5 168 42 112 44 -26 -7 #rect
Ad0 f5 @|WebServiceIcon #fIcon
Ad0 f6 expr out #txt
Ad0 f6 111 64 168 64 #arcP
Ad0 f7 280 64 336 64 #arcP
Ad0 f18 clientId 539ed1ab-1274-4716-b6d0-85d682e0acd7 #txt
Ad0 f18 templateParams 'request.kind="approve";
product.quantity=in.quantity;
product.number=in.product;
' #txt
Ad0 f18 headers 'Accept=*/*;
X-Requested-By="ivy";
Retry-After="30s";
Expires="1d";
Date=new Date();
Accept-Language="en";
' #txt
Ad0 f18 properties 'username="admin";
password="password";
' #txt
Ad0 f18 method POST #txt
Ad0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update stock</name>
    </language>
</elementInfo>
' #txt
Ad0 f18 488 138 112 44 -42 -7 #rect
Ad0 f18 @|RestClientCallIcon #fIcon
Ad0 f23 408 160 488 160 #arcP
Ad0 f23 0 0.6190476190476191 0 0 #arcLabel
Ad0 f13 var in2 #txt
Ad0 f13 600 160 744 80 #arcP
Ad0 f13 1 744 160 #addKink
Ad0 f13 0 0.6190476190476191 0 0 #arcLabel
>Proto Ad0 .type screenshot.project.Order #txt
>Proto Ad0 .processKind NORMAL #txt
>Proto Ad0 0 0 32 24 18 0 #rect
>Proto Ad0 @|BIcon #fIcon
Ad0 f10 mainOut f9 tail #connect
Ad0 f9 head f8 in #connect
Ad0 f14 head f2 in #connect
Ad0 f11 out f16 tail #connect
Ad0 f16 head f15 mainIn #connect
Ad0 f11 out f14 tail #connect
Ad0 f15 mainOut f17 tail #connect
Ad0 f17 head f10 in #connect
Ad0 f8 out f21 tail #connect
Ad0 f21 head f1 mainIn #connect
Ad0 f8 out f12 tail #connect
Ad0 f12 head f19 mainIn #connect
Ad0 f19 mainOut f22 tail #connect
Ad0 f22 head f20 mainIn #connect
Ad0 f25 ao f26 tail #connect
Ad0 f26 head f19 @CG|ai #connect
Ad0 f8 out f4 tail #connect
Ad0 f4 head f3 mainIn #connect
Ad0 f0 mainOut f6 tail #connect
Ad0 f6 head f5 mainIn #connect
Ad0 f5 mainOut f7 tail #connect
Ad0 f7 head f11 in #connect
Ad0 f2 out f23 tail #connect
Ad0 f23 head f18 mainIn #connect
Ad0 f18 mainOut f13 tail #connect
Ad0 f13 head f10 in #connect
