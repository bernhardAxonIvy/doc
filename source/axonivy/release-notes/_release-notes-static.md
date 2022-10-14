

## 9.4.0

We strongly recommend to install this update release because it fixes security issues!

### Improvements

* [XIVY-9127](https://axonivy.atlassian.net/browse/XIVY-9127) Upgrade CXF web service library to version 3.5 to support Java 17 
* [XIVY-9112](https://axonivy.atlassian.net/browse/XIVY-9112) Upgrade Jackson to version 2.13.3 to support Java 17 
* [XIVY-9091](https://axonivy.atlassian.net/browse/XIVY-9091) Update DB drivers to support Java 17 
* [XIVY-9065](https://axonivy.atlassian.net/browse/XIVY-9065) Make role to external group mapping configurable in ivy.yaml 
* [XIVY-9057](https://axonivy.atlassian.net/browse/XIVY-9057) Upgrade Hibernate to version 5.4.33.Final to support Java 17 
* [XIVY-9056](https://axonivy.atlassian.net/browse/XIVY-9056) Upgrade Guice to version 5.1.0 to support Java 17 
* [XIVY-8950](https://axonivy.atlassian.net/browse/XIVY-8950) Set string parameters as Unicode to false to improve MsSQL Server performance 
* [XIVY-8949](https://axonivy.atlassian.net/browse/XIVY-8949) Set name of IvyProjectClassLoader to improve ClassCastException 
* [XIVY-8914](https://axonivy.atlassian.net/browse/XIVY-8914) Support PrimeFaces <p:barcode> component 
* [XIVY-8877](https://axonivy.atlassian.net/browse/XIVY-8877) Enable parallel class loading in IvyProjectClassLoader 
* [XIVY-8702](https://axonivy.atlassian.net/browse/XIVY-8702) Support OpenAPI inscription for xml-payload 
* [XIVY-8671](https://axonivy.atlassian.net/browse/XIVY-8671) DB Activity with macro-edit support and toolbar actions 
* [XIVY-8670](https://axonivy.atlassian.net/browse/XIVY-8670) Robust Database Activity scripting 
* [XIVY-8669](https://axonivy.atlassian.net/browse/XIVY-8669) Update log4j to 2.17.2 
* [XIVY-8503](https://axonivy.atlassian.net/browse/XIVY-8503) Translate WebPage Activity Inscription to SWT 
* [XIVY-8481](https://axonivy.atlassian.net/browse/XIVY-8481) Show Gravatars in Engine Cockpit for users and admins 
* [XIVY-8266](https://axonivy.atlassian.net/browse/XIVY-8266) Support Windows Server 2022  
* [XIVY-8253](https://axonivy.atlassian.net/browse/XIVY-8253) Auto-detect StandardProcess.DefaultPages 
* [XIVY-8206](https://axonivy.atlassian.net/browse/XIVY-8206) Update designer guide Deployment chapter 
* [XIVY-8108](https://axonivy.atlassian.net/browse/XIVY-8108) Allow to define a global BpmError message in CMS 
* [XIVY-7968](https://axonivy.atlassian.net/browse/XIVY-7968) Allow deployment of own webapp directory per application 
* [XIVY-7959](https://axonivy.atlassian.net/browse/XIVY-7959) Upgrade to Elasticsearch 7.17 
* [XIVY-7519](https://axonivy.atlassian.net/browse/XIVY-7519) Upgrade to Lucene 8.4 
* [XIVY-7505](https://axonivy.atlassian.net/browse/XIVY-7505) Support Windows 11 for the Designer and Engine 
* [XIVY-7485](https://axonivy.atlassian.net/browse/XIVY-7485) Add Websocket support to tomcat 
* [XIVY-7371](https://axonivy.atlassian.net/browse/XIVY-7371) Document how to build a docker image with maven in the project build examples 
* [XIVY-7236](https://axonivy.atlassian.net/browse/XIVY-7236) Open task in IFrame or not, depending on embedInFrame custom field 
* [XIVY-7218](https://axonivy.atlassian.net/browse/XIVY-7218) New EngineConfigCLI command to convert IvyProjects 
* [XIVY-7027](https://axonivy.atlassian.net/browse/XIVY-7027) Add an Import Wizard Item to directly import Portal 
* [XIVY-6933](https://axonivy.atlassian.net/browse/XIVY-6933) Improve notification mail subject for new tasks 
* [XIVY-6924](https://axonivy.atlassian.net/browse/XIVY-6924) Upgrade to Eclipse 2022-03 
* [XIVY-6292](https://axonivy.atlassian.net/browse/XIVY-6292) Maven plugin should bind standard maven resources plugin to IAR lifecycle 
* [XIVY-4601](https://axonivy.atlassian.net/browse/XIVY-4601) Provide a Public API to create dynamic roles 
* [XIVY-3200](https://axonivy.atlassian.net/browse/XIVY-3200) Translate Webservice Tab of WsStart Event to SWT 
* [XIVY-3162](https://axonivy.atlassian.net/browse/XIVY-3162) Translate DB Activity tab to SWT 
* [XIVY-3155](https://axonivy.atlassian.net/browse/XIVY-3155) Translate EMail Activity Inscription Tabs to SWT 
* [XIVY-3100](https://axonivy.atlassian.net/browse/XIVY-3100) Expose usage of Deprecated API in ivyScript code editor 
* [XIVY-3085](https://axonivy.atlassian.net/browse/XIVY-3085) Translate Complex PI Inscription tabs to SWT 
* [XIVY-3081](https://axonivy.atlassian.net/browse/XIVY-3081) Provide an example of how to run Axon Ivy Engine in Kubernetes 
* [XIVY-3063](https://axonivy.atlassian.net/browse/XIVY-3063) Scope business data to a security context 

### New Features

* [XIVY-632](https://axonivy.atlassian.net/browse/XIVY-632) Support multilanguage in task names 
* [XIVY-1026](https://axonivy.atlassian.net/browse/XIVY-1026) CMS API without creating a list to replace template 
* [XIVY-1973](https://axonivy.atlassian.net/browse/XIVY-1973) Support multilanguage in case names 
* [XIVY-2854](https://axonivy.atlassian.net/browse/XIVY-2854) Use same SecurityContext/WorkflowContext for multiple applications 
* [XIVY-2980](https://axonivy.atlassian.net/browse/XIVY-2980) Introduce the next ivy version in JIRA during version raise build 
* [XIVY-3314](https://axonivy.atlassian.net/browse/XIVY-3314) Enable cms templating with different locale 
* [XIVY-3492](https://axonivy.atlassian.net/browse/XIVY-3492) Brand Axon.ivy Engine and/or Ivy Application Prototype 
* [XIVY-3572](https://axonivy.atlassian.net/browse/XIVY-3572) Easily change colors and icons to match the brand of a customer 
* [XIVY-3824](https://axonivy.atlassian.net/browse/XIVY-3824) Upgrade PrimeFaces to version 11.0 
* [XIVY-4421](https://axonivy.atlassian.net/browse/XIVY-4421) Multilingual task notification mails 
* [XIVY-4534](https://axonivy.atlassian.net/browse/XIVY-4534) Rethink the CMS concept 
* [XIVY-5283](https://axonivy.atlassian.net/browse/XIVY-5283) Streamline concepts for application configuration 
* [XIVY-5607](https://axonivy.atlassian.net/browse/XIVY-5607) Support Azure AD as security system 
* [XIVY-5609](https://axonivy.atlassian.net/browse/XIVY-5609) Refactor security systems to identity provider 
* [XIVY-5610](https://axonivy.atlassian.net/browse/XIVY-5610) Make identity provider configurable  
* [XIVY-5611](https://axonivy.atlassian.net/browse/XIVY-5611) Login page must support identity providers 
* [XIVY-5647](https://axonivy.atlassian.net/browse/XIVY-5647) Upgrade to MyFaces 2.2.15 and Tomcat 9.0.64 
* [XIVY-5850](https://axonivy.atlassian.net/browse/XIVY-5850) Unpack IAR to its original location to preserve GIT status 
* [XIVY-5945](https://axonivy.atlassian.net/browse/XIVY-5945) Multiple Applications share Security and Workflow 
* [XIVY-5958](https://axonivy.atlassian.net/browse/XIVY-5958) Analyze and document requirements for multi app, multi engine, multi mandates security contexts 
* [XIVY-5960](https://axonivy.atlassian.net/browse/XIVY-5960) Analyze what features of Tomcat can be used to support multiple Application per SecurityContexts 
* [XIVY-5991](https://axonivy.atlassian.net/browse/XIVY-5991) Next Generation Process Editor 
* [XIVY-6241](https://axonivy.atlassian.net/browse/XIVY-6241) Beautify toolbar and quick action bar 
* [XIVY-6392](https://axonivy.atlassian.net/browse/XIVY-6392) Update SnakeYaml to 1.31 official release 
* [XIVY-6627](https://axonivy.atlassian.net/browse/XIVY-6627) Modern CMS structure 
* [XIVY-6638](https://axonivy.atlassian.net/browse/XIVY-6638) Prepare for SCM ready ivy process serialization 
* [XIVY-6668](https://axonivy.atlassian.net/browse/XIVY-6668) Monitor slow requests in Engine Cockpit  
* [XIVY-6704](https://axonivy.atlassian.net/browse/XIVY-6704) Add annotation quick action for nodes  
* [XIVY-6710](https://axonivy.atlassian.net/browse/XIVY-6710) Support change custom icon on new process editor 
* [XIVY-6711](https://axonivy.atlassian.net/browse/XIVY-6711) Improve Connectors on new process editor 
* [XIVY-6712](https://axonivy.atlassian.net/browse/XIVY-6712) Debug support for new process editor (Eclipse integration) 
* [XIVY-6713](https://axonivy.atlassian.net/browse/XIVY-6713) Support Keyboard Shortcuts on new process editor 
* [XIVY-6717](https://axonivy.atlassian.net/browse/XIVY-6717) Create element quick action in new process editor 
* [XIVY-6747](https://axonivy.atlassian.net/browse/XIVY-6747) Improve JSON Process format  
* [XIVY-6826](https://axonivy.atlassian.net/browse/XIVY-6826) Auto synch problem markers in new process editor 
* [XIVY-6827](https://axonivy.atlassian.net/browse/XIVY-6827) Improve data model handling in new process editor 
* [XIVY-6849](https://axonivy.atlassian.net/browse/XIVY-6849) Update our debian package and install-ivy-dependencies.sh to Adoptium as soon as debian package is available 
* [XIVY-6870](https://axonivy.atlassian.net/browse/XIVY-6870) Simplify and streamline Process label formatting 
* [XIVY-6871](https://axonivy.atlassian.net/browse/XIVY-6871) Simplify and streamline Process coloring options 
* [XIVY-6900](https://axonivy.atlassian.net/browse/XIVY-6900) Language and formatting handling concept 
* [XIVY-6919](https://axonivy.atlassian.net/browse/XIVY-6919) Upgrade docker images to eclipse-temurin based images 
* [XIVY-6923](https://axonivy.atlassian.net/browse/XIVY-6923) Upgrade to Java 17 
* [XIVY-6962](https://axonivy.atlassian.net/browse/XIVY-6962) Replace process file format with a more developer friendly one 
* [XIVY-6963](https://axonivy.atlassian.net/browse/XIVY-6963) Replace CMS File Storage with a more web IDE friendlier format 
* [XIVY-7091](https://axonivy.atlassian.net/browse/XIVY-7091) Improve and refactor animation in new process editor 
* [XIVY-7109](https://axonivy.atlassian.net/browse/XIVY-7109) Ease connector testing - overriding configuration in a generic way over AppFixture 
* [XIVY-7138](https://axonivy.atlassian.net/browse/XIVY-7138) Document dev.wf.ui 
* [XIVY-7161](https://axonivy.atlassian.net/browse/XIVY-7161) Configure Data.AppDirectory and Data.FilesDirectory in Setup Wizard 
* [XIVY-7162](https://axonivy.atlassian.net/browse/XIVY-7162) Improve user guidance after migration wizard 
* [XIVY-7178](https://axonivy.atlassian.net/browse/XIVY-7178) Remove element style 'classic' -> use only 'bpmn' 
* [XIVY-7186](https://axonivy.atlassian.net/browse/XIVY-7186) Developer Workflow UI  
* [XIVY-7196](https://axonivy.atlassian.net/browse/XIVY-7196) Support any file types in the CMS 
* [XIVY-7264](https://axonivy.atlassian.net/browse/XIVY-7264) Easily change icons and colors to match customers CI/CD 
* [XIVY-7265](https://axonivy.atlassian.net/browse/XIVY-7265) Add Branding View in Engine Cockpit 
* [XIVY-7285](https://axonivy.atlassian.net/browse/XIVY-7285) Content Management Documentation 
* [XIVY-7306](https://axonivy.atlassian.net/browse/XIVY-7306) Show message if new process editor is started without webview2 installed on windows 
* [XIVY-7335](https://axonivy.atlassian.net/browse/XIVY-7335) Automate changelog+ReleaseNotes.txt updates after releasing 
* [XIVY-7340](https://axonivy.atlassian.net/browse/XIVY-7340) Automate Axon Ivy release announcement for community/flarum 
* [XIVY-7345](https://axonivy.atlassian.net/browse/XIVY-7345) Add option to clean up data caches in developer workflow UI 
* [XIVY-7347](https://axonivy.atlassian.net/browse/XIVY-7347) Concept meta data for custom fields 
* [XIVY-7376](https://axonivy.atlassian.net/browse/XIVY-7376) Implement language concept 
* [XIVY-7379](https://axonivy.atlassian.net/browse/XIVY-7379) Support CMS write operations on engine 
* [XIVY-7448](https://axonivy.atlassian.net/browse/XIVY-7448) Concept format of colors and texts in process JSON and GLSP editor 
* [XIVY-7459](https://axonivy.atlassian.net/browse/XIVY-7459) Integrate new GLSP process viewer in engine 
* [XIVY-7460](https://axonivy.atlassian.net/browse/XIVY-7460) Add more deprecated features to the deprecation web site 
* [XIVY-7468](https://axonivy.atlassian.net/browse/XIVY-7468) Export and import CMS in XLSX format 
* [XIVY-7493](https://axonivy.atlassian.net/browse/XIVY-7493) Beautiful CMS public API 
* [XIVY-7500](https://axonivy.atlassian.net/browse/XIVY-7500) Responsive Deployment trace output in the Engine-Cockpit 
* [XIVY-7516](https://axonivy.atlassian.net/browse/XIVY-7516) Introduce Security Entity in System Database 
* [XIVY-7517](https://axonivy.atlassian.net/browse/XIVY-7517) Reference User and Role by SecurityMemberId instead of the primary key UserId and RoleId 
* [XIVY-7520](https://axonivy.atlassian.net/browse/XIVY-7520) Split search system from core features 
* [XIVY-7525](https://axonivy.atlassian.net/browse/XIVY-7525) ColorPicker for the Engine Cockpit Branding view 
* [XIVY-7535](https://axonivy.atlassian.net/browse/XIVY-7535) Support read-only and iar mode in new process editor 
* [XIVY-7536](https://axonivy.atlassian.net/browse/XIVY-7536) New process editor as default process editor 
* [XIVY-7537](https://axonivy.atlassian.net/browse/XIVY-7537) Remove the old AWT based process editor 
* [XIVY-7618](https://axonivy.atlassian.net/browse/XIVY-7618) Provide more details in error message why a PMV cannot be activated 
* [XIVY-7635](https://axonivy.atlassian.net/browse/XIVY-7635) Improve Database Execution History in Engine Cockpit 
* [XIVY-7639](https://axonivy.atlassian.net/browse/XIVY-7639) Enable ivyScript validation by default 
* [XIVY-7655](https://axonivy.atlassian.net/browse/XIVY-7655) Release 9.4 
* [XIVY-7671](https://axonivy.atlassian.net/browse/XIVY-7671) More url parameters to configure the Process Viewer 
* [XIVY-7691](https://axonivy.atlassian.net/browse/XIVY-7691) Leave repo.axonivy.io and repo.axonivy.com 
* [XIVY-7720](https://axonivy.atlassian.net/browse/XIVY-7720) Improve navigation in new process editor 
* [XIVY-7767](https://axonivy.atlassian.net/browse/XIVY-7767) Make page size, delay time and period time of WrongBusinessCaseState job configurable 
* [XIVY-7772](https://axonivy.atlassian.net/browse/XIVY-7772) BPMN Nodes creation support in new process editor 
* [XIVY-7773](https://axonivy.atlassian.net/browse/XIVY-7773) Market connector element creation in new process editor 
* [XIVY-7811](https://axonivy.atlassian.net/browse/XIVY-7811) Color picker to name and define custom colors in my process 
* [XIVY-7820](https://axonivy.atlassian.net/browse/XIVY-7820) Add Rule Activity to element palette in new process editor 
* [XIVY-7822](https://axonivy.atlassian.net/browse/XIVY-7822) Direct start of a process via the start element in the new process editor 
* [XIVY-7826](https://axonivy.atlassian.net/browse/XIVY-7826) Provide new PrimeFaces Theme Freya 
* [XIVY-7850](https://axonivy.atlassian.net/browse/XIVY-7850) Improve viewport of process editor 
* [XIVY-7873](https://axonivy.atlassian.net/browse/XIVY-7873) Improve log if a database lock cannot be acquired 
* [XIVY-7885](https://axonivy.atlassian.net/browse/XIVY-7885) Snap Connector bend points to grid 
* [XIVY-7924](https://axonivy.atlassian.net/browse/XIVY-7924) Drop support to connect Annotation/Note to Arc/Connector 
* [XIVY-7956](https://axonivy.atlassian.net/browse/XIVY-7956) Improve animation 
* [XIVY-7957](https://axonivy.atlassian.net/browse/XIVY-7957) Show process / case map behind a case / business case 
* [XIVY-7966](https://axonivy.atlassian.net/browse/XIVY-7966) Evaluate the performance of UUID keys in system databases 
* [XIVY-7967](https://axonivy.atlassian.net/browse/XIVY-7967) Provide a new look and feel for Axon Ivy 10 (Freya) 
* [XIVY-7969](https://axonivy.atlassian.net/browse/XIVY-7969) Navigate from new process editor to process data editor 
* [XIVY-7977](https://axonivy.atlassian.net/browse/XIVY-7977) JSON Process polishing for 9.4 
* [XIVY-7980](https://axonivy.atlassian.net/browse/XIVY-7980) JSON based data format to store processes 
* [XIVY-7981](https://axonivy.atlassian.net/browse/XIVY-7981) Migrate Datawrapper centric configs 
* [XIVY-7991](https://axonivy.atlassian.net/browse/XIVY-7991) Migrate to Java 17 
* [XIVY-8036](https://axonivy.atlassian.net/browse/XIVY-8036) Project conversion for PrimeFaces 11 
* [XIVY-8043](https://axonivy.atlassian.net/browse/XIVY-8043) Use Freya theme for cockpit 
* [XIVY-8044](https://axonivy.atlassian.net/browse/XIVY-8044) Use Freya theme for dev-workflow-ui and other core pages 
* [XIVY-8048](https://axonivy.atlassian.net/browse/XIVY-8048) GLSP uses a Dispatcher Thread for each websocket connection 
* [XIVY-8105](https://axonivy.atlassian.net/browse/XIVY-8105) Role handling and deployment in multi app security context 
* [XIVY-8106](https://axonivy.atlassian.net/browse/XIVY-8106) Concept for workflow documents 
* [XIVY-8107](https://axonivy.atlassian.net/browse/XIVY-8107) Concept for security system centric configurations in app.yaml 
* [XIVY-8113](https://axonivy.atlassian.net/browse/XIVY-8113) Remove CallAndWait element and its third-party equivalent 
* [XIVY-8122](https://axonivy.atlassian.net/browse/XIVY-8122) Improvements for multi app security system 
* [XIVY-8123](https://axonivy.atlassian.net/browse/XIVY-8123) Auto-Login in other apps in same security context 
* [XIVY-8150](https://axonivy.atlassian.net/browse/XIVY-8150) Merge and Switch to JSON Processes 
* [XIVY-8154](https://axonivy.atlassian.net/browse/XIVY-8154) Document and write migration notes for multi app security 
* [XIVY-8162](https://axonivy.atlassian.net/browse/XIVY-8162) Meta information for custom fields 
* [XIVY-8170](https://axonivy.atlassian.net/browse/XIVY-8170) Check dev-workflow-ui and run it isolated in an  own application 
* [XIVY-8172](https://axonivy.atlassian.net/browse/XIVY-8172) No longer change security system of an application 
* [XIVY-8205](https://axonivy.atlassian.net/browse/XIVY-8205) Missing index info in tooltip of Input and output arcs of gateways 
* [XIVY-8215](https://axonivy.atlassian.net/browse/XIVY-8215) Documentation: General overhaul 
* [XIVY-8254](https://axonivy.atlassian.net/browse/XIVY-8254) Move EmailNotification settings to ivy.yaml (SecuritySystems) 
* [XIVY-8275](https://axonivy.atlassian.net/browse/XIVY-8275) Prepare update to Eclipse 2022-06 
* [XIVY-8312](https://axonivy.atlassian.net/browse/XIVY-8312) Deprecate PI element and AWT Inscription Stack for removal 
* [XIVY-8338](https://axonivy.atlassian.net/browse/XIVY-8338) Engine Cockpit test database connection without save 
* [XIVY-8355](https://axonivy.atlassian.net/browse/XIVY-8355) Reuse ivy session on first rest service call on another application 
* [XIVY-8369](https://axonivy.atlassian.net/browse/XIVY-8369) GLSP Editor should not reports errors in a dialog 
* [XIVY-8372](https://axonivy.atlassian.net/browse/XIVY-8372) Enhance project migration UI to let user control what is converted 
* [XIVY-8397](https://axonivy.atlassian.net/browse/XIVY-8397) Provide API for Process Viewer and Case Map Viewer Url generation 
* [XIVY-8398](https://axonivy.atlassian.net/browse/XIVY-8398) Measure and improve performance issues introduced by .json process format 
* [XIVY-8401](https://axonivy.atlassian.net/browse/XIVY-8401) Problems using Icon libraries in HtmlDialog editor 
* [XIVY-8416](https://axonivy.atlassian.net/browse/XIVY-8416) Use Freya theme for ivy demo projects 
* [XIVY-8446](https://axonivy.atlassian.net/browse/XIVY-8446) Trim Freya theme for Axon Ivy 
* [XIVY-8504](https://axonivy.atlassian.net/browse/XIVY-8504) Update to latest glsp client/server 
* [XIVY-8512](https://axonivy.atlassian.net/browse/XIVY-8512) Move from Bitbucket to GitHub 
* [XIVY-8555](https://axonivy.atlassian.net/browse/XIVY-8555) Add system overview to engine cockpit 
* [XIVY-8557](https://axonivy.atlassian.net/browse/XIVY-8557) Add layout.js to LTS 8 templates 
* [XIVY-8584](https://axonivy.atlassian.net/browse/XIVY-8584) Properties or JSON Inscription view flicker hard if select elements with marquee tool in new process editor 
* [XIVY-8623](https://axonivy.atlassian.net/browse/XIVY-8623) Multilingual name and description for task and case 
* [XIVY-8624](https://axonivy.atlassian.net/browse/XIVY-8624) Prototype multi language fields in system database 
* [XIVY-8681](https://axonivy.atlassian.net/browse/XIVY-8681) Improve Maven workspace experience 
* [XIVY-8707](https://axonivy.atlassian.net/browse/XIVY-8707) Update to PrimeFaces 11.0.5 
* [XIVY-8754](https://axonivy.atlassian.net/browse/XIVY-8754) Show all signal and error boundary icons in new process editor 
* [XIVY-8768](https://axonivy.atlassian.net/browse/XIVY-8768) Add clear delay function on a delayed task 
* [XIVY-8775](https://axonivy.atlassian.net/browse/XIVY-8775) Report deprecation warnings for dev-wf-ui / engine-cockpit 
* [XIVY-8784](https://axonivy.atlassian.net/browse/XIVY-8784) Improve Scroll behavior in new process editor 
* [XIVY-8838](https://axonivy.atlassian.net/browse/XIVY-8838) Use custom field meta in dev workflow UI 
* [XIVY-8852](https://axonivy.atlassian.net/browse/XIVY-8852) Documentation: Use Correct Company and Product Names 
* [XIVY-8859](https://axonivy.atlassian.net/browse/XIVY-8859) Update API documentation for File 
* [XIVY-8864](https://axonivy.atlassian.net/browse/XIVY-8864) Implement Azure AD as identity provider 
* [XIVY-8875](https://axonivy.atlassian.net/browse/XIVY-8875) Beautify process 
* [XIVY-8888](https://axonivy.atlassian.net/browse/XIVY-8888) Replace all "Ivy" only mentions with "Axon Ivy" 
* [XIVY-8912](https://axonivy.atlassian.net/browse/XIVY-8912) Check Cluster Documentation 
* [XIVY-8951](https://axonivy.atlassian.net/browse/XIVY-8951) Enhance performance test to check if DB configurations are active 
* [XIVY-8961](https://axonivy.atlassian.net/browse/XIVY-8961) Ease the migration from ivy 8 to 10 for customers 
* [XIVY-9008](https://axonivy.atlassian.net/browse/XIVY-9008) Beautify Process Editor: Label handling 
* [XIVY-9009](https://axonivy.atlassian.net/browse/XIVY-9009) Beautify Process Editor 2 
* [XIVY-9107](https://axonivy.atlassian.net/browse/XIVY-9107) Document identity provider (azure / ldap) 
* [XIVY-9123](https://axonivy.atlassian.net/browse/XIVY-9123) Release 9.4 News Page and Migration Notes 
* [XIVY-9202](https://axonivy.atlassian.net/browse/XIVY-9202) Allow to login local users when external security system is not available 
* [XIVY-9206](https://axonivy.atlassian.net/browse/XIVY-9206) Doc - standardize images for SketchViz compatibility 
* [XIVY-9216](https://axonivy.atlassian.net/browse/XIVY-9216) Doc - Unify code/code-block role 
* [XIVY-9234](https://axonivy.atlassian.net/browse/XIVY-9234) Doc that preserveHostHeader must be set on IIS 
* [XIVY-9262](https://axonivy.atlassian.net/browse/XIVY-9262) PR Titles and Commit Messages: Allow for Dependabot generated messages 
* [XIVY-9327](https://axonivy.atlassian.net/browse/XIVY-9327) Update Graphics to newly supported Azure AD 
* [XIVY-9337](https://axonivy.atlassian.net/browse/XIVY-9337) Doc: include all node presets in graphics for WYSIWYG 
* [XIVY-9397](https://axonivy.atlassian.net/browse/XIVY-9397) Redirect to originalUrl after successful login with Microsoft 
* [XIVY-9399](https://axonivy.atlassian.net/browse/XIVY-9399) Raise Execution Environment to JavaSE-17 in designer.targetplatform 
* [IVYPORTAL-6250](https://axonivy.atlassian.net/browse/IVYPORTAL-6250) Statistics - New Charts - Cases by Category - Bar Chart 
* [IVYPORTAL-6463](https://axonivy.atlassian.net/browse/IVYPORTAL-6463) Password validation in Portal 
* [IVYPORTAL-10050](https://axonivy.atlassian.net/browse/IVYPORTAL-10050) Improve BusinessCase History in portal 
* [IVYPORTAL-10238](https://axonivy.atlassian.net/browse/IVYPORTAL-10238) Avatar/Picture for users and roles 
* [IVYPORTAL-11427](https://axonivy.atlassian.net/browse/IVYPORTAL-11427) Dynamic scaling for Charts  
* [IVYPORTAL-12038](https://axonivy.atlassian.net/browse/IVYPORTAL-12038) Support application favorite process and default charts customization by Variables 
* [IVYPORTAL-12241](https://axonivy.atlassian.net/browse/IVYPORTAL-12241) Support Opera as browser  
* [IVYPORTAL-12346](https://axonivy.atlassian.net/browse/IVYPORTAL-12346) Provide the possibility to add own menu items to User Menu 
* [IVYPORTAL-12394](https://axonivy.atlassian.net/browse/IVYPORTAL-12394) Behaviour when clicking on a task in task list 
* [IVYPORTAL-12576](https://axonivy.atlassian.net/browse/IVYPORTAL-12576) Create user guide document for new dashboard 
* [IVYPORTAL-12638](https://axonivy.atlassian.net/browse/IVYPORTAL-12638) GUI tests for task widget of new Dashboard 
* [IVYPORTAL-12650](https://axonivy.atlassian.net/browse/IVYPORTAL-12650) Improve handling of params with iframes 
* [IVYPORTAL-12666](https://axonivy.atlassian.net/browse/IVYPORTAL-12666) Create additional dashboards at runtime 
* [IVYPORTAL-12747](https://axonivy.atlassian.net/browse/IVYPORTAL-12747) Unify visibility rule for new dashboard vs full task/case/process list 
* [IVYPORTAL-12849](https://axonivy.atlassian.net/browse/IVYPORTAL-12849) Improve absence management  
* [IVYPORTAL-12902](https://axonivy.atlassian.net/browse/IVYPORTAL-12902) Process starts for Teams 
* [IVYPORTAL-12943](https://axonivy.atlassian.net/browse/IVYPORTAL-12943) Portal in Axon Ivy Market 
* [IVYPORTAL-12963](https://axonivy.atlassian.net/browse/IVYPORTAL-12963) Portal Login-Background using branding 
* [IVYPORTAL-12985](https://axonivy.atlassian.net/browse/IVYPORTAL-12985) Mention all Portal settings in document 
* [IVYPORTAL-12998](https://axonivy.atlassian.net/browse/IVYPORTAL-12998) Process Widget does not work correctly when user switches view/edit mode 
* [IVYPORTAL-13015](https://axonivy.atlassian.net/browse/IVYPORTAL-13015) Search in Cases and Tasks list in Portal - Space characters are not filtered 
* [IVYPORTAL-13017](https://axonivy.atlassian.net/browse/IVYPORTAL-13017) Findings and improvements dashboard 
* [IVYPORTAL-13060](https://axonivy.atlassian.net/browse/IVYPORTAL-13060) Expand icon is displayed when preview Combined Process 
* [IVYPORTAL-13069](https://axonivy.atlassian.net/browse/IVYPORTAL-13069) Category is not displayed if changing process type from full mode to compact mode 
* [IVYPORTAL-13070](https://axonivy.atlassian.net/browse/IVYPORTAL-13070) Filter options of process widget are invisible in edit mode 
* [IVYPORTAL-13071](https://axonivy.atlassian.net/browse/IVYPORTAL-13071) Reorder dashboards 
* [IVYPORTAL-13080](https://axonivy.atlassian.net/browse/IVYPORTAL-13080) Filter panel of widgets not disappear when open Manage Filter while widget is expanded 
* [IVYPORTAL-13081](https://axonivy.atlassian.net/browse/IVYPORTAL-13081) Saved filters not updated when add/remove filter while widget is expanded 
* [IVYPORTAL-13087](https://axonivy.atlassian.net/browse/IVYPORTAL-13087) Preview of Process widget not change to new selected process 
* [IVYPORTAL-13111](https://axonivy.atlassian.net/browse/IVYPORTAL-13111) Primefaces 7.0.25 - p:fileUpload ajax status issues 
* [IVYPORTAL-13171](https://axonivy.atlassian.net/browse/IVYPORTAL-13171) Log out AJAX error to console 
* [IVYPORTAL-13178](https://axonivy.atlassian.net/browse/IVYPORTAL-13178) Edit Wizard UI  
* [IVYPORTAL-13179](https://axonivy.atlassian.net/browse/IVYPORTAL-13179) Create new Dashboard Wizard 
* [IVYPORTAL-13180](https://axonivy.atlassian.net/browse/IVYPORTAL-13180) Edit Private / public dashboards 
* [IVYPORTAL-13187](https://axonivy.atlassian.net/browse/IVYPORTAL-13187) Portal Admin setting displays config with different language 
* [IVYPORTAL-13190](https://axonivy.atlassian.net/browse/IVYPORTAL-13190) JS error when open case details on Portal LE 
* [IVYPORTAL-13194](https://axonivy.atlassian.net/browse/IVYPORTAL-13194) New Process visualization for process start 
* [IVYPORTAL-13197](https://axonivy.atlassian.net/browse/IVYPORTAL-13197) Add default column Actions to the task and case widgets 
* [IVYPORTAL-13198](https://axonivy.atlassian.net/browse/IVYPORTAL-13198) Optimize Task Details page size 
* [IVYPORTAL-13199](https://axonivy.atlassian.net/browse/IVYPORTAL-13199) Edit widgets and reset UI and behaviour  
* [IVYPORTAL-13249](https://axonivy.atlassian.net/browse/IVYPORTAL-13249) Remove warnings in Portal doc related to absolute URL 
* [IVYPORTAL-13250](https://axonivy.atlassian.net/browse/IVYPORTAL-13250) Improve filters in full task and case list  
* [IVYPORTAL-13283](https://axonivy.atlassian.net/browse/IVYPORTAL-13283) Migrate to Primefaces 11 in Portal  
* [IVYPORTAL-13290](https://axonivy.atlassian.net/browse/IVYPORTAL-13290) Fix reorder mange column of configuring case list dashboard 
* [IVYPORTAL-13293](https://axonivy.atlassian.net/browse/IVYPORTAL-13293) Split dashboard process widget to separated modes 
* [IVYPORTAL-13317](https://axonivy.atlassian.net/browse/IVYPORTAL-13317) Bring the statistic widget from old dashboard to new dashboard 
* [IVYPORTAL-13318](https://axonivy.atlassian.net/browse/IVYPORTAL-13318) Support "Expiry task" feature from basic wf ui in portal 
* [IVYPORTAL-13375](https://axonivy.atlassian.net/browse/IVYPORTAL-13375) Change default sorting of new dashboard (task/case widget) to "Creation date DESC" 
* [IVYPORTAL-13399](https://axonivy.atlassian.net/browse/IVYPORTAL-13399) Apply new FREYA Theme to Portal  
* [IVYPORTAL-13402](https://axonivy.atlassian.net/browse/IVYPORTAL-13402) Enhance style of the tab view to switch between dashboards 
* [IVYPORTAL-13406](https://axonivy.atlassian.net/browse/IVYPORTAL-13406) Portal inside Portal when open related task in Case Information dialog 
* [IVYPORTAL-13408](https://axonivy.atlassian.net/browse/IVYPORTAL-13408) DataTable Showcase not work as expected 
* [IVYPORTAL-13415](https://axonivy.atlassian.net/browse/IVYPORTAL-13415) Add checkbox on the business case to enable/disable history from subcases 
* [IVYPORTAL-13416](https://axonivy.atlassian.net/browse/IVYPORTAL-13416) Add link to show more documents on 1 page 
* [IVYPORTAL-13452](https://axonivy.atlassian.net/browse/IVYPORTAL-13452) Support call original case information when using iframe 
* [IVYPORTAL-13478](https://axonivy.atlassian.net/browse/IVYPORTAL-13478) Role Assignment module in Portal 
* [IVYPORTAL-13491](https://axonivy.atlassian.net/browse/IVYPORTAL-13491) Support portal styles for portal components in IFrame for v10 
* [IVYPORTAL-13561](https://axonivy.atlassian.net/browse/IVYPORTAL-13561) Change repo for Portal artifacts to nexus.axonivy.com 
* [IVYPORTAL-13607](https://axonivy.atlassian.net/browse/IVYPORTAL-13607) LE Performance problem related statistic 
* [IVYPORTAL-13615](https://axonivy.atlassian.net/browse/IVYPORTAL-13615) Convert p:dataGrid/dataList to p:dataView due to it is deprecated on PF 11  
* [IVYPORTAL-13621](https://axonivy.atlassian.net/browse/IVYPORTAL-13621) Changed parameter "case" to "caseId" for task templates 
* [IVYPORTAL-13635](https://axonivy.atlassian.net/browse/IVYPORTAL-13635) Problem Engine Installation 9.3.4 with SQL Server 
* [IVYPORTAL-13641](https://axonivy.atlassian.net/browse/IVYPORTAL-13641) Remove custom varchar in document 
* [IVYPORTAL-13645](https://axonivy.atlassian.net/browse/IVYPORTAL-13645) File customization.css is removed on Portal master but without migration notes 
* [IVYPORTAL-13658](https://axonivy.atlassian.net/browse/IVYPORTAL-13658) UI improvement on devices 
* [IVYPORTAL-13698](https://axonivy.atlassian.net/browse/IVYPORTAL-13698) Sticky Dashboard navigation 
* [IVYPORTAL-13745](https://axonivy.atlassian.net/browse/IVYPORTAL-13745) Avoid overlapping starts of a job with the CronByGlobalVAriableTriggerStartEventBean 
* [IVYPORTAL-13771](https://axonivy.atlassian.net/browse/IVYPORTAL-13771) Performance issue with TaskUtils.findTaskUserHasPermissionToSee 
* [IVYPORTAL-13778](https://axonivy.atlassian.net/browse/IVYPORTAL-13778) Remove portalStyle project 
* [IVYPORTAL-13788](https://axonivy.atlassian.net/browse/IVYPORTAL-13788) Related cases can not be destroyed on case detail page 
* [IVYPORTAL-13805](https://axonivy.atlassian.net/browse/IVYPORTAL-13805) Remove usages of IApplication#current 
* [IVYPORTAL-13814](https://axonivy.atlassian.net/browse/IVYPORTAL-13814) Admin role cannot see destroyed related cases 
* [IVYPORTAL-13815](https://axonivy.atlassian.net/browse/IVYPORTAL-13815) Some tables on Case details page are displayed not good 
* [IVYPORTAL-13840](https://axonivy.atlassian.net/browse/IVYPORTAL-13840) Can not change number of items/page if select value greater than total items 
* [IVYPORTAL-13845](https://axonivy.atlassian.net/browse/IVYPORTAL-13845) Use Frame Mode for Case Map example 
* [IVYPORTAL-13849](https://axonivy.atlassian.net/browse/IVYPORTAL-13849) Apply language concept 
* [IVYPORTAL-13850](https://axonivy.atlassian.net/browse/IVYPORTAL-13850) Consider only custom fields with meta data in portal dashboard 
* [IVYPORTAL-13857](https://axonivy.atlassian.net/browse/IVYPORTAL-13857) Move dashboard configuration user menu to own page 
* [IVYPORTAL-13858](https://axonivy.atlassian.net/browse/IVYPORTAL-13858) Combine PortalKit and PortalTemplate to one project 
* [IVYPORTAL-13910](https://axonivy.atlassian.net/browse/IVYPORTAL-13910) Component for process and case map viewer in portalcomponents 
* [IVYPORTAL-14017](https://axonivy.atlassian.net/browse/IVYPORTAL-14017) Adapt Serenity theme for portal-component 
* [IVYPORTAL-14039](https://axonivy.atlassian.net/browse/IVYPORTAL-14039) Statistic Chart improvement 
* [IVYPORTAL-14073](https://axonivy.atlassian.net/browse/IVYPORTAL-14073) Update user document for case/task filter permissions 
* [IVYPORTAL-14129](https://axonivy.atlassian.net/browse/IVYPORTAL-14129) Adapt securityMemberNameAndAvatar component for project portal-component 
* [IVYPORTAL-14145](https://axonivy.atlassian.net/browse/IVYPORTAL-14145) Application name into page title for password managers 
* [IVYPORTAL-14161](https://axonivy.atlassian.net/browse/IVYPORTAL-14161) Enhance portal components examples and documentation 
* [IVYPORTAL-14170](https://axonivy.atlassian.net/browse/IVYPORTAL-14170) Portal Dashboard Header Widget  
* [IVYPORTAL-14308](https://axonivy.atlassian.net/browse/IVYPORTAL-14308) NPE with Statistic widget after session timeout 

### Bugs

* [XIVY-2436](https://axonivy.atlassian.net/browse/XIVY-2436) String value with size > 100 is cropped in CMS 
* [XIVY-2872](https://axonivy.atlassian.net/browse/XIVY-2872) Mail steps adds wrong attachment to the email 
* [XIVY-4020](https://axonivy.atlassian.net/browse/XIVY-4020) Process Editor selection move: removes ARC kinks 
* [XIVY-5023](https://axonivy.atlassian.net/browse/XIVY-5023) Swagger UI cannot be displayed in internal web browser view 
* [XIVY-5074](https://axonivy.atlassian.net/browse/XIVY-5074) CMS getChildren on Engine in wrong order 
* [XIVY-5093](https://axonivy.atlassian.net/browse/XIVY-5093) NPE on Import Wizard (Existing Projects into Workspace) if packed project (iar) is selected 
* [XIVY-5458](https://axonivy.atlassian.net/browse/XIVY-5458) Content of E-Mail Step inscription cannot be edited on Mac Designer 
* [XIVY-5459](https://axonivy.atlassian.net/browse/XIVY-5459) DB inscription can sometimes not be edited on Mac Designer 
* [XIVY-5861](https://axonivy.atlassian.net/browse/XIVY-5861) No Buttons visible in E-Mail Step Tabs on first open 
* [XIVY-6425](https://axonivy.atlassian.net/browse/XIVY-6425) Query in DB Activity Step does not get validated 
* [XIVY-6463](https://axonivy.atlassian.net/browse/XIVY-6463) DB Activity loses query configuration when renaming a table 
* [XIVY-6748](https://axonivy.atlassian.net/browse/XIVY-6748) Fix 404 in dev-workflow-ui if no projects imported 
* [XIVY-6752](https://axonivy.atlassian.net/browse/XIVY-6752) DB Activity write-query doesn't evaluate functions 
* [XIVY-7184](https://axonivy.atlassian.net/browse/XIVY-7184) 404 Error on Backend API in Engine Cockpit if application context is not started yet 
* [XIVY-7227](https://axonivy.atlassian.net/browse/XIVY-7227) REST client properties and web service client properties values are not updated 
* [XIVY-7237](https://axonivy.atlassian.net/browse/XIVY-7237) CVE-2021-44228 : Log4Shell remote code execution - Update to Log4j2 version 2.15.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7253](https://axonivy.atlassian.net/browse/XIVY-7253) Maven dependency appears twice in Axon Ivy Libraries 
* [XIVY-7254](https://axonivy.atlassian.net/browse/XIVY-7254) Wrong member type due to transitive dependency (Cannot cast from a to a) 
* [XIVY-7257](https://axonivy.atlassian.net/browse/XIVY-7257) Unique constraints violation with multiple projects defining the same role 
* [XIVY-7258](https://axonivy.atlassian.net/browse/XIVY-7258) False positive validation errors, complains on AXIS2 usage for empty WebService Clients 
* [XIVY-7262](https://axonivy.atlassian.net/browse/XIVY-7262) CVE-2021-45046: ThreadContext DoS - Update to Log4j2 version 2.16.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7275](https://axonivy.atlassian.net/browse/XIVY-7275) Optimize market custom installation (CTRL + ALT + I) 
* [XIVY-7284](https://axonivy.atlassian.net/browse/XIVY-7284) Fix typos in developer workflow UI 
* [XIVY-7314](https://axonivy.atlassian.net/browse/XIVY-7314) CVE-2021-45105: infinite recursion in lookup evaluation - Update to Log4j2 version 2.17.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7334](https://axonivy.atlassian.net/browse/XIVY-7334) Show dev-workfluw-ui even if no project is open in designer 
* [XIVY-7343](https://axonivy.atlassian.net/browse/XIVY-7343) NPE when accessing PMV which is not linked to an existing project 
* [XIVY-7349](https://axonivy.atlassian.net/browse/XIVY-7349) CVE-2021-44832 : RCE via JDBC Appender - Update to Log4j2 version 2.17.1 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7408](https://axonivy.atlassian.net/browse/XIVY-7408) Ivy is not able to read ivy project artifact version and group id from parent pom 
* [XIVY-7466](https://axonivy.atlassian.net/browse/XIVY-7466) Windows Launcher Binaries broken: could not load module libraries of jre/bin/server/jvm.dll 
* [XIVY-7501](https://axonivy.atlassian.net/browse/XIVY-7501) Character based content from CMS are served in ISO-8859-1 instead of UTF-8 
* [XIVY-7507](https://axonivy.atlassian.net/browse/XIVY-7507) CMS pages are served always with default OS encoding 
* [XIVY-7530](https://axonivy.atlassian.net/browse/XIVY-7530) Function Browser does not work anymore in old AWT based script editors 
* [XIVY-7541](https://axonivy.atlassian.net/browse/XIVY-7541) REST Client process element does not store OpenAPI enable/disabled state 
* [XIVY-7594](https://axonivy.atlassian.net/browse/XIVY-7594) Fix org.apache.commons.io duplication because of GLSP server 
* [XIVY-7673](https://axonivy.atlassian.net/browse/XIVY-7673) ivy.vars are only resolved in RELEASED pmv but not in DEPRECATED pmv 
* [XIVY-7683](https://axonivy.atlassian.net/browse/XIVY-7683) Change case of user name in AD will not be synchronized  <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7688](https://axonivy.atlassian.net/browse/XIVY-7688) Other user input is lost if Referral or Dereference Aliases is changed in Engine Cockpit AD setting  
* [XIVY-7701](https://axonivy.atlassian.net/browse/XIVY-7701) Bad performance of macro expander and CMS if override project is configured 
* [XIVY-7716](https://axonivy.atlassian.net/browse/XIVY-7716) migrate-project command corrupts mod with third-party elements 
* [XIVY-7731](https://axonivy.atlassian.net/browse/XIVY-7731) Project configurations of deprecated PMV are not available during runtime 
* [XIVY-7746](https://axonivy.atlassian.net/browse/XIVY-7746) Error in Engine Cockpit LDAP Browser on nodes that has an escaped LDAP Name 
* [XIVY-7766](https://axonivy.atlassian.net/browse/XIVY-7766) NPE in Log when deleting a project 
* [XIVY-7780](https://axonivy.atlassian.net/browse/XIVY-7780) CMS inline editor does not work on Linux 
* [XIVY-7808](https://axonivy.atlassian.net/browse/XIVY-7808) Changing project dependencies (with our editor), removes iar-integration-test packaging 
* [XIVY-7810](https://axonivy.atlassian.net/browse/XIVY-7810) GLSP Error sometimes when opening, closing, packing, unpacking projects 
* [XIVY-7821](https://axonivy.atlassian.net/browse/XIVY-7821) Tab navigation and type selection does not work on Parameter table 
* [XIVY-7856](https://axonivy.atlassian.net/browse/XIVY-7856) IllegalStateException "project resources of pmv 'xyz' not found" during startup of cluster slave  
* [XIVY-7922](https://axonivy.atlassian.net/browse/XIVY-7922) Missing icons without an internet connection 
* [XIVY-7926](https://axonivy.atlassian.net/browse/XIVY-7926) New process editor has encoding problems if start label contains e.g <>  
* [XIVY-7928](https://axonivy.atlassian.net/browse/XIVY-7928) New process editor can't open process in test projects 
* [XIVY-7944](https://axonivy.atlassian.net/browse/XIVY-7944) jsessionid in PrimeFaces resource URL if no session is set yet <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7948](https://axonivy.atlassian.net/browse/XIVY-7948) Role substitute still valid even if role was removed form user 
* [XIVY-7971](https://axonivy.atlassian.net/browse/XIVY-7971) CMS import is slow when cms is huge 
* [XIVY-7972](https://axonivy.atlassian.net/browse/XIVY-7972) Resource not found warn log if a mail is sent with authentication 
* [XIVY-7974](https://axonivy.atlassian.net/browse/XIVY-7974) ctrl + s does not work in the new process editor under Windows 
* [XIVY-7975](https://axonivy.atlassian.net/browse/XIVY-7975) Make generating the database schema for environments work again 
* [XIVY-7978](https://axonivy.atlassian.net/browse/XIVY-7978) CXF does sometimes not find the operation on a cached endpoint 
* [XIVY-7992](https://axonivy.atlassian.net/browse/XIVY-7992) ConcurrentModificationException at cluster node startup 
* [XIVY-8001](https://axonivy.atlassian.net/browse/XIVY-8001) SubProcessCall PublicAPI needs system and ProcessModelVersionReadAll permission 
* [XIVY-8010](https://axonivy.atlassian.net/browse/XIVY-8010) Internal Case Map Editor does not work under Linux 
* [XIVY-8025](https://axonivy.atlassian.net/browse/XIVY-8025) IAR packaging fails to include dependencies from reactor 
* [XIVY-8047](https://axonivy.atlassian.net/browse/XIVY-8047) Cant set custom icon of subprocess call if the called process start already has a custom icon 
* [XIVY-8083](https://axonivy.atlassian.net/browse/XIVY-8083) 404 errors when trying to start a process when tasks need to be reset during docker container start 
* [XIVY-8115](https://axonivy.atlassian.net/browse/XIVY-8115) Error Boundary Event on Call Sub Process throws IvyScriptCastException instead of catch error 
* [XIVY-8125](https://axonivy.atlassian.net/browse/XIVY-8125) Eclipse Key Bindings not working in new Process Editor 
* [XIVY-8151](https://axonivy.atlassian.net/browse/XIVY-8151) TaskSwitchGateway is not updated with Tasks after output connectors added in the new Process Editor 
* [XIVY-8199](https://axonivy.atlassian.net/browse/XIVY-8199) Can't select any operation after re-generating wsClient to different namespace 
* [XIVY-8246](https://axonivy.atlassian.net/browse/XIVY-8246) Cluster slave instances always responses status 500 after it is started successfully 
* [XIVY-8250](https://axonivy.atlassian.net/browse/XIVY-8250) CMS cache not invalidate after deployment 
* [XIVY-8252](https://axonivy.atlassian.net/browse/XIVY-8252) Failed to create the part's control when opening CMS editor 
* [XIVY-8272](https://axonivy.atlassian.net/browse/XIVY-8272) An NPE error is sometimes logged while cluster slave is started 
* [XIVY-8279](https://axonivy.atlassian.net/browse/XIVY-8279) ivy Project conversion 80000-94000 failed because of arcStyle 
* [XIVY-8280](https://axonivy.atlassian.net/browse/XIVY-8280) Improve double click action on elements to open inscription 
* [XIVY-8281](https://axonivy.atlassian.net/browse/XIVY-8281) Problem with Umlauts in element inscription 
* [XIVY-8314](https://axonivy.atlassian.net/browse/XIVY-8314) Prioritize RELEASED PMV over other PMVs on Strict Override evaluation 
* [XIVY-8334](https://axonivy.atlassian.net/browse/XIVY-8334) Frame problem in designer if a process is started via Process Editor action 
* [XIVY-8371](https://axonivy.atlassian.net/browse/XIVY-8371) f:convertDateTime no longer works with IvyScript Date, Time and DateTime data types 
* [XIVY-8400](https://axonivy.atlassian.net/browse/XIVY-8400) NPE in "Browse Dossier Demo (Lazy)" in Workflow Demo 
* [XIVY-8402](https://axonivy.atlassian.net/browse/XIVY-8402) Improve stability of GLSP server 
* [XIVY-8422](https://axonivy.atlassian.net/browse/XIVY-8422) Rest API servlet crashes after jersey model validation error 
* [XIVY-8429](https://axonivy.atlassian.net/browse/XIVY-8429) OpenApi code generator error dialog don't show full error result 
* [XIVY-8462](https://axonivy.atlassian.net/browse/XIVY-8462) Remove googleapi font request from dev-wf-ui 
* [XIVY-8500](https://axonivy.atlassian.net/browse/XIVY-8500) Could not read maven project since eclipse 2022-03 
* [XIVY-8549](https://axonivy.atlassian.net/browse/XIVY-8549) IOException if DataTable is embedded in  DynaForm and Composite 
* [XIVY-8566](https://axonivy.atlassian.net/browse/XIVY-8566) Multiselect autocomplete not working with Serenity and PrimeFaces 11 
* [XIVY-8603](https://axonivy.atlassian.net/browse/XIVY-8603) CMS file with underscores does not work 
* [XIVY-8633](https://axonivy.atlassian.net/browse/XIVY-8633) Multiple Users can start the same Task of a User Task 
* [XIVY-8634](https://axonivy.atlassian.net/browse/XIVY-8634) Default color may is listed twice in the color palette in the new process editor 
* [XIVY-8686](https://axonivy.atlassian.net/browse/XIVY-8686) Project conversion does not work on re-deployment 
* [XIVY-8697](https://axonivy.atlassian.net/browse/XIVY-8697) Referenced Error Start and Error Boundary unlinked after changing BPMN activity type 
* [XIVY-8704](https://axonivy.atlassian.net/browse/XIVY-8704) Bpmn2 export produces strange waypoints with json processes 
* [XIVY-8733](https://axonivy.atlassian.net/browse/XIVY-8733) Designer crash after pressing Ctrl-W in new process editor 
* [XIVY-8759](https://axonivy.atlassian.net/browse/XIVY-8759) Link on Axon Ivy Logo is broken in dev-wf-ui in Designer mode 
* [XIVY-8781](https://axonivy.atlassian.net/browse/XIVY-8781) mod to json conversion fails on incomplete lane-data 
* [XIVY-8783](https://axonivy.atlassian.net/browse/XIVY-8783) colors used multiple times in the same process are lost 
* [XIVY-8790](https://axonivy.atlassian.net/browse/XIVY-8790) Deployment and License Upload not working if REST Servlet is disabled 
* [XIVY-8807](https://axonivy.atlassian.net/browse/XIVY-8807) Custom icons broken in new process editor 
* [XIVY-8815](https://axonivy.atlassian.net/browse/XIVY-8815) json-serialization omits multiline conditions 
* [XIVY-8824](https://axonivy.atlassian.net/browse/XIVY-8824) PersistencyException when deleting a role in the cockpit with PostgreSQL 
* [XIVY-8830](https://axonivy.atlassian.net/browse/XIVY-8830) DB insert/update script-editor produces false positive errors and invalid statements 
* [XIVY-8841](https://axonivy.atlassian.net/browse/XIVY-8841) Avoid flickering process-lines on 'migrate-project' command 
* [XIVY-8843](https://axonivy.atlassian.net/browse/XIVY-8843) Bend points loose if element is added onto connection 
* [XIVY-8849](https://axonivy.atlassian.net/browse/XIVY-8849) Insert element on connection which has an bend point is maybe wrong 
* [XIVY-8904](https://axonivy.atlassian.net/browse/XIVY-8904) Email header content cannot be deleted in the inscription mask 
* [XIVY-8926](https://axonivy.atlassian.net/browse/XIVY-8926) ITask.getCategory throws NPE if project of task PMV is missing 
* [XIVY-8933](https://axonivy.atlassian.net/browse/XIVY-8933) Portal cannot create add hoc task for case if case is not in same application as Portal 
* [XIVY-8995](https://axonivy.atlassian.net/browse/XIVY-8995) Removing REST Client does not remove the generated .jar file 
* [XIVY-9058](https://axonivy.atlassian.net/browse/XIVY-9058) DB migration 8 to 9 writes outdated values to app.yaml 
* [XIVY-9061](https://axonivy.atlassian.net/browse/XIVY-9061) Deployment validation asserts wrong number of Task outputs 
* [XIVY-9076](https://axonivy.atlassian.net/browse/XIVY-9076) NPE on ICustomFieldMeta.tasks() if a project is missing 
* [XIVY-9102](https://axonivy.atlassian.net/browse/XIVY-9102) PMV details views fails with an NPE while reloading its state 
* [XIVY-9103](https://axonivy.atlassian.net/browse/XIVY-9103) Re-Deployment of a base project activates manually stopped dependent ProcessModels 
* [XIVY-9156](https://axonivy.atlassian.net/browse/XIVY-9156) Cockpit system database save problems with additional properties 
* [XIVY-9201](https://axonivy.atlassian.net/browse/XIVY-9201) RuntimeLog view occasionally not showing any logs 
* [XIVY-9207](https://axonivy.atlassian.net/browse/XIVY-9207) Execution of job SynchJob failed due to user language 
* [XIVY-9209](https://axonivy.atlassian.net/browse/XIVY-9209) InX undefined for TaskSwitchGateway connectors 
* [XIVY-9211](https://axonivy.atlassian.net/browse/XIVY-9211) Default error page does not work in Designer and Engine 
* [XIVY-9213](https://axonivy.atlassian.net/browse/XIVY-9213) Search in engine cockpit variables overview does not work after switching tab. 
* [XIVY-9215](https://axonivy.atlassian.net/browse/XIVY-9215) Link on error page to home page broken 
* [XIVY-9233](https://axonivy.atlassian.net/browse/XIVY-9233) Blanks in Base URL let cockpit fail 
* [XIVY-9242](https://axonivy.atlassian.net/browse/XIVY-9242) Backend API page in cockpit not working with context 
* [XIVY-9269](https://axonivy.atlassian.net/browse/XIVY-9269) Engine Cockpit: Role Detail View is not working when no Application exists 
* [XIVY-9270](https://axonivy.atlassian.net/browse/XIVY-9270) Some System DBs accept multiple roles with same name if whitespace is added 
* [XIVY-9281](https://axonivy.atlassian.net/browse/XIVY-9281) Opening inscription fails on pre 8.0 project with an NPE 
* [XIVY-9284](https://axonivy.atlassian.net/browse/XIVY-9284) Engine Cockpit branding image upload shows error even if upload successful 
* [XIVY-9297](https://axonivy.atlassian.net/browse/XIVY-9297) Inscription editor blocked for several minutes when editing large object trees 
* [XIVY-9299](https://axonivy.atlassian.net/browse/XIVY-9299) REST method browser takes over 20 seconds to display methods 
* [XIVY-9336](https://axonivy.atlassian.net/browse/XIVY-9336) Engine Migration Wizard: Buttons should be aligned to the correct window 
* [XIVY-9342](https://axonivy.atlassian.net/browse/XIVY-9342) User and Role count in the title is not updated if security system is switched 
* [XIVY-9388](https://axonivy.atlassian.net/browse/XIVY-9388) Can not cleanup JSF view scope when HTTP session expires 
* [XIVY-9395](https://axonivy.atlassian.net/browse/XIVY-9395) Error Log "Error automatically configuring OpenTelemetry SDK" when executing IvyTest or IvyProcessTest 
* [IVYPORTAL-13134](https://axonivy.atlassian.net/browse/IVYPORTAL-13134) The left menu marks the wrong item selected 
* [IVYPORTAL-13140](https://axonivy.atlassian.net/browse/IVYPORTAL-13140) My Profile on Ivy Portal 9.3 
* [IVYPORTAL-13165](https://axonivy.atlassian.net/browse/IVYPORTAL-13165) Admin user cannot edit/delete absences of normal users in the current or future  
* [IVYPORTAL-13450](https://axonivy.atlassian.net/browse/IVYPORTAL-13450) Rounding position when scrolling task list 
* [IVYPORTAL-13539](https://axonivy.atlassian.net/browse/IVYPORTAL-13539) Delegation task disables user selection if previously entered incorrectly 
* [IVYPORTAL-13544](https://axonivy.atlassian.net/browse/IVYPORTAL-13544) Absences configuration did not work on the same day 
* [IVYPORTAL-13804](https://axonivy.atlassian.net/browse/IVYPORTAL-13804) Language support is not handled correctly 
* [IVYPORTAL-14018](https://axonivy.atlassian.net/browse/IVYPORTAL-14018) State not loaded when apply saved filter in full task list 
* [IVYPORTAL-14147](https://axonivy.atlassian.net/browse/IVYPORTAL-14147) Back link of custom Case Details, Task Details pages does not work on Firefox 
* [IVYPORTAL-14152](https://axonivy.atlassian.net/browse/IVYPORTAL-14152) Portal Widget Resize 
* [IVYPORTAL-14152](https://axonivy.atlassian.net/browse/IVYPORTAL-14152) Portal Widget Resize
