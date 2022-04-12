[Ivy]
16BADA40155E7401 9.4.7 #module
>Proto >Proto Collection #zClass
ee0 endPage Big #zClass
ee0 B #cInfo
ee0 #process
ee0 @TextInP .colors .colors #zField
ee0 @TextInP color color #zField
ee0 @TextInP .type .type #zField
ee0 @TextInP .processKind .processKind #zField
ee0 @AnnotationInP-0n ai ai #zField
ee0 @MessageFlowInP-0n messageIn messageIn #zField
ee0 @MessageFlowOutP-0n messageOut messageOut #zField
ee0 @TextInP .xml .xml #zField
ee0 @TextInP .responsibility .responsibility #zField
ee0 @StartRequest f0 '' #zField
ee0 @EndRequest f1 '' #zField
ee0 @PushWFArc f2 '' #zField
>Proto ee0 ee0 endPage #zField
ee0 f0 outLink start.ivp #txt
ee0 f0 inParamDecl '<> param;' #txt
ee0 f0 requestEnabled true #txt
ee0 f0 triggerEnabled false #txt
ee0 f0 callSignature start() #txt
ee0 f0 caseData businessCase.attach=true #txt
ee0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
ee0 f0 @C|.responsibility Everybody #txt
ee0 f0 81 49 30 30 -25 17 #rect
ee0 f1 template "endpage.xhtml" #txt
ee0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>end</name>
    </language>
</elementInfo>
' #txt
ee0 f1 305 49 30 30 0 15 #rect
ee0 f2 expr out #txt
ee0 f2 111 64 305 64 #arcP
>Proto ee0 .type screenshot.project.Data #txt
>Proto ee0 .processKind NORMAL #txt
>Proto ee0 0 0 32 24 18 0 #rect
>Proto ee0 @|BIcon #fIcon
ee0 f0 mainOut f2 tail #connect
ee0 f2 head f1 mainIn #connect
