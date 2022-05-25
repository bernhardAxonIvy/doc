[Ivy]
15673C9B9128F3F6 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MyProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @EndTask f1 '' #zField
Ms0 @UserDialog f2 '' #zField
Ms0 @PushWFArc f3 '' #zField
Ms0 @PushWFArc f4 '' #zField
>Proto Ms0 Ms0 MyProcess #zField
Ms0 f0 outLink start.ivp #txt
Ms0 f0 inParamDecl '<> param;' #txt
Ms0 f0 requestEnabled true #txt
Ms0 f0 triggerEnabled false #txt
Ms0 f0 callSignature start() #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 @C|.responsibility Everybody #txt
Ms0 f0 67 67 26 26 14 0 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f1 547 67 26 26 14 0 #rect
Ms0 f1 @|EndIcon #fIcon
Ms0 f2 dialogId sampleProject.MyHtmlDialog #txt
Ms0 f2 startMethod start() #txt
Ms0 f2 requestActionDecl '<> param;' #txt
Ms0 f2 responseActionDecl 'sampleProject.Data out;
' #txt
Ms0 f2 responseMappingAction 'out=in;
' #txt
Ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Open Richdialog</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f2 310 68 36 24 20 -2 #rect
Ms0 f2 @|UserDialogIcon #fIcon
Ms0 f3 expr out #txt
Ms0 f3 93 80 310 80 #arcP
Ms0 f4 expr out #txt
Ms0 f4 346 80 547 80 #arcP
>Proto Ms0 .type sampleProject.Data #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f3 tail #connect
Ms0 f3 head f2 mainIn #connect
Ms0 f2 mainOut f4 tail #connect
Ms0 f4 head f1 mainIn #connect
