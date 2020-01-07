[Ivy]
0169A49845D37011 7.5.0 #module
>Proto >Proto Collection #zClass
Ay0 Activity Big #zClass
Ay0 B #cInfo
Ay0 #process
Ct0 Component Big #zClass
Ct0 B #cInfo
Ay0 @TextInP .type .type #zField
Ay0 @TextInP .processKind .processKind #zField
Ay0 @AnnotationInP-0n ai ai #zField
Ay0 @MessageFlowInP-0n messageIn messageIn #zField
Ay0 @MessageFlowOutP-0n messageOut messageOut #zField
Ay0 @TextInP .xml .xml #zField
Ay0 @TextInP .responsibility .responsibility #zField
Ay0 @UserDialog f2 '' #zField
Ay0 @Page f3 '' #zField
Ay0 @UserTask f4 '' #zField
Ay0 @GridStep f5 '' #zField
Ay0 @WSElement f12 '' #zField
Ay0 @RestClientCall f14 '' #zField
Ay0 @EMail f16 '' #zField
Ay0 Ct0 S10 'Sub 1' #zField
Ay0 @CallSub f19 '' #zField
Ay0 @Trigger f21 '' #zField
Ay0 @ProgramInterface f23 '' #zField
Ay0 @InfoButton f26 '' #zField
Ay0 @DBStep f6 '' #zField
Ay0 @AnnotationArc f0 '' #zField
Ay0 @PushWFArc f1 '' #zField
>Proto Ay0 Ay0 Activity #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @PushWFArc f0 '' #zField
>Proto Ct0 Ct0 Component #zField
Ay0 f2 dialogId ch.ivyteam.wf.PaymentRegistration #txt
Ay0 f2 startMethod start(ch.ivyteam.test.Person) #txt
Ay0 f2 requestActionDecl '<ch.ivyteam.test.Person person> param;' #txt
Ay0 f2 responseActionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
Ay0 f2 responseMappingAction 'out=in;
' #txt
Ay0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>User Dialog</name>
    </language>
</elementInfo>
' #txt
Ay0 f2 40 42 112 44 -36 -7 #rect
Ay0 f2 @|UserDialogIcon #fIcon
Ay0 f3 template "layouts/basic.xhtml" #txt
Ay0 f3 type ch.ivyteam.documentation.project.Data #txt
Ay0 f3 skipLink skip.ivp #txt
Ay0 f3 sortLink sort.ivp #txt
Ay0 f3 templateWizard '#
#Mon Apr 15 11:14:12 CEST 2019
' #txt
Ay0 f3 pageArchivingActivated false #txt
Ay0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Web Page</name>
    </language>
</elementInfo>
' #txt
Ay0 f3 @C|.responsibility Everybody #txt
Ay0 f3 200 42 112 44 -31 -7 #rect
Ay0 f3 @|PageIcon #fIcon
Ay0 f4 dialogId ch.ivyteam.wf.PaymentRegistration #txt
Ay0 f4 startMethod start(ch.ivyteam.test.Person) #txt
Ay0 f4 requestActionDecl '<ch.ivyteam.test.Person person> param;' #txt
Ay0 f4 responseActionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
Ay0 f4 responseMappingAction 'out=in;
' #txt
Ay0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>User Task</name>
    </language>
</elementInfo>
' #txt
Ay0 f4 360 42 112 44 -31 -7 #rect
Ay0 f4 @|UserTaskIcon #fIcon
Ay0 f5 actionTable 'out=in;
' #txt
Ay0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Script Step</name>
    </language>
</elementInfo>
' #txt
Ay0 f5 520 42 112 44 -34 -7 #rect
Ay0 f5 @|StepIcon #fIcon
Ay0 f12 actionTable 'out=in;
' #txt
Ay0 f12 beanConfig "" #txt
Ay0 f12 timeout 0 #txt
Ay0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WS Call</name>
    </language>
</elementInfo>
' #txt
Ay0 f12 680 138 112 44 -22 -7 #rect
Ay0 f12 @|WebServiceIcon #fIcon
Ay0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Rest Client Call</name>
    </language>
