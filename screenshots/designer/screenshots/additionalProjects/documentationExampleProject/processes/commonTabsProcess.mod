[Ivy]
168F0C6DF682858E 9.4.3 #module
>Proto >Proto Collection #zClass
cs0 commonTabsProcess Big #zClass
cs0 B #cInfo
cs0 #process
cs0 @TextInP .colors .colors #zField
cs0 @TextInP color color #zField
cs0 @TextInP .type .type #zField
cs0 @TextInP .processKind .processKind #zField
cs0 @AnnotationInP-0n ai ai #zField
cs0 @MessageFlowInP-0n messageIn messageIn #zField
cs0 @MessageFlowOutP-0n messageOut messageOut #zField
cs0 @TextInP .xml .xml #zField
cs0 @TextInP .responsibility .responsibility #zField
cs0 @StartRequest f0 '' #zField
cs0 @EndTask f1 '' #zField
cs0 @GridStep f3 '' #zField
cs0 @PushWFArc f4 '' #zField
cs0 @UserTask f5 '' #zField
cs0 @TkArc f6 '' #zField
cs0 @PushWFArc f2 '' #zField
>Proto cs0 cs0 commonTabsProcess #zField
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
cs0 f1 529 49 30 30 0 15 #rect
cs0 f3 actionTable 'out=in;
out.addPerson="John Doe";
out.organisation="AXON ivy";
' #txt
cs0 f3 actionCode 'import org.apache.commons.lang3.StringUtils;

if(StringUtils.isNotEmpty(in.addPerson))
{
	ivy.log.debug("About to add ''" + in.addPerson + "'' to " + in.organisation);
}' #txt
cs0 f3 @CG|tags PERSON,COMMON #txt
cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add Person to Organisation</name>
        <desc>Checks if user id `userid` exists:
- If `true` then the user id is transformed into user name, user address and user location.
- If `false` then the flag *unknownuser* is set.
Uses the **system wide user id** list to find and expand users.

# Markdown formatting
You may format descriptive text **bold** or *italic* or ++underlined++ or simply as `code`.
While you hover the element, these markups will be rendered as nice HTML to the end-user.</desc>
        <tool>
            <toolName>Documentation of user ID list</toolName>
            <url>http://acme.greatproduct.com/internal/doc/useridlist.html</url>
        </tool>
    </language>
</elementInfo>
' #txt
cs0 f3 128 42 192 44 -86 -7 #rect
cs0 f4 expr out #txt
cs0 f4 111 64 128 64 #arcP
cs0 f5 requestActionDecl '<> param;' #txt
cs0 f5 responseActionDecl 'ch.ivyteam.documentation.project.AddContactData out;
' #txt
cs0 f5 responseMappingAction 'out=in;
out.addPerson="Henry Ford";
out.organisation="Ford";
' #txt
cs0 f5 responseActionCode 'out.persons = com.axonivy.EmployeeLookup.getEmployees("Ford");' #txt
cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Person</name>
    </language>
</elementInfo>
' #txt
cs0 f5 360 42 112 44 -41 -7 #rect
cs0 f6 expr out #txt
cs0 f6 320 64 360 64 #arcP
cs0 f2 expr in #txt
cs0 f2 outCond ivp=="TaskA.ivp" #txt
cs0 f2 472 64 529 64 #arcP
>Proto cs0 .type ch.ivyteam.documentation.project.AddContactData #txt
>Proto cs0 .processKind NORMAL #txt
>Proto cs0 0 0 32 24 18 0 #rect
>Proto cs0 @|BIcon #fIcon
cs0 f0 mainOut f4 tail #connect
cs0 f4 head f3 mainIn #connect
cs0 f3 mainOut f6 tail #connect
cs0 f6 head f5 in #connect
cs0 f5 out f2 tail #connect
cs0 f2 head f1 mainIn #connect
