[Ivy]
16F1316F4E4478CA 7.5.0 #module
>Proto >Proto Collection #zClass
As0 AllElementsInscribedSubProcess Big #zClass
As0 B #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @StartSub f0 '' #zField
As0 @EndSub f1 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AllElementsInscribedSubProcess #zField
As0 f0 inParamDecl '<String product,Integer quantity,String requester,Double unitPrice> param;' #txt
As0 f0 inParamTable 'out.product=param.product;
out.quantity=param.quantity;
out.requester=param.requester;
out.unitPrice=param.unitPrice;
' #txt
As0 f0 outParamDecl '<String product,Integer quantity,String requester,Double unitPrice> result;' #txt
As0 f0 outParamTable 'result.product=in.product;
result.quantity=in.quantity;
result.requester=in.requester;
result.unitPrice=in.unitPrice;
' #txt
As0 f0 callSignature call(String,Integer,String,Double) #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(String,Integer,String,Double)</name>
    </language>
</elementInfo>
' #txt
As0 f0 81 49 30 30 -103 17 #rect
As0 f0 @|StartSubIcon #fIcon
As0 f1 337 49 30 30 0 15 #rect
As0 f1 @|EndSubIcon #fIcon
As0 f2 111 64 337 64 #arcP
>Proto As0 .type screenshot.project.Order #txt
>Proto As0 .processKind CALLABLE_SUB #txt
>Proto As0 0 0 32 24 18 0 #rect
>Proto As0 @|BIcon #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
