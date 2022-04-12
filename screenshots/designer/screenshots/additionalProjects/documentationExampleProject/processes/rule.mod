[Ivy]
175083477C6BF05D 9.4.3 #module
>Proto >Proto Collection #zClass
re0 rule Big #zClass
re0 B #cInfo
re0 #process
re0 @TextInP .colors .colors #zField
re0 @TextInP color color #zField
re0 @TextInP .type .type #zField
re0 @TextInP .processKind .processKind #zField
re0 @TextInP .xml .xml #zField
re0 @TextInP .responsibility .responsibility #zField
re0 @StartRequest f0 '' #zField
re0 @EndTask f1 '' #zField
re0 @RuleActivity f3 '' #zField
re0 @PushWFArc f4 '' #zField
re0 @PushWFArc f2 '' #zField
>Proto re0 re0 rule #zField
re0 f0 outLink start.ivp #txt
re0 f0 inParamDecl '<> param;' #txt
re0 f0 requestEnabled true #txt
re0 f0 triggerEnabled false #txt
re0 f0 callSignature start() #txt
re0 f0 caseData businessCase.attach=true #txt
re0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
re0 f0 @C|.responsibility Everybody #txt
re0 f0 81 49 30 30 -21 17 #rect
re0 f1 337 49 30 30 0 15 #rect
re0 f3 @AbstractThirdPartyProgramInterface|type screenshot.project.RuleData #txt
re0 f3 @AbstractThirdPartyProgramInterface|timeout 0 #txt
re0 f3 @AbstractThirdPartyProgramInterface|beanConfig "{""namespace"":""rule.demo"",""dataObject"":""in.member""}" #txt
re0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ruleActivity</name>
    </language>
</elementInfo>
' #txt
re0 f3 168 42 112 44 -29 -8 #rect
re0 f4 111 64 168 64 #arcP
re0 f2 expr out #txt
re0 f2 280 64 337 64 #arcP
>Proto re0 .type screenshot.project.RuleData #txt
>Proto re0 .processKind NORMAL #txt
>Proto re0 0 0 32 24 18 0 #rect
>Proto re0 @|BIcon #fIcon
re0 f0 mainOut f4 tail #connect
re0 f4 head f3 @AbstractThirdPartyProgramInterface|mainIn #connect
re0 f3 @AbstractThirdPartyProgramInterface|mainOut f2 tail #connect
re0 f2 head f1 mainIn #connect
