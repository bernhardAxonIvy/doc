[Ivy]
16B9DA1B2A591E8C 9.3.1 #module
>Proto >Proto Collection #zClass
cs0 alternativeGateway Big #zClass
cs0 B #cInfo
cs0 #process
cs0 @TextInP .type .type #zField
cs0 @TextInP .processKind .processKind #zField
cs0 @AnnotationInP-0n ai ai #zField
cs0 @MessageFlowInP-0n messageIn messageIn #zField
cs0 @MessageFlowOutP-0n messageOut messageOut #zField
cs0 @TextInP .xml .xml #zField
cs0 @TextInP .responsibility .responsibility #zField
cs0 @StartRequest f0 '' #zField
cs0 @EndTask f1 '' #zField
cs0 @Alternative f2 '' #zField
cs0 @PushWFArc f3 '' #zField
cs0 @UserDialog f4 '' #zField
cs0 @UserDialog f5 '' #zField
cs0 @PushWFArc f6 '' #zField
cs0 @PushWFArc f7 '' #zField
cs0 @PushWFArc f8 '' #zField
>Proto cs0 cs0 alternativeGateway #zField
cs0 f0 outLink start.ivp #txt
cs0 f0 inParamDecl '<> param;' #txt
cs0 f0 requestEnabled true #txt
cs0 f0 triggerEnabled false #txt
cs0 f0 callSignature start() #txt
cs0 f0 caseData businessCase.attach=true #txt
cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
cs0 f0 @C|.responsibility Everybody #txt
cs0 f0 81 49 30 30 -25 17 #rect
cs0 f1 209 145 30 30 0 15 #rect
cs0 f2 208 48 32 32 0 16 #rect
cs0 f3 expr out #txt
cs0 f3 111 64 208 64 #arcP
cs0 f4 dialogId screenshot.project.exampleHtmlDialog #txt
cs0 f4 startMethod start(screenshot.project.Data) #txt
cs0 f4 requestActionDecl '<screenshot.project.Data data> param;' #txt
cs0 f4 responseActionDecl 'screenshot.project.Order out;
' #txt
cs0 f4 responseMappingAction 'out=in;
' #txt
cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Large order</name>
    </language>
</elementInfo>
' #txt
cs0 f4 296 42 112 44 -36 -7 #rect
cs0 f5 dialogId screenshot.project.exampleHtmlDialog #txt
cs0 f5 startMethod start(screenshot.project.Data) #txt
cs0 f5 requestActionDecl '<screenshot.project.Data data> param;' #txt
cs0 f5 responseActionDecl 'screenshot.project.Order out;
' #txt
cs0 f5 responseMappingAction 'out=in;
' #txt
cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Medium order</name>
    </language>
</elementInfo>
' #txt
cs0 f5 296 106 112 44 -43 -7 #rect
cs0 f6 expr in #txt
cs0 f6 outCond 'in.quantity >= 100' #txt
cs0 f6 240 64 296 64 #arcP
cs0 f7 expr in #txt
cs0 f7 outCond 'in.quantity >= 50' #txt
cs0 f7 235 69 308 106 #arcP
cs0 f8 expr in #txt
cs0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Ship immediately</name>
    </language>
</elementInfo>
' #txt
cs0 f8 224 80 224 145 #arcP
cs0 f8 0 0.49230769230769234 0 0 #arcLabel
>Proto cs0 .type screenshot.project.Order #txt
>Proto cs0 .processKind NORMAL #txt
>Proto cs0 0 0 32 24 18 0 #rect
>Proto cs0 @|BIcon #fIcon
cs0 f0 mainOut f3 tail #connect
cs0 f3 head f2 in #connect
cs0 f2 out f6 tail #connect
cs0 f6 head f4 mainIn #connect
cs0 f2 out f7 tail #connect
cs0 f7 head f5 mainIn #connect
cs0 f2 out f8 tail #connect
cs0 f8 head f1 mainIn #connect
