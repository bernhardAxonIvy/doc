## 11.3.0 (2024-05-23)

We strongly recommend to install this update release because it fixes security issues!

### Improvements

* [XIVY-14062](https://1ivy.atlassian.net/browse/XIVY-14062) Update to Primefaces 13.0.10 and Primefaces Extensions 13.0.10 
* [XIVY-13923](https://1ivy.atlassian.net/browse/XIVY-13923) Support X-Forwarded-Host and X-Forwarded-Port 
* [XIVY-13903](https://1ivy.atlassian.net/browse/XIVY-13903) Preserve namespace mappings on web service generation 
* [XIVY-13858](https://1ivy.atlassian.net/browse/XIVY-13858) Respect custom Microsoft reverse proxy header setting 'Front-End-Https' for Azure Application Proxy (X-Forwarded-Proto) 
* [XIVY-13800](https://1ivy.atlassian.net/browse/XIVY-13800) Use Base64 to store passwords in YAML files 
* [XIVY-13771](https://1ivy.atlassian.net/browse/XIVY-13771) Update Elasticsearch to 7.17.19 
* [XIVY-13760](https://1ivy.atlassian.net/browse/XIVY-13760) Support migration for ready-only configuration files scenarios (Kubernetes) 
* [XIVY-13695](https://1ivy.atlassian.net/browse/XIVY-13695) Add canWorkOn and isInvolved filter to workflow statistic API for cases 
* [XIVY-13583](https://1ivy.atlassian.net/browse/XIVY-13583) Migration Wizard should ask if web.xml or context.xml should be copied or not 
* [XIVY-13553](https://1ivy.atlassian.net/browse/XIVY-13553) Update Primefaces to 13.0.x 
* [XIVY-13523](https://1ivy.atlassian.net/browse/XIVY-13523) Make IvyScript Deserializer work with Collections that have no constructor such as java.util.EnumSet 
* [XIVY-13503](https://1ivy.atlassian.net/browse/XIVY-13503) Case in-sensitive role mapping for Novell eDirectory user synchronization 
* [XIVY-13496](https://1ivy.atlassian.net/browse/XIVY-13496) Resurrect background colors of swimlanes 
* [XIVY-13489](https://1ivy.atlassian.net/browse/XIVY-13489) Update process editor palette icons (embedded sub + BPMN activities) 
* [XIVY-13485](https://1ivy.atlassian.net/browse/XIVY-13485) Move process editor canvas with arrow keys 
* [XIVY-13458](https://1ivy.atlassian.net/browse/XIVY-13458) Introduce an option to show more roles in the Engine Cockpit 
* [XIVY-13378](https://1ivy.atlassian.net/browse/XIVY-13378) SSO with a JWT token on Entra ID based security systems 
* [XIVY-13362](https://1ivy.atlassian.net/browse/XIVY-13362) Option to define the number of backups of application config 
* [XIVY-13262](https://1ivy.atlassian.net/browse/XIVY-13262) Allow configuration of proxy for Microsoft Entra ID synchronization 
* [XIVY-13208](https://1ivy.atlassian.net/browse/XIVY-13208) Add a REST API endpoint to get web notifications  
* [XIVY-13207](https://1ivy.atlassian.net/browse/XIVY-13207) Add a REST API endpoint to get information about the current user 
* [XIVY-13206](https://1ivy.atlassian.net/browse/XIVY-13206) New workflow/startables REST API endpoint that provides similar information like processstarts but with custom fields and also Case Map starts 
* [XIVY-13172](https://1ivy.atlassian.net/browse/XIVY-13172) Improve UX of logs view in Engine Cockpit 
* [XIVY-13154](https://1ivy.atlassian.net/browse/XIVY-13154) Changing a setting in Engine Cockpit should work even in a container with read-only ivy.yaml 
* [XIVY-13152](https://1ivy.atlassian.net/browse/XIVY-13152) Ease the creation of system database in Oracle by using a default 'ivy' tablespace 
* [XIVY-13007](https://1ivy.atlassian.net/browse/XIVY-13007) Upgrade bundled Elasticsearch to 7.17.16 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13001](https://1ivy.atlassian.net/browse/XIVY-13001) Link to Application Home from Engine Cockpit Applications view 
* [XIVY-12994](https://1ivy.atlassian.net/browse/XIVY-12994) Rename Azure AD to Microsoft Entra ID 
* [XIVY-12879](https://1ivy.atlassian.net/browse/XIVY-12879) Configurable mapping of Entra ID attributes to Axon Ivy fullName of user 
* [XIVY-12632](https://1ivy.atlassian.net/browse/XIVY-12632) Provide an API to get the URL to open the task detail page for a given task 
* [XIVY-12593](https://1ivy.atlassian.net/browse/XIVY-12593) IIS install and setup script enhancements 
* [XIVY-11624](https://1ivy.atlassian.net/browse/XIVY-11624) ivy.yaml schema editing support for most prominent entries 
* [XIVY-10166](https://1ivy.atlassian.net/browse/XIVY-10166) Entra ID OAUTH Login for REST-Endpoints provided by the AxonIvy Engine 
* [XIVY-8505](https://1ivy.atlassian.net/browse/XIVY-8505) Show helper lines when moving or inserting a process element in the process editor 
* [XIVY-5559](https://1ivy.atlassian.net/browse/XIVY-5559) System database migration should be executed by the engine migration wizard  
* [IVYPORTAL-16765](https://1ivy.atlassian.net/browse/IVYPORTAL-16765) Upgrade to Primefaces 13 
* [IVYPORTAL-16655](https://1ivy.atlassian.net/browse/IVYPORTAL-16655) Quick Search in Dashboard Case & Task List LE Impl., GUI Test & Documentation 
* [IVYPORTAL-16309](https://1ivy.atlassian.net/browse/IVYPORTAL-16309) Grant "edit external link"-permission to Portal Admin by default 
* [IVYPORTAL-16089](https://1ivy.atlassian.net/browse/IVYPORTAL-16089) QR-Code for Axon Ivy Mobile App 
* [IVYPORTAL-15964](https://1ivy.atlassian.net/browse/IVYPORTAL-15964) Correct navigation inside the Case Information dialog 
* [IVYPORTAL-15448](https://1ivy.atlassian.net/browse/IVYPORTAL-15448) Statistics - Standard Chart Set 
* [IVYPORTAL-14996](https://1ivy.atlassian.net/browse/IVYPORTAL-14996) Permissions documentation improved 

### New Features

* [XIVY-3498](https://1ivy.atlassian.net/browse/XIVY-3498) Provide details page links in the new task notification 
* [XIVY-9680](https://1ivy.atlassian.net/browse/XIVY-9680) Remove system database only conversion and autoConvert of system database in ivy.yaml in favor of migration wizard 
* [XIVY-9799](https://1ivy.atlassian.net/browse/XIVY-9799) Add option to project-build-plugin to automatically use latest minor release with ivy.engine.version.minor.latest=true 
* [XIVY-9802](https://1ivy.atlassian.net/browse/XIVY-9802) Inscription View 
* [XIVY-9834](https://1ivy.atlassian.net/browse/XIVY-9834) Prototype how to replace Z-Layer with a new process model 
* [XIVY-11195](https://1ivy.atlassian.net/browse/XIVY-11195) Notification 
* [XIVY-11582](https://1ivy.atlassian.net/browse/XIVY-11582) Document how to set up URL rewriting for IIS 
* [XIVY-11636](https://1ivy.atlassian.net/browse/XIVY-11636) All ivy.yaml features as a schema for config-editors 
* [XIVY-11709](https://1ivy.atlassian.net/browse/XIVY-11709) ThirdParty element Inscription Views 
* [XIVY-11800](https://1ivy.atlassian.net/browse/XIVY-11800) Tech Dept: Remove Z-Centric code outside component: Level 2 
* [XIVY-11806](https://1ivy.atlassian.net/browse/XIVY-11806) Improve IvyScript LSP javadoc presentation 
* [XIVY-11890](https://1ivy.atlassian.net/browse/XIVY-11890) Provide metadata for known custom fields in the new Inscription View 
* [XIVY-11891](https://1ivy.atlassian.net/browse/XIVY-11891) Provide metadata for known tags in the new Inscription View 
* [XIVY-11935](https://1ivy.atlassian.net/browse/XIVY-11935) Improve generation of db query classes 
* [XIVY-11980](https://1ivy.atlassian.net/browse/XIVY-11980) Variable editor for VSCode extension 
* [XIVY-12139](https://1ivy.atlassian.net/browse/XIVY-12139) Create a GLSP process viewer-only bundle 
* [XIVY-12264](https://1ivy.atlassian.net/browse/XIVY-12264) Integrate TLS-connection-tester to Cockpit 
* [XIVY-12272](https://1ivy.atlassian.net/browse/XIVY-12272) Better respect SecurityContext borders in Inscription LSP and other protocols 
* [XIVY-12411](https://1ivy.atlassian.net/browse/XIVY-12411) Cookie primefaces-theme-mode needs SameSite attribute value <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-12441](https://1ivy.atlassian.net/browse/XIVY-12441) Show migrated YAML contents, in ConfigFileEditor 
* [XIVY-12445](https://1ivy.atlassian.net/browse/XIVY-12445) Improve Rebuild & Redeploy 
* [XIVY-12479](https://1ivy.atlassian.net/browse/XIVY-12479) Run VS Code playwright tests with openvscode-server 
* [XIVY-12549](https://1ivy.atlassian.net/browse/XIVY-12549) Add function browser to new Inscription View 
* [XIVY-12550](https://1ivy.atlassian.net/browse/XIVY-12550) Add Category Path Chooser  
* [XIVY-12551](https://1ivy.atlassian.net/browse/XIVY-12551) Add Database Browsers 
* [XIVY-12586](https://1ivy.atlassian.net/browse/XIVY-12586) Upload and download configuration files via Engine-Cockpit 
* [XIVY-12739](https://1ivy.atlassian.net/browse/XIVY-12739) Add canWorkOn filter to workflow statistic API for tasks 
* [XIVY-12783](https://1ivy.atlassian.net/browse/XIVY-12783) VS Code project explorer improvements 
* [XIVY-12796](https://1ivy.atlassian.net/browse/XIVY-12796) Notification templates per task 
* [XIVY-12797](https://1ivy.atlassian.net/browse/XIVY-12797) Add an expandable code editor to the new Inscription View 
* [XIVY-12831](https://1ivy.atlassian.net/browse/XIVY-12831) Support Microsoft Teams notification for other security systems than Microsoft Entry ID too 
* [XIVY-12890](https://1ivy.atlassian.net/browse/XIVY-12890) Correctly handle notification channels per security context 
* [XIVY-12891](https://1ivy.atlassian.net/browse/XIVY-12891) Dynamically generate config UI for notification channels 
* [XIVY-12892](https://1ivy.atlassian.net/browse/XIVY-12892) Publish VS Code extension to VS Code market 
* [XIVY-12913](https://1ivy.atlassian.net/browse/XIVY-12913) Add help button/link to new inscription views 
* [XIVY-12919](https://1ivy.atlassian.net/browse/XIVY-12919) Improve Process Editor loading experience  
* [XIVY-12934](https://1ivy.atlassian.net/browse/XIVY-12934) Integration tests for notification channels 
* [XIVY-12978](https://1ivy.atlassian.net/browse/XIVY-12978) Remove Portal Express from our documentation (getting started) 
* [XIVY-12983](https://1ivy.atlassian.net/browse/XIVY-12983) Add Spanish translations to notification (mail) messages 
* [XIVY-12991](https://1ivy.atlassian.net/browse/XIVY-12991) Measure the performance of notifications 
* [XIVY-12992](https://1ivy.atlassian.net/browse/XIVY-12992) Data type browser should display different default types depending on the location it is opened 
* [XIVY-12997](https://1ivy.atlassian.net/browse/XIVY-12997) Cancel button in HTML Dialog should work also with required input fields 
* [XIVY-12998](https://1ivy.atlassian.net/browse/XIVY-12998) REST tester improvement in the Engine Cockpit 
* [XIVY-13035](https://1ivy.atlassian.net/browse/XIVY-13035) Set theme-specific (dark/light) class on the body tag to enable theme-specific CSS rules 
* [XIVY-13055](https://1ivy.atlassian.net/browse/XIVY-13055) Improve the handiness of the Inscription View 
* [XIVY-13069](https://1ivy.atlassian.net/browse/XIVY-13069) Raise Primefaces to 11.0.13 to fix CVE-2023-5072 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13072](https://1ivy.atlassian.net/browse/XIVY-13072) Improve REST client JAX-RS and Java documentation on how to close a response to avoid connection leaks 
* [XIVY-13085](https://1ivy.atlassian.net/browse/XIVY-13085) Provide a public API to send notifications from projects 
* [XIVY-13091](https://1ivy.atlassian.net/browse/XIVY-13091) Add role selector/browser to inscription view 
* [XIVY-13093](https://1ivy.atlassian.net/browse/XIVY-13093) Upgrade GLSP to 2.1 to get helper lines and ghost element feature 
* [XIVY-13127](https://1ivy.atlassian.net/browse/XIVY-13127) Generate .xhtml from UI meta json 
* [XIVY-13128](https://1ivy.atlassian.net/browse/XIVY-13128) Initial new HTLM Dialog editor with limited support for Labels, TextBoxes, and Buttons 
* [XIVY-13133](https://1ivy.atlassian.net/browse/XIVY-13133) Design UI meta JSON format 
* [XIVY-13134](https://1ivy.atlassian.net/browse/XIVY-13134) Communication between Html Dialog editor frontend and backend 
* [XIVY-13138](https://1ivy.atlassian.net/browse/XIVY-13138) Establish Inscription web socket connection via backend 
* [XIVY-13139](https://1ivy.atlassian.net/browse/XIVY-13139) Make VS Code Java Extension work with Axon Ivy Projects 
* [XIVY-13143](https://1ivy.atlassian.net/browse/XIVY-13143) Support create User Dialog and Sub Process via Inscription 
* [XIVY-13147](https://1ivy.atlassian.net/browse/XIVY-13147) VS Code extension should support Dev Container and GitHub Codespaces 
* [XIVY-13150](https://1ivy.atlassian.net/browse/XIVY-13150) Implement the mail, MS teams, and web notifications as designed by the UI/UX designer 
* [XIVY-13156](https://1ivy.atlassian.net/browse/XIVY-13156) Improve the search speed of the function browser <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13158](https://1ivy.atlassian.net/browse/XIVY-13158) Improve ProcessViewer for real-world use cases 
* [XIVY-13165](https://1ivy.atlassian.net/browse/XIVY-13165) Improve Process Editor performance with huge processes <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13167](https://1ivy.atlassian.net/browse/XIVY-13167) Enable process editor validations on the engine 
* [XIVY-13205](https://1ivy.atlassian.net/browse/XIVY-13205) Add a new response header ivy-Reset-Task that contains the task ID in case a task is canceled 
* [XIVY-13240](https://1ivy.atlassian.net/browse/XIVY-13240) Choose the correct theme for Process Editor 
* [XIVY-13253](https://1ivy.atlassian.net/browse/XIVY-13253) Adopt Table Design for the new Inscription View 
* [XIVY-13258](https://1ivy.atlassian.net/browse/XIVY-13258) Reuse inscription view components in form editor 
* [XIVY-13260](https://1ivy.atlassian.net/browse/XIVY-13260) Throw an error if a user absence is created with a later start date than the end date 
* [XIVY-13306](https://1ivy.atlassian.net/browse/XIVY-13306) Move REST Resources from the server to its own web-ide bundle 
* [XIVY-13307](https://1ivy.atlassian.net/browse/XIVY-13307) Skip creating indexes in system database during migration if they already exist 
* [XIVY-13318](https://1ivy.atlassian.net/browse/XIVY-13318) Allow configuration of a proxy for Microsoft Teams Notification 
* [XIVY-13346](https://1ivy.atlassian.net/browse/XIVY-13346) Find sub-process start in the application of given case 
* [XIVY-13347](https://1ivy.atlassian.net/browse/XIVY-13347) Check Engine Cockpit and Dev Wf UI for insecure escape="false" <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13360](https://1ivy.atlassian.net/browse/XIVY-13360) Support java.time classes for engine REST endpoints 
* [XIVY-13363](https://1ivy.atlassian.net/browse/XIVY-13363) Set stack depth of flight recorder in jvm.options 
* [XIVY-13374](https://1ivy.atlassian.net/browse/XIVY-13374) Upgrade to Primefaces 11.0.14 
* [XIVY-13377](https://1ivy.atlassian.net/browse/XIVY-13377) Implement first simple Layouting in Form Editor 
* [XIVY-13418](https://1ivy.atlassian.net/browse/XIVY-13418) Log information about what every migration wizard task is doing during the migration 
* [XIVY-13428](https://1ivy.atlassian.net/browse/XIVY-13428) Only load active tasks in-memory when joining tasks <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13446](https://1ivy.atlassian.net/browse/XIVY-13446) Show warning and filter IvyScript-incompatible variables in content assist 
* [XIVY-13448](https://1ivy.atlassian.net/browse/XIVY-13448) Remove legacy app.yaml deployer from old location 
* [XIVY-13462](https://1ivy.atlassian.net/browse/XIVY-13462) Don't migrate WebSerivceId, WebServiceFramework, WsdlUrl and RestClientID to app.yaml for users who have changed the framework and forgot to deploy with 'override configuration' 
* [XIVY-13463](https://1ivy.atlassian.net/browse/XIVY-13463) Improve performance of Engine Cockpit role detail view of roles with a lot of users <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13484](https://1ivy.atlassian.net/browse/XIVY-13484) Improve performance of search engine view in Engine Cockpit <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13488](https://1ivy.atlassian.net/browse/XIVY-13488) Native property to restrict HTTPS TLS Protocols on Engine Port <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13494](https://1ivy.atlassian.net/browse/XIVY-13494) Inscription view support ivyScript LSP hover capability for Monaco 
* [XIVY-13498](https://1ivy.atlassian.net/browse/XIVY-13498) Apply TLS connection tester review feedback 
* [XIVY-13504](https://1ivy.atlassian.net/browse/XIVY-13504) Explore building Ivy projects by Java Maven extension 
* [XIVY-13506](https://1ivy.atlassian.net/browse/XIVY-13506) Javadoc/Description window not displayed correctly within the single line code editor 
* [XIVY-13507](https://1ivy.atlassian.net/browse/XIVY-13507) Provide completion for classes in IvyScript Monaco Editor 
* [XIVY-13508](https://1ivy.atlassian.net/browse/XIVY-13508) Boolean operators in auto-completion for boolean expressions 
* [XIVY-13510](https://1ivy.atlassian.net/browse/XIVY-13510) Inscription view: apply the latest UI design 
* [XIVY-13517](https://1ivy.atlassian.net/browse/XIVY-13517) Flush deployment log on each write to get instant feedback 
* [XIVY-13570](https://1ivy.atlassian.net/browse/XIVY-13570) Improve performance of loading configuration files <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13577](https://1ivy.atlassian.net/browse/XIVY-13577) Do not hash administrator passwords in the database if they are not hashed in ivy.yaml to improve performance <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13578](https://1ivy.atlassian.net/browse/XIVY-13578) Do not load app configuration multiple times on engine startup <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13581](https://1ivy.atlassian.net/browse/XIVY-13581) Add API to search for startables by id on workflow context and session 
* [XIVY-13607](https://1ivy.atlassian.net/browse/XIVY-13607) Remove ModProcessChangeListener to avoid frozen Designers 
* [XIVY-13627](https://1ivy.atlassian.net/browse/XIVY-13627) Generate .xhtml dialog in the target folder with template files 
* [XIVY-13635](https://1ivy.atlassian.net/browse/XIVY-13635) Implement all ProcessElements schema based 
* [XIVY-13639](https://1ivy.atlassian.net/browse/XIVY-13639) Implement default process for notification settings 
* [XIVY-13641](https://1ivy.atlassian.net/browse/XIVY-13641) Integrate the new HTML Dialog Editor 
* [XIVY-13666](https://1ivy.atlassian.net/browse/XIVY-13666) Verify Mod>Json migration works the same as on LTS 10 
* [XIVY-13774](https://1ivy.atlassian.net/browse/XIVY-13774) Improve get session count implementations 
* [XIVY-13775](https://1ivy.atlassian.net/browse/XIVY-13775) Validate the role name and prevent using reserved names 
* [XIVY-13804](https://1ivy.atlassian.net/browse/XIVY-13804) Add option to create .f.json instead of .xhtml for New HTML Dialogs in New Wizard 
* [XIVY-13805](https://1ivy.atlassian.net/browse/XIVY-13805) Integrate variables editor into Eclipse designer 
* [XIVY-13806](https://1ivy.atlassian.net/browse/XIVY-13806) Streamline inscription view tabs 
* [XIVY-13807](https://1ivy.atlassian.net/browse/XIVY-13807) Trigger .f.json build if it is saved in Web IDE 
* [XIVY-13820](https://1ivy.atlassian.net/browse/XIVY-13820) Release 11.3 
* [XIVY-13821](https://1ivy.atlassian.net/browse/XIVY-13821) News Page, Migration Notes for 11.3 
* [XIVY-13888](https://1ivy.atlassian.net/browse/XIVY-13888) Variables YAML designer validation if a variable exists multiple times in unrelated projects 
* [XIVY-13927](https://1ivy.atlassian.net/browse/XIVY-13927) Doc: Improve multilingual name and description 
* [XIVY-13987](https://1ivy.atlassian.net/browse/XIVY-13987) Request Start: Error if Trigger-Checkbox is selected but no output flow is connected 
* [XIVY-14027](https://1ivy.atlassian.net/browse/XIVY-14027) Cleanup Primefaces 13 Migration 
* [IVYPORTAL-14671](https://1ivy.atlassian.net/browse/IVYPORTAL-14671) Add mulitlingual support to the dashboard names and widgets 
* [IVYPORTAL-14678](https://1ivy.atlassian.net/browse/IVYPORTAL-14678) Adapt Notifications To Final Design And Function 
* [IVYPORTAL-14904](https://1ivy.atlassian.net/browse/IVYPORTAL-14904) MultiLanguage Support for external Link Widget 
* [IVYPORTAL-15093](https://1ivy.atlassian.net/browse/IVYPORTAL-15093) Prototype quick Global Search  for Processes 
* [IVYPORTAL-15292](https://1ivy.atlassian.net/browse/IVYPORTAL-15292) Statistics - API and storage of charts and settings 
* [IVYPORTAL-15491](https://1ivy.atlassian.net/browse/IVYPORTAL-15491) Quick search on process, task and case widget 
* [IVYPORTAL-15538](https://1ivy.atlassian.net/browse/IVYPORTAL-15538) Statistics Part - Statistics on the dashboard 
* [IVYPORTAL-15543](https://1ivy.atlassian.net/browse/IVYPORTAL-15543) Define approach for complex filters on task and case widget 
* [IVYPORTAL-15544](https://1ivy.atlassian.net/browse/IVYPORTAL-15544) Case Widget - Complex Standard Date Fields & Standard String Fields 
* [IVYPORTAL-15562](https://1ivy.atlassian.net/browse/IVYPORTAL-15562) Refactor LE portal-test (gui-tests) to selenide 2/3 
* [IVYPORTAL-15563](https://1ivy.atlassian.net/browse/IVYPORTAL-15563) Refactor portal-test (gui-tests) to selenide 3/3 
* [IVYPORTAL-15572](https://1ivy.atlassian.net/browse/IVYPORTAL-15572) List available Statistic Dashboard Widget 
* [IVYPORTAL-15574](https://1ivy.atlassian.net/browse/IVYPORTAL-15574) Process Information -  Customization Support 
* [IVYPORTAL-15575](https://1ivy.atlassian.net/browse/IVYPORTAL-15575) Complex Filtering 
* [IVYPORTAL-15613](https://1ivy.atlassian.net/browse/IVYPORTAL-15613) Statistics  - Multi KPI per Panel Support 
* [IVYPORTAL-15729](https://1ivy.atlassian.net/browse/IVYPORTAL-15729) Task Widget - Standard Fields 
* [IVYPORTAL-15836](https://1ivy.atlassian.net/browse/IVYPORTAL-15836) Case Widget - Custom String Number Timestamp Fields 
* [IVYPORTAL-15837](https://1ivy.atlassian.net/browse/IVYPORTAL-15837) Case Widget - Complex Standard Fields 
* [IVYPORTAL-15933](https://1ivy.atlassian.net/browse/IVYPORTAL-15933) Make portal-user-examples and portal-developer-examples not depend on Portal 
* [IVYPORTAL-16021](https://1ivy.atlassian.net/browse/IVYPORTAL-16021) Custom Action-Button for Cases 
* [IVYPORTAL-16025](https://1ivy.atlassian.net/browse/IVYPORTAL-16025) Case-Widget - Complex Filters - GUI-Tests & Screenshots & Documentation 
* [IVYPORTAL-16038](https://1ivy.atlassian.net/browse/IVYPORTAL-16038) Documentation and Clean up for Statistics 
* [IVYPORTAL-16080](https://1ivy.atlassian.net/browse/IVYPORTAL-16080) TaskTemplate Icon Customization 
* [IVYPORTAL-16086](https://1ivy.atlassian.net/browse/IVYPORTAL-16086) More Information Process Page 
* [IVYPORTAL-16131](https://1ivy.atlassian.net/browse/IVYPORTAL-16131) Notification Stream Dashboard Widget 
* [IVYPORTAL-16132](https://1ivy.atlassian.net/browse/IVYPORTAL-16132) Notifications Settings Link & Full screen Notifications Page 
* [IVYPORTAL-16147](https://1ivy.atlassian.net/browse/IVYPORTAL-16147) Custom Case Field on Task Widget 
* [IVYPORTAL-16211](https://1ivy.atlassian.net/browse/IVYPORTAL-16211) Improve release Portal process with Express 
* [IVYPORTAL-16246](https://1ivy.atlassian.net/browse/IVYPORTAL-16246) Adapt new Default page for Task/Case detail 
* [IVYPORTAL-16254](https://1ivy.atlassian.net/browse/IVYPORTAL-16254) Correct alignment of the custom column on Dashboard case/task widgets 
* [IVYPORTAL-16274](https://1ivy.atlassian.net/browse/IVYPORTAL-16274) Hide Notifications Bell when Web-Notifications deactivated 
* [IVYPORTAL-16295](https://1ivy.atlassian.net/browse/IVYPORTAL-16295) SPIKE UI-PoC for Portal Chatbot 
* [IVYPORTAL-16308](https://1ivy.atlassian.net/browse/IVYPORTAL-16308) UI Integration and Styling - Widget configuration step 
* [IVYPORTAL-16339](https://1ivy.atlassian.net/browse/IVYPORTAL-16339) Error when parsing number field 
* [IVYPORTAL-16344](https://1ivy.atlassian.net/browse/IVYPORTAL-16344) Task Details - Task Status Banner 
* [IVYPORTAL-16347](https://1ivy.atlassian.net/browse/IVYPORTAL-16347) Replace deprecated method: ISecurityContext.getExternalSecuritySystemName() 
* [IVYPORTAL-16354](https://1ivy.atlassian.net/browse/IVYPORTAL-16354) Task Widget - Custom Fields 
* [IVYPORTAL-16355](https://1ivy.atlassian.net/browse/IVYPORTAL-16355) Task-Widget - Complex Filters - GUI-Tests & Screenshots & Documentation 
* [IVYPORTAL-16408](https://1ivy.atlassian.net/browse/IVYPORTAL-16408) French wording reworks 
* [IVYPORTAL-16420](https://1ivy.atlassian.net/browse/IVYPORTAL-16420) Make Menu Entry Dashboard Customizable 
* [IVYPORTAL-16422](https://1ivy.atlassian.net/browse/IVYPORTAL-16422) Hide Case ID 
* [IVYPORTAL-16423](https://1ivy.atlassian.net/browse/IVYPORTAL-16423) Hide profile settings when user doesn't have permissions 
* [IVYPORTAL-16426](https://1ivy.atlassian.net/browse/IVYPORTAL-16426) Fix warning from Portal 
* [IVYPORTAL-16450](https://1ivy.atlassian.net/browse/IVYPORTAL-16450) Wrong typo cms in News widget 
* [IVYPORTAL-16462](https://1ivy.atlassian.net/browse/IVYPORTAL-16462) Exception when Reset password 
* [IVYPORTAL-16465](https://1ivy.atlassian.net/browse/IVYPORTAL-16465) Use JSoup library in Java to sanitize input to prevent XSS attacks 
* [IVYPORTAL-16523](https://1ivy.atlassian.net/browse/IVYPORTAL-16523) Improve warning popup when leaving an opening task 
* [IVYPORTAL-16528](https://1ivy.atlassian.net/browse/IVYPORTAL-16528) Prevent Dashboard Scrollbar because of Padding 
* [IVYPORTAL-16578](https://1ivy.atlassian.net/browse/IVYPORTAL-16578) French Translations Business Details 
* [IVYPORTAL-16689](https://1ivy.atlassian.net/browse/IVYPORTAL-16689) Consolidate Role/user name in the dashboard configuration dialog 
* [IVYPORTAL-16691](https://1ivy.atlassian.net/browse/IVYPORTAL-16691) Task widget information displays technical category name 
* [IVYPORTAL-16728](https://1ivy.atlassian.net/browse/IVYPORTAL-16728) Improve ExternalLink UI 
* [IVYPORTAL-16730](https://1ivy.atlassian.net/browse/IVYPORTAL-16730) Error appear when reserve task  
* [IVYPORTAL-16751](https://1ivy.atlassian.net/browse/IVYPORTAL-16751) Standard Process for notifications 
* [IVYPORTAL-16820](https://1ivy.atlassian.net/browse/IVYPORTAL-16820) Show Scrollbar in setting multiple languages dialog for LE 

### Bugs

* [XIVY-6821](https://1ivy.atlassian.net/browse/XIVY-6821) Error 409 if the same user starts a task in a different session 
* [XIVY-8066](https://1ivy.atlassian.net/browse/XIVY-8066) Designer breaks if you install additional plugins 
* [XIVY-9800](https://1ivy.atlassian.net/browse/XIVY-9800) Migration wizard task 'system database backup' does nothing 
* [XIVY-12544](https://1ivy.atlassian.net/browse/XIVY-12544) Fix typos in HTML Dialog Themes documentation 
* [XIVY-12562](https://1ivy.atlassian.net/browse/XIVY-12562) CMS Browser for Mail inscription mask 
* [XIVY-12966](https://1ivy.atlassian.net/browse/XIVY-12966) Deploy REST services for released PMVs 
* [XIVY-12981](https://1ivy.atlassian.net/browse/XIVY-12981) Restart button visible in Engine Cockpit bundled with Designer 
* [XIVY-12985](https://1ivy.atlassian.net/browse/XIVY-12985) Raise drools to 8.44.0/7.74.1 to fix CVE-2021-41411 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-12999](https://1ivy.atlassian.net/browse/XIVY-12999) Engine Cockpit should not write defaults to ivy.yaml file 
* [XIVY-13004](https://1ivy.atlassian.net/browse/XIVY-13004) A cluster slave node cannot start sometimes because of PersistentObjectDeletedException 
* [XIVY-13006](https://1ivy.atlassian.net/browse/XIVY-13006) OperationNotSupportedException if one sorts tables of start events, intermediate events, security systems, or flight recordings in Engine Cockpit 
* [XIVY-13034](https://1ivy.atlassian.net/browse/XIVY-13034) Notification settings on a User are ignored for Tasks assigned to a Role 
* [XIVY-13052](https://1ivy.atlassian.net/browse/XIVY-13052) Cannot select and therefore copy code/expression overlay in the mapping table 
* [XIVY-13053](https://1ivy.atlassian.net/browse/XIVY-13053) Cannot start Elasticsearch server if another instance is already running 
* [XIVY-13104](https://1ivy.atlassian.net/browse/XIVY-13104) The BPM error dialog leaks too much information to the end user <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13107](https://1ivy.atlassian.net/browse/XIVY-13107) System database migration from LTS-8 to LTS-10 fails with "Cannot insert null into IWA_SecurityMember.NAME" 
* [XIVY-13108](https://1ivy.atlassian.net/browse/XIVY-13108) Potential Resources Leaks in Microsoft Teams Notification 
* [XIVY-13119](https://1ivy.atlassian.net/browse/XIVY-13119) User and Role Editor throw ClassCastException on save 
* [XIVY-13126](https://1ivy.atlassian.net/browse/XIVY-13126) Connection leak if one does not commit/rollback JPA transaction but closes entity manager correctly 
* [XIVY-13146](https://1ivy.atlassian.net/browse/XIVY-13146) Fix typos in error messages in ProcessDataPersistenceService 
* [XIVY-13164](https://1ivy.atlassian.net/browse/XIVY-13164) Workflow REST API provides wrong process and task start links 
* [XIVY-13226](https://1ivy.atlassian.net/browse/XIVY-13226) Flickering in developer workflow UI when using dark mode and frame-based dialogs 
* [XIVY-13236](https://1ivy.atlassian.net/browse/XIVY-13236) Broken link to documentation in engine file deploy/README.txt 
* [XIVY-13246](https://1ivy.atlassian.net/browse/XIVY-13246) EL conversion fails if the value of an attribute contains a new line 
* [XIVY-13257](https://1ivy.atlassian.net/browse/XIVY-13257) DomainUserName class is missing the toString method for logging 
* [XIVY-13277](https://1ivy.atlassian.net/browse/XIVY-13277) Improve project deployment documentation 
* [XIVY-13308](https://1ivy.atlassian.net/browse/XIVY-13308) Improve application view and deletion of App, PM, PMV in Engine Cockpit 
* [XIVY-13321](https://1ivy.atlassian.net/browse/XIVY-13321) Show error if the project in the designer workspace has a newer major version 
* [XIVY-13322](https://1ivy.atlassian.net/browse/XIVY-13322) Support inout mode parameter in SOAP WS inscription view 
* [XIVY-13330](https://1ivy.atlassian.net/browse/XIVY-13330) Axon Ivy Engine can not be started after migration when 'system' security system already exists 
* [XIVY-13334](https://1ivy.atlassian.net/browse/XIVY-13334) Can not synchronize user for ActiveDirectory or Novell eDirectory if referral contains a reference to another directory 
* [XIVY-13335](https://1ivy.atlassian.net/browse/XIVY-13335) StackOverflowException at test runtime on the creation of IvyValidatorFactory 
* [XIVY-13343](https://1ivy.atlassian.net/browse/XIVY-13343) Designer freeze during build 
* [XIVY-13345](https://1ivy.atlassian.net/browse/XIVY-13345) Update documentation about counting NWU and CCU 
* [XIVY-13358](https://1ivy.atlassian.net/browse/XIVY-13358) Role mappings and other configurations are not migrated if the app has the same name as the security system 
* [XIVY-13396](https://1ivy.atlassian.net/browse/XIVY-13396) Fix exceptions in ivy.log when using migration wizard and copy keystore and trust store files 
* [XIVY-13397](https://1ivy.atlassian.net/browse/XIVY-13397) Migration Wizard file diff removes backslashes in the comparison view for Windows path 
* [XIVY-13398](https://1ivy.atlassian.net/browse/XIVY-13398) Loading CMS with over 3MB size fails 
* [XIVY-13399](https://1ivy.atlassian.net/browse/XIVY-13399) Can not add workflow document for anonymous users 
* [XIVY-13475](https://1ivy.atlassian.net/browse/XIVY-13475) Copy already existing app.yaml during migration to all env folders so that the runtime behavior for loading configurations is still the same 
* [XIVY-13479](https://1ivy.atlassian.net/browse/XIVY-13479) Respect security context when re-indexing business data in Elasticsearch 
* [XIVY-13481](https://1ivy.atlassian.net/browse/XIVY-13481) System database config can get lost after the migration wizard finishes 
* [XIVY-13492](https://1ivy.atlassian.net/browse/XIVY-13492) Migration Wizard complains about the wrong database version if you don't have access to the system database 
* [XIVY-13499](https://1ivy.atlassian.net/browse/XIVY-13499) Alternative gateways lose condition when it is wrapped 
* [XIVY-13500](https://1ivy.atlassian.net/browse/XIVY-13500) Jump into embedded sub takes current viewport which may be wrong 
* [XIVY-13505](https://1ivy.atlassian.net/browse/XIVY-13505) CallStack information on the End or Page End element might be wrong 
* [XIVY-13539](https://1ivy.atlassian.net/browse/XIVY-13539) Add logs to analyze slow engine startup due to password encryption in config files <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-13584](https://1ivy.atlassian.net/browse/XIVY-13584) IvyTest is not executable under Windows if paths contain special chars 
* [XIVY-13587](https://1ivy.atlassian.net/browse/XIVY-13587) New task email notifications are interrupted after trying to send to an invalid email address 
* [XIVY-13593](https://1ivy.atlassian.net/browse/XIVY-13593) Edit Variable dialog in Engine Cockpit has a layout problem 
* [XIVY-13595](https://1ivy.atlassian.net/browse/XIVY-13595) Add p:ajaxExceptionHandler to Setup wizard in Engine Cockpit 
* [XIVY-13622](https://1ivy.atlassian.net/browse/XIVY-13622) Fix critical CVE-2024-1597 of PostgreSQL driver <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13623](https://1ivy.atlassian.net/browse/XIVY-13623) Fix high CVE-2024-25710 and CVE-2024-26308 of Apache Commons Compress <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13625](https://1ivy.atlassian.net/browse/XIVY-13625) Redirect to the wrong URL when clicking on Login with Microsoft with IIS as a reverse proxy <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13628](https://1ivy.atlassian.net/browse/XIVY-13628) Fix medium CVE-2023-44483 of Apache Santuario XML Security <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-13632](https://1ivy.atlassian.net/browse/XIVY-13632) mod to json conversion switches the default value of "attach to case" flag  
* [XIVY-13677](https://1ivy.atlassian.net/browse/XIVY-13677) Process element is moved on text selection in inscription mask 
* [XIVY-13721](https://1ivy.atlassian.net/browse/XIVY-13721) Colors applied to the Alternative gateway are lost 
* [XIVY-13730](https://1ivy.atlassian.net/browse/XIVY-13730) InaccessibleObjectException due to missing java.sql add-opens 
* [XIVY-13769](https://1ivy.atlassian.net/browse/XIVY-13769) Don't synch a user on login over SSO if UserSynch.OnLogin is false in ivy.yaml 
* [XIVY-13789](https://1ivy.atlassian.net/browse/XIVY-13789) Sometimes IvyScript errors are not marked properly in Monaco editor 
* [XIVY-13792](https://1ivy.atlassian.net/browse/XIVY-13792) Generating WebService client fails due to invalid target namespace 
* [XIVY-13809](https://1ivy.atlassian.net/browse/XIVY-13809) Handle the underline character in typedefs in CXF soap client 
* [XIVY-13859](https://1ivy.atlassian.net/browse/XIVY-13859) Documentation: still talks about "environments" 
* [XIVY-13890](https://1ivy.atlassian.net/browse/XIVY-13890) Engine sometimes can not start because of ConcurrentHashMap recursive update 
* [XIVY-13892](https://1ivy.atlassian.net/browse/XIVY-13892) Primefaces project conversion fails with HTTP response code 429 
* [XIVY-13894](https://1ivy.atlassian.net/browse/XIVY-13894) CMS import ignores (eats) empty columns  
* [XIVY-13895](https://1ivy.atlassian.net/browse/XIVY-13895) Designer hangs when deleting opened (unchanged) CMS entries 
* [XIVY-13928](https://1ivy.atlassian.net/browse/XIVY-13928) Rest Services from inactive PMV's are loaded 
* [XIVY-13949](https://1ivy.atlassian.net/browse/XIVY-13949) Process editor connectors sometimes not visible after inscription view resize 
* [XIVY-13952](https://1ivy.atlassian.net/browse/XIVY-13952) Error in web service YAML deserialize when endpoints are empty 
* [XIVY-13958](https://1ivy.atlassian.net/browse/XIVY-13958) Do not escape special characters in web notifications 
* [XIVY-13988](https://1ivy.atlassian.net/browse/XIVY-13988) Do not load environment-based configurations as they are no longer supported 
* [XIVY-13989](https://1ivy.atlassian.net/browse/XIVY-13989) Designer deadlock while stopping process engines (git branching) 
* [XIVY-13991](https://1ivy.atlassian.net/browse/XIVY-13991) Tasks are sometimes not joined 
* [XIVY-14019](https://1ivy.atlassian.net/browse/XIVY-14019) User synch resets manually changed language back to identity provider language 
* [XIVY-14061](https://1ivy.atlassian.net/browse/XIVY-14061) NPE in Engine Cockpit in rest client detail view if rest client is only defined in app.yaml but not in the project 
* [XIVY-14082](https://1ivy.atlassian.net/browse/XIVY-14082) Dev-WF-UI leaks all cases if you use a filter <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-14140](https://1ivy.atlassian.net/browse/XIVY-14140) Error Icon for error processes 
* [IVYPORTAL-15916](https://1ivy.atlassian.net/browse/IVYPORTAL-15916) Session expires despite user interaction on the UI 
* [IVYPORTAL-16225](https://1ivy.atlassian.net/browse/IVYPORTAL-16225) Welcome widget get Javascript exception 
* [IVYPORTAL-16226](https://1ivy.atlassian.net/browse/IVYPORTAL-16226) Cannot load process in combined mode 
* [IVYPORTAL-16227](https://1ivy.atlassian.net/browse/IVYPORTAL-16227) Dashboard process widget does not show image for External Link type 
* [IVYPORTAL-16233](https://1ivy.atlassian.net/browse/IVYPORTAL-16233) Portal Permissions not set to role Everybody when deploying the portal 
* [IVYPORTAL-16307](https://1ivy.atlassian.net/browse/IVYPORTAL-16307) Error on display Widget information of Task/Case widget 
* [IVYPORTAL-16428](https://1ivy.atlassian.net/browse/IVYPORTAL-16428) XSS Vulnerabilty in Portal <span class="badge badge-pill badge-success badge-security">security</span>
* [IVYPORTAL-16476](https://1ivy.atlassian.net/browse/IVYPORTAL-16476) Process Steps do not render correctly 
* [IVYPORTAL-16551](https://1ivy.atlassian.net/browse/IVYPORTAL-16551) Queries of task and case widgets have unnecessary extended parts 
* [IVYPORTAL-16560](https://1ivy.atlassian.net/browse/IVYPORTAL-16560) Process doesn't work in the custom process widget 
* [IVYPORTAL-16564](https://1ivy.atlassian.net/browse/IVYPORTAL-16564) Process Labels cutoff 
* [IVYPORTAL-16579](https://1ivy.atlassian.net/browse/IVYPORTAL-16579) Incorrect alignment header of Case/Task widgets when has vertical scrollbar 
* [IVYPORTAL-16739](https://1ivy.atlassian.net/browse/IVYPORTAL-16739) Screen reloaded if TaskTemplateIFrame has 'taskUrl=blank' 
* [IVYPORTAL-16809](https://1ivy.atlassian.net/browse/IVYPORTAL-16809) Edit Permission Doesn't Show Predefine Permission 
* [IVYPORTAL-16825](https://1ivy.atlassian.net/browse/IVYPORTAL-16825) Too many external Links lead to bad performance 
* [IVYPORTAL-16872](https://1ivy.atlassian.net/browse/IVYPORTAL-16872) AJAX indicator block the error dialog 
* [IVYPORTAL-16910](https://1ivy.atlassian.net/browse/IVYPORTAL-16910) Error when leaving a task due to ITask.getCase() throws exception 
* [IVYPORTAL-16924](https://1ivy.atlassian.net/browse/IVYPORTAL-16924) Process chain is missing after migrating to Portal 10 

# 11.2.0 (2023-12-04)

We strongly recommend to install this update release because it fixes security issues!

## Improvements

* [XIVY-12876](https://1ivy.atlassian.net/browse/XIVY-12876) Upgrade library Guava to the latest version 32.1.3  
* [XIVY-12875](https://1ivy.atlassian.net/browse/XIVY-12875) Upgrade library Log4j to the latest version 2.21.1  
* [XIVY-12874](https://1ivy.atlassian.net/browse/XIVY-12874) Upgrade library Apache Tomcat to the latest version 9.0.83 
* [XIVY-12873](https://1ivy.atlassian.net/browse/XIVY-12873) Upgrade library CXF to the latest version 3.5.7 
* [XIVY-12872](https://1ivy.atlassian.net/browse/XIVY-12872) Upgrade library OpenTelemetry to the latest version 1.32.0 
* [XIVY-12871](https://1ivy.atlassian.net/browse/XIVY-12871) Upgrade library MariaDB JDBC driver to the latest version 3.3.0 
* [XIVY-12870](https://1ivy.atlassian.net/browse/XIVY-12870) Upgrade library Swagger core to the latest version 2.2.19 
* [XIVY-12869](https://1ivy.atlassian.net/browse/XIVY-12869) Upgrade library classgraph to the latest version 4.8.164 
* [XIVY-12749](https://1ivy.atlassian.net/browse/XIVY-12749) Support Azure onPremisesExtensionAttributes in user property synchronization 
* [XIVY-12665](https://1ivy.atlassian.net/browse/XIVY-12665) Make total fields limit of business data configurable in ivy.yaml 
* [XIVY-12663](https://1ivy.atlassian.net/browse/XIVY-12663) Upgrade to Primefaces 11.0.12 
* [XIVY-12575](https://1ivy.atlassian.net/browse/XIVY-12575) New option on engine launchers (AxonIvyEngine.exe, AxonIvyEngineService.exe, AxonIvyEngine, etc) to restart the engine 
* [XIVY-12543](https://1ivy.atlassian.net/browse/XIVY-12543) Update JVMs to the latest October 2023 PSU releases <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-12501](https://1ivy.atlassian.net/browse/XIVY-12501) Allow to deploy application zip file that only contains configuration (e.g. app.yaml) without any project 
* [XIVY-12396](https://1ivy.atlassian.net/browse/XIVY-12396) Store packed projects as .iar files instead of .zip files on the engine 
* [XIVY-12359](https://1ivy.atlassian.net/browse/XIVY-12359) Cover more task cancel scenarios with IvyWorkflowBean 
* [XIVY-12353](https://1ivy.atlassian.net/browse/XIVY-12353) Support Postgres 16 for the system database 
* [XIVY-12244](https://1ivy.atlassian.net/browse/XIVY-12244) Allow to add a role to an unmanaged user, even if the role is managed by an identity provider 
* [XIVY-12219](https://1ivy.atlassian.net/browse/XIVY-12219) Trace mail communication 
* [XIVY-12053](https://1ivy.atlassian.net/browse/XIVY-12053) ControlCenter and AxonIvyEngineService should run as Administrator by default 
* [XIVY-11671](https://1ivy.atlassian.net/browse/XIVY-11671) Move session files to the work directory 
* [XIVY-11669](https://1ivy.atlassian.net/browse/XIVY-11669) Tool to migrate applications to another security context 
* [XIVY-11597](https://1ivy.atlassian.net/browse/XIVY-11597) Add HEALTCHECK to axonivy/axonivy-engine docker image 
* [XIVY-11531](https://1ivy.atlassian.net/browse/XIVY-11531) Support MariaDB 10.11 LTS and drop support for MariaDB 10.3 
* [XIVY-11515](https://1ivy.atlassian.net/browse/XIVY-11515) Web-Tester Login API to streamline authentication of a user 
* [XIVY-11493](https://1ivy.atlassian.net/browse/XIVY-11493) Support JAVA_OPTS_IVY_SYSTEM as VM option on Windows 
* [XIVY-11368](https://1ivy.atlassian.net/browse/XIVY-11368) Improve user synchronization logs 
* [XIVY-9347](https://1ivy.atlassian.net/browse/XIVY-9347) UUID for task and case 
* [XIVY-9197](https://1ivy.atlassian.net/browse/XIVY-9197) Axon Ivy Engine Docker image for linux/arm64/v8 OS architecture (MAC) 
* [XIVY-6929](https://1ivy.atlassian.net/browse/XIVY-6929) ViewExpiredException if a user clicks on a close link and afterward on another link on the same dialog 
* [IVYPORTAL-15848](https://1ivy.atlassian.net/browse/IVYPORTAL-15848) Dashboard - Cover Loading... by Skeleton for Task-List & Case-List Widget 
* [IVYPORTAL-15702](https://1ivy.atlassian.net/browse/IVYPORTAL-15702) Improve "deployment of dashboards"-Documentation 
* [IVYPORTAL-15294](https://1ivy.atlassian.net/browse/IVYPORTAL-15294) API to create a link to the task and case details page 
* [IVYPORTAL-15289](https://1ivy.atlassian.net/browse/IVYPORTAL-15289) Support process order in process start widget on dashboard  
* [IVYPORTAL-15215](https://1ivy.atlassian.net/browse/IVYPORTAL-15215) Support Translation of News in the News Widget with DeepL 
* [IVYPORTAL-15126](https://1ivy.atlassian.net/browse/IVYPORTAL-15126) Improve pagination for case list on the dashboard 
* [IVYPORTAL-15124](https://1ivy.atlassian.net/browse/IVYPORTAL-15124) Dashboard Tasklist  - Export To Excel Function 
* [IVYPORTAL-15121](https://1ivy.atlassian.net/browse/IVYPORTAL-15121) DeepL Portal-Dashboard Translation Support 
* [IVYPORTAL-15023](https://1ivy.atlassian.net/browse/IVYPORTAL-15023) Adapt mutiple languages for full task and case list, excel file 
* [IVYPORTAL-15004](https://1ivy.atlassian.net/browse/IVYPORTAL-15004) Improve Business Case Details Function 
* [IVYPORTAL-14897](https://1ivy.atlassian.net/browse/IVYPORTAL-14897) Improve Dashboard Widget Order and Spacing / Responsiveness 
* [IVYPORTAL-14469](https://1ivy.atlassian.net/browse/IVYPORTAL-14469) Dashboard Import-Option on the UI 
* [IVYPORTAL-14468](https://1ivy.atlassian.net/browse/IVYPORTAL-14468) Dashboard Export-Option on the UI 
* [IVYPORTAL-14138](https://1ivy.atlassian.net/browse/IVYPORTAL-14138) Dashboard Multi Language Support 

## New Features

* [XIVY-2938](https://1ivy.atlassian.net/browse/XIVY-2938) Timer start event with CRON job like configuration 
* [XIVY-4071](https://1ivy.atlassian.net/browse/XIVY-4071) List Jobs in Engine Cockpit 
* [XIVY-4422](https://1ivy.atlassian.net/browse/XIVY-4422) Suppress task notification for certain tasks 
* [XIVY-5352](https://1ivy.atlassian.net/browse/XIVY-5352) Remove the application file directory column from the System DB 
* [XIVY-7646](https://1ivy.atlassian.net/browse/XIVY-7646) Add cron jobs to our job framework 
* [XIVY-8147](https://1ivy.atlassian.net/browse/XIVY-8147) Polish serialization of rarely used elements 
* [XIVY-8868](https://1ivy.atlassian.net/browse/XIVY-8868) Migrate to Apple's new notary tool to keep the signing chain functional 
* [XIVY-9173](https://1ivy.atlassian.net/browse/XIVY-9173) Migrate security system config to identity provider config 
* [XIVY-9182](https://1ivy.atlassian.net/browse/XIVY-9182) Provide LDAP/JNDI default configurations with the new config approach 
* [XIVY-9850](https://1ivy.atlassian.net/browse/XIVY-9850) Remove outdated DataWrapper bundle 
* [XIVY-9860](https://1ivy.atlassian.net/browse/XIVY-9860) Remove Z-Centric code outside of the 'components' bundle 
* [XIVY-10514](https://1ivy.atlassian.net/browse/XIVY-10514) Add an extension point for Managers 
* [XIVY-10526](https://1ivy.atlassian.net/browse/XIVY-10526) Support debugging Elasticsearch problems in Engine Cockpit 
* [XIVY-10544](https://1ivy.atlassian.net/browse/XIVY-10544) Add App and PMV to inscription view protocol context 
* [XIVY-10713](https://1ivy.atlassian.net/browse/XIVY-10713) Add S3 as blob storage provider 
* [XIVY-10757](https://1ivy.atlassian.net/browse/XIVY-10757) The first entry in CMS should be created with the language of the local system/user instead of English 
* [XIVY-10761](https://1ivy.atlassian.net/browse/XIVY-10761) Upgrade to tycho 3.0 
* [XIVY-10816](https://1ivy.atlassian.net/browse/XIVY-10816) Wait a certain time on the availabilty on external Elasticsearch by startup to install the templates 
* [XIVY-10873](https://1ivy.atlassian.net/browse/XIVY-10873) Add Callable Start element in the new inscription view 
* [XIVY-10875](https://1ivy.atlassian.net/browse/XIVY-10875) Add E-Mail element in the new inscription view 
* [XIVY-10937](https://1ivy.atlassian.net/browse/XIVY-10937) Document networking requirements for cluster environment 
* [XIVY-11194](https://1ivy.atlassian.net/browse/XIVY-11194) Replace all daily jobs with CRON jobs 
* [XIVY-11200](https://1ivy.atlassian.net/browse/XIVY-11200) LSP backend for Alternative-Gateway 
* [XIVY-11201](https://1ivy.atlassian.net/browse/XIVY-11201) Browser for Azure Active Directory security system 
* [XIVY-11213](https://1ivy.atlassian.net/browse/XIVY-11213) Java Flight Recorder view in Engine Cockpit 
* [XIVY-11276](https://1ivy.atlassian.net/browse/XIVY-11276) Remove support for WebPage activity 
* [XIVY-11279](https://1ivy.atlassian.net/browse/XIVY-11279) Adapt  UI-Mockups for inscription view 
* [XIVY-11282](https://1ivy.atlassian.net/browse/XIVY-11282) Improve configuration file migration by adding a file version  
* [XIVY-11350](https://1ivy.atlassian.net/browse/XIVY-11350) The Market shows the wrong versions for the current Designer 
* [XIVY-11369](https://1ivy.atlassian.net/browse/XIVY-11369) OpenRPC specification for our inscription LSP 
* [XIVY-11441](https://1ivy.atlassian.net/browse/XIVY-11441) Add validation and content-assist to the Engine Cockpit Configuration File Editor 
* [XIVY-11447](https://1ivy.atlassian.net/browse/XIVY-11447) Add Alternative gateway element to new inscription view 
* [XIVY-11460](https://1ivy.atlassian.net/browse/XIVY-11460) Undo support for new inscription view 
* [XIVY-11461](https://1ivy.atlassian.net/browse/XIVY-11461) Evaluate an HTML/Text template technology/library 
* [XIVY-11462](https://1ivy.atlassian.net/browse/XIVY-11462) Design and prototype notification service 
* [XIVY-11470](https://1ivy.atlassian.net/browse/XIVY-11470) Improve validation message if a process identifier exists multiple times 
* [XIVY-11485](https://1ivy.atlassian.net/browse/XIVY-11485) Provide an additional path to identify the affected widget in validation messages 
* [XIVY-11491](https://1ivy.atlassian.net/browse/XIVY-11491) Java workflow statistic API 
* [XIVY-11494](https://1ivy.atlassian.net/browse/XIVY-11494) Add boundary elements to the new inscription view 
* [XIVY-11495](https://1ivy.atlassian.net/browse/XIVY-11495) Add Signal and Error Catcher start elements to the new Inscription View 
* [XIVY-11519](https://1ivy.atlassian.net/browse/XIVY-11519) Add more statistics and debug information for jobs in Engine Cockpit 
* [XIVY-11521](https://1ivy.atlassian.net/browse/XIVY-11521) Add generic actions to the inscription LSP protocol 
* [XIVY-11557](https://1ivy.atlassian.net/browse/XIVY-11557) Upgrade Build-Infrastructure to maven 3.9 
* [XIVY-11583](https://1ivy.atlassian.net/browse/XIVY-11583) Streamline Start-Event names 
* [XIVY-11598](https://1ivy.atlassian.net/browse/XIVY-11598) Prototype attribute browser for the new inscription view 
* [XIVY-11599](https://1ivy.atlassian.net/browse/XIVY-11599) Add start event and intermediate event views to Engine Cockpit 
* [XIVY-11623](https://1ivy.atlassian.net/browse/XIVY-11623) Support own reader thread for poll and asynchronous process execution in start event beans 
* [XIVY-11638](https://1ivy.atlassian.net/browse/XIVY-11638) Add a notification framework with Web notifications 
* [XIVY-11639](https://1ivy.atlassian.net/browse/XIVY-11639) Send New-Task Notification via Notification Service 
* [XIVY-11668](https://1ivy.atlassian.net/browse/XIVY-11668) View to analyze memory leak problems (class histogram) in Engine Cockpit 
* [XIVY-11675](https://1ivy.atlassian.net/browse/XIVY-11675) Macro editor for new inscription view 
* [XIVY-11703](https://1ivy.atlassian.net/browse/XIVY-11703) Add StartRequest element to the new Inscription View (Request, Trigger sections) 
* [XIVY-11704](https://1ivy.atlassian.net/browse/XIVY-11704) Add WebService start element to the new Inscription View (Task, WebService) 
* [XIVY-11705](https://1ivy.atlassian.net/browse/XIVY-11705) Add Program (Start, Intermediate, Activity) elements to the new Inscription View (Start / Event, Editor) 
* [XIVY-11707](https://1ivy.atlassian.net/browse/XIVY-11707) Add process inscription to the new Inscription View 
* [XIVY-11710](https://1ivy.atlassian.net/browse/XIVY-11710) Add Error End element to the new inscription view 
* [XIVY-11711](https://1ivy.atlassian.net/browse/XIVY-11711) Add database activity element to the new Inscription view 
* [XIVY-11712](https://1ivy.atlassian.net/browse/XIVY-11712) Add Web Service activity element to the new inscription view 
* [XIVY-11713](https://1ivy.atlassian.net/browse/XIVY-11713) Add Rest Client Call activity element to the new Inscription View 
* [XIVY-11719](https://1ivy.atlassian.net/browse/XIVY-11719) Add Spanish and complete German and French translation for Primefaces components 
* [XIVY-11767](https://1ivy.atlassian.net/browse/XIVY-11767) API to call Call Subs with a certain signature in all released PMVs of a security context 
* [XIVY-11798](https://1ivy.atlassian.net/browse/XIVY-11798) Add CMS browser to the inscription view (as blueprint/preparation for the integration of other browsers) 
* [XIVY-11848](https://1ivy.atlassian.net/browse/XIVY-11848) Build engine launcher for Windows with MSBuild Visual Studio 2022 
* [XIVY-11945](https://1ivy.atlassian.net/browse/XIVY-11945) Rollout validation messages for every inscription view 
* [XIVY-11946](https://1ivy.atlassian.net/browse/XIVY-11946) Add a mail notification channel 
* [XIVY-11947](https://1ivy.atlassian.net/browse/XIVY-11947) Add notification subscription management to the Engine Cockpit 
* [XIVY-12007](https://1ivy.atlassian.net/browse/XIVY-12007) Reliable Delivery Queue for Notifications 
* [XIVY-12024](https://1ivy.atlassian.net/browse/XIVY-12024) Pimp Macro read mode inputs by replacing macro expressions with badges in new Inscription View 
* [XIVY-12042](https://1ivy.atlassian.net/browse/XIVY-12042) Improve documentation about variable password type evaluation 
* [XIVY-12117](https://1ivy.atlassian.net/browse/XIVY-12117) Allow to delete roles in Engine Cockpit 
* [XIVY-12207](https://1ivy.atlassian.net/browse/XIVY-12207) Add a concept chapter about Notifications to the documentation  
* [XIVY-12212](https://1ivy.atlassian.net/browse/XIVY-12212) View for User Substitutes and Absences in Engine Cockpit 
* [XIVY-12217](https://1ivy.atlassian.net/browse/XIVY-12217) Drop Mail Settings Preferences in Axon Ivy Designer 
* [XIVY-12242](https://1ivy.atlassian.net/browse/XIVY-12242) Cache default configuration of Identity Provider in-memory to boost performance <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-12245](https://1ivy.atlassian.net/browse/XIVY-12245) Prototype a MS Teams notification channel 
* [XIVY-12253](https://1ivy.atlassian.net/browse/XIVY-12253) IvyScript LSP completion hints for known types (Duration, BpmError, etc) 
* [XIVY-12261](https://1ivy.atlassian.net/browse/XIVY-12261) Add SSL view in Engine-Cockpit to configure SSL settings 
* [XIVY-12290](https://1ivy.atlassian.net/browse/XIVY-12290) Improve Content Management System (CMS) performance <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-12355](https://1ivy.atlassian.net/browse/XIVY-12355) Reduce the size of OpenAPI-browser (swagger-ui web jar) 
* [XIVY-12367](https://1ivy.atlassian.net/browse/XIVY-12367) Cleanup stored notifications in system database periodically 
* [XIVY-12390](https://1ivy.atlassian.net/browse/XIVY-12390) Remove existing mail notification infrastructure 
* [XIVY-12409](https://1ivy.atlassian.net/browse/XIVY-12409) Add a user state filter to the roles panel in the Engine Cockpit 
* [XIVY-12423](https://1ivy.atlassian.net/browse/XIVY-12423) Improve custom fields meta documentation 
* [XIVY-12490](https://1ivy.atlassian.net/browse/XIVY-12490) Update third-party libraries (like CXF, SnakeYaml) 
* [XIVY-12493](https://1ivy.atlassian.net/browse/XIVY-12493) Update HTML Dialog chapter in Designer guide 
* [XIVY-12538](https://1ivy.atlassian.net/browse/XIVY-12538) Custom Editor for Program elements with new Inscription 
* [XIVY-12541](https://1ivy.atlassian.net/browse/XIVY-12541) Notification templates for simple notification messages 
* [XIVY-12548](https://1ivy.atlassian.net/browse/XIVY-12548) Add data type browser to the new Inscription View 
* [XIVY-12552](https://1ivy.atlassian.net/browse/XIVY-12552) Discuss inscription view UI design 
* [XIVY-12557](https://1ivy.atlassian.net/browse/XIVY-12557) Simple MS Teams Notification Channel (with a technical user) 
* [XIVY-12574](https://1ivy.atlassian.net/browse/XIVY-12574) Restart the engine from the Engine Cockpit 
* [XIVY-12602](https://1ivy.atlassian.net/browse/XIVY-12602) Move inscription view into the process editor as Master/Detail 
* [XIVY-12667](https://1ivy.atlassian.net/browse/XIVY-12667) Threema connector to send secure messages 
* [XIVY-12684](https://1ivy.atlassian.net/browse/XIVY-12684) Release 11.2 
* [XIVY-12741](https://1ivy.atlassian.net/browse/XIVY-12741) News Page, Migration Notes for 11.2 
* [XIVY-12800](https://1ivy.atlassian.net/browse/XIVY-12800) Ensure consistent UI/UX for Inscription View 
* [XIVY-12807](https://1ivy.atlassian.net/browse/XIVY-12807) Rest client trace should also display request data if an entity is used 
* [XIVY-12844](https://1ivy.atlassian.net/browse/XIVY-12844) Boost deployment by no longer loading workflow resources into the memory of the system app while deploying 
* [XIVY-12861](https://1ivy.atlassian.net/browse/XIVY-12861) Improve the user synchronization log with the reason why a user is synchronized 
* [XIVY-12866](https://1ivy.atlassian.net/browse/XIVY-12866) Upgrade library victools to the latest version 1.32.0 
* [XIVY-12867](https://1ivy.atlassian.net/browse/XIVY-12867) Upgrade library maven-model to the latest version 3.9.5 
* [XIVY-12868](https://1ivy.atlassian.net/browse/XIVY-12868) Upgrade library networknt.validator to the latest version 1.0.87 
* [IVYPORTAL-14234](https://1ivy.atlassian.net/browse/IVYPORTAL-14234) Enhance external Link Widget by Image 
* [IVYPORTAL-14348](https://1ivy.atlassian.net/browse/IVYPORTAL-14348) Move the public APIs of portal to portal-components 
* [IVYPORTAL-14382](https://1ivy.atlassian.net/browse/IVYPORTAL-14382) Simplify dashboard configuration journey 
* [IVYPORTAL-14450](https://1ivy.atlassian.net/browse/IVYPORTAL-14450) Remove library of example process start images from portal 
* [IVYPORTAL-14457](https://1ivy.atlassian.net/browse/IVYPORTAL-14457) Configuration of Global Search Scope <span class="badge badge-pill badge-success badge-performance">performance</span>
* [IVYPORTAL-14459](https://1ivy.atlassian.net/browse/IVYPORTAL-14459) Prevent embedded pages to grab focus on dashboard 
* [IVYPORTAL-14577](https://1ivy.atlassian.net/browse/IVYPORTAL-14577) Make express an independent marketplace item 
* [IVYPORTAL-14594](https://1ivy.atlassian.net/browse/IVYPORTAL-14594) Remove old non-iframe support 
* [IVYPORTAL-14663](https://1ivy.atlassian.net/browse/IVYPORTAL-14663) Introduce CaseBusinessState 
* [IVYPORTAL-14667](https://1ivy.atlassian.net/browse/IVYPORTAL-14667) UI updates for the News Widget 
* [IVYPORTAL-14813](https://1ivy.atlassian.net/browse/IVYPORTAL-14813) Forgotten Password - Change Password Message <span class="badge badge-pill badge-success badge-security">security</span>
* [IVYPORTAL-14837](https://1ivy.atlassian.net/browse/IVYPORTAL-14837) Document Custom Fields used by the Portal 
* [IVYPORTAL-14903](https://1ivy.atlassian.net/browse/IVYPORTAL-14903) Introduce TaskBusinessState 
* [IVYPORTAL-14962](https://1ivy.atlassian.net/browse/IVYPORTAL-14962) Update documentation about creating/displaying notes in Portal 
* [IVYPORTAL-14981](https://1ivy.atlassian.net/browse/IVYPORTAL-14981) Text of Task and Case widget on dashboard edit mode is disappear 
* [IVYPORTAL-15010](https://1ivy.atlassian.net/browse/IVYPORTAL-15010) Dashboard Case list widget: Export To Excel Function 
* [IVYPORTAL-15014](https://1ivy.atlassian.net/browse/IVYPORTAL-15014) Consolidate status names of the Dashboard Task widget and its export file 
* [IVYPORTAL-15019](https://1ivy.atlassian.net/browse/IVYPORTAL-15019) Improve ExternalLink process on Dashboard 
* [IVYPORTAL-15025](https://1ivy.atlassian.net/browse/IVYPORTAL-15025) Improve pagination for Dashboard Task list widget 
* [IVYPORTAL-15027](https://1ivy.atlassian.net/browse/IVYPORTAL-15027) Improve alignment for the Dashboard Process widget 
* [IVYPORTAL-15047](https://1ivy.atlassian.net/browse/IVYPORTAL-15047) TaskTemplate-8 using Freya theme instead of Serenity 
* [IVYPORTAL-15053](https://1ivy.atlassian.net/browse/IVYPORTAL-15053) Process start in dashboard not align correctly 
* [IVYPORTAL-15058](https://1ivy.atlassian.net/browse/IVYPORTAL-15058) Some issues on Task Analysis page 
* [IVYPORTAL-15065](https://1ivy.atlassian.net/browse/IVYPORTAL-15065) Trivial UI bugs 
* [IVYPORTAL-15091](https://1ivy.atlassian.net/browse/IVYPORTAL-15091) Add attribute "emptyMessage" for UserSelection, RoleSelection components 
* [IVYPORTAL-15098](https://1ivy.atlassian.net/browse/IVYPORTAL-15098) Error when open statistic info of Case widget on dashboard 
* [IVYPORTAL-15102](https://1ivy.atlassian.net/browse/IVYPORTAL-15102) Use UUID for task and case process parameters <span class="badge badge-pill badge-success badge-security">security</span>
* [IVYPORTAL-15120](https://1ivy.atlassian.net/browse/IVYPORTAL-15120) Calendar in create absence dialog not consistent 
* [IVYPORTAL-15132](https://1ivy.atlassian.net/browse/IVYPORTAL-15132) Allow SVG as a picture format within the portal (External Link, Welcome Widget, etc)  
* [IVYPORTAL-15163](https://1ivy.atlassian.net/browse/IVYPORTAL-15163) Migrate old portal customization - Step 1 Removal 
* [IVYPORTAL-15171](https://1ivy.atlassian.net/browse/IVYPORTAL-15171) Disable "Clear Expiry" function when task is destroyed 
* [IVYPORTAL-15173](https://1ivy.atlassian.net/browse/IVYPORTAL-15173) Remove obsolete date format from My Profile 
* [IVYPORTAL-15175](https://1ivy.atlassian.net/browse/IVYPORTAL-15175) Remove primefaces-calendar-en-us.js 
* [IVYPORTAL-15180](https://1ivy.atlassian.net/browse/IVYPORTAL-15180) Improve absences UI 
* [IVYPORTAL-15195](https://1ivy.atlassian.net/browse/IVYPORTAL-15195) Case name is not nice 
* [IVYPORTAL-15198](https://1ivy.atlassian.net/browse/IVYPORTAL-15198) Improve text when cannot find the process for Custom widget 
* [IVYPORTAL-15209](https://1ivy.atlassian.net/browse/IVYPORTAL-15209) Update Portal Cronjob Trigger document 
* [IVYPORTAL-15211](https://1ivy.atlassian.net/browse/IVYPORTAL-15211) Migrate old portal customization - Step 2 Callable Approach Implementation 
* [IVYPORTAL-15212](https://1ivy.atlassian.net/browse/IVYPORTAL-15212) Adapt External Link import image base64 data format 
* [IVYPORTAL-15272](https://1ivy.atlassian.net/browse/IVYPORTAL-15272) Adapt dashboard migration 
* [IVYPORTAL-15295](https://1ivy.atlassian.net/browse/IVYPORTAL-15295) Process start widget, Custom widget, Process Viewer - Rework "error" screen 
* [IVYPORTAL-15296](https://1ivy.atlassian.net/browse/IVYPORTAL-15296) Small typo in the documentation 
* [IVYPORTAL-15305](https://1ivy.atlassian.net/browse/IVYPORTAL-15305) Task details page alignment is not nice 
* [IVYPORTAL-15306](https://1ivy.atlassian.net/browse/IVYPORTAL-15306) Text color of task/case state different in dashboard dark mode 
* [IVYPORTAL-15308](https://1ivy.atlassian.net/browse/IVYPORTAL-15308) Portal Customization Rework - load submenu items 
* [IVYPORTAL-15309](https://1ivy.atlassian.net/browse/IVYPORTAL-15309) Process Order in Process start Widget on Dashboard - Part 2 Custom Order 
* [IVYPORTAL-15318](https://1ivy.atlassian.net/browse/IVYPORTAL-15318) Update UI for ProcessViewer widget when cannot find process 
* [IVYPORTAL-15321](https://1ivy.atlassian.net/browse/IVYPORTAL-15321) Adapt multi language and translation for Import dashboard 
* [IVYPORTAL-15323](https://1ivy.atlassian.net/browse/IVYPORTAL-15323) List available Custom Dashboard Widget 
* [IVYPORTAL-15326](https://1ivy.atlassian.net/browse/IVYPORTAL-15326) Migrate old portal customization - Step 2 - Update Developer Examples 
* [IVYPORTAL-15360](https://1ivy.atlassian.net/browse/IVYPORTAL-15360) Integration of Dashboards by URL (PRES Support) 
* [IVYPORTAL-15379](https://1ivy.atlassian.net/browse/IVYPORTAL-15379) Boolean Value hidden in Portal Admin Config 
* [IVYPORTAL-15386](https://1ivy.atlassian.net/browse/IVYPORTAL-15386) Documentation lacks new Portal Deployment Approach for version 10 
* [IVYPORTAL-15417](https://1ivy.atlassian.net/browse/IVYPORTAL-15417) Migrate Task Business State 
* [IVYPORTAL-15428](https://1ivy.atlassian.net/browse/IVYPORTAL-15428) Hide more Information Link when not additonal Information is shown 
* [IVYPORTAL-15445](https://1ivy.atlassian.net/browse/IVYPORTAL-15445) Performance: Portal load dashboard even when opening task list, task details 
* [IVYPORTAL-15446](https://1ivy.atlassian.net/browse/IVYPORTAL-15446) Improve absences in Portal  
* [IVYPORTAL-15452](https://1ivy.atlassian.net/browse/IVYPORTAL-15452) Share-Button in Case and Task Details 
* [IVYPORTAL-15453](https://1ivy.atlassian.net/browse/IVYPORTAL-15453) Dashboard direct link support 
* [IVYPORTAL-15485](https://1ivy.atlassian.net/browse/IVYPORTAL-15485) Multilanguage title cannot apply to the user language title 
* [IVYPORTAL-15487](https://1ivy.atlassian.net/browse/IVYPORTAL-15487) Overwrite HTML Dialog Customization Support  
* [IVYPORTAL-15489](https://1ivy.atlassian.net/browse/IVYPORTAL-15489) Custom Task Delegate & Document processes Customization Support 
* [IVYPORTAL-15490](https://1ivy.atlassian.net/browse/IVYPORTAL-15490) Autofocus on Dashboard Widget Filter Pop-up 
* [IVYPORTAL-15518](https://1ivy.atlassian.net/browse/IVYPORTAL-15518) Unify PojoConverter 
* [IVYPORTAL-15551](https://1ivy.atlassian.net/browse/IVYPORTAL-15551) Notifications Basic UI & Lazy Loading 
* [IVYPORTAL-15552](https://1ivy.atlassian.net/browse/IVYPORTAL-15552) Notifications Part 3 - (Channel subspriptions etc) 
* [IVYPORTAL-15561](https://1ivy.atlassian.net/browse/IVYPORTAL-15561) Refactor portal-test (gui-tests) to selenide 1/2 
* [IVYPORTAL-15568](https://1ivy.atlassian.net/browse/IVYPORTAL-15568) Notifications Part 2 - Mobile, Filters & Bulk-Read 
* [IVYPORTAL-15611](https://1ivy.atlassian.net/browse/IVYPORTAL-15611) Remove Express related code out of Portal-component 
* [IVYPORTAL-15620](https://1ivy.atlassian.net/browse/IVYPORTAL-15620) External URL stealing autofocus 
* [IVYPORTAL-15647](https://1ivy.atlassian.net/browse/IVYPORTAL-15647)  Filter item line is broken  
* [IVYPORTAL-15680](https://1ivy.atlassian.net/browse/IVYPORTAL-15680) Remove legacy dashboard support and documentation 
* [IVYPORTAL-15703](https://1ivy.atlassian.net/browse/IVYPORTAL-15703) Change export/import of dashboards on the ui to be an array 
* [IVYPORTAL-15816](https://1ivy.atlassian.net/browse/IVYPORTAL-15816) Remove dashboard JSON "styleClass": "new-widget" 
* [IVYPORTAL-15826](https://1ivy.atlassian.net/browse/IVYPORTAL-15826) Remove legacy feature "add language" from Portal 8 
* [IVYPORTAL-15829](https://1ivy.atlassian.net/browse/IVYPORTAL-15829) Remove legacy dashboard examples from portal developer examples 
* [IVYPORTAL-15830](https://1ivy.atlassian.net/browse/IVYPORTAL-15830) More complex filters on case widget view mode 
* [IVYPORTAL-15839](https://1ivy.atlassian.net/browse/IVYPORTAL-15839) Clean up duplicated code related to ProcessStartAPI, ProcessStartCollector, ProcessStartUtils 
* [IVYPORTAL-15841](https://1ivy.atlassian.net/browse/IVYPORTAL-15841) Update documentation related to Portal single and multi applications 
* [IVYPORTAL-15940](https://1ivy.atlassian.net/browse/IVYPORTAL-15940) Remove polyfill in Portal 
* [IVYPORTAL-15943](https://1ivy.atlassian.net/browse/IVYPORTAL-15943) Correct documentation related to reorder dashboard 
* [IVYPORTAL-15957](https://1ivy.atlassian.net/browse/IVYPORTAL-15957) Add new widget dialog not good when statistic chart has long name 
* [IVYPORTAL-15959](https://1ivy.atlassian.net/browse/IVYPORTAL-15959) Replace portal quartz by provided core functions 
* [IVYPORTAL-15970](https://1ivy.atlassian.net/browse/IVYPORTAL-15970) UI overlapped when scaling Process Viewer 
* [IVYPORTAL-15972](https://1ivy.atlassian.net/browse/IVYPORTAL-15972) Update External Link document relate imageContent 
* [IVYPORTAL-15984](https://1ivy.atlassian.net/browse/IVYPORTAL-15984) Dashboard - Cover Loading... by Skeleton for News Feed, Welcome Widget, Process Viewer 
* [IVYPORTAL-15991](https://1ivy.atlassian.net/browse/IVYPORTAL-15991) Notification "Only unread" button does not working as expected 
* [IVYPORTAL-15992](https://1ivy.atlassian.net/browse/IVYPORTAL-15992) Migration for image type 
* [IVYPORTAL-16024](https://1ivy.atlassian.net/browse/IVYPORTAL-16024) Process chain with custom icons 
* [IVYPORTAL-16053](https://1ivy.atlassian.net/browse/IVYPORTAL-16053) Adapt new 11.2 APIs for ProgrammedStarts 
* [IVYPORTAL-16112](https://1ivy.atlassian.net/browse/IVYPORTAL-16112) Text on process widget not clear 
* [IVYPORTAL-16117](https://1ivy.atlassian.net/browse/IVYPORTAL-16117) Error in Case widget information 
* [IVYPORTAL-16127](https://1ivy.atlassian.net/browse/IVYPORTAL-16127) Remove usages of email notification settings 
* [IVYPORTAL-16150](https://1ivy.atlassian.net/browse/IVYPORTAL-16150) Check notification render 
* [IVYPORTAL-16160](https://1ivy.atlassian.net/browse/IVYPORTAL-16160) Hide Notification Buttons without function 
* [IVYPORTAL-16161](https://1ivy.atlassian.net/browse/IVYPORTAL-16161) Rework notifications UI 

## Bugs

* [XIVY-3858](https://1ivy.atlassian.net/browse/XIVY-3858) Managed Beans not working after deleting 'processes' folder 
* [XIVY-3885](https://1ivy.atlassian.net/browse/XIVY-3885) Mail Notification does not work with a disabled HTTP port 
* [XIVY-4481](https://1ivy.atlassian.net/browse/XIVY-4481) Uploaded Files does not recognize when the username has changed  
* [XIVY-4535](https://1ivy.atlassian.net/browse/XIVY-4535) If I reconfigure the log file location in log4j2.xml cockpit will not show any log files 
* [XIVY-5095](https://1ivy.atlassian.net/browse/XIVY-5095) MySQL can not be migrated if the database name contains "-" 
* [XIVY-7745](https://1ivy.atlassian.net/browse/XIVY-7745) ActiveDirectory configuration of user properties to AD attribute is not case-insensitive 
* [XIVY-8666](https://1ivy.atlassian.net/browse/XIVY-8666) CXF web service NTLM authentication failure <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-9210](https://1ivy.atlassian.net/browse/XIVY-9210) Strange exception javax/servlet/jsp/jstl/core/Config when calling non-existing xhtml page e.g. /dev-workflow-ui/faces/home.XHTMLblabla 
* [XIVY-9844](https://1ivy.atlassian.net/browse/XIVY-9844) Long start-up time in @IvyTest <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10142](https://1ivy.atlassian.net/browse/XIVY-10142) User and role detail view in the Engine Cockpit makes thousands of database queries to load permissions 
* [XIVY-10189](https://1ivy.atlassian.net/browse/XIVY-10189) Certificate import not working in Designer SSL preferences  
* [XIVY-10530](https://1ivy.atlassian.net/browse/XIVY-10530) SQLServerException in user details view in Engine Cockpit with a lot of roles and SQL Server system database 
* [XIVY-10604](https://1ivy.atlassian.net/browse/XIVY-10604) Project Graph view fails to load because of an NPE 
* [XIVY-10837](https://1ivy.atlassian.net/browse/XIVY-10837) Update Maven Project sometimes causes process data class related validation errors 
* [XIVY-11174](https://1ivy.atlassian.net/browse/XIVY-11174) Cannot generate OpenAPI client from huge YAML file 
* [XIVY-11242](https://1ivy.atlassian.net/browse/XIVY-11242) Engine cannot start because of NoClassDefFoundError 
* [XIVY-11318](https://1ivy.atlassian.net/browse/XIVY-11318) Elasticsearch is calling Axon Ivy Engine in the Traffic Graph view instead of vice versa 
* [XIVY-11342](https://1ivy.atlassian.net/browse/XIVY-11342) No error is reported on UI if I try to log in but am not able to because the session limit has been reached 
* [XIVY-11343](https://1ivy.atlassian.net/browse/XIVY-11343) Error in the log after license upload in the setup wizard 
* [XIVY-11346](https://1ivy.atlassian.net/browse/XIVY-11346) Do not log "triggering indexing because of outdated template" if no objects exist to index 
* [XIVY-11352](https://1ivy.atlassian.net/browse/XIVY-11352) Resource leak in Engine Cockpit when downloading logs and generating support report 
* [XIVY-11358](https://1ivy.atlassian.net/browse/XIVY-11358) Two dependent projects that both contain web service clients cause Ivy validation problem warnings  
* [XIVY-11363](https://1ivy.atlassian.net/browse/XIVY-11363) IvyTest AppFixture API should allow setting config lists 
* [XIVY-11367](https://1ivy.atlassian.net/browse/XIVY-11367) If the filename of the license is named 'demo.lic' the Axon Ivy Engine does not recognise it 
* [XIVY-11370](https://1ivy.atlassian.net/browse/XIVY-11370) Default values of IdentityProvider user synchronization properties are not respected 
* [XIVY-11409](https://1ivy.atlassian.net/browse/XIVY-11409) Freya theme switch does not apply to newly started processes 
* [XIVY-11411](https://1ivy.atlassian.net/browse/XIVY-11411) NPE problem marker on all Rest Client configuration files in the workspace if one has a corrupt UUID 
* [XIVY-11445](https://1ivy.atlassian.net/browse/XIVY-11445) Improve and correct documentation regarding Duration type 
* [XIVY-11471](https://1ivy.atlassian.net/browse/XIVY-11471) Relax the process start path format validation 
* [XIVY-11484](https://1ivy.atlassian.net/browse/XIVY-11484) Improve mod to p.json process conversion from 8.0 to 10.0 
* [XIVY-11525](https://1ivy.atlassian.net/browse/XIVY-11525) Maven project build plugin fails to validate ivyScript on Windows if the .m2 directory is located on another drive than the project 
* [XIVY-11577](https://1ivy.atlassian.net/browse/XIVY-11577) Reconnect of an output arc of an alternative gateway is broken 
* [XIVY-11578](https://1ivy.atlassian.net/browse/XIVY-11578) WebSocket protocol not supported for Apache httpd and IIS proxy configuration 
* [XIVY-11579](https://1ivy.atlassian.net/browse/XIVY-11579) Problems adding languages to CMS with script/encryption specified 
* [XIVY-11589](https://1ivy.atlassian.net/browse/XIVY-11589) Duration.clone() only clones the seconds instead of all fields 
* [XIVY-11600](https://1ivy.atlassian.net/browse/XIVY-11600) JUnit IvyTest not working if a project is packaged 
* [XIVY-11652](https://1ivy.atlassian.net/browse/XIVY-11652) Improve new ivy project wizard Default Namespace generation 
* [XIVY-11657](https://1ivy.atlassian.net/browse/XIVY-11657) Can not compile a project with the maven build plugin if there are special chars in the path 
* [XIVY-11667](https://1ivy.atlassian.net/browse/XIVY-11667) Project conversion does not work in Dev-Designer if the portal version cannot be evaluated 
* [XIVY-11727](https://1ivy.atlassian.net/browse/XIVY-11727) Exception when Axon Ivy Engine will be stopped directly after starting 
* [XIVY-11740](https://1ivy.atlassian.net/browse/XIVY-11740) Function Browser in SWT Inscription mask does not open 
* [XIVY-11758](https://1ivy.atlassian.net/browse/XIVY-11758) Project conversion fails if one HTML Dialog View file can not be converted 
* [XIVY-11766](https://1ivy.atlassian.net/browse/XIVY-11766) Could not remove User Dialog because Dialog was already deleted 
* [XIVY-11799](https://1ivy.atlassian.net/browse/XIVY-11799) Correctly spell e.g., and i.e., in the documentation 
* [XIVY-11801](https://1ivy.atlassian.net/browse/XIVY-11801) Improve Signavio BPMN2 compatibility 
* [XIVY-11995](https://1ivy.atlassian.net/browse/XIVY-11995) Don't allow the creation of a new security system with the same name as an existing security system in the Engine Cockpit 
* [XIVY-12052](https://1ivy.atlassian.net/browse/XIVY-12052) Empty Locale not supported as user language 
* [XIVY-12077](https://1ivy.atlassian.net/browse/XIVY-12077) IllegalStateException Project was closed or deleted. Class loader is no longer accessable after deployment. 
* [XIVY-12125](https://1ivy.atlassian.net/browse/XIVY-12125) OpenAPI code generation fails to create date-time instances 
* [XIVY-12129](https://1ivy.atlassian.net/browse/XIVY-12129) Project conversion 8->10 of org.primefaces.model.DefaultStreamedContent does not work 
* [XIVY-12130](https://1ivy.atlassian.net/browse/XIVY-12130) After project conversion 8->10 an IvyScript macro that expands in.anyNumber introduces a breaking change   
* [XIVY-12131](https://1ivy.atlassian.net/browse/XIVY-12131) Data attribute names in IvyScript are case-insensitive which leads to confusing results   
* [XIVY-12134](https://1ivy.atlassian.net/browse/XIVY-12134) IvyTest fails to work with custom Valve installed as drop-in bundle 
* [XIVY-12240](https://1ivy.atlassian.net/browse/XIVY-12240) Engine Cockpit Logs view does not show content on Debian-based installation 
* [XIVY-12256](https://1ivy.atlassian.net/browse/XIVY-12256) Windows Service Registration - Quote path, work with quoted path 
* [XIVY-12325](https://1ivy.atlassian.net/browse/XIVY-12325) NPE in ServiceManager during startup of enterprise engine 
* [XIVY-12329](https://1ivy.atlassian.net/browse/XIVY-12329) IvyScript content assist shows a lot of attributes for ivy.case. 
* [XIVY-12330](https://1ivy.atlassian.net/browse/XIVY-12330) IvyScript content assist broken for ivy.case. 
* [XIVY-12366](https://1ivy.atlassian.net/browse/XIVY-12366) Custom application property migration to YAML file fails 
* [XIVY-12397](https://1ivy.atlassian.net/browse/XIVY-12397) Engine fails to boot after migration due to SecuritySystem with the name 'System' from an older version 
* [XIVY-12398](https://1ivy.atlassian.net/browse/XIVY-12398)  Migration of an Engine to LTS 10, creates an unneeded 'demo-portal' SecuritySystem 
* [XIVY-12502](https://1ivy.atlassian.net/browse/XIVY-12502) Engine Cockpit needs refresh when changing the configuration of a Web Service Client 
* [XIVY-12503](https://1ivy.atlassian.net/browse/XIVY-12503) Engine Cockpit  re-creates deleted database property on browser refresh 
* [XIVY-12520](https://1ivy.atlassian.net/browse/XIVY-12520) The language of the user will be set to empty after every user synchronization 
* [XIVY-12525](https://1ivy.atlassian.net/browse/XIVY-12525) Axon Ivy Engine must be restarted when IvyComposites interfaces (XHTML) will be changed in a deployment 
* [XIVY-12528](https://1ivy.atlassian.net/browse/XIVY-12528) Executing a database step in a loop is slow <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-12558](https://1ivy.atlassian.net/browse/XIVY-12558) New task and daily task summary emails are sent to disabled users 
* [XIVY-12560](https://1ivy.atlassian.net/browse/XIVY-12560) Role selector shows invalid entries (CREATOR, etc) on start elements 
* [XIVY-12583](https://1ivy.atlassian.net/browse/XIVY-12583) ivy.var.XXX does not work at all if a variable is defined in variables.yaml without a default value and overridden with a value in app.yaml 
* [XIVY-12584](https://1ivy.atlassian.net/browse/XIVY-12584) Remove dialog element from dialog logic's process palette 
* [XIVY-12664](https://1ivy.atlassian.net/browse/XIVY-12664) Application start fails if app.yaml's can not be written 
* [XIVY-12678](https://1ivy.atlassian.net/browse/XIVY-12678) IvyTest runtime error because of non-breakable circular DI of IvyValidatorFactory 
* [XIVY-12743](https://1ivy.atlassian.net/browse/XIVY-12743) Weird behaviors when clicking Enter in different Engine Cockpit views. E.g., role gets deleted when you press enter in an input field 
* [XIVY-12766](https://1ivy.atlassian.net/browse/XIVY-12766) RestClient can not make OAuth2 authentication if OAuth2 provider returns expires_in as String instead of Integer 
* [XIVY-12769](https://1ivy.atlassian.net/browse/XIVY-12769) The Sessions view in Engine Cockpit does not work if an HTTP session has been invalidated 
* [XIVY-12773](https://1ivy.atlassian.net/browse/XIVY-12773) NPE in Engine Cockpit when using custom authentication feature for web service client or rest client which does not follow a naming concept 
* [XIVY-12798](https://1ivy.atlassian.net/browse/XIVY-12798) Thread context logging is broken 
* [XIVY-12827](https://1ivy.atlassian.net/browse/XIVY-12827) ClassCastException if one tries to grant or deny certain Portal permission in Engine Cockpit 
* [XIVY-12845](https://1ivy.atlassian.net/browse/XIVY-12845) ViewExpiredException if one refreshes the process viewer in Portal 
* [XIVY-12887](https://1ivy.atlassian.net/browse/XIVY-12887) JSON Inscription view and History view do not show initial selection 
* [XIVY-12929](https://1ivy.atlassian.net/browse/XIVY-12929) Designer can freeze while adding a new Data Class 
* [XIVY-12941](https://1ivy.atlassian.net/browse/XIVY-12941) Inserting EmbeddSub creates multiple outputs on previous element 
* [XIVY-12964](https://1ivy.atlassian.net/browse/XIVY-12964) Deployment of all REST services of all applications on an Engine fails if there is a problem with class scanning in one single project 
* [XIVY-12965](https://1ivy.atlassian.net/browse/XIVY-12965) Sometimes a ResourceException is thrown during the Export of a project into an IAR file from the Designer 
* [XIVY-12970](https://1ivy.atlassian.net/browse/XIVY-12970) REST Client connection tester in Engine Cockpit should not report error on error code 400 (BAD REQUEST) 
* [XIVY-12987](https://1ivy.atlassian.net/browse/XIVY-12987) Can not log in to a second security system if there are multiple security systems with same Entra ID (Azure AD) configuration <span class="badge badge-pill badge-success badge-security">security</span>
* [IVYPORTAL-14989](https://1ivy.atlassian.net/browse/IVYPORTAL-14989) Security vulnerability in portal functional processes <span class="badge badge-pill badge-success badge-security">security</span>
* [IVYPORTAL-15011](https://1ivy.atlassian.net/browse/IVYPORTAL-15011) Exception when load filter set has filter condition of custom column 
* [IVYPORTAL-15046](https://1ivy.atlassian.net/browse/IVYPORTAL-15046) Browser refresh starts again a new process instead of refreshing the current user dialog 
* [IVYPORTAL-15104](https://1ivy.atlassian.net/browse/IVYPORTAL-15104) Display wrong default language in iFrame and language setting 
* [IVYPORTAL-15114](https://1ivy.atlassian.net/browse/IVYPORTAL-15114) Process is not populated when editing Dashboard Process Widget 
* [IVYPORTAL-15165](https://1ivy.atlassian.net/browse/IVYPORTAL-15165) "More Information" link not show on dashboard 
* [IVYPORTAL-15299](https://1ivy.atlassian.net/browse/IVYPORTAL-15299) Dashboard Process widget: cannot select External Link 
* [IVYPORTAL-15307](https://1ivy.atlassian.net/browse/IVYPORTAL-15307) Process chain causes error when setting step with JavaScript from IFrame 
* [IVYPORTAL-15327](https://1ivy.atlassian.net/browse/IVYPORTAL-15327) Permissions not updated 
* [IVYPORTAL-15357](https://1ivy.atlassian.net/browse/IVYPORTAL-15357) Case category in case list displayed incorrectly 
* [IVYPORTAL-15364](https://1ivy.atlassian.net/browse/IVYPORTAL-15364) Express end page not work properly 
* [IVYPORTAL-15418](https://1ivy.atlassian.net/browse/IVYPORTAL-15418) Reset password email has wrong format 
* [IVYPORTAL-15434](https://1ivy.atlassian.net/browse/IVYPORTAL-15434) Iframe height in TaskTemplate calculated after Primefaces load UI inside 
* [IVYPORTAL-15553](https://1ivy.atlassian.net/browse/IVYPORTAL-15553) Fix statistics expired chart not filter correctly 
* [IVYPORTAL-15618](https://1ivy.atlassian.net/browse/IVYPORTAL-15618) Fix process item not display correctly on dashboard 
* [IVYPORTAL-15619](https://1ivy.atlassian.net/browse/IVYPORTAL-15619) Portal without menu frame not align correctly 
* [IVYPORTAL-15639](https://1ivy.atlassian.net/browse/IVYPORTAL-15639) Cannot find callable subprocess from override HTML dialog 
* [IVYPORTAL-15799](https://1ivy.atlassian.net/browse/IVYPORTAL-15799) Fix Process Viewer doesn't work on Portal 
* [IVYPORTAL-15815](https://1ivy.atlassian.net/browse/IVYPORTAL-15815) Exception with UUID on Case note history 
* [IVYPORTAL-15920](https://1ivy.atlassian.net/browse/IVYPORTAL-15920) NPE when load filter set of a dashboard widget 
* [IVYPORTAL-15963](https://1ivy.atlassian.net/browse/IVYPORTAL-15963) SQLServerException error in Statistic page 
* [IVYPORTAL-15994](https://1ivy.atlassian.net/browse/IVYPORTAL-15994) Wrong number of task and case in dashboard widget information 
* [IVYPORTAL-15997](https://1ivy.atlassian.net/browse/IVYPORTAL-15997) Process Widget Sort By Index Bug 
* [IVYPORTAL-16114](https://1ivy.atlassian.net/browse/IVYPORTAL-16114) Exception in compact process 
* [IVYPORTAL-16170](https://1ivy.atlassian.net/browse/IVYPORTAL-16170) NPE when load Portal configuration page with old JSON 

# 11.1.0 (2023-05-03)

We strongly recommend to install this update release because it fixes security issues!

## Improvements

* [XIVY-11241](https://1ivy.atlassian.net/browse/XIVY-11241) Update DocFactory to Aspose version 23.3 
* [XIVY-11187](https://1ivy.atlassian.net/browse/XIVY-11187) Provide a validation warning for empty variables in variables.yaml as they are ignored at runtime 
* [XIVY-11171](https://1ivy.atlassian.net/browse/XIVY-11171) Add filter method isIn(...) to case, task, user, ... queries 
* [XIVY-11088](https://1ivy.atlassian.net/browse/XIVY-11088) Show Elasticsearch watermark configuration in Engine Cockpit 
* [XIVY-11074](https://1ivy.atlassian.net/browse/XIVY-11074) Upgrade bundled Elasticsearch to 7.17.9 
* [XIVY-10909](https://1ivy.atlassian.net/browse/XIVY-10909) Proxy support for project-build-plugin 
* [XIVY-10863](https://1ivy.atlassian.net/browse/XIVY-10863) Preconfigure (comment) the designer for debugging in Designer.ini file 
* [XIVY-10861](https://1ivy.atlassian.net/browse/XIVY-10861) Html Dialog editor should auto insert curly brackets 
* [XIVY-10804](https://1ivy.atlassian.net/browse/XIVY-10804) Configure watermark of bundled Elasticsearch server 
* [XIVY-10797](https://1ivy.atlassian.net/browse/XIVY-10797) Make docker images OpenShift compatible 
* [XIVY-10794](https://1ivy.atlassian.net/browse/XIVY-10794) REST endpoints should not be chunked by default 
* [XIVY-10790](https://1ivy.atlassian.net/browse/XIVY-10790) Pretty print JSON response in REST service if query parameter 'pretty' is added 
* [XIVY-10747](https://1ivy.atlassian.net/browse/XIVY-10747) Designer should work without a connection to the internet (offline) 
* [XIVY-10710](https://1ivy.atlassian.net/browse/XIVY-10710) Move workflow REST API end points from application to security context  
* [XIVY-10632](https://1ivy.atlassian.net/browse/XIVY-10632) Demonstrate Database Activity in a demo available at the Market 
* [XIVY-10610](https://1ivy.atlassian.net/browse/XIVY-10610) Trace request and response for REST services 
* [XIVY-10525](https://1ivy.atlassian.net/browse/XIVY-10525) Improve Elasticsearch documentation 
* [XIVY-10524](https://1ivy.atlassian.net/browse/XIVY-10524) Display Elasticsearch documents in Engine Cockpit 
* [XIVY-10451](https://1ivy.atlassian.net/browse/XIVY-10451) Provide JMX attribute lastUsedByThread and lastUsedByCallStack for database connections 
* [XIVY-10312](https://1ivy.atlassian.net/browse/XIVY-10312) Use business states of task and case in dev workflow ui 
* [XIVY-10268](https://1ivy.atlassian.net/browse/XIVY-10268) Show error timestamp on error dialog 
* [XIVY-10229](https://1ivy.atlassian.net/browse/XIVY-10229) Trace cluster communication in Slow Requests view on Engine Cockpit 
* [XIVY-10183](https://1ivy.atlassian.net/browse/XIVY-10183) Health checks should not count as licensed sessions 
* [XIVY-10174](https://1ivy.atlassian.net/browse/XIVY-10174) Pre-configure a Temurin JVM on Linux Designer 
* [XIVY-10170](https://1ivy.atlassian.net/browse/XIVY-10170) Add download button in Engine Cockpit to download Branding files for re-use 
* [XIVY-10131](https://1ivy.atlassian.net/browse/XIVY-10131) Show URL in Slow Requests view in Engine Cockpit 
* [XIVY-10130](https://1ivy.atlassian.net/browse/XIVY-10130) API to iterate over all business data of a certain type 
* [XIVY-10123](https://1ivy.atlassian.net/browse/XIVY-10123) Common redirect URI for all Azure-AD calls 
* [XIVY-10090](https://1ivy.atlassian.net/browse/XIVY-10090) Trace Elasticsearch queries 
* [XIVY-10079](https://1ivy.atlassian.net/browse/XIVY-10079) Enable/disable auto import of Axon Ivy project dependencies. Provide explicit action to run it. 
* [XIVY-10071](https://1ivy.atlassian.net/browse/XIVY-10071) Improve session monitor in Engine Cockpit 
* [XIVY-10014](https://1ivy.atlassian.net/browse/XIVY-10014) Support LDAP-based Oracle JDBC connection URLs 
* [XIVY-10000](https://1ivy.atlassian.net/browse/XIVY-10000) Update swagger libraries to codegen version 3.0.36, core version 2.2.6, parser version 2.1.8 
* [XIVY-9962](https://1ivy.atlassian.net/browse/XIVY-9962) Update YAML editor to version 1.9.0 
* [XIVY-9852](https://1ivy.atlassian.net/browse/XIVY-9852) Streamline L&F of project HTML Dialogs in Portal and dev-wf-ui 
* [XIVY-9830](https://1ivy.atlassian.net/browse/XIVY-9830) Show server messages in new process editor as notifications 
* [XIVY-9801](https://1ivy.atlassian.net/browse/XIVY-9801) Support PostgreSQL 15 
* [XIVY-9789](https://1ivy.atlassian.net/browse/XIVY-9789) Add orai18n.jar to support any Oracle collation (e.g. Japanese charsets/collations) 
* [XIVY-9744](https://1ivy.atlassian.net/browse/XIVY-9744) Support UTF-8 for MS SQL Server 2019+ and replace deprecated data types TEXT and IMAGE 
* [XIVY-9380](https://1ivy.atlassian.net/browse/XIVY-9380) Upgrade Microsoft SQL Server JDBC driver to Java 17 baseline 
* [XIVY-8994](https://1ivy.atlassian.net/browse/XIVY-8994) Project converter to migrate from Portal 8 to Portal 10 
* [XIVY-8453](https://1ivy.atlassian.net/browse/XIVY-8453) Context menu and quick fix to encrypt password variables in variables.yaml 
* [XIVY-8289](https://1ivy.atlassian.net/browse/XIVY-8289) Support Microsoft SQL Server 2022 
* [XIVY-3529](https://1ivy.atlassian.net/browse/XIVY-3529) Introduce business-relevant states for tasks and cases that are understood by end users 
* [XIVY-3166](https://1ivy.atlassian.net/browse/XIVY-3166) Delete tasks and case instead of setting them to ZOMBIE state 
* [XIVY-2923](https://1ivy.atlassian.net/browse/XIVY-2923) Support In-Queries in Business Repository Query API 
* [XIVY-2813](https://1ivy.atlassian.net/browse/XIVY-2813) Use utf8mb4 instead of utf8 for MySQL Database as charset 
* [IVYPORTAL-14897](https://1ivy.atlassian.net/browse/IVYPORTAL-14897) Improve Dashboard Widget Order and Spacing / Responsiveness 
* [IVYPORTAL-14874](https://1ivy.atlassian.net/browse/IVYPORTAL-14874) HTML in Task & Case Description 
* [IVYPORTAL-14783](https://1ivy.atlassian.net/browse/IVYPORTAL-14783) Process start in Dashboard, Name and Icon clickable 
* [IVYPORTAL-14705](https://1ivy.atlassian.net/browse/IVYPORTAL-14705) Add Portal modules to install in Designer 
* [IVYPORTAL-14700](https://1ivy.atlassian.net/browse/IVYPORTAL-14700) Optimize performance of Processes Page and "Processes Widget" 
* [IVYPORTAL-14599](https://1ivy.atlassian.net/browse/IVYPORTAL-14599) Support TaskName Overwrite in IFrame Task Template 
* [IVYPORTAL-14587](https://1ivy.atlassian.net/browse/IVYPORTAL-14587) Introduce a Version Number into the Portal JSONS 
* [IVYPORTAL-14579](https://1ivy.atlassian.net/browse/IVYPORTAL-14579) Add Portal Converter to Documentation  
* [IVYPORTAL-14572](https://1ivy.atlassian.net/browse/IVYPORTAL-14572) Introduce new Cardframe option to Portal iFrame Dialog Templates 
* [IVYPORTAL-14388](https://1ivy.atlassian.net/browse/IVYPORTAL-14388) Welcome Widget: Allow html code in the text, enhance positioning of image 

## New Features

* [XIVY-3142](https://1ivy.atlassian.net/browse/XIVY-3142) Show and manage active sessions in Engine Cockpit 
* [XIVY-3415](https://1ivy.atlassian.net/browse/XIVY-3415) Optimize business data getAll() / getAllInfos() on search result to execute less system database queries <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-7545](https://1ivy.atlassian.net/browse/XIVY-7545) Remove JNA library from Engine Cockpit 
* [XIVY-7819](https://1ivy.atlassian.net/browse/XIVY-7819) Remove UIInfo from InscriptionEditor Factory 
* [XIVY-8346](https://1ivy.atlassian.net/browse/XIVY-8346) Resurrect DataClass attribute combine refactoring 
* [XIVY-8445](https://1ivy.atlassian.net/browse/XIVY-8445) Improve manual download of market artefacts 
* [XIVY-9172](https://1ivy.atlassian.net/browse/XIVY-9172) Synchronize user properties from Azure AD 
* [XIVY-9217](https://1ivy.atlassian.net/browse/XIVY-9217) Make sure replacements are replaced everywhere in documentation 
* [XIVY-9776](https://1ivy.atlassian.net/browse/XIVY-9776) Introduce new licence for Axon Ivy 11 
* [XIVY-9811](https://1ivy.atlassian.net/browse/XIVY-9811) Export workflow data to Elasticsearch to provide performant statistics API 
* [XIVY-9891](https://1ivy.atlassian.net/browse/XIVY-9891) No longer convert legacy serverconfig.xml to ivy.yaml 
* [XIVY-9898](https://1ivy.atlassian.net/browse/XIVY-9898) Ease session leak detection by providing more information why a session is created 
* [XIVY-9912](https://1ivy.atlassian.net/browse/XIVY-9912) Improve system database query performance by no longer using complex database views <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-9913](https://1ivy.atlassian.net/browse/XIVY-9913) Process editor toolbar should be white in light mode 
* [XIVY-9920](https://1ivy.atlassian.net/browse/XIVY-9920) Remove views from system database 
* [XIVY-9921](https://1ivy.atlassian.net/browse/XIVY-9921) No longer list all columns in select clause for system database queries 
* [XIVY-9955](https://1ivy.atlassian.net/browse/XIVY-9955) Prototype technologies for web based process element inscription views 
* [XIVY-9957](https://1ivy.atlassian.net/browse/XIVY-9957) No longer full qualify columns in where, order and group clause if not needed for system db queries 
* [XIVY-9988](https://1ivy.atlassian.net/browse/XIVY-9988) Add missing indices on foreign key columns in the system database to boost deployment performance <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10017](https://1ivy.atlassian.net/browse/XIVY-10017) Improve IvyScript parse performance 
* [XIVY-10018](https://1ivy.atlassian.net/browse/XIVY-10018) Improve performance of Portal Processes page <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10022](https://1ivy.atlassian.net/browse/XIVY-10022) Invalidate HTTP sessions when destroying ivy session <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10032](https://1ivy.atlassian.net/browse/XIVY-10032) Refactor process data cache from a global to a session cache 
* [XIVY-10042](https://1ivy.atlassian.net/browse/XIVY-10042) API to get all web startables (also invisible ones) 
* [XIVY-10050](https://1ivy.atlassian.net/browse/XIVY-10050) Refactor Elasticsearch tests to JUnit5 
* [XIVY-10072](https://1ivy.atlassian.net/browse/XIVY-10072) Add a Business Data performance test to the performance test suite 
* [XIVY-10084](https://1ivy.atlassian.net/browse/XIVY-10084) Prototype integration of our web views into Theia + VS-Code 
* [XIVY-10085](https://1ivy.atlassian.net/browse/XIVY-10085) Prototype Ivy-Script integration with Monaco editor 
* [XIVY-10102](https://1ivy.atlassian.net/browse/XIVY-10102) Add an installer for Designer plugins into the drop-ins folder. E.g., dmn-table or express-importer 
* [XIVY-10132](https://1ivy.atlassian.net/browse/XIVY-10132) Improve performance of CMS resolution by caching file store <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10139](https://1ivy.atlassian.net/browse/XIVY-10139) Read locale of CMS resource form URL parameter and not from the session 
* [XIVY-10154](https://1ivy.atlassian.net/browse/XIVY-10154) Index workflow task in Elasticsearch 
* [XIVY-10156](https://1ivy.atlassian.net/browse/XIVY-10156) Optimize TaskQuery for canWorkOn and isInvolved <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10164](https://1ivy.atlassian.net/browse/XIVY-10164) Improve performance when invalidating an HTTP session <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10171](https://1ivy.atlassian.net/browse/XIVY-10171) Write log entry if a configured default pages project does not exists 
* [XIVY-10181](https://1ivy.atlassian.net/browse/XIVY-10181) Build in communication between frontend and backend process element inscription view prototypes 
* [XIVY-10182](https://1ivy.atlassian.net/browse/XIVY-10182) Integrate the process element inscription view backend prototype into our Engine 
* [XIVY-10184](https://1ivy.atlassian.net/browse/XIVY-10184) Transparent concurent user session count 
* [XIVY-10188](https://1ivy.atlassian.net/browse/XIVY-10188) Prototype tree table mapping component for process element inscription view 
* [XIVY-10190](https://1ivy.atlassian.net/browse/XIVY-10190) Don't handle user in different contexts as same user 
* [XIVY-10191](https://1ivy.atlassian.net/browse/XIVY-10191) No longer support AJP for reverse proxy (Apache, IIS) integration 
* [XIVY-10196](https://1ivy.atlassian.net/browse/XIVY-10196) Improve starts page performance in dev-workflow-ui <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10255](https://1ivy.atlassian.net/browse/XIVY-10255) No longer require the availability of an external Elasticsearch server while starting Axon Ivy Engine 
* [XIVY-10277](https://1ivy.atlassian.net/browse/XIVY-10277) Provide API to query statistic data for tasks 
* [XIVY-10278](https://1ivy.atlassian.net/browse/XIVY-10278) Reindex of task data in Elasticsearch 
* [XIVY-10279](https://1ivy.atlassian.net/browse/XIVY-10279) Allow to query statistic data about task custom fields 
* [XIVY-10293](https://1ivy.atlassian.net/browse/XIVY-10293) Provide start parameters on IWebStartable 
* [XIVY-10307](https://1ivy.atlassian.net/browse/XIVY-10307) Do not call getStartables() if filter changes on the dev-wf-ui starts page to improve performance <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10317](https://1ivy.atlassian.net/browse/XIVY-10317) Remove support for Axon Ivy environments 
* [XIVY-10329](https://1ivy.atlassian.net/browse/XIVY-10329) Remove dependency to Java AWT UI technology 
* [XIVY-10338](https://1ivy.atlassian.net/browse/XIVY-10338) Remove system database migration before 8.0 
* [XIVY-10339](https://1ivy.atlassian.net/browse/XIVY-10339) Integrate new inscription prototype into Designer as view 
* [XIVY-10340](https://1ivy.atlassian.net/browse/XIVY-10340) Integrate new inscription prototype into Eclipse Theia 
* [XIVY-10343](https://1ivy.atlassian.net/browse/XIVY-10343) Provide context to IvyScript LSP 
* [XIVY-10344](https://1ivy.atlassian.net/browse/XIVY-10344) Refactor inscription server 
* [XIVY-10351](https://1ivy.atlassian.net/browse/XIVY-10351) Show common tabs in new inscription view for every process elements 
* [XIVY-10393](https://1ivy.atlassian.net/browse/XIVY-10393) Replace JEST client library with a plain Jersey client to talk to Elasticsearch 
* [XIVY-10410](https://1ivy.atlassian.net/browse/XIVY-10410) Remove dynamic scriptDialogID from HTML Dialog process element 
* [XIVY-10427](https://1ivy.atlassian.net/browse/XIVY-10427) Handle default states in new inscription view 
* [XIVY-10445](https://1ivy.atlassian.net/browse/XIVY-10445) Prototype workflow statistic REST API 
* [XIVY-10464](https://1ivy.atlassian.net/browse/XIVY-10464) Document that you cannot override an already overridden thing 
* [XIVY-10490](https://1ivy.atlassian.net/browse/XIVY-10490) Split process model domain to multiple bundles 
* [XIVY-10506](https://1ivy.atlassian.net/browse/XIVY-10506) Define serialization format for process element configuration by using POJOs 
* [XIVY-10507](https://1ivy.atlassian.net/browse/XIVY-10507) Performance tests for Elasticsearch task index 
* [XIVY-10508](https://1ivy.atlassian.net/browse/XIVY-10508) Workflow statistic API next step 
* [XIVY-10509](https://1ivy.atlassian.net/browse/XIVY-10509) Finalize mapping tree table UI for inscription view and backend 
* [XIVY-10527](https://1ivy.atlassian.net/browse/XIVY-10527) Only provide documentation for latest minor release 
* [XIVY-10547](https://1ivy.atlassian.net/browse/XIVY-10547) Remove IvyScript visibility support 
* [XIVY-10577](https://1ivy.atlassian.net/browse/XIVY-10577) JSON schema for process models 
* [XIVY-10591](https://1ivy.atlassian.net/browse/XIVY-10591) Move java class  IvyDefaultJaxRsTemplates to 'ch.ivyteam.ivy.rest.client.config' bundle 
* [XIVY-10634](https://1ivy.atlassian.net/browse/XIVY-10634) Introduce a builder for WaitUtil 
* [XIVY-10646](https://1ivy.atlassian.net/browse/XIVY-10646) Enable standard substitutions in .dot files in the documentation 
* [XIVY-10648](https://1ivy.atlassian.net/browse/XIVY-10648) Distribute all third-party licenses with our products that require redistributing  
* [XIVY-10669](https://1ivy.atlassian.net/browse/XIVY-10669) Do not trace sensitive payload of REST request and responses <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10705](https://1ivy.atlassian.net/browse/XIVY-10705) Replace the issue list in debian changelog with a link to the official release notes 
* [XIVY-10706](https://1ivy.atlassian.net/browse/XIVY-10706) Improve DataClass combine attribute feature 
* [XIVY-10707](https://1ivy.atlassian.net/browse/XIVY-10707) Index workflow cases and provide statistic API  
* [XIVY-10709](https://1ivy.atlassian.net/browse/XIVY-10709) Add filter to workflow statistic API 
* [XIVY-10712](https://1ivy.atlassian.net/browse/XIVY-10712) Stabilize inscription view backend 
* [XIVY-10769](https://1ivy.atlassian.net/browse/XIVY-10769) Add static method 'of(...)' to create a PID and deprecate PID constructor 
* [XIVY-10796](https://1ivy.atlassian.net/browse/XIVY-10796) Remove HTTP header "Server" completely 
* [XIVY-10826](https://1ivy.atlassian.net/browse/XIVY-10826) More schema POJOs to replace aspect-driven process element serialization 
* [XIVY-10836](https://1ivy.atlassian.net/browse/XIVY-10836) Read process inscription without parsing XML <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10864](https://1ivy.atlassian.net/browse/XIVY-10864) Remove the logo link in mail templates 
* [XIVY-10870](https://1ivy.atlassian.net/browse/XIVY-10870) Improve reindexing performance of Task and Case indices 
* [XIVY-10872](https://1ivy.atlassian.net/browse/XIVY-10872) Add process caller tab to inscription view 
* [XIVY-10874](https://1ivy.atlassian.net/browse/XIVY-10874) Add Task Switch Gateway to inscription view 
* [XIVY-10876](https://1ivy.atlassian.net/browse/XIVY-10876) Eclipse Theia IDE based Designer with process editor, inscription view 
* [XIVY-10936](https://1ivy.atlassian.net/browse/XIVY-10936) Provide a UI in engine cockpit to view and modify all role mappings of Azure AD 
* [XIVY-10967](https://1ivy.atlassian.net/browse/XIVY-10967) Enable Engine Cockpit in Designer 
* [XIVY-10969](https://1ivy.atlassian.net/browse/XIVY-10969) Improve start-up time of Axon Ivy  <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-11005](https://1ivy.atlassian.net/browse/XIVY-11005) Inscription view LSP backend for Request Start Start/Trigger tab 
* [XIVY-11006](https://1ivy.atlassian.net/browse/XIVY-11006) Inscription view LSP backend for REST service  
* [XIVY-11007](https://1ivy.atlassian.net/browse/XIVY-11007) Inscription view LSP backend for Web Service Call 
* [XIVY-11008](https://1ivy.atlassian.net/browse/XIVY-11008) Eclipse Theia IDE based Designer for Windows and Mac 
* [XIVY-11012](https://1ivy.atlassian.net/browse/XIVY-11012) Log warnings in ivy.log for invalid app.yaml configs 
* [XIVY-11089](https://1ivy.atlassian.net/browse/XIVY-11089) ReleaseNotes must be generated using new JIRA installation 
* [XIVY-11103](https://1ivy.atlassian.net/browse/XIVY-11103) Create system db on Engine startup 
* [XIVY-11104](https://1ivy.atlassian.net/browse/XIVY-11104) Elasticsearch index won't be updated if a referenced object will be deleted 
* [XIVY-11120](https://1ivy.atlassian.net/browse/XIVY-11120) Release 11.1 
* [XIVY-11143](https://1ivy.atlassian.net/browse/XIVY-11143) Inscription view LSP backend for Start & Boundary Events 
* [XIVY-11168](https://1ivy.atlassian.net/browse/XIVY-11168) Inscription view LSP backend for all missing element types 
* [XIVY-11178](https://1ivy.atlassian.net/browse/XIVY-11178) Auto generate inscription view protocol stack for TypeScript 
* [XIVY-11183](https://1ivy.atlassian.net/browse/XIVY-11183) Threads view in engine cockpit that shows thread information and allows to create thread dumps 
* [XIVY-11184](https://1ivy.atlassian.net/browse/XIVY-11184) Remove "add variable/configuration" feature from Engine Cockpit 
* [XIVY-11185](https://1ivy.atlassian.net/browse/XIVY-11185) Improve release notes in documentation with release date 
* [XIVY-11299](https://1ivy.atlassian.net/browse/XIVY-11299) OpenAI ChatGPT connector for the Market 
* [XIVY-11317](https://1ivy.atlassian.net/browse/XIVY-11317) Hide "Model loading in progress" info messages in Error Log view 
* [XIVY-11330](https://1ivy.atlassian.net/browse/XIVY-11330) Hide ClientAbortExceptions about webjars resources in ivy.log 
* [IVYPORTAL-13254](https://1ivy.atlassian.net/browse/IVYPORTAL-13254) "News" Dashboard Widget 
* [IVYPORTAL-14351](https://1ivy.atlassian.net/browse/IVYPORTAL-14351) Reorder Dashboard Widgets in the selection Dialog 
* [IVYPORTAL-14519](https://1ivy.atlassian.net/browse/IVYPORTAL-14519) Adapt Ivy URLs in the documentation to the correct format 
* [IVYPORTAL-14562](https://1ivy.atlassian.net/browse/IVYPORTAL-14562) Move process images from portal to portal-components 
* [IVYPORTAL-14573](https://1ivy.atlassian.net/browse/IVYPORTAL-14573) Clean up big files, move jar files to dependency 
* [IVYPORTAL-14576](https://1ivy.atlassian.net/browse/IVYPORTAL-14576) Hide "Show Welcome Guide" Checkbox in "my Profile" 
* [IVYPORTAL-14586](https://1ivy.atlassian.net/browse/IVYPORTAL-14586) Update vulnerable dependencies 
* [IVYPORTAL-14602](https://1ivy.atlassian.net/browse/IVYPORTAL-14602) Error case list widget item click 
* [IVYPORTAL-14604](https://1ivy.atlassian.net/browse/IVYPORTAL-14604) The Preview button of ProcessWidget configuration does not work 
* [IVYPORTAL-14658](https://1ivy.atlassian.net/browse/IVYPORTAL-14658) Remove Zombie state and related logic 
* [IVYPORTAL-14660](https://1ivy.atlassian.net/browse/IVYPORTAL-14660) Unify processPath, processStart in dashboard/task list/case list configuration 
* [IVYPORTAL-14661](https://1ivy.atlassian.net/browse/IVYPORTAL-14661) Correct/Unify custom widget configuration 
* [IVYPORTAL-14662](https://1ivy.atlassian.net/browse/IVYPORTAL-14662) Remove outdated section form portal documentation 
* [IVYPORTAL-14669](https://1ivy.atlassian.net/browse/IVYPORTAL-14669) Not display the reservation option if task is not persisted 
* [IVYPORTAL-14728](https://1ivy.atlassian.net/browse/IVYPORTAL-14728) Adapt Portal after ivy remove IEnvironment 
* [IVYPORTAL-14813](https://1ivy.atlassian.net/browse/IVYPORTAL-14813) Forgotten Password - Change Password Message 
* [IVYPORTAL-14816](https://1ivy.atlassian.net/browse/IVYPORTAL-14816) Custom widget supports hidden Ivy processes 
* [IVYPORTAL-14826](https://1ivy.atlassian.net/browse/IVYPORTAL-14826) Add X button to close context menu 
* [IVYPORTAL-14831](https://1ivy.atlassian.net/browse/IVYPORTAL-14831) Streamline all the groupIds to com.axonivy.portal 
* [IVYPORTAL-14847](https://1ivy.atlassian.net/browse/IVYPORTAL-14847) Dashboard Process Category Filter doesn't show categories correctly 
* [IVYPORTAL-14871](https://1ivy.atlassian.net/browse/IVYPORTAL-14871) PortalNavigatorInFrameAPI of portal-components cause frame in frame issue 
* [IVYPORTAL-14886](https://1ivy.atlassian.net/browse/IVYPORTAL-14886) Portal logo in dark mode 
* [IVYPORTAL-14968](https://1ivy.atlassian.net/browse/IVYPORTAL-14968) Update Welcome Widget Header Image for 11.1 

## Bugs

* [XIVY-2985](https://1ivy.atlassian.net/browse/XIVY-2985) EL content assist in Html Dialog editor does not work most of the time 
* [XIVY-3113](https://1ivy.atlassian.net/browse/XIVY-3113) Business data search API is restricted to read maximum 10000 results 
* [XIVY-3312](https://1ivy.atlassian.net/browse/XIVY-3312) IBusinessCase API not visible in designer 
* [XIVY-7770](https://1ivy.atlassian.net/browse/XIVY-7770) Wrong JSF validation warning in HTML Dialog editor with fluent API methods 
* [XIVY-8621](https://1ivy.atlassian.net/browse/XIVY-8621) Bad performance of user detail view in Engine Cockpit if user has 1000+ roles (permission tree lazy loading) <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-8698](https://1ivy.atlassian.net/browse/XIVY-8698) Bad performance of Applications Page in Engine Cockpit  <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-9205](https://1ivy.atlassian.net/browse/XIVY-9205) Maven (M2E) workspace resolution for JAR attachments in IAR is broken 
* [XIVY-9365](https://1ivy.atlassian.net/browse/XIVY-9365) Can not create PDF_A documents with DocFactory 
* [XIVY-9435](https://1ivy.atlassian.net/browse/XIVY-9435) Log Log4J configuration problems to ivy.log 
* [XIVY-9543](https://1ivy.atlassian.net/browse/XIVY-9543) ClassLoading error on HD with primefaces objects on method-signature 
* [XIVY-9566](https://1ivy.atlassian.net/browse/XIVY-9566) CMS resources cached from browser in previous language 
* [XIVY-9625](https://1ivy.atlassian.net/browse/XIVY-9625) Improve empty custom-fields.yaml file and documentation 
* [XIVY-9658](https://1ivy.atlassian.net/browse/XIVY-9658) CMS tree refresh not working for external changes 
* [XIVY-9714](https://1ivy.atlassian.net/browse/XIVY-9714) Process history view is not in sync with process editor selection on Windows 
* [XIVY-9719](https://1ivy.atlassian.net/browse/XIVY-9719) Designer email simulation should use correct mail address 
* [XIVY-9721](https://1ivy.atlassian.net/browse/XIVY-9721) Missing information on process elements on the info menu (e.g. code of script step) in the process editor 
* [XIVY-9722](https://1ivy.atlassian.net/browse/XIVY-9722) Browser refresh starts again a new process instead of refreshing the current user dialog 
* [XIVY-9724](https://1ivy.atlassian.net/browse/XIVY-9724) Process element can be move to negative coordinates if pools or lanes are present in the process editor  
* [XIVY-9741](https://1ivy.atlassian.net/browse/XIVY-9741) Running multiple IvyTest which uses the same EntityManger fails 
* [XIVY-9745](https://1ivy.atlassian.net/browse/XIVY-9745) Importing an old project with dependency to old Portal projects is a big pain 
* [XIVY-9763](https://1ivy.atlassian.net/browse/XIVY-9763) ClassLoader error in maven project build plugin when validating ivy-processes 
* [XIVY-9777](https://1ivy.atlassian.net/browse/XIVY-9777) Select Breakpoint in Breakpoint View causes IvyScript validation error 
* [XIVY-9822](https://1ivy.atlassian.net/browse/XIVY-9822) Browsing public API classes in external browser fails 
* [XIVY-9824](https://1ivy.atlassian.net/browse/XIVY-9824) Drools DRL editor does not work with Java 17. Document to use Java 11.  
* [XIVY-9825](https://1ivy.atlassian.net/browse/XIVY-9825) Screenshot of new process editor (e.g. swimlane) are outdated in documentation 
* [XIVY-9826](https://1ivy.atlassian.net/browse/XIVY-9826) No sources provided for javax.* bundles 
* [XIVY-9828](https://1ivy.atlassian.net/browse/XIVY-9828) Delete or hide default security system if not used in Engine Cockpit <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-9832](https://1ivy.atlassian.net/browse/XIVY-9832) Install button in Axon Ivy Market sometimes disappear 
* [XIVY-9833](https://1ivy.atlassian.net/browse/XIVY-9833) Make links shown in Designer or Engine to the documentation version aware 
* [XIVY-9847](https://1ivy.atlassian.net/browse/XIVY-9847) Improve styling of Primefaces Freya DataTable paginator 
* [XIVY-9861](https://1ivy.atlassian.net/browse/XIVY-9861) White flickering in Dev-wf-ui with iFrame and dark mode 
* [XIVY-9862](https://1ivy.atlassian.net/browse/XIVY-9862) Different Pools and Lanes in same diagram are loaded in wrong order 
* [XIVY-9887](https://1ivy.atlassian.net/browse/XIVY-9887) Open content object browser in IvyScriptEditor causes IllegalStateException 
* [XIVY-9925](https://1ivy.atlassian.net/browse/XIVY-9925) External variable files in project configuration are not correctly encoded on Windows 
* [XIVY-9930](https://1ivy.atlassian.net/browse/XIVY-9930) Conditional breakpoints not supported on some process elements (Alternative gateway, End event, Embedded Sub, ...) 
* [XIVY-9948](https://1ivy.atlassian.net/browse/XIVY-9948) Bad Performance of StandardProcessStartFinder with many Apps and PMVs <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-9975](https://1ivy.atlassian.net/browse/XIVY-9975) Delete packed project (iar) in Designer does not remove it from the CMS view 
* [XIVY-9979](https://1ivy.atlassian.net/browse/XIVY-9979) CMS view doesn't show when project is packed (iar) 
* [XIVY-9980](https://1ivy.atlassian.net/browse/XIVY-9980) CMS delete API does not work correctly 
* [XIVY-9982](https://1ivy.atlassian.net/browse/XIVY-9982) The string truncating mechanism for Microsoft SQL Server with UTF-8 characters does not work properly 
* [XIVY-9987](https://1ivy.atlassian.net/browse/XIVY-9987) Export a process to an SVG image does not work in Designer 
* [XIVY-9989](https://1ivy.atlassian.net/browse/XIVY-9989) Start deployment is not thread-save and leads to flaky tests 
* [XIVY-10008](https://1ivy.atlassian.net/browse/XIVY-10008) OpenAPI3 request body types in ms-graph are not resolved 
* [XIVY-10021](https://1ivy.atlassian.net/browse/XIVY-10021) Maven libraries are not filtered in the AxonIvy project tree 
* [XIVY-10028](https://1ivy.atlassian.net/browse/XIVY-10028) Designer start is slow in development environment 
* [XIVY-10031](https://1ivy.atlassian.net/browse/XIVY-10031) REST Form-Payload field order must respect field order from inscription mask 
* [XIVY-10051](https://1ivy.atlassian.net/browse/XIVY-10051) Generic third-party elements not usable with new Process Editor 
* [XIVY-10057](https://1ivy.atlassian.net/browse/XIVY-10057) Improve Update Version, Release Notes, and Changelog builds 
* [XIVY-10101](https://1ivy.atlassian.net/browse/XIVY-10101) Security-relevant information is shown in the Slow Requests view of Engine Cockpit <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10105](https://1ivy.atlassian.net/browse/XIVY-10105) Session leak with async rest service over SSO or Basic Auth on timeout <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10107](https://1ivy.atlassian.net/browse/XIVY-10107) ClassCastException in UserDialog attribute browser 
* [XIVY-10110](https://1ivy.atlassian.net/browse/XIVY-10110) Rest Call element is sending list query parameters with brackets 
* [XIVY-10111](https://1ivy.atlassian.net/browse/XIVY-10111) Workflow cleanup does not delete document files of cases 
* [XIVY-10112](https://1ivy.atlassian.net/browse/XIVY-10112) After restart of Designer or Demo Engine workflow files are still there 
* [XIVY-10117](https://1ivy.atlassian.net/browse/XIVY-10117) Navigating in Engine Cockpit generates a lot of system db queries to count users <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10122](https://1ivy.atlassian.net/browse/XIVY-10122) Hide sensitive RestClient properties on detail view in Engine Cockpit <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10126](https://1ivy.atlassian.net/browse/XIVY-10126) Database configuration are not shared along dependent projects 
* [XIVY-10146](https://1ivy.atlassian.net/browse/XIVY-10146) Task notification mails can't be sent when session limit is reached 
* [XIVY-10153](https://1ivy.atlassian.net/browse/XIVY-10153) NPE in portal start time cleaner when tracing is enabled 
* [XIVY-10160](https://1ivy.atlassian.net/browse/XIVY-10160) Stream API throws InaccessibleObjectException in IvyScript 
* [XIVY-10162](https://1ivy.atlassian.net/browse/XIVY-10162) The REST service view in the Engine Cockpit shows/tests not expanded URIs if URI templates are used 
* [XIVY-10165](https://1ivy.atlassian.net/browse/XIVY-10165) Log Viewer in Engine Cockpit cannot handle compressed log files 
* [XIVY-10173](https://1ivy.atlassian.net/browse/XIVY-10173) Key shortcuts for debugging (F5..F8) do not work if process editor has focus on Windows 
* [XIVY-10176](https://1ivy.atlassian.net/browse/XIVY-10176) Isolated OAUTH Token store to avoid services unexpectedly share common authentication <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10192](https://1ivy.atlassian.net/browse/XIVY-10192) NPE during project validation leads to false positive problem markers 
* [XIVY-10193](https://1ivy.atlassian.net/browse/XIVY-10193) Property dialog in Rest Client config shows wrong description default value for some Jersey properties 
* [XIVY-10195](https://1ivy.atlassian.net/browse/XIVY-10195) Use webpack production mode for integrated process editor 
* [XIVY-10209](https://1ivy.atlassian.net/browse/XIVY-10209) Could not register MBean in Designer because of InstanceAlreadyExistsException 
* [XIVY-10218](https://1ivy.atlassian.net/browse/XIVY-10218) Parameter filters of LazyDataModel7 load method contains FilterMeta objects instead of filter values 
* [XIVY-10230](https://1ivy.atlassian.net/browse/XIVY-10230) TextFieldsOperation.containsAllWords(java.lang.String) is no longer byte-code compatible 
* [XIVY-10243](https://1ivy.atlassian.net/browse/XIVY-10243) Small UI issues with the right aligned template and Freya theme 
* [XIVY-10251](https://1ivy.atlassian.net/browse/XIVY-10251) Sometimes an IlegalStateException is thrown when parallel web service calls are made 
* [XIVY-10265](https://1ivy.atlassian.net/browse/XIVY-10265) Setting the original or expiry activator has no effect if it is parked and the parking user is no longer a member of the new activator 
* [XIVY-10266](https://1ivy.atlassian.net/browse/XIVY-10266) Setting the activator does not reset the task if it is parked and the parking user is no longer a member of the new activator 
* [XIVY-10294](https://1ivy.atlassian.net/browse/XIVY-10294) Fix Snake YAML unsafe deserialization vulnerability (CVE-2022-1471) <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10299](https://1ivy.atlassian.net/browse/XIVY-10299) Writing a content object value with the method bytes of ContentObjectWriter does not invalidate file cache 
* [XIVY-10308](https://1ivy.atlassian.net/browse/XIVY-10308) Zombie Designer instances are making WebTests hard to run 
* [XIVY-10314](https://1ivy.atlassian.net/browse/XIVY-10314) Deleting a SecurityContext causes a PersistencyException 
* [XIVY-10315](https://1ivy.atlassian.net/browse/XIVY-10315) User Detail and Role Detail Views in Engine Cockpit shows wrong "Selected Application" link  
* [XIVY-10316](https://1ivy.atlassian.net/browse/XIVY-10316) SecurityContext mismatch between WorkflowContext and HTTP session if a new context is created 
* [XIVY-10396](https://1ivy.atlassian.net/browse/XIVY-10396) Boundary event disappears if wrapping it into an embedded process 
* [XIVY-10419](https://1ivy.atlassian.net/browse/XIVY-10419)  Save does not work after performing a refresh (F5 or CTRL+R) in the process editor 
* [XIVY-10435](https://1ivy.atlassian.net/browse/XIVY-10435) Elasticsearch traces do not appear in Traffic Graph in Engine Cockpit 
* [XIVY-10440](https://1ivy.atlassian.net/browse/XIVY-10440) NPE in ValidationPreferences leads to a lot of false problem markers 
* [XIVY-10447](https://1ivy.atlassian.net/browse/XIVY-10447) REST config editor is blocked because of Jersey properties documentation evaluation takes too much time 
* [XIVY-10448](https://1ivy.atlassian.net/browse/XIVY-10448) User from Azure AD gets disabled when group filter is set but not role mapping is defined 
* [XIVY-10449](https://1ivy.atlassian.net/browse/XIVY-10449) Can not synchronize users from Azure AD if locale can not be parsed 
* [XIVY-10463](https://1ivy.atlassian.net/browse/XIVY-10463) Configuration of thread pools (CorePoolSize, MaximumPoolSize) are not considered during Engine startup 
* [XIVY-10495](https://1ivy.atlassian.net/browse/XIVY-10495) Conversion from restClients.restConfig to rest-clients.yaml fails if first contains special Unicode characters 
* [XIVY-10500](https://1ivy.atlassian.net/browse/XIVY-10500) Roles from dependent project can not be selected in inscription editor Task tab 
* [XIVY-10510](https://1ivy.atlassian.net/browse/XIVY-10510) Could not start embedded Axon Ivy Engine if required Java Maven artifact was imported to workspace 
* [XIVY-10515](https://1ivy.atlassian.net/browse/XIVY-10515) OAuth2 callback-URI broken when using OAauth2 REST client 
* [XIVY-10529](https://1ivy.atlassian.net/browse/XIVY-10529) ivy.log on Designer does not contain log messages of ch.ivyteam.** and runtimelog.** loggers 
* [XIVY-10555](https://1ivy.atlassian.net/browse/XIVY-10555) Remove third party library information from ReadMe 
* [XIVY-10593](https://1ivy.atlassian.net/browse/XIVY-10593) Potential resource leaks with Azure AD integration 
* [XIVY-10659](https://1ivy.atlassian.net/browse/XIVY-10659) IvyScript type interference for Lists broken 
* [XIVY-10664](https://1ivy.atlassian.net/browse/XIVY-10664) Prevent XSS attacks with escaping data in Slow Request and MBeans view of Engine Cockpit <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10674](https://1ivy.atlassian.net/browse/XIVY-10674) Session cookie should have secure flag set if X-Forwarded-Proto is set to https <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10675](https://1ivy.atlassian.net/browse/XIVY-10675) IVYSESSIONID-* cookie should set the secure flag if request is secure or secure cookies are configured in web.xml <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10676](https://1ivy.atlassian.net/browse/XIVY-10676) Reduced size of Embedded Process results in errors when inserting new elements 
* [XIVY-10690](https://1ivy.atlassian.net/browse/XIVY-10690) NPE when hovering over a variable in IvyScript editor that is not declared 
* [XIVY-10694](https://1ivy.atlassian.net/browse/XIVY-10694) After Excel import in CMS there are some entries which has a different new line format 
* [XIVY-10708](https://1ivy.atlassian.net/browse/XIVY-10708) Exception on getStartables() if the responsible role on a process start is deleted 
* [XIVY-10748](https://1ivy.atlassian.net/browse/XIVY-10748) Problems in offline Designer if a market product has dependencies to other market artifacts 
* [XIVY-10788](https://1ivy.atlassian.net/browse/XIVY-10788) Multiline labels on process arcs (edges) are not saved properly 
* [XIVY-10803](https://1ivy.atlassian.net/browse/XIVY-10803) Strange validation errors because process model cannot be read 
* [XIVY-10808](https://1ivy.atlassian.net/browse/XIVY-10808) OutOfMemoryError due to process data class that cannot be found during process data deserialisation 
* [XIVY-10813](https://1ivy.atlassian.net/browse/XIVY-10813) Exception during system database cache invalidation if entity is read from cache while invalidating 
* [XIVY-10831](https://1ivy.atlassian.net/browse/XIVY-10831) Bad performance of system database association cache invalidation <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-10845](https://1ivy.atlassian.net/browse/XIVY-10845) 'any' sql statements are only validated on UI but not by process validation 
* [XIVY-10855](https://1ivy.atlassian.net/browse/XIVY-10855) Windows standby (hibernation) disconnects the process editor 
* [XIVY-10857](https://1ivy.atlassian.net/browse/XIVY-10857) Bad default namespace in the New Axon Ivy Project wizard  
* [XIVY-10859](https://1ivy.atlassian.net/browse/XIVY-10859) Do not allow same qualified name for Data Class and User Dialog 
* [XIVY-10860](https://1ivy.atlassian.net/browse/XIVY-10860) The Designer should enforce to use lower case data attribute names 
* [XIVY-10868](https://1ivy.atlassian.net/browse/XIVY-10868) Branding logo is not considered in notification mails 
* [XIVY-10918](https://1ivy.atlassian.net/browse/XIVY-10918) Cannot create new admin users if named user license exceeded 
* [XIVY-10923](https://1ivy.atlassian.net/browse/XIVY-10923) Field value of p:selectOneMenu should appear left-aligned when using frame right template 
* [XIVY-10934](https://1ivy.atlassian.net/browse/XIVY-10934) Ivy behind IIS (not AJP) - configuration seems not to set up X-Forwarded-Proto and other proxy headers. <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-10947](https://1ivy.atlassian.net/browse/XIVY-10947) Index case or task data not up to date in case multiple changes are done in a short period of time 
* [XIVY-10963](https://1ivy.atlassian.net/browse/XIVY-10963) In HTML Dialog views only the first EL expression in a attribute value is validated 
* [XIVY-10982](https://1ivy.atlassian.net/browse/XIVY-10982) ClassCastException during validation of EL expression with enum type == or != null 
* [XIVY-11029](https://1ivy.atlassian.net/browse/XIVY-11029) Engine Cockpit does sometimes not display the name of a role 
* [XIVY-11036](https://1ivy.atlassian.net/browse/XIVY-11036) HTML Dialog editor preview can not handle flex grids used in our html-dialog-demos 
* [XIVY-11037](https://1ivy.atlassian.net/browse/XIVY-11037) Task modifications can cause multiple new task emails 
* [XIVY-11068](https://1ivy.atlassian.net/browse/XIVY-11068) Enforce REST application/url-encoded params serialization as String 
* [XIVY-11091](https://1ivy.atlassian.net/browse/XIVY-11091) Deployment should fail if a project with an unregistered thirdparty element is deployed 
* [XIVY-11109](https://1ivy.atlassian.net/browse/XIVY-11109) HTML dialog logic methods not validated as bean properties in EL  
* [XIVY-11110](https://1ivy.atlassian.net/browse/XIVY-11110) Favicon.ico in Engine Cockpit is not available 
* [XIVY-11140](https://1ivy.atlassian.net/browse/XIVY-11140) Hide normal sidebar logo in collapsed Freya side menu 
* [XIVY-11161](https://1ivy.atlassian.net/browse/XIVY-11161) EndPage from file selector should always use '/' instead of '\' as file seperator 
* [XIVY-11163](https://1ivy.atlassian.net/browse/XIVY-11163) CMS entries are shown with the wrong icon and can not be opened from the Search view 
* [XIVY-11172](https://1ivy.atlassian.net/browse/XIVY-11172) NPE in Designer annotation processing when project has dependency to packed iar 
* [XIVY-11173](https://1ivy.atlassian.net/browse/XIVY-11173) Menu 'Maven'>'Update Project' opens demo processes 
* [XIVY-11197](https://1ivy.atlassian.net/browse/XIVY-11197) REST form params/multipart enforce Object as String 
* [XIVY-11208](https://1ivy.atlassian.net/browse/XIVY-11208) Dev-Wf-UI tasks search is showing data which shouldn't be visible 
* [XIVY-11209](https://1ivy.atlassian.net/browse/XIVY-11209) Dev-Wf-UI task responsible shows user abbreviation instead of display name 
* [XIVY-11246](https://1ivy.atlassian.net/browse/XIVY-11246) NPE in dev-wf-ui when switching user on task or case detail 
* [XIVY-11254](https://1ivy.atlassian.net/browse/XIVY-11254) Project-build-plugin does deploy dependent packages in wrong order for IvyTest and IvyProcessTest 
* [XIVY-11259](https://1ivy.atlassian.net/browse/XIVY-11259) Custom mail processes don't work if the web.xml session cookie secure flag is true 
* [XIVY-11266](https://1ivy.atlassian.net/browse/XIVY-11266) User and role workflow counts are always 0 in Engine Cockpit  
* [XIVY-11309](https://1ivy.atlassian.net/browse/XIVY-11309) Import of test-project from the Market throws exception 
* [XIVY-11310](https://1ivy.atlassian.net/browse/XIVY-11310) User synchronisation with Azure Active Directory fails if userPrincipal has special characters like # in it 
* [XIVY-11319](https://1ivy.atlassian.net/browse/XIVY-11319) Ivy persistence can not persist new objects if database table already exists 
* [XIVY-11325](https://1ivy.atlassian.net/browse/XIVY-11325) Debugging 'jump into' action does not work for embedded sub process element 
* [XIVY-11332](https://1ivy.atlassian.net/browse/XIVY-11332) Engine migration-wizard broken with Debian package 
* [XIVY-11334](https://1ivy.atlassian.net/browse/XIVY-11334) Engine fails to update symlinked configuration directory 
* [XIVY-11340](https://1ivy.atlassian.net/browse/XIVY-11340) IndexOutOfBoundsException on Engine Cockpit users/roles view if no app is defined 
* [XIVY-11344](https://1ivy.atlassian.net/browse/XIVY-11344) IIS installation scripts fails when configuring the termination of HTTPS 
* [IVYPORTAL-14497](https://1ivy.atlassian.net/browse/IVYPORTAL-14497) Cannot change language in My Profile (like de_AT, de_CH) 
* [IVYPORTAL-14509](https://1ivy.atlassian.net/browse/IVYPORTAL-14509) Dashboard permissions autocomplete works incorrectly after unselecting all permissions 
* [IVYPORTAL-14637](https://1ivy.atlassian.net/browse/IVYPORTAL-14637) Fix broken links in documentation 
* [IVYPORTAL-14645](https://1ivy.atlassian.net/browse/IVYPORTAL-14645) Portal Permissions are granted automatically after restarting engine 
* [IVYPORTAL-14655](https://1ivy.atlassian.net/browse/IVYPORTAL-14655) Fix Process Image cannot load image when separated Portal app 
* [IVYPORTAL-14712](https://1ivy.atlassian.net/browse/IVYPORTAL-14712) Changing language to Japanese causes NPE in Portal 10.0.1 
* [IVYPORTAL-14851](https://1ivy.atlassian.net/browse/IVYPORTAL-14851) Login does not work https://axonivyengine/{myapp}/login 

# 10.0.0 (2022-10-17)

We suggest to install this update release if you are suffering from any of these issues.

## Improvements

* [XIVY-9183](https://1ivy.atlassian.net/browse/XIVY-9183) Filtering users in azure AD 

## New Features

* [XIVY-6684](https://1ivy.atlassian.net/browse/XIVY-6684) Group user synchronisation properties in external security system <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-8449](https://1ivy.atlassian.net/browse/XIVY-8449) One single way to migrate an engine 
* [XIVY-8727](https://1ivy.atlassian.net/browse/XIVY-8727) View Permission property on processes <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-8821](https://1ivy.atlassian.net/browse/XIVY-8821) Release 10 
* [XIVY-8825](https://1ivy.atlassian.net/browse/XIVY-8825) Better document all ways how a Licence can be installed / changed 
* [XIVY-8902](https://1ivy.atlassian.net/browse/XIVY-8902) Project dependency: strict version rather than range 
* [XIVY-9031](https://1ivy.atlassian.net/browse/XIVY-9031) Bump license version to 10 
* [XIVY-9214](https://1ivy.atlassian.net/browse/XIVY-9214) Testing and fix some small 9.4 Bugs 
* [XIVY-9298](https://1ivy.atlassian.net/browse/XIVY-9298) Remove support for Oracle12c and test with Oracle21c as system database 
* [XIVY-9332](https://1ivy.atlassian.net/browse/XIVY-9332) New Process Editor: Back to BPMN compatible icons 
* [XIVY-9338](https://1ivy.atlassian.net/browse/XIVY-9338) Implement paging when query all transitive groups of an user 
* [XIVY-9373](https://1ivy.atlassian.net/browse/XIVY-9373) New frame-10 template which uses full width on big screens 
* [XIVY-9394](https://1ivy.atlassian.net/browse/XIVY-9394) Stabilize Mavenizer Workflow 
* [XIVY-9433](https://1ivy.atlassian.net/browse/XIVY-9433) Doc: Change Getting Started so TOC feels more like in other areas 
* [XIVY-9444](https://1ivy.atlassian.net/browse/XIVY-9444) Adapt portal-performance tests <span class="badge badge-pill badge-success badge-performance">performance</span>
* [XIVY-9466](https://1ivy.atlassian.net/browse/XIVY-9466) No javadoc/source in Designer for LazyDataModel7 
* [XIVY-9530](https://1ivy.atlassian.net/browse/XIVY-9530) Warn if the project to convert Primefaces 11 has build path problems 
* [XIVY-9573](https://1ivy.atlassian.net/browse/XIVY-9573) Doc: Fix TOC in Getting Started 
* [XIVY-9591](https://1ivy.atlassian.net/browse/XIVY-9591) Upgrade libraries 
* [XIVY-9596](https://1ivy.atlassian.net/browse/XIVY-9596) Support CLOB, BLOB and byte[] values in Sql Query Dialog 
* [XIVY-9609](https://1ivy.atlassian.net/browse/XIVY-9609) Doc: Update concepts and engine guide entries for application lifecycle and multi-tenancy 
* [XIVY-9615](https://1ivy.atlassian.net/browse/XIVY-9615) Remove support for Microsoft Server 2008 
* [XIVY-9616](https://1ivy.atlassian.net/browse/XIVY-9616) Remove support for postgres 9 and 10 
* [XIVY-9617](https://1ivy.atlassian.net/browse/XIVY-9617) Remove support for mysql 5.6  
* [XIVY-9618](https://1ivy.atlassian.net/browse/XIVY-9618) Remove support for mariadb 10.2  
* [XIVY-9631](https://1ivy.atlassian.net/browse/XIVY-9631) New process editor: visualize negative area on element move/resize 
* [XIVY-9632](https://1ivy.atlassian.net/browse/XIVY-9632) Dev-WF-UI: gray labels for detail pages 
* [XIVY-9644](https://1ivy.atlassian.net/browse/XIVY-9644) Java options for add-opens/exports in own config file 
* [XIVY-9655](https://1ivy.atlassian.net/browse/XIVY-9655) Migrate project-build-plugin to Maven 3.6.3 
* [XIVY-9656](https://1ivy.atlassian.net/browse/XIVY-9656) Remove deprecated DeployIarMojo from project-build-plugin 
* [XIVY-9712](https://1ivy.atlassian.net/browse/XIVY-9712) Support iGrafx Flowcharter as BPMN2 import 
* [XIVY-9734](https://1ivy.atlassian.net/browse/XIVY-9734) Release 10.0 Market Artifacts 
* [IVYPORTAL-13819](https://1ivy.atlassian.net/browse/IVYPORTAL-13819) Control access to process and case map viewer based on permission 
* [IVYPORTAL-13932](https://1ivy.atlassian.net/browse/IVYPORTAL-13932) Adapt multi applications  
* [IVYPORTAL-14130](https://1ivy.atlassian.net/browse/IVYPORTAL-14130) Dashboard Custom Widget - Hide Header and Overflow 
* [IVYPORTAL-14145](https://1ivy.atlassian.net/browse/IVYPORTAL-14145) Application name into page title for password managers 
* [IVYPORTAL-14170](https://1ivy.atlassian.net/browse/IVYPORTAL-14170) Portal Dashboard Header Widget  
* [IVYPORTAL-14176](https://1ivy.atlassian.net/browse/IVYPORTAL-14176) Portal Login - Changes to Support Azure AD  
* [IVYPORTAL-14177](https://1ivy.atlassian.net/browse/IVYPORTAL-14177) Change Edit Task and Case Name to new API 
* [IVYPORTAL-14293](https://1ivy.atlassian.net/browse/IVYPORTAL-14293) Move Portal Components to the same level as Developer Guide in Documentation 
* [IVYPORTAL-14305](https://1ivy.atlassian.net/browse/IVYPORTAL-14305) Process widget in Full mode takes lots of spaces 
* [IVYPORTAL-14335](https://1ivy.atlassian.net/browse/IVYPORTAL-14335) Update Portal Documentation to include manual ways to hide tasks and cases 
* [IVYPORTAL-14343](https://1ivy.atlassian.net/browse/IVYPORTAL-14343) Change Standard Dashboard 
* [IVYPORTAL-14344](https://1ivy.atlassian.net/browse/IVYPORTAL-14344) Change label "Deputy" to "Substitute" 
* [IVYPORTAL-14347](https://1ivy.atlassian.net/browse/IVYPORTAL-14347) Replace CMS references in JSON Config files 
* [IVYPORTAL-14392](https://1ivy.atlassian.net/browse/IVYPORTAL-14392) Chart widget title problem umlaute/special character 

## Bugs

* [XIVY-3394](https://1ivy.atlassian.net/browse/XIVY-3394) Deadlock in Java Editor with Content Assist 
* [XIVY-9195](https://1ivy.atlassian.net/browse/XIVY-9195) Sometimes 404 for different pages in engine cockpit 
* [XIVY-9208](https://1ivy.atlassian.net/browse/XIVY-9208) SubProcessCall via REST does not allow Overrides 
* [XIVY-9241](https://1ivy.atlassian.net/browse/XIVY-9241) Engine Cockpit Yaml Editor Ctrl+Space sometimes not show up 
* [XIVY-9271](https://1ivy.atlassian.net/browse/XIVY-9271) Creating a security system with illegal names in engine cockpit is possible (e.g. ?) 
* [XIVY-9320](https://1ivy.atlassian.net/browse/XIVY-9320) Embedded Sub start and end should display the connected element 
* [XIVY-9348](https://1ivy.atlassian.net/browse/XIVY-9348) Sometimes save does not work in new process editor 
* [XIVY-9392](https://1ivy.atlassian.net/browse/XIVY-9392) Browser caches Engine process viewer too hard 
* [XIVY-9398](https://1ivy.atlassian.net/browse/XIVY-9398) project-build-plugin validation fails to use m2 deps 
* [XIVY-9401](https://1ivy.atlassian.net/browse/XIVY-9401) Update Designer quick start tutorial (some texts still refers to old process editor) 
* [XIVY-9402](https://1ivy.atlassian.net/browse/XIVY-9402) Fix Designer help button (F1) issues 
* [XIVY-9403](https://1ivy.atlassian.net/browse/XIVY-9403) Rename HtmlDialog: references are not updated 
* [XIVY-9406](https://1ivy.atlassian.net/browse/XIVY-9406) SSL Client Preferences: Enable insecure SSL requires designer restart 
* [XIVY-9407](https://1ivy.atlassian.net/browse/XIVY-9407) Designer Overrides open replacement causes editor error 
* [XIVY-9408](https://1ivy.atlassian.net/browse/XIVY-9408) Overrides Editor does not show overridden content objects 
* [XIVY-9437](https://1ivy.atlassian.net/browse/XIVY-9437) Opening the Html Dialog Editor fails with a NPE when building palette entries 
* [XIVY-9438](https://1ivy.atlassian.net/browse/XIVY-9438) PMV cache cleaner job fails with a NullPointerException 
* [XIVY-9453](https://1ivy.atlassian.net/browse/XIVY-9453) Eclipse workspace blocked after changing files manually 
* [XIVY-9459](https://1ivy.atlassian.net/browse/XIVY-9459) Workflow-Demos: Procurement flow - request log is always empty 
* [XIVY-9460](https://1ivy.atlassian.net/browse/XIVY-9460) EndPage can not handle backward slashes when xhtml view is selected 
* [XIVY-9462](https://1ivy.atlassian.net/browse/XIVY-9462) After login via Azure AD: the session in the portal application seems not to be authenticated 
* [XIVY-9467](https://1ivy.atlassian.net/browse/XIVY-9467) Primefaces widgets calendar and datePicker do not work under Linux sometimes 
* [XIVY-9471](https://1ivy.atlassian.net/browse/XIVY-9471) Don't migrate non existing role mappings from db to ivy.yaml 
* [XIVY-9508](https://1ivy.atlassian.net/browse/XIVY-9508) Market installer fails: as mavenizer already supplied dependency 
* [XIVY-9512](https://1ivy.atlassian.net/browse/XIVY-9512) Project Conversion is offered and runnable for IvyArchive projects 
* [XIVY-9515](https://1ivy.atlassian.net/browse/XIVY-9515) Security System Detail page in engine cockpit shows Azure Active Directory instead of ivy Security System when no provider is configured in ivy.yaml 
* [XIVY-9516](https://1ivy.atlassian.net/browse/XIVY-9516) When changing identity provider in engine cockpit it removes all settings according to the security system 
* [XIVY-9518](https://1ivy.atlassian.net/browse/XIVY-9518) Font Awesome Icons are not working in dev workflow-ui if the root is blocked 
* [XIVY-9520](https://1ivy.atlassian.net/browse/XIVY-9520) Rename "Connectors" in process editor palette to "Extensions" 
* [XIVY-9521](https://1ivy.atlassian.net/browse/XIVY-9521) Users synchronized from Azure Active Directory won't get disabled if they do not exist anymore 
* [XIVY-9522](https://1ivy.atlassian.net/browse/XIVY-9522) Engine Cockpit can not handle usernames with # 
* [XIVY-9523](https://1ivy.atlassian.net/browse/XIVY-9523) Migration of an App with an external Security System goes wrong 
* [XIVY-9534](https://1ivy.atlassian.net/browse/XIVY-9534) IRole#createChildRole creates new role always at top level 
* [XIVY-9544](https://1ivy.atlassian.net/browse/XIVY-9544) Execution in designer is slowed down by invisible animation in the background 
* [XIVY-9545](https://1ivy.atlassian.net/browse/XIVY-9545) NPE: Cannot invoke "WorkflowProcessModelVersion.getName()" because "pmv" is null 
* [XIVY-9546](https://1ivy.atlassian.net/browse/XIVY-9546) Create new ProjectConversion for updating project-build-plugin using EngineConfigCLI 
* [XIVY-9547](https://1ivy.atlassian.net/browse/XIVY-9547) Design-Time Classpath duplicates libraries from dependent IAR projects 
* [XIVY-9548](https://1ivy.atlassian.net/browse/XIVY-9548) New Process Editor: Wrap into subprocess not possible for single activity 
* [XIVY-9549](https://1ivy.atlassian.net/browse/XIVY-9549) New Process Editor: Wrap into subprocess error 
* [XIVY-9550](https://1ivy.atlassian.net/browse/XIVY-9550) ELException: Error reading caseMap on type CasesDetailsIvyDevWfBean 
* [XIVY-9556](https://1ivy.atlassian.net/browse/XIVY-9556) Process editor command "Fit to screen" truncates head of model 
* [XIVY-9558](https://1ivy.atlassian.net/browse/XIVY-9558) Can create role in security context A with parent in security context B (by API) 
* [XIVY-9561](https://1ivy.atlassian.net/browse/XIVY-9561) DocFactory subprocess is not converted correctly 
* [XIVY-9562](https://1ivy.atlassian.net/browse/XIVY-9562) Designer workspace is locked through concurrent refresh operations 
* [XIVY-9563](https://1ivy.atlassian.net/browse/XIVY-9563) New Process Group Wizard broken in empty GIT project 
* [XIVY-9578](https://1ivy.atlassian.net/browse/XIVY-9578) (Mac) SSL Client Preferences: default key/truststore files do not exist 
* [XIVY-9585](https://1ivy.atlassian.net/browse/XIVY-9585) Mail steps do not properly migrate html mails when content comes from cms 
* [XIVY-9587](https://1ivy.atlassian.net/browse/XIVY-9587) ivy.cms.getContentObjectValue() no longer fallbacks to default value 
* [XIVY-9589](https://1ivy.atlassian.net/browse/XIVY-9589) New process editor: color menu edit out of button if color name is big 
* [XIVY-9590](https://1ivy.atlassian.net/browse/XIVY-9590) Dev-Wf-Ui theme switch causes browser console log 
* [XIVY-9594](https://1ivy.atlassian.net/browse/XIVY-9594) WebEditor missing freya style 
* [XIVY-9595](https://1ivy.atlassian.net/browse/XIVY-9595) Doc: Fix links to tools-reference (renamed to reference) 
* [XIVY-9599](https://1ivy.atlassian.net/browse/XIVY-9599) Streamline Theme mode of WF-UI with Process Viewer 
* [XIVY-9600](https://1ivy.atlassian.net/browse/XIVY-9600) Designer at times not able to start due to Plugin-Activation failures 
* [XIVY-9602](https://1ivy.atlassian.net/browse/XIVY-9602) Deletion of Security System in the Engine Cockpit causes error 
* [XIVY-9608](https://1ivy.atlassian.net/browse/XIVY-9608) Stop Threads of the process editor on closing 
* [XIVY-9610](https://1ivy.atlassian.net/browse/XIVY-9610) Wrap to subprocess: Ugly gate/waypoint positions 
* [XIVY-9612](https://1ivy.atlassian.net/browse/XIVY-9612) Primefaces attribute renaming during project conversion may not work if tag contains spaces before > 
* [XIVY-9624](https://1ivy.atlassian.net/browse/XIVY-9624) Engine Cockpit: Show running spinner while deployment 
* [XIVY-9626](https://1ivy.atlassian.net/browse/XIVY-9626) project-build-plugin must not automatically migrate projects during build 
* [XIVY-9627](https://1ivy.atlassian.net/browse/XIVY-9627) Freya Theme: Scrollbars in Chrome/Edge are always light 
* [XIVY-9628](https://1ivy.atlassian.net/browse/XIVY-9628) New process editor: copy to negative area is possible 
* [XIVY-9662](https://1ivy.atlassian.net/browse/XIVY-9662) cms.getSupportedLanguages() returns empty locale 
* [XIVY-9713](https://1ivy.atlassian.net/browse/XIVY-9713) Labels are positioned somewhere after a BPMN import 
* [XIVY-9716](https://1ivy.atlassian.net/browse/XIVY-9716) Process Editor is not always showing up the Quick-Action Bar 
* [XIVY-9738](https://1ivy.atlassian.net/browse/XIVY-9738) Can not convert some process mod files to json 
* [XIVY-9739](https://1ivy.atlassian.net/browse/XIVY-9739) Don't associated mod and json files with new process editor 
* [XIVY-9740](https://1ivy.atlassian.net/browse/XIVY-9740) No error in conversion log when a process could not be converted to json 
* [XIVY-9751](https://1ivy.atlassian.net/browse/XIVY-9751) Dialog Editor can not handle dialog components 
* [XIVY-9756](https://1ivy.atlassian.net/browse/XIVY-9756) Warning in ivy.log when Process Editor in External Browser is closed 
* [XIVY-9770](https://1ivy.atlassian.net/browse/XIVY-9770) Superfluous log warnings in designer "no validator for label-edit" 
* [XIVY-9772](https://1ivy.atlassian.net/browse/XIVY-9772) Import in cms from URL does not work 
* [XIVY-9791](https://1ivy.atlassian.net/browse/XIVY-9791) New projects should have java17 per default 
* [IVYPORTAL-14328](https://1ivy.atlassian.net/browse/IVYPORTAL-14328) Error when adding a welcome widget to private dashboard 
* [IVYPORTAL-14349](https://1ivy.atlassian.net/browse/IVYPORTAL-14349) DateUtils throw exception when using MySQL as System-DB 


# 9.4.0 (2022-09-13)

We strongly recommend to install this update release because it fixes security issues!

## Improvements

* [XIVY-9127](https://1ivy.atlassian.net/browse/XIVY-9127) Upgrade CXF web service library to version 3.5 to support Java 17 
* [XIVY-9112](https://1ivy.atlassian.net/browse/XIVY-9112) Upgrade Jackson to version 2.13.3 to support Java 17 
* [XIVY-9091](https://1ivy.atlassian.net/browse/XIVY-9091) Update DB drivers to support Java 17 
* [XIVY-9065](https://1ivy.atlassian.net/browse/XIVY-9065) Make role to external group mapping configurable in ivy.yaml 
* [XIVY-9057](https://1ivy.atlassian.net/browse/XIVY-9057) Upgrade Hibernate to version 5.4.33.Final to support Java 17 
* [XIVY-9056](https://1ivy.atlassian.net/browse/XIVY-9056) Upgrade Guice to version 5.1.0 to support Java 17 
* [XIVY-8950](https://1ivy.atlassian.net/browse/XIVY-8950) Set string parameters as Unicode to false to improve MsSQL Server performance 
* [XIVY-8949](https://1ivy.atlassian.net/browse/XIVY-8949) Set name of IvyProjectClassLoader to improve ClassCastException 
* [XIVY-8914](https://1ivy.atlassian.net/browse/XIVY-8914) Support PrimeFaces <p:barcode> component 
* [XIVY-8877](https://1ivy.atlassian.net/browse/XIVY-8877) Enable parallel class loading in IvyProjectClassLoader 
* [XIVY-8702](https://1ivy.atlassian.net/browse/XIVY-8702) Support OpenAPI inscription for xml-payload 
* [XIVY-8671](https://1ivy.atlassian.net/browse/XIVY-8671) DB Activity with macro-edit support and toolbar actions 
* [XIVY-8670](https://1ivy.atlassian.net/browse/XIVY-8670) Robust Database Activity scripting 
* [XIVY-8669](https://1ivy.atlassian.net/browse/XIVY-8669) Update log4j to 2.17.2 
* [XIVY-8503](https://1ivy.atlassian.net/browse/XIVY-8503) Translate WebPage Activity Inscription to SWT 
* [XIVY-8481](https://1ivy.atlassian.net/browse/XIVY-8481) Show Gravatars in Engine Cockpit for users and admins 
* [XIVY-8266](https://1ivy.atlassian.net/browse/XIVY-8266) Support Windows Server 2022  
* [XIVY-8253](https://1ivy.atlassian.net/browse/XIVY-8253) Auto-detect StandardProcess.DefaultPages 
* [XIVY-8206](https://1ivy.atlassian.net/browse/XIVY-8206) Update designer guide Deployment chapter 
* [XIVY-8108](https://1ivy.atlassian.net/browse/XIVY-8108) Allow to define a global BpmError message in CMS 
* [XIVY-7968](https://1ivy.atlassian.net/browse/XIVY-7968) Allow deployment of own webapp directory per application 
* [XIVY-7959](https://1ivy.atlassian.net/browse/XIVY-7959) Upgrade to Elasticsearch 7.17 
* [XIVY-7519](https://1ivy.atlassian.net/browse/XIVY-7519) Upgrade to Lucene 8.4 
* [XIVY-7505](https://1ivy.atlassian.net/browse/XIVY-7505) Support Windows 11 for the Designer and Engine 
* [XIVY-7485](https://1ivy.atlassian.net/browse/XIVY-7485) Add Websocket support to tomcat 
* [XIVY-7371](https://1ivy.atlassian.net/browse/XIVY-7371) Document how to build a docker image with maven in the project build examples 
* [XIVY-7236](https://1ivy.atlassian.net/browse/XIVY-7236) Open task in IFrame or not, depending on embedInFrame custom field 
* [XIVY-7218](https://1ivy.atlassian.net/browse/XIVY-7218) New EngineConfigCLI command to convert IvyProjects 
* [XIVY-7027](https://1ivy.atlassian.net/browse/XIVY-7027) Add an Import Wizard Item to directly import Portal 
* [XIVY-6933](https://1ivy.atlassian.net/browse/XIVY-6933) Improve notification mail subject for new tasks 
* [XIVY-6924](https://1ivy.atlassian.net/browse/XIVY-6924) Upgrade to Eclipse 2022-03 
* [XIVY-6292](https://1ivy.atlassian.net/browse/XIVY-6292) Maven plugin should bind standard maven resources plugin to IAR lifecycle 
* [XIVY-4601](https://1ivy.atlassian.net/browse/XIVY-4601) Provide a Public API to create dynamic roles 
* [XIVY-3200](https://1ivy.atlassian.net/browse/XIVY-3200) Translate Webservice Tab of WsStart Event to SWT 
* [XIVY-3162](https://1ivy.atlassian.net/browse/XIVY-3162) Translate DB Activity tab to SWT 
* [XIVY-3155](https://1ivy.atlassian.net/browse/XIVY-3155) Translate EMail Activity Inscription Tabs to SWT 
* [XIVY-3100](https://1ivy.atlassian.net/browse/XIVY-3100) Expose usage of Deprecated API in ivyScript code editor 
* [XIVY-3085](https://1ivy.atlassian.net/browse/XIVY-3085) Translate Complex PI Inscription tabs to SWT 
* [XIVY-3081](https://1ivy.atlassian.net/browse/XIVY-3081) Provide an example of how to run Axon Ivy Engine in Kubernetes 
* [XIVY-3063](https://1ivy.atlassian.net/browse/XIVY-3063) Scope business data to a security context 

## New Features

* [XIVY-632](https://1ivy.atlassian.net/browse/XIVY-632) Support multilanguage in task names 
* [XIVY-1026](https://1ivy.atlassian.net/browse/XIVY-1026) CMS API without creating a list to replace template 
* [XIVY-1973](https://1ivy.atlassian.net/browse/XIVY-1973) Support multilanguage in case names 
* [XIVY-2854](https://1ivy.atlassian.net/browse/XIVY-2854) Use same SecurityContext/WorkflowContext for multiple applications 
* [XIVY-2980](https://1ivy.atlassian.net/browse/XIVY-2980) Introduce the next ivy version in JIRA during version raise build 
* [XIVY-3314](https://1ivy.atlassian.net/browse/XIVY-3314) Enable cms templating with different locale 
* [XIVY-3492](https://1ivy.atlassian.net/browse/XIVY-3492) Brand Axon.ivy Engine and/or Ivy Application Prototype 
* [XIVY-3572](https://1ivy.atlassian.net/browse/XIVY-3572) Easily change colors and icons to match the brand of a customer 
* [XIVY-3824](https://1ivy.atlassian.net/browse/XIVY-3824) Upgrade PrimeFaces to version 11.0 
* [XIVY-4421](https://1ivy.atlassian.net/browse/XIVY-4421) Multilingual task notification mails 
* [XIVY-4534](https://1ivy.atlassian.net/browse/XIVY-4534) Rethink the CMS concept 
* [XIVY-5283](https://1ivy.atlassian.net/browse/XIVY-5283) Streamline concepts for application configuration 
* [XIVY-5607](https://1ivy.atlassian.net/browse/XIVY-5607) Support Azure AD as security system 
* [XIVY-5609](https://1ivy.atlassian.net/browse/XIVY-5609) Refactor security systems to identity provider 
* [XIVY-5610](https://1ivy.atlassian.net/browse/XIVY-5610) Make identity provider configurable  
* [XIVY-5611](https://1ivy.atlassian.net/browse/XIVY-5611) Login page must support identity providers 
* [XIVY-5647](https://1ivy.atlassian.net/browse/XIVY-5647) Upgrade to MyFaces 2.2.15 and Tomcat 9.0.64 
* [XIVY-5850](https://1ivy.atlassian.net/browse/XIVY-5850) Unpack IAR to its original location to preserve GIT status 
* [XIVY-5945](https://1ivy.atlassian.net/browse/XIVY-5945) Multiple Applications share Security and Workflow 
* [XIVY-5958](https://1ivy.atlassian.net/browse/XIVY-5958) Analyze and document requirements for multi app, multi engine, multi mandates security contexts 
* [XIVY-5960](https://1ivy.atlassian.net/browse/XIVY-5960) Analyze what features of Tomcat can be used to support multiple Application per SecurityContexts 
* [XIVY-5991](https://1ivy.atlassian.net/browse/XIVY-5991) Next Generation Process Editor 
* [XIVY-6241](https://1ivy.atlassian.net/browse/XIVY-6241) Beautify toolbar and quick action bar 
* [XIVY-6392](https://1ivy.atlassian.net/browse/XIVY-6392) Update SnakeYaml to 1.31 official release 
* [XIVY-6627](https://1ivy.atlassian.net/browse/XIVY-6627) Modern CMS structure 
* [XIVY-6638](https://1ivy.atlassian.net/browse/XIVY-6638) Prepare for SCM ready ivy process serialization 
* [XIVY-6668](https://1ivy.atlassian.net/browse/XIVY-6668) Monitor slow requests in Engine Cockpit  
* [XIVY-6704](https://1ivy.atlassian.net/browse/XIVY-6704) Add annotation quick action for nodes  
* [XIVY-6710](https://1ivy.atlassian.net/browse/XIVY-6710) Support change custom icon on new process editor 
* [XIVY-6711](https://1ivy.atlassian.net/browse/XIVY-6711) Improve Connectors on new process editor 
* [XIVY-6712](https://1ivy.atlassian.net/browse/XIVY-6712) Debug support for new process editor (Eclipse integration) 
* [XIVY-6713](https://1ivy.atlassian.net/browse/XIVY-6713) Support Keyboard Shortcuts on new process editor 
* [XIVY-6717](https://1ivy.atlassian.net/browse/XIVY-6717) Create element quick action in new process editor 
* [XIVY-6747](https://1ivy.atlassian.net/browse/XIVY-6747) Improve JSON Process format  
* [XIVY-6826](https://1ivy.atlassian.net/browse/XIVY-6826) Auto synch problem markers in new process editor 
* [XIVY-6827](https://1ivy.atlassian.net/browse/XIVY-6827) Improve data model handling in new process editor 
* [XIVY-6849](https://1ivy.atlassian.net/browse/XIVY-6849) Update our debian package and install-ivy-dependencies.sh to Adoptium as soon as debian package is available 
* [XIVY-6870](https://1ivy.atlassian.net/browse/XIVY-6870) Simplify and streamline Process label formatting 
* [XIVY-6871](https://1ivy.atlassian.net/browse/XIVY-6871) Simplify and streamline Process coloring options 
* [XIVY-6900](https://1ivy.atlassian.net/browse/XIVY-6900) Language and formatting handling concept 
* [XIVY-6919](https://1ivy.atlassian.net/browse/XIVY-6919) Upgrade docker images to eclipse-temurin based images 
* [XIVY-6923](https://1ivy.atlassian.net/browse/XIVY-6923) Upgrade to Java 17 
* [XIVY-6962](https://1ivy.atlassian.net/browse/XIVY-6962) Replace process file format with a more developer friendly one 
* [XIVY-6963](https://1ivy.atlassian.net/browse/XIVY-6963) Replace CMS File Storage with a more web IDE friendlier format 
* [XIVY-7091](https://1ivy.atlassian.net/browse/XIVY-7091) Improve and refactor animation in new process editor 
* [XIVY-7109](https://1ivy.atlassian.net/browse/XIVY-7109) Ease connector testing - overriding configuration in a generic way over AppFixture 
* [XIVY-7138](https://1ivy.atlassian.net/browse/XIVY-7138) Document dev.wf.ui 
* [XIVY-7161](https://1ivy.atlassian.net/browse/XIVY-7161) Configure Data.AppDirectory and Data.FilesDirectory in Setup Wizard 
* [XIVY-7162](https://1ivy.atlassian.net/browse/XIVY-7162) Improve user guidance after migration wizard 
* [XIVY-7178](https://1ivy.atlassian.net/browse/XIVY-7178) Remove element style 'classic' -> use only 'bpmn' 
* [XIVY-7186](https://1ivy.atlassian.net/browse/XIVY-7186) Developer Workflow UI  
* [XIVY-7196](https://1ivy.atlassian.net/browse/XIVY-7196) Support any file types in the CMS 
* [XIVY-7264](https://1ivy.atlassian.net/browse/XIVY-7264) Easily change icons and colors to match customers CI/CD 
* [XIVY-7265](https://1ivy.atlassian.net/browse/XIVY-7265) Add Branding View in Engine Cockpit 
* [XIVY-7285](https://1ivy.atlassian.net/browse/XIVY-7285) Content Management Documentation 
* [XIVY-7306](https://1ivy.atlassian.net/browse/XIVY-7306) Show message if new process editor is started without webview2 installed on windows 
* [XIVY-7335](https://1ivy.atlassian.net/browse/XIVY-7335) Automate changelog+ReleaseNotes.txt updates after releasing 
* [XIVY-7340](https://1ivy.atlassian.net/browse/XIVY-7340) Automate Axon Ivy release announcement for community/flarum 
* [XIVY-7345](https://1ivy.atlassian.net/browse/XIVY-7345) Add option to clean up data caches in developer workflow UI 
* [XIVY-7347](https://1ivy.atlassian.net/browse/XIVY-7347) Concept meta data for custom fields 
* [XIVY-7376](https://1ivy.atlassian.net/browse/XIVY-7376) Implement language concept 
* [XIVY-7379](https://1ivy.atlassian.net/browse/XIVY-7379) Support CMS write operations on engine 
* [XIVY-7448](https://1ivy.atlassian.net/browse/XIVY-7448) Concept format of colors and texts in process JSON and GLSP editor 
* [XIVY-7459](https://1ivy.atlassian.net/browse/XIVY-7459) Integrate new GLSP process viewer in engine 
* [XIVY-7460](https://1ivy.atlassian.net/browse/XIVY-7460) Add more deprecated features to the deprecation web site 
* [XIVY-7468](https://1ivy.atlassian.net/browse/XIVY-7468) Export and import CMS in XLSX format 
* [XIVY-7493](https://1ivy.atlassian.net/browse/XIVY-7493) Beautiful CMS public API 
* [XIVY-7500](https://1ivy.atlassian.net/browse/XIVY-7500) Responsive Deployment trace output in the Engine-Cockpit 
* [XIVY-7516](https://1ivy.atlassian.net/browse/XIVY-7516) Introduce Security Entity in System Database 
* [XIVY-7517](https://1ivy.atlassian.net/browse/XIVY-7517) Reference User and Role by SecurityMemberId instead of the primary key UserId and RoleId 
* [XIVY-7520](https://1ivy.atlassian.net/browse/XIVY-7520) Split search system from core features 
* [XIVY-7525](https://1ivy.atlassian.net/browse/XIVY-7525) ColorPicker for the Engine Cockpit Branding view 
* [XIVY-7535](https://1ivy.atlassian.net/browse/XIVY-7535) Support read-only and iar mode in new process editor 
* [XIVY-7536](https://1ivy.atlassian.net/browse/XIVY-7536) New process editor as default process editor 
* [XIVY-7537](https://1ivy.atlassian.net/browse/XIVY-7537) Remove the old AWT based process editor 
* [XIVY-7618](https://1ivy.atlassian.net/browse/XIVY-7618) Provide more details in error message why a PMV cannot be activated 
* [XIVY-7635](https://1ivy.atlassian.net/browse/XIVY-7635) Improve Database Execution History in Engine Cockpit 
* [XIVY-7639](https://1ivy.atlassian.net/browse/XIVY-7639) Enable ivyScript validation by default 
* [XIVY-7655](https://1ivy.atlassian.net/browse/XIVY-7655) Release 9.4 
* [XIVY-7671](https://1ivy.atlassian.net/browse/XIVY-7671) More url parameters to configure the Process Viewer 
* [XIVY-7691](https://1ivy.atlassian.net/browse/XIVY-7691) Leave repo.axonivy.io and repo.axonivy.com 
* [XIVY-7720](https://1ivy.atlassian.net/browse/XIVY-7720) Improve navigation in new process editor 
* [XIVY-7767](https://1ivy.atlassian.net/browse/XIVY-7767) Make page size, delay time and period time of WrongBusinessCaseState job configurable 
* [XIVY-7772](https://1ivy.atlassian.net/browse/XIVY-7772) BPMN Nodes creation support in new process editor 
* [XIVY-7773](https://1ivy.atlassian.net/browse/XIVY-7773) Market connector element creation in new process editor 
* [XIVY-7811](https://1ivy.atlassian.net/browse/XIVY-7811) Color picker to name and define custom colors in my process 
* [XIVY-7820](https://1ivy.atlassian.net/browse/XIVY-7820) Add Rule Activity to element palette in new process editor 
* [XIVY-7822](https://1ivy.atlassian.net/browse/XIVY-7822) Direct start of a process via the start element in the new process editor 
* [XIVY-7826](https://1ivy.atlassian.net/browse/XIVY-7826) Provide new PrimeFaces Theme Freya 
* [XIVY-7850](https://1ivy.atlassian.net/browse/XIVY-7850) Improve viewport of process editor 
* [XIVY-7873](https://1ivy.atlassian.net/browse/XIVY-7873) Improve log if a database lock cannot be acquired 
* [XIVY-7885](https://1ivy.atlassian.net/browse/XIVY-7885) Snap Connector bend points to grid 
* [XIVY-7924](https://1ivy.atlassian.net/browse/XIVY-7924) Drop support to connect Annotation/Note to Arc/Connector 
* [XIVY-7956](https://1ivy.atlassian.net/browse/XIVY-7956) Improve animation 
* [XIVY-7957](https://1ivy.atlassian.net/browse/XIVY-7957) Show process / case map behind a case / business case 
* [XIVY-7966](https://1ivy.atlassian.net/browse/XIVY-7966) Evaluate the performance of UUID keys in system databases 
* [XIVY-7967](https://1ivy.atlassian.net/browse/XIVY-7967) Provide a new look and feel for Axon Ivy 10 (Freya) 
* [XIVY-7969](https://1ivy.atlassian.net/browse/XIVY-7969) Navigate from new process editor to process data editor 
* [XIVY-7977](https://1ivy.atlassian.net/browse/XIVY-7977) JSON Process polishing for 9.4 
* [XIVY-7980](https://1ivy.atlassian.net/browse/XIVY-7980) JSON based data format to store processes 
* [XIVY-7981](https://1ivy.atlassian.net/browse/XIVY-7981) Migrate Datawrapper centric configs 
* [XIVY-7991](https://1ivy.atlassian.net/browse/XIVY-7991) Migrate to Java 17 
* [XIVY-8036](https://1ivy.atlassian.net/browse/XIVY-8036) Project conversion for PrimeFaces 11 
* [XIVY-8043](https://1ivy.atlassian.net/browse/XIVY-8043) Use Freya theme for cockpit 
* [XIVY-8044](https://1ivy.atlassian.net/browse/XIVY-8044) Use Freya theme for dev-workflow-ui and other core pages 
* [XIVY-8048](https://1ivy.atlassian.net/browse/XIVY-8048) GLSP uses a Dispatcher Thread for each websocket connection 
* [XIVY-8105](https://1ivy.atlassian.net/browse/XIVY-8105) Role handling and deployment in multi app security context 
* [XIVY-8106](https://1ivy.atlassian.net/browse/XIVY-8106) Concept for workflow documents 
* [XIVY-8107](https://1ivy.atlassian.net/browse/XIVY-8107) Concept for security system centric configurations in app.yaml 
* [XIVY-8113](https://1ivy.atlassian.net/browse/XIVY-8113) Remove CallAndWait element and its third-party equivalent 
* [XIVY-8122](https://1ivy.atlassian.net/browse/XIVY-8122) Improvements for multi app security system 
* [XIVY-8123](https://1ivy.atlassian.net/browse/XIVY-8123) Auto-Login in other apps in same security context 
* [XIVY-8150](https://1ivy.atlassian.net/browse/XIVY-8150) Merge and Switch to JSON Processes 
* [XIVY-8154](https://1ivy.atlassian.net/browse/XIVY-8154) Document and write migration notes for multi app security 
* [XIVY-8162](https://1ivy.atlassian.net/browse/XIVY-8162) Meta information for custom fields 
* [XIVY-8170](https://1ivy.atlassian.net/browse/XIVY-8170) Check dev-workflow-ui and run it isolated in an  own application 
* [XIVY-8172](https://1ivy.atlassian.net/browse/XIVY-8172) No longer change security system of an application 
* [XIVY-8205](https://1ivy.atlassian.net/browse/XIVY-8205) Missing index info in tooltip of Input and output arcs of gateways 
* [XIVY-8215](https://1ivy.atlassian.net/browse/XIVY-8215) Documentation: General overhaul 
* [XIVY-8254](https://1ivy.atlassian.net/browse/XIVY-8254) Move EmailNotification settings to ivy.yaml (SecuritySystems) 
* [XIVY-8275](https://1ivy.atlassian.net/browse/XIVY-8275) Prepare update to Eclipse 2022-06 
* [XIVY-8312](https://1ivy.atlassian.net/browse/XIVY-8312) Deprecate PI element and AWT Inscription Stack for removal 
* [XIVY-8338](https://1ivy.atlassian.net/browse/XIVY-8338) Engine Cockpit test database connection without save 
* [XIVY-8355](https://1ivy.atlassian.net/browse/XIVY-8355) Reuse ivy session on first rest service call on another application 
* [XIVY-8369](https://1ivy.atlassian.net/browse/XIVY-8369) GLSP Editor should not reports errors in a dialog 
* [XIVY-8372](https://1ivy.atlassian.net/browse/XIVY-8372) Enhance project migration UI to let user control what is converted 
* [XIVY-8397](https://1ivy.atlassian.net/browse/XIVY-8397) Provide API for Process Viewer and Case Map Viewer Url generation 
* [XIVY-8398](https://1ivy.atlassian.net/browse/XIVY-8398) Measure and improve performance issues introduced by .json process format 
* [XIVY-8401](https://1ivy.atlassian.net/browse/XIVY-8401) Problems using Icon libraries in HtmlDialog editor 
* [XIVY-8416](https://1ivy.atlassian.net/browse/XIVY-8416) Use Freya theme for ivy demo projects 
* [XIVY-8446](https://1ivy.atlassian.net/browse/XIVY-8446) Trim Freya theme for Axon Ivy 
* [XIVY-8504](https://1ivy.atlassian.net/browse/XIVY-8504) Update to latest glsp client/server 
* [XIVY-8512](https://1ivy.atlassian.net/browse/XIVY-8512) Move from Bitbucket to GitHub 
* [XIVY-8555](https://1ivy.atlassian.net/browse/XIVY-8555) Add system overview to engine cockpit 
* [XIVY-8557](https://1ivy.atlassian.net/browse/XIVY-8557) Add layout.js to LTS 8 templates 
* [XIVY-8584](https://1ivy.atlassian.net/browse/XIVY-8584) Properties or JSON Inscription view flicker hard if select elements with marquee tool in new process editor 
* [XIVY-8623](https://1ivy.atlassian.net/browse/XIVY-8623) Multilingual name and description for task and case 
* [XIVY-8624](https://1ivy.atlassian.net/browse/XIVY-8624) Prototype multi language fields in system database 
* [XIVY-8681](https://1ivy.atlassian.net/browse/XIVY-8681) Improve Maven workspace experience 
* [XIVY-8707](https://1ivy.atlassian.net/browse/XIVY-8707) Update to PrimeFaces 11.0.5 
* [XIVY-8754](https://1ivy.atlassian.net/browse/XIVY-8754) Show all signal and error boundary icons in new process editor 
* [XIVY-8768](https://1ivy.atlassian.net/browse/XIVY-8768) Add clear delay function on a delayed task 
* [XIVY-8775](https://1ivy.atlassian.net/browse/XIVY-8775) Report deprecation warnings for dev-wf-ui / engine-cockpit 
* [XIVY-8784](https://1ivy.atlassian.net/browse/XIVY-8784) Improve Scroll behavior in new process editor 
* [XIVY-8838](https://1ivy.atlassian.net/browse/XIVY-8838) Use custom field meta in dev workflow UI 
* [XIVY-8852](https://1ivy.atlassian.net/browse/XIVY-8852) Documentation: Use Correct Company and Product Names 
* [XIVY-8859](https://1ivy.atlassian.net/browse/XIVY-8859) Update API documentation for File 
* [XIVY-8864](https://1ivy.atlassian.net/browse/XIVY-8864) Implement Azure AD as identity provider 
* [XIVY-8875](https://1ivy.atlassian.net/browse/XIVY-8875) Beautify process 
* [XIVY-8888](https://1ivy.atlassian.net/browse/XIVY-8888) Replace all "Ivy" only mentions with "Axon Ivy" 
* [XIVY-8912](https://1ivy.atlassian.net/browse/XIVY-8912) Check Cluster Documentation 
* [XIVY-8951](https://1ivy.atlassian.net/browse/XIVY-8951) Enhance performance test to check if DB configurations are active 
* [XIVY-8961](https://1ivy.atlassian.net/browse/XIVY-8961) Ease the migration from ivy 8 to 10 for customers 
* [XIVY-9008](https://1ivy.atlassian.net/browse/XIVY-9008) Beautify Process Editor: Label handling 
* [XIVY-9009](https://1ivy.atlassian.net/browse/XIVY-9009) Beautify Process Editor 2 
* [XIVY-9107](https://1ivy.atlassian.net/browse/XIVY-9107) Document identity provider (azure / ldap) 
* [XIVY-9123](https://1ivy.atlassian.net/browse/XIVY-9123) Release 9.4 News Page and Migration Notes 
* [XIVY-9202](https://1ivy.atlassian.net/browse/XIVY-9202) Allow to login local users when external security system is not available 
* [XIVY-9206](https://1ivy.atlassian.net/browse/XIVY-9206) Doc - standardize images for SketchViz compatibility 
* [XIVY-9216](https://1ivy.atlassian.net/browse/XIVY-9216) Doc - Unify code/code-block role 
* [XIVY-9234](https://1ivy.atlassian.net/browse/XIVY-9234) Doc that preserveHostHeader must be set on IIS 
* [XIVY-9262](https://1ivy.atlassian.net/browse/XIVY-9262) PR Titles and Commit Messages: Allow for Dependabot generated messages 
* [XIVY-9327](https://1ivy.atlassian.net/browse/XIVY-9327) Update Graphics to newly supported Azure AD 
* [XIVY-9337](https://1ivy.atlassian.net/browse/XIVY-9337) Doc: include all node presets in graphics for WYSIWYG 
* [XIVY-9397](https://1ivy.atlassian.net/browse/XIVY-9397) Redirect to originalUrl after successful login with Microsoft 
* [XIVY-9399](https://1ivy.atlassian.net/browse/XIVY-9399) Raise Execution Environment to JavaSE-17 in designer.targetplatform 
* [IVYPORTAL-6250](https://1ivy.atlassian.net/browse/IVYPORTAL-6250) Statistics - New Charts - Cases by Category - Bar Chart 
* [IVYPORTAL-6463](https://1ivy.atlassian.net/browse/IVYPORTAL-6463) Password validation in Portal 
* [IVYPORTAL-10050](https://1ivy.atlassian.net/browse/IVYPORTAL-10050) Improve BusinessCase History in portal 
* [IVYPORTAL-10238](https://1ivy.atlassian.net/browse/IVYPORTAL-10238) Avatar/Picture for users and roles 
* [IVYPORTAL-11427](https://1ivy.atlassian.net/browse/IVYPORTAL-11427) Dynamic scaling for Charts  
* [IVYPORTAL-12038](https://1ivy.atlassian.net/browse/IVYPORTAL-12038) Support application favorite process and default charts customization by Variables 
* [IVYPORTAL-12241](https://1ivy.atlassian.net/browse/IVYPORTAL-12241) Support Opera as browser  
* [IVYPORTAL-12346](https://1ivy.atlassian.net/browse/IVYPORTAL-12346) Provide the possibility to add own menu items to User Menu 
* [IVYPORTAL-12394](https://1ivy.atlassian.net/browse/IVYPORTAL-12394) Behaviour when clicking on a task in task list 
* [IVYPORTAL-12576](https://1ivy.atlassian.net/browse/IVYPORTAL-12576) Create user guide document for new dashboard 
* [IVYPORTAL-12638](https://1ivy.atlassian.net/browse/IVYPORTAL-12638) GUI tests for task widget of new Dashboard 
* [IVYPORTAL-12650](https://1ivy.atlassian.net/browse/IVYPORTAL-12650) Improve handling of params with iframes 
* [IVYPORTAL-12666](https://1ivy.atlassian.net/browse/IVYPORTAL-12666) Create additional dashboards at runtime 
* [IVYPORTAL-12747](https://1ivy.atlassian.net/browse/IVYPORTAL-12747) Unify visibility rule for new dashboard vs full task/case/process list 
* [IVYPORTAL-12849](https://1ivy.atlassian.net/browse/IVYPORTAL-12849) Improve absence management  
* [IVYPORTAL-12902](https://1ivy.atlassian.net/browse/IVYPORTAL-12902) Process starts for Teams 
* [IVYPORTAL-12943](https://1ivy.atlassian.net/browse/IVYPORTAL-12943) Portal in Axon Ivy Market 
* [IVYPORTAL-12963](https://1ivy.atlassian.net/browse/IVYPORTAL-12963) Portal Login-Background using branding 
* [IVYPORTAL-12985](https://1ivy.atlassian.net/browse/IVYPORTAL-12985) Mention all Portal settings in document 
* [IVYPORTAL-12998](https://1ivy.atlassian.net/browse/IVYPORTAL-12998) Process Widget does not work correctly when user switches view/edit mode 
* [IVYPORTAL-13015](https://1ivy.atlassian.net/browse/IVYPORTAL-13015) Search in Cases and Tasks list in Portal - Space characters are not filtered 
* [IVYPORTAL-13017](https://1ivy.atlassian.net/browse/IVYPORTAL-13017) Findings and improvements dashboard 
* [IVYPORTAL-13060](https://1ivy.atlassian.net/browse/IVYPORTAL-13060) Expand icon is displayed when preview Combined Process 
* [IVYPORTAL-13069](https://1ivy.atlassian.net/browse/IVYPORTAL-13069) Category is not displayed if changing process type from full mode to compact mode 
* [IVYPORTAL-13070](https://1ivy.atlassian.net/browse/IVYPORTAL-13070) Filter options of process widget are invisible in edit mode 
* [IVYPORTAL-13071](https://1ivy.atlassian.net/browse/IVYPORTAL-13071) Reorder dashboards 
* [IVYPORTAL-13080](https://1ivy.atlassian.net/browse/IVYPORTAL-13080) Filter panel of widgets not disappear when open Manage Filter while widget is expanded 
* [IVYPORTAL-13081](https://1ivy.atlassian.net/browse/IVYPORTAL-13081) Saved filters not updated when add/remove filter while widget is expanded 
* [IVYPORTAL-13087](https://1ivy.atlassian.net/browse/IVYPORTAL-13087) Preview of Process widget not change to new selected process 
* [IVYPORTAL-13111](https://1ivy.atlassian.net/browse/IVYPORTAL-13111) Primefaces 7.0.25 - p:fileUpload ajax status issues 
* [IVYPORTAL-13171](https://1ivy.atlassian.net/browse/IVYPORTAL-13171) Log out AJAX error to console 
* [IVYPORTAL-13178](https://1ivy.atlassian.net/browse/IVYPORTAL-13178) Edit Wizard UI  
* [IVYPORTAL-13179](https://1ivy.atlassian.net/browse/IVYPORTAL-13179) Create new Dashboard Wizard 
* [IVYPORTAL-13180](https://1ivy.atlassian.net/browse/IVYPORTAL-13180) Edit Private / public dashboards 
* [IVYPORTAL-13187](https://1ivy.atlassian.net/browse/IVYPORTAL-13187) Portal Admin setting displays config with different language 
* [IVYPORTAL-13190](https://1ivy.atlassian.net/browse/IVYPORTAL-13190) JS error when open case details on Portal LE 
* [IVYPORTAL-13194](https://1ivy.atlassian.net/browse/IVYPORTAL-13194) New Process visualization for process start 
* [IVYPORTAL-13197](https://1ivy.atlassian.net/browse/IVYPORTAL-13197) Add default column Actions to the task and case widgets 
* [IVYPORTAL-13198](https://1ivy.atlassian.net/browse/IVYPORTAL-13198) Optimize Task Details page size 
* [IVYPORTAL-13199](https://1ivy.atlassian.net/browse/IVYPORTAL-13199) Edit widgets and reset UI and behaviour  
* [IVYPORTAL-13249](https://1ivy.atlassian.net/browse/IVYPORTAL-13249) Remove warnings in Portal doc related to absolute URL 
* [IVYPORTAL-13250](https://1ivy.atlassian.net/browse/IVYPORTAL-13250) Improve filters in full task and case list  
* [IVYPORTAL-13283](https://1ivy.atlassian.net/browse/IVYPORTAL-13283) Migrate to Primefaces 11 in Portal  
* [IVYPORTAL-13290](https://1ivy.atlassian.net/browse/IVYPORTAL-13290) Fix reorder mange column of configuring case list dashboard 
* [IVYPORTAL-13293](https://1ivy.atlassian.net/browse/IVYPORTAL-13293) Split dashboard process widget to separated modes 
* [IVYPORTAL-13317](https://1ivy.atlassian.net/browse/IVYPORTAL-13317) Bring the statistic widget from old dashboard to new dashboard 
* [IVYPORTAL-13318](https://1ivy.atlassian.net/browse/IVYPORTAL-13318) Support "Expiry task" feature from basic wf ui in portal 
* [IVYPORTAL-13375](https://1ivy.atlassian.net/browse/IVYPORTAL-13375) Change default sorting of new dashboard (task/case widget) to "Creation date DESC" 
* [IVYPORTAL-13399](https://1ivy.atlassian.net/browse/IVYPORTAL-13399) Apply new FREYA Theme to Portal  
* [IVYPORTAL-13402](https://1ivy.atlassian.net/browse/IVYPORTAL-13402) Enhance style of the tab view to switch between dashboards 
* [IVYPORTAL-13406](https://1ivy.atlassian.net/browse/IVYPORTAL-13406) Portal inside Portal when open related task in Case Information dialog 
* [IVYPORTAL-13408](https://1ivy.atlassian.net/browse/IVYPORTAL-13408) DataTable Showcase not work as expected 
* [IVYPORTAL-13415](https://1ivy.atlassian.net/browse/IVYPORTAL-13415) Add checkbox on the business case to enable/disable history from subcases 
* [IVYPORTAL-13416](https://1ivy.atlassian.net/browse/IVYPORTAL-13416) Add link to show more documents on 1 page 
* [IVYPORTAL-13452](https://1ivy.atlassian.net/browse/IVYPORTAL-13452) Support call original case information when using iframe 
* [IVYPORTAL-13478](https://1ivy.atlassian.net/browse/IVYPORTAL-13478) Role Assignment module in Portal 
* [IVYPORTAL-13491](https://1ivy.atlassian.net/browse/IVYPORTAL-13491) Support portal styles for portal components in IFrame for v10 
* [IVYPORTAL-13561](https://1ivy.atlassian.net/browse/IVYPORTAL-13561) Change repo for Portal artifacts to nexus.axonivy.com 
* [IVYPORTAL-13607](https://1ivy.atlassian.net/browse/IVYPORTAL-13607) LE Performance problem related statistic 
* [IVYPORTAL-13615](https://1ivy.atlassian.net/browse/IVYPORTAL-13615) Convert p:dataGrid/dataList to p:dataView due to it is deprecated on PF 11  
* [IVYPORTAL-13621](https://1ivy.atlassian.net/browse/IVYPORTAL-13621) Changed parameter "case" to "caseId" for task templates 
* [IVYPORTAL-13635](https://1ivy.atlassian.net/browse/IVYPORTAL-13635) Problem Engine Installation 9.3.4 with SQL Server 
* [IVYPORTAL-13641](https://1ivy.atlassian.net/browse/IVYPORTAL-13641) Remove custom varchar in document 
* [IVYPORTAL-13645](https://1ivy.atlassian.net/browse/IVYPORTAL-13645) File customization.css is removed on Portal master but without migration notes 
* [IVYPORTAL-13658](https://1ivy.atlassian.net/browse/IVYPORTAL-13658) UI improvement on devices 
* [IVYPORTAL-13698](https://1ivy.atlassian.net/browse/IVYPORTAL-13698) Sticky Dashboard navigation 
* [IVYPORTAL-13745](https://1ivy.atlassian.net/browse/IVYPORTAL-13745) Avoid overlapping starts of a job with the CronByGlobalVAriableTriggerStartEventBean 
* [IVYPORTAL-13771](https://1ivy.atlassian.net/browse/IVYPORTAL-13771) Performance issue with TaskUtils.findTaskUserHasPermissionToSee 
* [IVYPORTAL-13778](https://1ivy.atlassian.net/browse/IVYPORTAL-13778) Remove portalStyle project 
* [IVYPORTAL-13788](https://1ivy.atlassian.net/browse/IVYPORTAL-13788) Related cases can not be destroyed on case detail page 
* [IVYPORTAL-13805](https://1ivy.atlassian.net/browse/IVYPORTAL-13805) Remove usages of IApplication#current 
* [IVYPORTAL-13814](https://1ivy.atlassian.net/browse/IVYPORTAL-13814) Admin role cannot see destroyed related cases 
* [IVYPORTAL-13815](https://1ivy.atlassian.net/browse/IVYPORTAL-13815) Some tables on Case details page are displayed not good 
* [IVYPORTAL-13840](https://1ivy.atlassian.net/browse/IVYPORTAL-13840) Can not change number of items/page if select value greater than total items 
* [IVYPORTAL-13845](https://1ivy.atlassian.net/browse/IVYPORTAL-13845) Use Frame Mode for Case Map example 
* [IVYPORTAL-13849](https://1ivy.atlassian.net/browse/IVYPORTAL-13849) Apply language concept 
* [IVYPORTAL-13850](https://1ivy.atlassian.net/browse/IVYPORTAL-13850) Consider only custom fields with meta data in portal dashboard 
* [IVYPORTAL-13857](https://1ivy.atlassian.net/browse/IVYPORTAL-13857) Move dashboard configuration user menu to own page 
* [IVYPORTAL-13858](https://1ivy.atlassian.net/browse/IVYPORTAL-13858) Combine PortalKit and PortalTemplate to one project 
* [IVYPORTAL-13910](https://1ivy.atlassian.net/browse/IVYPORTAL-13910) Component for process and case map viewer in portalcomponents 
* [IVYPORTAL-14017](https://1ivy.atlassian.net/browse/IVYPORTAL-14017) Adapt Serenity theme for portal-component 
* [IVYPORTAL-14039](https://1ivy.atlassian.net/browse/IVYPORTAL-14039) Statistic Chart improvement 
* [IVYPORTAL-14073](https://1ivy.atlassian.net/browse/IVYPORTAL-14073) Update user document for case/task filter permissions 
* [IVYPORTAL-14129](https://1ivy.atlassian.net/browse/IVYPORTAL-14129) Adapt securityMemberNameAndAvatar component for project portal-component 
* [IVYPORTAL-14145](https://1ivy.atlassian.net/browse/IVYPORTAL-14145) Application name into page title for password managers 
* [IVYPORTAL-14161](https://1ivy.atlassian.net/browse/IVYPORTAL-14161) Enhance portal components examples and documentation 
* [IVYPORTAL-14170](https://1ivy.atlassian.net/browse/IVYPORTAL-14170) Portal Dashboard Header Widget  
* [IVYPORTAL-14308](https://1ivy.atlassian.net/browse/IVYPORTAL-14308) NPE with Statistic widget after session timeout 

## Bugs

* [XIVY-2436](https://1ivy.atlassian.net/browse/XIVY-2436) String value with size > 100 is cropped in CMS 
* [XIVY-2872](https://1ivy.atlassian.net/browse/XIVY-2872) Mail steps adds wrong attachment to the email 
* [XIVY-4020](https://1ivy.atlassian.net/browse/XIVY-4020) Process Editor selection move: removes ARC kinks 
* [XIVY-5023](https://1ivy.atlassian.net/browse/XIVY-5023) Swagger UI cannot be displayed in internal web browser view 
* [XIVY-5074](https://1ivy.atlassian.net/browse/XIVY-5074) CMS getChildren on Engine in wrong order 
* [XIVY-5093](https://1ivy.atlassian.net/browse/XIVY-5093) NPE on Import Wizard (Existing Projects into Workspace) if packed project (iar) is selected 
* [XIVY-5458](https://1ivy.atlassian.net/browse/XIVY-5458) Content of E-Mail Step inscription cannot be edited on Mac Designer 
* [XIVY-5459](https://1ivy.atlassian.net/browse/XIVY-5459) DB inscription can sometimes not be edited on Mac Designer 
* [XIVY-5861](https://1ivy.atlassian.net/browse/XIVY-5861) No Buttons visible in E-Mail Step Tabs on first open 
* [XIVY-6425](https://1ivy.atlassian.net/browse/XIVY-6425) Query in DB Activity Step does not get validated 
* [XIVY-6463](https://1ivy.atlassian.net/browse/XIVY-6463) DB Activity loses query configuration when renaming a table 
* [XIVY-6748](https://1ivy.atlassian.net/browse/XIVY-6748) Fix 404 in dev-workflow-ui if no projects imported 
* [XIVY-6752](https://1ivy.atlassian.net/browse/XIVY-6752) DB Activity write-query doesn't evaluate functions 
* [XIVY-7184](https://1ivy.atlassian.net/browse/XIVY-7184) 404 Error on Backend API in Engine Cockpit if application context is not started yet 
* [XIVY-7227](https://1ivy.atlassian.net/browse/XIVY-7227) REST client properties and web service client properties values are not updated 
* [XIVY-7237](https://1ivy.atlassian.net/browse/XIVY-7237) CVE-2021-44228 : Log4Shell remote code execution - Update to Log4j2 version 2.15.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7253](https://1ivy.atlassian.net/browse/XIVY-7253) Maven dependency appears twice in Axon Ivy Libraries 
* [XIVY-7254](https://1ivy.atlassian.net/browse/XIVY-7254) Wrong member type due to transitive dependency (Cannot cast from a to a) 
* [XIVY-7257](https://1ivy.atlassian.net/browse/XIVY-7257) Unique constraints violation with multiple projects defining the same role 
* [XIVY-7258](https://1ivy.atlassian.net/browse/XIVY-7258) False positive validation errors, complains on AXIS2 usage for empty WebService Clients 
* [XIVY-7262](https://1ivy.atlassian.net/browse/XIVY-7262) CVE-2021-45046: ThreadContext DoS - Update to Log4j2 version 2.16.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7275](https://1ivy.atlassian.net/browse/XIVY-7275) Optimize market custom installation (CTRL + ALT + I) 
* [XIVY-7284](https://1ivy.atlassian.net/browse/XIVY-7284) Fix typos in developer workflow UI 
* [XIVY-7314](https://1ivy.atlassian.net/browse/XIVY-7314) CVE-2021-45105: infinite recursion in lookup evaluation - Update to Log4j2 version 2.17.0 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7334](https://1ivy.atlassian.net/browse/XIVY-7334) Show dev-workfluw-ui even if no project is open in designer 
* [XIVY-7343](https://1ivy.atlassian.net/browse/XIVY-7343) NPE when accessing PMV which is not linked to an existing project 
* [XIVY-7349](https://1ivy.atlassian.net/browse/XIVY-7349) CVE-2021-44832 : RCE via JDBC Appender - Update to Log4j2 version 2.17.1 <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7408](https://1ivy.atlassian.net/browse/XIVY-7408) Ivy is not able to read ivy project artifact version and group id from parent pom 
* [XIVY-7466](https://1ivy.atlassian.net/browse/XIVY-7466) Windows Launcher Binaries broken: could not load module libraries of jre/bin/server/jvm.dll 
* [XIVY-7501](https://1ivy.atlassian.net/browse/XIVY-7501) Character based content from CMS are served in ISO-8859-1 instead of UTF-8 
* [XIVY-7507](https://1ivy.atlassian.net/browse/XIVY-7507) CMS pages are served always with default OS encoding 
* [XIVY-7530](https://1ivy.atlassian.net/browse/XIVY-7530) Function Browser does not work anymore in old AWT based script editors 
* [XIVY-7541](https://1ivy.atlassian.net/browse/XIVY-7541) REST Client process element does not store OpenAPI enable/disabled state 
* [XIVY-7594](https://1ivy.atlassian.net/browse/XIVY-7594) Fix org.apache.commons.io duplication because of GLSP server 
* [XIVY-7673](https://1ivy.atlassian.net/browse/XIVY-7673) ivy.vars are only resolved in RELEASED pmv but not in DEPRECATED pmv 
* [XIVY-7683](https://1ivy.atlassian.net/browse/XIVY-7683) Change case of user name in AD will not be synchronized  <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7688](https://1ivy.atlassian.net/browse/XIVY-7688) Other user input is lost if Referral or Dereference Aliases is changed in Engine Cockpit AD setting  
* [XIVY-7701](https://1ivy.atlassian.net/browse/XIVY-7701) Bad performance of macro expander and CMS if override project is configured 
* [XIVY-7716](https://1ivy.atlassian.net/browse/XIVY-7716) migrate-project command corrupts mod with third-party elements 
* [XIVY-7731](https://1ivy.atlassian.net/browse/XIVY-7731) Project configurations of deprecated PMV are not available during runtime 
* [XIVY-7746](https://1ivy.atlassian.net/browse/XIVY-7746) Error in Engine Cockpit LDAP Browser on nodes that has an escaped LDAP Name 
* [XIVY-7766](https://1ivy.atlassian.net/browse/XIVY-7766) NPE in Log when deleting a project 
* [XIVY-7780](https://1ivy.atlassian.net/browse/XIVY-7780) CMS inline editor does not work on Linux 
* [XIVY-7808](https://1ivy.atlassian.net/browse/XIVY-7808) Changing project dependencies (with our editor), removes iar-integration-test packaging 
* [XIVY-7810](https://1ivy.atlassian.net/browse/XIVY-7810) GLSP Error sometimes when opening, closing, packing, unpacking projects 
* [XIVY-7821](https://1ivy.atlassian.net/browse/XIVY-7821) Tab navigation and type selection does not work on Parameter table 
* [XIVY-7856](https://1ivy.atlassian.net/browse/XIVY-7856) IllegalStateException "project resources of pmv 'xyz' not found" during startup of cluster slave  
* [XIVY-7922](https://1ivy.atlassian.net/browse/XIVY-7922) Missing icons without an internet connection 
* [XIVY-7926](https://1ivy.atlassian.net/browse/XIVY-7926) New process editor has encoding problems if start label contains e.g <>  
* [XIVY-7928](https://1ivy.atlassian.net/browse/XIVY-7928) New process editor can't open process in test projects 
* [XIVY-7944](https://1ivy.atlassian.net/browse/XIVY-7944) jsessionid in PrimeFaces resource URL if no session is set yet <span class="badge badge-pill badge-success badge-security">security</span>
* [XIVY-7948](https://1ivy.atlassian.net/browse/XIVY-7948) Role substitute still valid even if role was removed form user 
* [XIVY-7971](https://1ivy.atlassian.net/browse/XIVY-7971) CMS import is slow when cms is huge 
* [XIVY-7972](https://1ivy.atlassian.net/browse/XIVY-7972) Resource not found warn log if a mail is sent with authentication 
* [XIVY-7974](https://1ivy.atlassian.net/browse/XIVY-7974) ctrl + s does not work in the new process editor under Windows 
* [XIVY-7975](https://1ivy.atlassian.net/browse/XIVY-7975) Make generating the database schema for environments work again 
* [XIVY-7978](https://1ivy.atlassian.net/browse/XIVY-7978) CXF does sometimes not find the operation on a cached endpoint 
* [XIVY-7992](https://1ivy.atlassian.net/browse/XIVY-7992) ConcurrentModificationException at cluster node startup 
* [XIVY-8001](https://1ivy.atlassian.net/browse/XIVY-8001) SubProcessCall PublicAPI needs system and ProcessModelVersionReadAll permission 
* [XIVY-8010](https://1ivy.atlassian.net/browse/XIVY-8010) Internal Case Map Editor does not work under Linux 
* [XIVY-8025](https://1ivy.atlassian.net/browse/XIVY-8025) IAR packaging fails to include dependencies from reactor 
* [XIVY-8047](https://1ivy.atlassian.net/browse/XIVY-8047) Cant set custom icon of subprocess call if the called process start already has a custom icon 
* [XIVY-8083](https://1ivy.atlassian.net/browse/XIVY-8083) 404 errors when trying to start a process when tasks need to be reset during docker container start 
* [XIVY-8115](https://1ivy.atlassian.net/browse/XIVY-8115) Error Boundary Event on Call Sub Process throws IvyScriptCastException instead of catch error 
* [XIVY-8125](https://1ivy.atlassian.net/browse/XIVY-8125) Eclipse Key Bindings not working in new Process Editor 
* [XIVY-8151](https://1ivy.atlassian.net/browse/XIVY-8151) TaskSwitchGateway is not updated with Tasks after output connectors added in the new Process Editor 
* [XIVY-8199](https://1ivy.atlassian.net/browse/XIVY-8199) Can't select any operation after re-generating wsClient to different namespace 
* [XIVY-8246](https://1ivy.atlassian.net/browse/XIVY-8246) Cluster slave instances always responses status 500 after it is started successfully 
* [XIVY-8250](https://1ivy.atlassian.net/browse/XIVY-8250) CMS cache not invalidate after deployment 
* [XIVY-8252](https://1ivy.atlassian.net/browse/XIVY-8252) Failed to create the part's control when opening CMS editor 
* [XIVY-8272](https://1ivy.atlassian.net/browse/XIVY-8272) An NPE error is sometimes logged while cluster slave is started 
* [XIVY-8279](https://1ivy.atlassian.net/browse/XIVY-8279) ivy Project conversion 80000-94000 failed because of arcStyle 
* [XIVY-8280](https://1ivy.atlassian.net/browse/XIVY-8280) Improve double click action on elements to open inscription 
* [XIVY-8281](https://1ivy.atlassian.net/browse/XIVY-8281) Problem with Umlauts in element inscription 
* [XIVY-8314](https://1ivy.atlassian.net/browse/XIVY-8314) Prioritize RELEASED PMV over other PMVs on Strict Override evaluation 
* [XIVY-8334](https://1ivy.atlassian.net/browse/XIVY-8334) Frame problem in designer if a process is started via Process Editor action 
* [XIVY-8371](https://1ivy.atlassian.net/browse/XIVY-8371) f:convertDateTime no longer works with IvyScript Date, Time and DateTime data types 
* [XIVY-8400](https://1ivy.atlassian.net/browse/XIVY-8400) NPE in "Browse Dossier Demo (Lazy)" in Workflow Demo 
* [XIVY-8402](https://1ivy.atlassian.net/browse/XIVY-8402) Improve stability of GLSP server 
* [XIVY-8422](https://1ivy.atlassian.net/browse/XIVY-8422) Rest API servlet crashes after jersey model validation error 
* [XIVY-8429](https://1ivy.atlassian.net/browse/XIVY-8429) OpenApi code generator error dialog don't show full error result 
* [XIVY-8462](https://1ivy.atlassian.net/browse/XIVY-8462) Remove googleapi font request from dev-wf-ui 
* [XIVY-8500](https://1ivy.atlassian.net/browse/XIVY-8500) Could not read maven project since eclipse 2022-03 
* [XIVY-8549](https://1ivy.atlassian.net/browse/XIVY-8549) IOException if DataTable is embedded in  DynaForm and Composite 
* [XIVY-8566](https://1ivy.atlassian.net/browse/XIVY-8566) Multiselect autocomplete not working with Serenity and PrimeFaces 11 
* [XIVY-8603](https://1ivy.atlassian.net/browse/XIVY-8603) CMS file with underscores does not work 
* [XIVY-8633](https://1ivy.atlassian.net/browse/XIVY-8633) Multiple Users can start the same Task of a User Task 
* [XIVY-8634](https://1ivy.atlassian.net/browse/XIVY-8634) Default color may is listed twice in the color palette in the new process editor 
* [XIVY-8686](https://1ivy.atlassian.net/browse/XIVY-8686) Project conversion does not work on re-deployment 
* [XIVY-8697](https://1ivy.atlassian.net/browse/XIVY-8697) Referenced Error Start and Error Boundary unlinked after changing BPMN activity type 
* [XIVY-8704](https://1ivy.atlassian.net/browse/XIVY-8704) Bpmn2 export produces strange waypoints with json processes 
* [XIVY-8733](https://1ivy.atlassian.net/browse/XIVY-8733) Designer crash after pressing Ctrl-W in new process editor 
* [XIVY-8759](https://1ivy.atlassian.net/browse/XIVY-8759) Link on Axon Ivy Logo is broken in dev-wf-ui in Designer mode 
* [XIVY-8781](https://1ivy.atlassian.net/browse/XIVY-8781) mod to json conversion fails on incomplete lane-data 
* [XIVY-8783](https://1ivy.atlassian.net/browse/XIVY-8783) colors used multiple times in the same process are lost 
* [XIVY-8790](https://1ivy.atlassian.net/browse/XIVY-8790) Deployment and License Upload not working if REST Servlet is disabled 
* [XIVY-8807](https://1ivy.atlassian.net/browse/XIVY-8807) Custom icons broken in new process editor 
* [XIVY-8815](https://1ivy.atlassian.net/browse/XIVY-8815) json-serialization omits multiline conditions 
* [XIVY-8824](https://1ivy.atlassian.net/browse/XIVY-8824) PersistencyException when deleting a role in the cockpit with PostgreSQL 
* [XIVY-8830](https://1ivy.atlassian.net/browse/XIVY-8830) DB insert/update script-editor produces false positive errors and invalid statements 
* [XIVY-8841](https://1ivy.atlassian.net/browse/XIVY-8841) Avoid flickering process-lines on 'migrate-project' command 
* [XIVY-8843](https://1ivy.atlassian.net/browse/XIVY-8843) Bend points loose if element is added onto connection 
* [XIVY-8849](https://1ivy.atlassian.net/browse/XIVY-8849) Insert element on connection which has an bend point is maybe wrong 
* [XIVY-8904](https://1ivy.atlassian.net/browse/XIVY-8904) Email header content cannot be deleted in the inscription mask 
* [XIVY-8926](https://1ivy.atlassian.net/browse/XIVY-8926) ITask.getCategory throws NPE if project of task PMV is missing 
* [XIVY-8933](https://1ivy.atlassian.net/browse/XIVY-8933) Portal cannot create add hoc task for case if case is not in same application as Portal 
* [XIVY-8995](https://1ivy.atlassian.net/browse/XIVY-8995) Removing REST Client does not remove the generated .jar file 
* [XIVY-9058](https://1ivy.atlassian.net/browse/XIVY-9058) DB migration 8 to 9 writes outdated values to app.yaml 
* [XIVY-9061](https://1ivy.atlassian.net/browse/XIVY-9061) Deployment validation asserts wrong number of Task outputs 
* [XIVY-9076](https://1ivy.atlassian.net/browse/XIVY-9076) NPE on ICustomFieldMeta.tasks() if a project is missing 
* [XIVY-9102](https://1ivy.atlassian.net/browse/XIVY-9102) PMV details views fails with an NPE while reloading its state 
* [XIVY-9103](https://1ivy.atlassian.net/browse/XIVY-9103) Re-Deployment of a base project activates manually stopped dependent ProcessModels 
* [XIVY-9156](https://1ivy.atlassian.net/browse/XIVY-9156) Cockpit system database save problems with additional properties 
* [XIVY-9201](https://1ivy.atlassian.net/browse/XIVY-9201) RuntimeLog view occasionally not showing any logs 
* [XIVY-9207](https://1ivy.atlassian.net/browse/XIVY-9207) Execution of job SynchJob failed due to user language 
* [XIVY-9209](https://1ivy.atlassian.net/browse/XIVY-9209) InX undefined for TaskSwitchGateway connectors 
* [XIVY-9211](https://1ivy.atlassian.net/browse/XIVY-9211) Default error page does not work in Designer and Engine 
* [XIVY-9213](https://1ivy.atlassian.net/browse/XIVY-9213) Search in engine cockpit variables overview does not work after switching tab. 
* [XIVY-9215](https://1ivy.atlassian.net/browse/XIVY-9215) Link on error page to home page broken 
* [XIVY-9233](https://1ivy.atlassian.net/browse/XIVY-9233) Blanks in Base URL let cockpit fail 
* [XIVY-9242](https://1ivy.atlassian.net/browse/XIVY-9242) Backend API page in cockpit not working with context 
* [XIVY-9269](https://1ivy.atlassian.net/browse/XIVY-9269) Engine Cockpit: Role Detail View is not working when no Application exists 
* [XIVY-9270](https://1ivy.atlassian.net/browse/XIVY-9270) Some System DBs accept multiple roles with same name if whitespace is added 
* [XIVY-9281](https://1ivy.atlassian.net/browse/XIVY-9281) Opening inscription fails on pre 8.0 project with an NPE 
* [XIVY-9284](https://1ivy.atlassian.net/browse/XIVY-9284) Engine Cockpit branding image upload shows error even if upload successful 
* [XIVY-9297](https://1ivy.atlassian.net/browse/XIVY-9297) Inscription editor blocked for several minutes when editing large object trees 
* [XIVY-9299](https://1ivy.atlassian.net/browse/XIVY-9299) REST method browser takes over 20 seconds to display methods 
* [XIVY-9336](https://1ivy.atlassian.net/browse/XIVY-9336) Engine Migration Wizard: Buttons should be aligned to the correct window 
* [XIVY-9342](https://1ivy.atlassian.net/browse/XIVY-9342) User and Role count in the title is not updated if security system is switched 
* [XIVY-9388](https://1ivy.atlassian.net/browse/XIVY-9388) Can not cleanup JSF view scope when HTTP session expires 
* [XIVY-9395](https://1ivy.atlassian.net/browse/XIVY-9395) Error Log "Error automatically configuring OpenTelemetry SDK" when executing IvyTest or IvyProcessTest 
* [IVYPORTAL-13134](https://1ivy.atlassian.net/browse/IVYPORTAL-13134) The left menu marks the wrong item selected 
* [IVYPORTAL-13140](https://1ivy.atlassian.net/browse/IVYPORTAL-13140) My Profile on Ivy Portal 9.3 
* [IVYPORTAL-13165](https://1ivy.atlassian.net/browse/IVYPORTAL-13165) Admin user cannot edit/delete absences of normal users in the current or future  
* [IVYPORTAL-13450](https://1ivy.atlassian.net/browse/IVYPORTAL-13450) Rounding position when scrolling task list 
* [IVYPORTAL-13539](https://1ivy.atlassian.net/browse/IVYPORTAL-13539) Delegation task disables user selection if previously entered incorrectly 
* [IVYPORTAL-13544](https://1ivy.atlassian.net/browse/IVYPORTAL-13544) Absences configuration did not work on the same day 
* [IVYPORTAL-13804](https://1ivy.atlassian.net/browse/IVYPORTAL-13804) Language support is not handled correctly 
* [IVYPORTAL-14018](https://1ivy.atlassian.net/browse/IVYPORTAL-14018) State not loaded when apply saved filter in full task list 
* [IVYPORTAL-14147](https://1ivy.atlassian.net/browse/IVYPORTAL-14147) Back link of custom Case Details, Task Details pages does not work on Firefox 
* [IVYPORTAL-14152](https://1ivy.atlassian.net/browse/IVYPORTAL-14152) Portal Widget Resize 
* [IVYPORTAL-14152](https://1ivy.atlassian.net/browse/IVYPORTAL-14152) Portal Widget Resize
