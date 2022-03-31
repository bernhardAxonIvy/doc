[Ivy]
16BBC3FED3A47640 9.4.3 #module
>Proto >Proto Collection #zClass
ss0 signalElements Big #zClass
ss0 B #cInfo
ss0 #process
ss0 @TextInP .colors .colors #zField
ss0 @TextInP color color #zField
ss0 @TextInP .type .type #zField
ss0 @TextInP .processKind .processKind #zField
ss0 @AnnotationInP-0n ai ai #zField
ss0 @MessageFlowInP-0n messageIn messageIn #zField
ss0 @MessageFlowOutP-0n messageOut messageOut #zField
ss0 @TextInP .xml .xml #zField
ss0 @TextInP .responsibility .responsibility #zField
ss0 @SignalStartEvent f47 '' #zField
ss0 @UserTask f0 '' #zField
ss0 @SignalBoundaryEvent f1 '' #zField
>Proto ss0 ss0 signalElements #zField
ss0 f47 signalCode user:created #txt
ss0 f47 attachToBusinessCase true #txt
ss0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
    </language>
</elementInfo>
' #txt
ss0 f47 65 41 30 30 -40 17 #rect
ss0 f0 responseMappingAction 'out=in;
' #txt
ss0 f0 168 42 112 44 0 -7 #rect
ss0 f1 actionTable 'out=in;
' #txt
ss0 f1 signalCode admin:quit:<%=in.user.userKey%> #txt
ss0 f1 attachedToRef 16BBC3FED3A47640-f0 #txt
ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:userKey</name>
    </language>
</elementInfo>
' #txt
ss0 f1 241 81 30 30 -72 20 #rect
>Proto ss0 .type screenshot.project.SignalElementsDataClass #txt
>Proto ss0 .processKind NORMAL #txt
>Proto ss0 0 0 32 24 18 0 #rect
>Proto ss0 @|BIcon #fIcon
