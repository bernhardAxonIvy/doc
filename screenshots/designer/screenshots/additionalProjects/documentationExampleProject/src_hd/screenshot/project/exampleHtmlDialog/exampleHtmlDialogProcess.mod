[Ivy]
167356B1245C7158 9.3.1 #module
>Proto >Proto Collection #zClass
es0 exampleHtmlDialogProcess Big #zClass
es0 RD #cInfo
es0 #process
es0 @TextInP .type .type #zField
es0 @TextInP .processKind .processKind #zField
es0 @AnnotationInP-0n ai ai #zField
es0 @MessageFlowInP-0n messageIn messageIn #zField
es0 @MessageFlowOutP-0n messageOut messageOut #zField
es0 @TextInP .xml .xml #zField
es0 @TextInP .responsibility .responsibility #zField
es0 @UdInit f0 '' #zField
es0 @UdProcessEnd f1 '' #zField
es0 @PushWFArc f2 '' #zField
es0 @UdEvent f3 '' #zField
es0 @UdExitEnd f4 '' #zField
es0 @PushWFArc f5 '' #zField
es0 @UdMethod f6 '' #zField
es0 @UdProcessEnd f7 '' #zField
es0 @PushWFArc f8 '' #zField
>Proto es0 es0 exampleHtmlDialogProcess #zField
es0 f0 guid 167356B126437C3D #txt
es0 f0 method start(screenshot.project.Data) #txt
es0 f0 inParameterDecl '<screenshot.project.Data data> param;' #txt
es0 f0 inParameterMapAction 'out.data=param.data;
' #txt
es0 f0 outParameterDecl '<screenshot.project.Data data> result;' #txt
es0 f0 outParameterMapAction 'result.data.city=in.data.city;
' #txt
es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
es0 f0 83 51 26 26 -35 15 #rect
es0 f1 211 51 26 26 0 12 #rect
es0 f2 expr out #txt
es0 f2 109 64 211 64 #arcP
es0 f3 guid 167356B127CB3D50 #txt
es0 f3 actionTable 'out=in;
' #txt
es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
es0 f3 83 147 26 26 -16 12 #rect
es0 f4 211 147 26 26 0 12 #rect
es0 f5 expr out #txt
es0 f5 109 160 211 160 #arcP
es0 f6 guid 16B2C446B197B00C #txt
es0 f6 method addNumber(Number) #txt
es0 f6 inParameterDecl '<Number additionalNumber> param;' #txt
es0 f6 outParameterDecl '<Number summary> result;' #txt
es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNumber(Number)</name>
    </language>
</elementInfo>
' #txt
es0 f6 83 211 26 26 -66 15 #rect
es0 f7 211 211 26 26 0 12 #rect
es0 f8 expr out #txt
es0 f8 109 224 211 224 #arcP
>Proto es0 .type screenshot.project.exampleHtmlDialog.exampleHtmlDialogData #txt
>Proto es0 .processKind HTML_DIALOG #txt
>Proto es0 -8 -8 16 16 16 26 #rect
es0 f0 mainOut f2 tail #connect
es0 f2 head f1 mainIn #connect
es0 f3 mainOut f5 tail #connect
es0 f5 head f4 mainIn #connect
es0 f6 mainOut f8 tail #connect
es0 f8 head f7 mainIn #connect
