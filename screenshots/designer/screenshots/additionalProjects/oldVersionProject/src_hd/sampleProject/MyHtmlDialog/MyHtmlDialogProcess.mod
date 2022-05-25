[Ivy]
180F9F11FA6EC668 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MyHtmlDialogProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdInit f0 '' #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
>Proto Ms0 Ms0 MyHtmlDialogProcess #zField
Ms0 f0 guid 180F9F11FC3D7422 #txt
Ms0 f0 method start() #txt
Ms0 f0 inParameterDecl '<> param;' #txt
Ms0 f0 outParameterDecl '<> result;' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 85 53 22 22 14 0 #rect
Ms0 f0 @|UdInitIcon #fIcon
Ms0 f1 213 53 22 22 14 0 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f2 107 64 213 64 #arcP
Ms0 f3 guid 180F9F11FD2C524E #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 85 149 22 22 14 0 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 213 149 22 22 14 0 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f5 107 160 213 160 #arcP
>Proto Ms0 .type sampleProject.MyHtmlDialog.MyHtmlDialogData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