</elementInfo>
' #txt
Ay0 f14 520 138 112 44 -46 -7 #rect
Ay0 f14 @|RestClientCallIcon #fIcon
Ay0 f16 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
Ay0 f16 type ch.ivyteam.documentation.project.Data #txt
Ay0 f16 timeout 0 #txt
Ay0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>E-Mail Step</name>
    </language>
</elementInfo>
' #txt
Ay0 f16 360 138 112 44 -34 -7 #rect
Ay0 f16 @|EMailIcon #fIcon
Ay0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Sub 1</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ay0 S10 200 138 112 44 -18 -7 #rect
Ay0 S10 @|BIcon #fIcon
Ay0 f19 processCall AllElements/MinimalInscription/SubProcess:call() #txt
Ay0 f19 requestActionDecl '<> param;' #txt
Ay0 f19 responseActionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
Ay0 f19 responseMappingAction 'out=in;
' #txt
Ay0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SubProcess</name>
    </language>
</elementInfo>
' #txt
Ay0 f19 40 138 112 44 -37 -7 #rect
Ay0 f19 @|CallSubIcon #fIcon
Ay0 f21 processCall AllElements/MinimalInscription/EventAndGateway:start() #txt
Ay0 f21 requestActionDecl '<> param;' #txt
Ay0 f21 responseActionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
Ay0 f21 responseMappingAction 'out=in;
' #txt
Ay0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>EventAndGateway</name>
    </language>
</elementInfo>
' #txt
Ay0 f21 32 234 128 44 -56 -7 #rect
Ay0 f21 @|TriggerIcon #fIcon
Ay0 f23 type ch.ivyteam.documentation.project.Data #txt
Ay0 f23 outerBean "ch.ivyteam.ivy.process.extension.beans.Wait" #txt
Ay0 f23 timeout 0 #txt
Ay0 f23 beanConfig "" #txt
Ay0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Pi Step</name>
    </language>
</elementInfo>
' #txt
Ay0 f23 200 234 112 44 -22 -7 #rect
Ay0 f23 @|ProgramInterfaceIcon #fIcon
Ay0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>my note</name>
    </language>
</elementInfo>
' #txt
Ay0 f26 360 241 64 30 -25 -7 #rect
Ay0 f26 @|IBIcon #fIcon
Ay0 f6 actionDecl 'ch.ivyteam.documentation.project.Data out;
' #txt
Ay0 f6 actionTable 'out=in;
' #txt
Ay0 f6 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE SELECT SYSTEM  ""sqlStatements.dtd"">
<SELECT></SELECT>' #txt
Ay0 f6 dbUrl IvySystemDatabase #txt
Ay0 f6 lotSize 2147483647 #txt
Ay0 f6 startIdx 0 #txt
Ay0 f6 type ch.ivyteam.documentation.project.Data #txt
Ay0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Db Activity</name>
    </language>
</elementInfo>
' #txt
Ay0 f6 680 42 112 44 -32 -7 #rect
Ay0 f6 @|DBStepIcon #fIcon
Ay0 f0 392 241 416 182 #arcP
Ay0 f1 expr in #txt
Ay0 f1 outCond ivp=="TaskA.ivp" #txt
Ay0 f1 472 64 520 64 #arcP
>Proto Ay0 .type ch.ivyteam.documentation.project.Data #txt
>Proto Ay0 .processKind NORMAL #txt
>Proto Ay0 0 0 32 24 18 0 #rect
>Proto Ay0 @|BIcon #fIcon
Ct0 g0 563 243 26 26 0 5 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g1 51 243 26 26 0 5 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 f0 563 256 77 256 #arcP
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ay0 f26 ao f0 tail #connect
Ay0 f0 head f16 @CG|ai #connect
Ay0 f4 out f1 tail #connect
Ay0 f1 head f5 mainIn #connect
Ct0 g0 m f0 tail #connect
Ct0 f0 head g1 m #connect
Ct0 0 0 640 512 0 #ivRect
