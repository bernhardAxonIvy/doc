[Ivy]
16BD5F7B1D71F926 7.5.0 #module
>Proto >Proto Collection #zClass
cs0 processCallElements Big #zClass
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
cs0 @StartRequest f3 '' #zField
cs0 @EndTask f4 '' #zField
cs0 @Trigger f7 '' #zField
cs0 @PushWFArc f8 '' #zField
cs0 @PushWFArc f5 '' #zField
cs0 @CallSub f2 '' #zField
cs0 @PushWFArc f6 '' #zField
cs0 @PushWFArc f9 '' #zField
>Proto cs0 cs0 processCallElements #zField
cs0 f0 outLink start.ivp #txt
cs0 f0 inParamDecl '<String city> param;' #txt
cs0 f0 inParamTable 'out.city=param.city;
' #txt
cs0 f0 requestEnabled true #txt
cs0 f0 triggerEnabled true #txt
cs0 f0 callSignature start(String) #txt
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
cs0 f0 @|StartRequestIcon #fIcon
cs0 f1 337 49 30 30 0 15 #rect
cs0 f1 @|EndIcon #fIcon
cs0 f3 outLink start2.ivp #txt
cs0 f3 inParamDecl '<> param;' #txt
cs0 f3 requestEnabled true #txt
cs0 f3 triggerEnabled false #txt
cs0 f3 callSignature start2() #txt
cs0 f3 caseData businessCase.attach=true #txt
cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
cs0 f3 @C|.responsibility Everybody #txt
cs0 f3 81 209 30 30 -29 17 #rect
cs0 f3 @|StartRequestIcon #fIcon
cs0 f4 337 209 30 30 0 15 #rect
cs0 f4 @|EndIcon #fIcon
cs0 f7 processCall processCallElements:start(String) #txt
cs0 f7 requestActionDecl '<String city> param;' #txt
cs0 f7 requestMappingAction 'param.city="Zug";
' #txt
cs0 f7 responseActionDecl 'screenshot.project.Data out;
' #txt
cs0 f7 responseMappingAction 'out=in;
' #txt
cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>processCallElements</name>
    </language>
</elementInfo>
' #txt
cs0 f7 152 202 144 44 -64 -7 #rect
cs0 f7 @|TriggerIcon #fIcon
cs0 f8 expr out #txt
cs0 f8 111 224 152 224 #arcP
cs0 f5 expr out #txt
cs0 f5 296 224 337 224 #arcP
cs0 f2 processCall subProcess:call(screenshot.project.Data,String) #txt
cs0 f2 requestActionDecl '<screenshot.project.Data data,String newCity> param;' #txt
cs0 f2 requestMappingAction 'param.data.city="Luzern";
param.newCity="Zug";
' #txt
cs0 f2 responseActionDecl 'screenshot.project.Data out;
' #txt
cs0 f2 responseMappingAction 'out=in;
' #txt
cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>subProcess</name>
    </language>
</elementInfo>
' #txt
cs0 f2 168 42 112 44 -36 -7 #rect
cs0 f2 @|CallSubIcon #fIcon
cs0 f6 expr out #txt
cs0 f6 111 64 168 64 #arcP
cs0 f9 expr out #txt
cs0 f9 280 64 337 64 #arcP
>Proto cs0 .type screenshot.project.Data #txt
>Proto cs0 .processKind NORMAL #txt
>Proto cs0 0 0 32 24 18 0 #rect
>Proto cs0 @|BIcon #fIcon
cs0 f3 mainOut f8 tail #connect
cs0 f8 head f7 mainIn #connect
cs0 f7 mainOut f5 tail #connect
cs0 f5 head f4 mainIn #connect
cs0 f0 mainOut f6 tail #connect
cs0 f6 head f2 mainIn #connect
cs0 f2 mainOut f9 tail #connect
cs0 f9 head f1 mainIn #connect
