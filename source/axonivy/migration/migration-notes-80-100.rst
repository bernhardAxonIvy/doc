.. _migrate-80-100:

Migrating from 8.0 to 10.0
==========================

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 10.0.


------------

Updates
*******

Java 17
-------

|tag-project-changed| |tag-project-auto-convert| |tag-ops-changed|

We updated Java to version 17:

- Convert your Axon Ivy projects to the latest version to use the new Java 17 features. 
- You may have to update third-party libraries that do not yet support Java 17 to newer versions.
- Use Java 17 to run your Maven project builds.
- Use an `Adoptium / Eclipse Temurin JDK or JRE <https://adoptium.net/temurin/releases?version=17>`_ to run Axon Ivy on Linux or macOS.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    **TLS 1.0 and TLS 1.1 disabled** |tag-ops-changed|

    We disabled TLS 1.0 and 1.1 by default because they are outdated and should no longer be used.
    This can break communication links with legacy databases or other external services that still use the old TLS protocols.
    Have a look at our `community blog post <https://community.axonivy.com/d/140-tls-10-and-tls-11-disabled-by-default-with-java-11011>`_
    if you experience such problems to find out how to enable those protocols again.


Primefaces 11
-------------

|tag-project-changed| |tag-project-removed| |tag-project-deprecated| |tag-project-auto-convert|

We upgraded the Primefaces library from version 7 to version 11. Unfortunately,
Primefaces made some breaking changes in its latest versions. Therefore, your
user interfaces are most likely broken. To mitigate the migration pain, we have
built a :ref:`project converter <project-convert-wizard>` that fixes most
breaking changes. See :ref:`primefaces-11-migration` for more information.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    .. toctree::
      :maxdepth: 1

      migration-notes-pf11

    **Old Themes removed** |tag-project-removed|

    Instead of modena, primefaces-ivy, or all-themes, use :ref:`freya-ivy
    <freya-themes>` or :ref:`serenity-ivy <serenity-themes>`. You may need to adjust
    your hand-crafted CSS rules to the new theme.


Elasticsearch 7.17
------------------

|tag-ops-changed|

Elasticsearch has been upgraded from 7.3 to 7.17. If you use an external
Elasticsearch server you need to upgrade to version 7.17.


Upgrade Log4j 1 to Log4j 2
--------------------------

|tag-ops-changed|

Logs are written now with Log4j 2, which has a new configuration format. If you
made any custom logging configuration entries, you need to adapt these changes
to the new logging configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  The legacy logging configuration file
  :file:`[engineDir]/configuration/log4jconfig.xml` is no longer in charge. You
  need to make all your custom logging configuration in
  :file:`[engineDir]/configuration/log4j2.xml`. Read more about customizing in the
  :ref:`logging` chapter.


Portal 10.0
-----------

|tag-project-changed| |tag-project-auto-convert|

Portal version 8 and earlier are no longer compatible with |ivy| 10.0. If
you have used the Portal in your projects, you have to migrate your projects
also to Portal 10.0. Please have a look at the :ref:`Portal Migration Notes
<portal-guide>`.


------------

Engine changes
**************

Engine default base path changed
--------------------------------

|tag-ops-changed| |tag-ops-wizard|

We changed the default value of the :ref:`WebServer.IvyContextName
<ivy-webserver-yaml>` from :code:`"ivy"` to :code:`""`. This means the default
engine URL has changed (from :code:`http://localhost:8080/ivy/`) to
:code:`http://localhost:8080/`.

If you have a :ref:`Reverse Proxy <reverse-proxy>` configured, you have to manually define
the ``WebServer.IvyContextName`` with the old value ``ivy``. Otherwise the AJP
uri workers will not find a valid path.


URL changes
-----------

|tag-ops-changed|

The paths in the URL have changed. The name of the application is now at the top.

.. container:: admonition note toggle

  .. container:: admonition-title header
  
     **Details**

  .. container:: detail

    Setting up a classic frontend server is now much easier, because you can now define routes on app level.
    If you have a :ref:`Reverse Proxy <reverse-proxy>` configured and you block some URLs for security reasons, you need to adjust them.

    Here are some examples:

    +------------------------------------+------------------------------------+
    | Old URL                            | New URL                            |
    +====================================+====================================+
    | /<servlet>/**<appName>**/<pmv>/... | /**<appName>**/<servlet>/<pmv>/... |
    +------------------------------------+------------------------------------+
    | /pro/myApp/myPmv/...               | /myApp/pro/myPmv/...               |
    +------------------------------------+------------------------------------+
    | /api/myApp/myPmv/...               | /myApp/api/myPmv/...               |
    +------------------------------------+------------------------------------+
    | /wf/myApp/myPmv/...                | /myApp/wf/myPmv/...                |
    +------------------------------------+------------------------------------+


app.yaml new file location
--------------------------

|tag-ops-changed|

Shifting towards highly configurable Axon Ivy projects, we needed to move the :file:`app.yaml` to a new location
in the Axon Ivy Engine.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    If the new engine is aware of the existing applications, the :file:`app.yaml`
    files will be migrated automatically. The new locations are the following:

    +-------------------------------------------------------+--------------------------------------------------------------------------+
    | Old Location                                          | New Location                                                             |
    +=======================================================+==========================================================================+
    | /[engineDir]/applications/**myApplication**/app.yaml  | /[engineDir]/applications/**myApplication**/config/app.yaml              |
    +-------------------------------------------------------+--------------------------------------------------------------------------+
    | /[engineDir]/configuration/app-**myApplication**.yaml | /[engineDir]/configuration/applications/**myApplication**/app.yaml       |
    +-------------------------------------------------------+--------------------------------------------------------------------------+

    If you deploy an :file:`app.yaml` in an application zip file, it has to be placed
    now in the sub-folder :file:`config`. For compatibility reasons, the old
    legacy location in the root of the application deployment zip is still
    supported for the time being.


Global Variables moved and renamed
----------------------------------

|tag-ops-changed| |tag-ops-wizard|

The :code:`GlobalVariables` in the :ref:`app-yaml` are renamed to
:code:`Variables`. System database migration does this automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    **System Database:**

    We have dropped the system database table :code:`IWA_GlobalVariables` and
    migrated its data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine. If you used your :ref:`app-yaml` to override Global Variables,
    please take note of this change as well:
    :ref:`migrate-91-92-app-env-support`.

    **Configuration:**

    Old :file:`app.yaml`:
    
    .. code:: yaml
    
      GlobalVariables:
        myVariable: value

    New :file:`app.yaml`:

    .. code:: yaml

      Variables:
        myVariable: value


Multi Application Security System
---------------------------------

|tag-ops-changed| |tag-ops-wizard| |tag-project-deprecated| 

Users and roles are no longer attached to a single application, but can be 
shared across multiple applications in a security system. Now, different applications 
can be developed and installed with their own release cycles, and the end user 
receives one single task list for all applications. 
This enables independent feature-driven development.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    Most engine installations will only have the predefined security context
    `default`. By default, new applications end up in this context. 
    There are two use cases for multiple security contexts on one engine:

    - you want to isolate applications against each other - each application has its own security context.
    - you implement multi-tenancy by having one security system per tenant.

    For both use cases, we suggest using multiple engines in order to make accidental security breaches impossible.

    During migration, however, the status quo is maintained. The migrated
    applications are placed in an isolated security system with the name of the
    application. It is no longer possible to change the security system at runtime,
    this must always be done when the application is created.

    Refer to :ref:`Application Lifecycle <application-lifecycle>` for further details.

    - **Users** are no longer attached to the application, but to the Security
      System. This means that the user is unique over several applications.
    - **Roles** are still defined in projects. The roles are deployed into a
      security system. Now, the roles must not only be unique in the application, 
      but in the security system.
    - **Business Data** has not been scoped. Now, it is scoped to the security system.
    - **Standard process** default pages are now automatically
      determined at runtime. You don't have to define them anymore. If there are
      multiple implementations of a default process, one is simply selected. But you
      can fix this using settings.
    - **EmailNotification Settings** are no longer part of
      the application configuration. They are part of the security system and can be
      found there.


    **Changed Configuration** |tag-ops-changed| |tag-ops-wizard|
    
    We renamed configuration keys to be more clear.

    - `ImportOnDemand` -> `UserSynch.OnSchedule.ImportUsers`
    - `UpdateEnabled` -> `UserSynch.OnSchedule.Enabled`
    - `UpdateTime` -> `UserSynch.OnSchedule.Time`

    `ImportOnDemand` also changes the semantic - the value needs to be changed from `false` to `true` or otherwise.

    Read more in :ref:`Identity Provider <identity-provider>`.


    **User id and role id deprecated** |tag-project-deprecated|

    :code:`IUser#getId()` and :code:`IRole#getId`` are obsolete and should not be used any further.
    Always use :code:`getSecurityMemberId()`. For now, user id and role id are still fully
    supported and are also unique. But these will be completely removed in upcoming
    versions also from the database (:code:`IWA_User.UserId`` and :code:`IWA_Role.RoleId)`.

    Standard mail notification process still support the parameter :code:`notificationUserId`
    but you should already change to :code:`notificationSecurityMemberId``.


Role Mapping moved to :ref:`ivy.yaml <ivy-identity-provider-yaml>`
------------------------------------------------------------------

|tag-ops-wizard|

The external name of a role that can be set in the :ref:`Engine Cockpit
<engine-cockpit-role-detail>` is no longer stored in the System Database. It has
been moved from :code:`IWA_Role.ExternalSecurityName` to :ref:`ivy.yaml
<ivy-identity-provider-yaml>`. This change allows you to easily automate the
role mapping configuration, which is now located in :ref:`ivy.yaml
<ivy-identity-provider-yaml>`.


Language
--------

|tag-ops-wizard|

There is a new global language concept. The content language as well as the formatting language can be
defined per security system in :ref:`ivy-yaml`, which are considered as default
languages. Users can overwrite these two language settings in their user profiles.

The existing :code:`EMailNotification.Language` is automatically migrated to :code:`Language.Content`
in :ref:`ivy-yaml`.

Read more here: :ref:`configuration-language` and :ref:`cms-content-resolution`.


------------

Ivy Project changes
*******************

Variables configuration file
----------------------------

|tag-project-changed| |tag-project-auto-convert|

Variables (former Global Variables) are stored in new locations. During
development, the project's Variables are now stored in the
:ref:`variables.yaml <variables>` file. Furthermore, the project migration do
the conversion from the old to the new format for you automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    Global Variables are no longer defined using the configuration editor
    but in the :ref:`variables.yaml <variables-yaml>` file within your project.

    By running the latest :ref:`migration-project` in your Designer, your existing
    Global Variables are automatically migrated into the :file:`variable.yaml` files.


Databases, Rest Clients and Web Service configuration files
-----------------------------------------------------------

|tag-project-changed| |tag-project-auto-convert|

Configurations of Databases, Rest Clients and Web Services are stored in new locations. On the
Axon Ivy Engine, the configurations of of these have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, the System Database and project migration 
converts from the old to the new format automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    We recommend that you :ref:`migrate your projects <migration-project>` and
    redeploy them to your engine.

    **Databases**

    During development, the project's Databases are now stored in the
    :ref:`databases.yaml <database-configuration>` file.

    We have dropped the System Database tables :code:`IWA_ExternalDatabase` and
    :code:`IWA_ExternalDatabaseProperty` and
    migrated its data to the :ref:`app-yaml`.

    All APIs to load databases configuration from :code:`IApplication` and :code:`IEnvironment`
    has been removed. They were introduced to show the configuration in the legacy AdminUI.
    They were never intended to be used in your Axon Ivy Projects.

    **Rest Clients**

    During development, the project's Rest Clients are now stored in the
    :ref:`rest-clients.yaml <rest-clients-configuration>` file.

    We have dropped the System Database tables :code:`IWA_RestClient`,
    :code:`IWA_RestClientFeature` and :code:`IWA_RestClientProperty` and
    migrated its data to the :ref:`app-yaml`. 

    **Web Services**

    During development, the project's Web Service Clients are now stored in the
    :ref:`webservice-clients.yaml <webservice-clients-configuration>` file.

    We have dropped the System Database tables :code:`IWA_WebService`,
    :code:`IWA_WebServiceEndpoints`, :code:`IWA_WebServiceEnvironments`,
    :code:`IWA_WebServiceFeature`, :code:`IWA_WebServicePortType` and
    :code:`IWA_WebServiceProperty` and migrated its data to the :ref:`app-yaml`.
    We recommend that you :ref:`migrate your projects <migration-project>` and
    redeploy them to your engine.


Supporting Environments
-----------------------

|tag-ops-changed|

As we now :ref:`support Environments for our app.yaml
<advanced-config-env-overriding>`, the :ref:`app-yaml` will no longer override
all environment values. If you want to override a value for a specific
Environment, define this value in the :file:`_<environment>/app.yaml` file,
besides in the normal :file:`app.yaml` file.


Formats
-------

|tag-project-changed| |tag-project-auto-convert|

:ref:`Formats <configuration-formats>` are migrated from the so-called config
CMS to the :file:`config/formats.yaml` in your project. There is no more UI
Editor to edit those formats. If you migrate a running Axon Ivy Engine you need
to convert your projects and redeploy them again to make formats work.


Moved JSP pages from CMS to webContent
--------------------------------------

|tag-project-changed| |tag-project-auto-convert|

We now only support plain JSP pages in the webContent folder.
The project conversion copies the JSP pages from the CMS automatically to the webContent folder.


------------

Enterprise changes
******************

Cluster Name
------------

|tag-ops-changed| |tag-ops-wizard|

The name of a :ref:`cluster <cluster>` (Axon Ivy Engine Enterprise Edition) can now be configured 
in the :ref:`ivy.yaml <ivy-yaml>` file. Before, it was pre-configured in the :ref:`license <license>` 
file as :code:`server.cluster.name` property. 


JGroups Configuration
---------------------

|tag-ops-changed|

JGroups is the library we use to communicate between :ref:`cluster nodes <cluster>` (Axon Ivy Engine Enterprise Edition).
By default, you do not need to provide the :file:`jgroups.xml` file in the ``configuration``
folder anymore. Please remove your existing :file:`jgroups.xml` file from the ``configuration``
folder, if you have not made any changes to it; otherwise replace it with a standard JGroups 5.0
:file:`jgroups.xml` file and re-apply your changes to this file. :file:`jgroups.xml` files used
in earlier versions of the Axon Ivy Engine are not compatible with JGroups 5.0.


------------

More changes
************

Business Case Lifecycle
-----------------------

|tag-project-changed|

The lifecycle of the :ref:`business-case` has been simplified.
The first case is the business case and will always be the business case.
Additional cases will be sub-cases of the business case.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Previously, the first case (formerly, the initial case) has been copied as soon
  as new cases have been attached. The copy has then become the business case.

  This change also means that the business case can now have tasks as direct
  children and not only sub-cases.


Maven dependencies automatically packed into Axon Ivy archives
--------------------------------------------------------------

|tag-project-changed|

With 9.2, it is no longer necessary to copy maven dependencies to a specific
folder manually or with the Maven dependency plugin. However, the old way still
works.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  There is a new project-build-plugin version 9.2.1 with new execution
  goals, which are active by default:
  
    * :project-build-plugin-doc:`maven-dependency <9.2/maven-dependency-mojo.html>`: 
      Copy maven dependencies to :file:`lib/mvn-deps`
    * :project-build-plugin-doc:`maven-dependency-cleanup <9.2/maven-dependency-cleanup-mojo.html>`: 
      Remove :file:`lib/mvn-deps` folder.
  
  If you use the functions to **pack or export projects** in Axon Ivy Designer,
  the same happens as with the Maven plugin:
    
    * Your Maven dependencies are copied to the :file:`lib/mvn-deps` folder.

  If you used the **Maven dependency plugin** to copy your dependencies and you
  have made manual entries to the :file:`.classpath` file, you can remove those
  now and use the normal `Maven dependencies
  <https://maven.apache.org/pom.html#Dependencies>`__ descriptor. To remove
  those entries you can edit the :file:`.classpath` file directly or use the
  Axon Ivy Designer.

  **Before:**

  .. figure:: /_images/migration/9.2/mvn-deps-before.png

  **After:**

  .. figure:: /_images/migration/9.2/mvn-deps-after.png
  
  .. warning::
  
    Make sure that your project is converted to a Maven project!

    Only dependencies with the scope :code:`compile`, :code:`system` and
    :code:`runtime` are copied. To reduce the size of your Axon Ivy archive, make sure
    that your dependencies are configured correctly:

      * Mark test dependencies with the scope :code:`test`
      * `Exclude transient dependencies <https://maven.apache.org/pom.html#exclusions>`__ that are already delivered by the Axon Ivy core


Web integration tests simplified
--------------------------------

|tag-project-changed|

Selenium based integration test do no longer require huge manually crafted maven build pom.xml definitions. 
Existing ``pom.xml`` files for test projects must be manually simplified.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  We introduced an new lifecycle called `iar-integration-test <http://axonivy.github.io/project-build-plugin/release/9.1/lifecycle.html>`_ that basically binds all the plugin executions which are required to have a running in memory engine with your workflow app deployed.

  Here's how you make use of these simplified stack in the ``pom.xml`` of a test project:

  #. change the packaging from type ``iar`` to ``iar-integration-test``
  #. remove manually bound executions of the goals ``start-test-engine`` and ``stop-test-engine``
  #. consider removing bound deployment executions (goal ``deploy-to-engine`` or ``deploy-iar``). The new plugin lifecycle automatically takes all your IAR dependencies and deploys them.
  #. remove unittest jvm argLine configurations that propagate the start engine URL (``test.engine.url``) and test application hint (``test.engine.app``).
  #. verify that your web tests stick to a naming pattern which complies with the `maven-failsafe-plugin includes <https://maven.apache.org/surefire/maven-failsafe-plugin/integration-test-mojo.html#includes>`_. If not, rename the unit tests to end with ``IT`` (e.g. WebTestCustomerOnboardingIT.java)
  #. run the maven build to verify your changes.

  A `sample conversion <https://github.com/axonivy/project-build-examples/commit/f8c66777cdcbb469c0b6830b485b0427931963d5>`_ can be reviewed on Github. Another way to get a valid example is to use the new ``Axon Ivy Test Project`` wizard of the Axon Ivy Designer, select ``IvyWebTest`` as testing flavour and examine the created ``pom.xml`` in the newly created test project.



IvyScript Validation is Enabled by Default
------------------------------------------

|tag-project-changed| 

The :code:`ivy.script.validation.skip` compilation parameter of our Project Build Plugin is now set to :code:`false`.
This validates IvyScript code within Ivy processes by default during compilation. 
Therefore, errors and warnings related to the IvyScript code will be reported.

Read more about the compilation parameters and their default values here:
https://axonivy.github.io/project-build-plugin/release/9.4/compileProject-mojo.html#skipScriptValidation


Programmable Process Elements
-----------------------------

|tag-project-changed|

We changed the UI technology to build custom inscription editors for programmable process elements. Therefore, existing programmable elements,
built with AWT, will show deprecation warnings.

Affected elements are: :ref:`Program Start Event <process-element-program-start>`, 
:ref:`Program Interface (PI) Activity <process-element-pi>` and 
:ref:`Wait Intermediate Event <process-element-wait-program-intermediate-event>`

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    To make your custom editors compliant, change your internal Editor implementation to extend from 
    :public-api:`UiEditorExtension
    </ch/ivyteam/ivy/process/extension/ui/UiEditorExtension.html>`, and create widgets using the new 
    :public-api:`ExtensionUiBuilder
    </ch/ivyteam/ivy/process/extension/ui/ExtensionUiBuilder.html>`.

    Here are some valid examples:

      .. code:: java

        ui.label("seconds to wait").create()
        scriptEditor = ui.scriptField().requiredType(Integer.class).create();
        textArea = ui.textField().multiline().create();


Enabled JavaTime module for REST Clients by default
---------------------------------------------------

|tag-project-changed|

The standard JSON serialization feature for REST Clients is now aware of JavaTime objects,
such as ZonedDateTime, and will therefore optimize their JSON representation.
  
.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  E.g. ``java.time.ZonedDateTime`` will be serialized as a simple timestamp number, rather than a complex object structure.

  This change should not have any side-effects on existing clients since java.time objects,
  which did not have any special serializer features enabled, could not be serialized in a
  way that provides any value outside of the Java world.
  
  However, if you face any issues with the changed java.time object serialization, you may disable
  the JavaTime module by setting the REST Client property ``JSON.Module.JavaTime=false``


Using HttpAsyncClient for CXF web service calls
-----------------------------------------------

|tag-project-changed|

We switched the default connection implementation of CXF web service calls from
:code:`HttpURLConnection` to :code:`org.apache.http.nio.client.HttpAsyncClient`.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  The :code:`HttpAsyncClient` has improved performance and provides better support for NTML authentication.

  There are no known issues with :code:`HttpAsyncClient`, but if you still want to use
  :code:`HttpURLConnection` you can set the property :code:`use.async.http.conduit` to :code:`false` on the
  web service client configuration.


Default REST Client entity processing changed to buffered
---------------------------------------------------------

|tag-ops-changed|

Since we are using the *ApacheConnectorProvider* as the default provider for
Rest Clients, the default entity processing has changed from :code:`BUFFERED` to
:code:`CHUNKED`. This means that the HTTP header :code:`Content-length` is not
set which makes trouble with a lot of services. You can fix this by switching to
chunked processing again. Change your REST Client config and set the property
:code:`jersey.config.client.request.entity.processing` to :code:`CHUNKED`.


New Security System config Membership.UserMemberOfLookupAllowed
---------------------------------------------------------------

|tag-ops-changed|

We introduced a new security system configuration property :code:`Membership.UserMemberOfLookupAllowed`,
with :code:`true` as its default value. If your active directory or eDirectory does not allow to read the
:code:`memberOf` property of a user (groups of a user), you need to set this configuration property to :code:`false`.
With the introduction of this new property we removed the property :code:`Membership.UseUserMemberOfForUserRoleMembership`.


SSL Client Configuration
------------------------

|tag-ops-changed|

We made the life of Axon Ivy Engine administrators easier
with some simplifications in the SSL configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  We removed :code:`SSL.Client.UseSystemTruststore` and :code:`SSL.Client.UseCustomTruststore` in the :ref:`ivy-yaml`.
  It's not possible to configure them anymore. The system truststore of the JVM and the custom
  truststore of Axon Ivy are always active now. If you don't trust a certificate, simply
  remove it from the truststore.


HTTPS port disabled by default
------------------------------

|tag-ops-changed|

HTTPS port is now disabled by default on the Axon Ivy Engine, because you should
always terminate SSL on the reverse proxy (frontend webserver). If you need
HTTPS directly on the Axon Ivy Engine then you need to set the property
:code:`WebServer.HTTPS.Enabled` to :code:`true` in :ref:`ivy-webserver-yaml`.


Frontend config combined into BaseUrl
-------------------------------------

|tag-ops-changed| |tag-ops-wizard|

The configuration of the frontend URL in :ref:`ivy.yaml <ivy-yaml>` has been
simplified. You need to define now the :code:`BaseUrl` in your :file:`ivy.yaml`.
This property is a combination of the old frontend properties :code:`Frontend.Host`,
:code:`Frontend.Protocol` and :code:`Frontend.Port`.


Daily Jobs are only executed at configured time
-----------------------------------------------

|tag-ops-changed|

Daily jobs are now executed only at the configured time, even
if the Axon Ivy Engine was not running at the last execution time.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Daily jobs like sending **task summary emails** or **synchronizing users**
  are executed once a day. Prior to 9.1, if the Axon Ivy Engine was not running
  at the configured time, the daily jobs were executed on the next start of
  the Axon Ivy Engine. This lead sometimes to a heavy workload on start-up,
  making the Axon Ivy Engine unusable for other tasks.

  We changed this behavior in order to make the Axon Ivy Engine responsive straight after start-up.


context.xml and web.xml moved to configuration folder
-----------------------------------------------------

|tag-ops-changed| |tag-ops-wizard|

The :ref:`context-xml` and :ref:`web-xml` files are now in the global :file:`/configuration/` folder.
If you modified them you need to apply these changes to the files in the new location.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  Prior to 9.1 they were located under :file:`webapps/ivy/META-INF/context.xml` and :file:`webapps/ivy/WEB-INF/web.xml`.


Changes to the Axon Ivy System Database
---------------------------------------

|tag-ops-changed|

We have introduced a new table :code:`IWA_SecurityMember` that contains entries for all users and roles.
Migration to the new database schema is done automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  We also
  removed most of the foreign key references to the tables :code:`IWA_User` and :code:`IWA_Role` and replaced them with
  references to :code:`IWA_SecurityMember`. Entries in table :code:`IWA_SecurityMember` will not be deleted even if a
  corresponding user or role is deleted.

  During migration all users and roles that could not be mapped to existing entries (e.g. because they were
  deleted from the database) but still have an entry in a :code:`Name` column, will be added to the :code:`IWA_SecurityMembers`
  table, to ensure referential integrity. All security members added this way will be in state :code:`disabled`.

  Note that the following database definitions have changed:

  - In view :code:`IWA_TaskQuery` the naming of the activator columns has slightly changed, to match the Java
    API methods naming:

    - :code:`ActivatorName` and :code:`ActivatorDisplayName` change to :code:`OriginalActivatorName` and :code:`OriginalActivatorDisplayName`
    - :code:`CurrentActivatorName` and :code:`CurrentDisplayName` change to :code:`ActivatorName` and :code:`ActivatorDisplayName`

  - Column :code:`IWA_WorkflowEvent.UserId` now references :code:`IWA_SecurityMember.SecurityMemberId` and changes to
    a :code:`VARCHAR(210)` value.


System Database Cache Configuration and MBean (JMX)
---------------------------------------------------

|tag-ops-changed|

We have changed the System Database cache configuration. Instead of configuring a ``UsageLimit`` 
you can now configure a ``TimeToIdle`` (TTI) value. As an alternative, you can also configure a ``TimeToLive`` (TTL) value.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    The ``TimeToIdle`` value specifies how long the cache keeps an object after the *last* usage. Whereas
    the ``TimeToLive`` value specifies how long the cache keeps an object after the *first* usage.
    Have a look at ``configuration\ivy.cache.properties`` and replace all configured ``UsageLimit`` 
    values with appropriate ``TimeToIdle`` and/or ``TimeToLive`` values. By default, the ``TimeToIdle`` 
    value is 600 (10 minutes) and the ``TimeToLive`` is 0 (disabled).

    The ``usageLimit`` attribute on MBeans with name pattern ``ivy Engine:type=CacheClassPersistencyService,name=*,strategy=CacheAllRemoveUnused``
    has been removed. Instead, we introduced the ``timeToIdle`` and ``timeToLive`` attributes.


------------

Deprecations and Removals
*************************

Environments
------------

|tag-project-changed| |tag-project-deprecated|

The environment editor and all environment aware editors like the Web Service
Client Editor, the REST Client Editor, and the Database Editor are not
environment aware anymore. Learn how you can define :ref:`environment aware
configurations <configuration-environments>`.

Read more here about the future of environments:
https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term


Overriding
----------

|tag-project-deprecated|

We deprecated the :ref:`case_scope` project overrides in favor of :ref:`strict_overriding`.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    If your application uses Overrides. You should migrate to :ref:`strict_overriding`.
    Define the customization project in your :ref:`app.yaml <strict_overriding_config>`.

    .. code:: yaml
    
      OverrideProject: com.acme.solution:MyCustomerAdaption


Custom Application Properties API deprecated
--------------------------------------------

|tag-project-deprecated|

The Public-API's :public-api:`ICustomProperties
</ch/ivyteam/ivy/application/property/ICustomProperties.html>`, 
:public-api:`ICustomProperty
</ch/ivyteam/ivy/application/property/ICustomProperty.html>` and
:public-api:`ICustomPropertyProvider
</ch/ivyteam/ivy/application/property/ICustomPropertyProvider.html>` are
deprecated and will be removed in the near future. Please use the
:public-api:`Ivy.var() </ch/ivyteam/ivy/environment/Ivy.html#var()>` API to
create application variables.


AJP support is deprecated
-------------------------

|tag-ops-deprecated|

AJP is used to integrate the Axon Ivy Engine with Microsoft IIS  or Apache HTTP
as :ref:`reverse proxy <reverse-proxy>`. We still support AJP, but you should
migrate to a more modern URL rewrite approach based on HTTP/HTTPS.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  AJP's days are numbered. It is not getting developed any further and prevents
  the use of new web features such as websockets. We highly recommend migrating
  to a modern URL rewrite approach based on HTTP/HTTPS. In future versions
  of the Axon Ivy Engine, you won't be able to use AJP.

  If you are using Microsoft IIS as your reverse proxy, proceed as follows:

  #. Open the IIS administration interface.
  #. Delete the virtual directory named :guilabel:`ivy`. It is located under
     :guilabel:`Default Website`.
  #. Follow the :ref:`instructions here <reverse-proxy-iis>` on how to integrate
     Microsoft IIS with a modern URL rewrite.

  If you are using Apache HTTP Server as your reverse proxy you need to
  :ref:`reconfigure Apache HTTP <reverse-proxy-apache>`.


System Database
---------------

|tag-ops-changed| |tag-ops-deprecated|

Dropped support for outdated System Database versions.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    **Oracle Database**

    The support for Oracle Database 12c, 18c is removed as Oracle support has ended for these versions.
    If using Oracle Database we recommend using version 19c as this is the long term support version.

    **Postgres Database**

    The support for Postgres Database 9 and 10 is removed as Postgres support has ended for this version.
    We recommend using Postgres 14 as this is the latest and longest supported version.

    **MySQL Database**

    The support for MySQL 5.6 is removed as MySQL support has ended for this version.
    We recommend upgrading to MySQL 8.0 as this is the latest and longest supported version.

    **MariaDB Database**

    The support for MariaDB 10.0 - 10.2 is removed as they are not supported anymore.
    We recommend upgrading to MariaDB 10.6 as this is the long term support version.


Windows Server
--------------

|tag-ops-changed| |tag-ops-deprecated|

The support for Windows Server 2008 R2 is removed as Microsoft support has ended for this version.
If using Windows Server we recommend using version 2022 as this is the long term support version.


Global deploy.options.yaml removed
----------------------------------

|tag-ops-removed|

The :file:`deploy.options.yaml` in the deployment directory can no longer be used to influence deployments.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  We think that it made deployments unnecessary hard to track and that administrators are better off with 
  the :ref:`deployment options <deployment-options>` packed as part of the application ZIP or specific  YAML per artifact.


Configuration deployment options removed
----------------------------------------

|tag-ops-removed|

Now that most of the app configuration is defined in  YAML files, the
:code:`configuration` deployment options are disregarded and can be removed from your
:ref:`deploy.options.yaml <deployment-options>` file.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    The following options are deprecated and can be removed:

    .. code:: yaml
    
      configuration:
        overwrite: false               # [false], true
        cleanup: DISABLED              # [DISABLED], REMOVE_UNUSED, REMOVE_ALL


Legacy jTDS driver for MS SQL Server dropped
--------------------------------------------

|tag-ops-removed| |tag-project-removed|

The legacy jTDS driver have been dropped. You need
to switch to the official Microsoft JDBC Driver for
the System Database and external databases if you
still have used the jTDS driver.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  **System Database**

  #. Go to :ref:`Engine Cockpit / System Database <engine-cockpit-systemdb>`
  #. Choose :guilabel:`Driver` **Microsoft SQL Server**
  #. Click :guilabel:`Check Connection`
  #. Click :guilabel:`Save`
  #. Restart Axon Ivy Engine

  **External Databases**
  
  #. Go to :ref:`Engine Cockpit / External Databases <engine-cockpit-database>`
  #. Edit all **External Databases** with :guilabel:`Driver` **net.sourceforge.jtds.jdbc.Driver**
  #. Choose **com.microsoft.sqlserver.jdbc.SQLServerDriver** as :guilabel:`Driver`
  #. Save configuration


VisualVM Plugin no longer delivered with the Axon Ivy Engine
------------------------------------------------------------

|tag-ops-removed|

The Axon Ivy Visual VM plugin to monitor your Axon Ivy Engine is now available
in the :dev-url:`Axon Ivy Market </market/visualvm-plugin>`. It is not bundled
with the Axon Ivy Engine in the directory :file:`[engineDir]/misc/visualvm/`
anymore.


Drop AXIS Technology for Web Service Client
-------------------------------------------

|tag-project-removed| |tag-project-auto-convert|

With Axon Ivy 7.1 we have introduced the CXF Web Service Client as a super-fast,
secure, and future-proof technology to call SOAP Web Services. AXIS has been
making more and more trouble. To keep the quality of Axon Ivy on a high level we
need to remove AXIS. You have to convert all Web Service Clients based on AXIS
(1+2) to CXF in the Axon Ivy Designer.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    The Designer comes with a :ref:`project converter <project-convert-wizard>`
    to convert your Axis2 clients automatically to CXF. Additionally, a quick fix is available 
    on the Axis error marker.

    The detailed steps to migrate from AXIS clients to CXF are outlined here:
    https://community.axonivy.com/d/199-migrate-from-axis2-webservice-to-cxf


Non-public API Email
--------------------

|tag-project-removed| 

If you have used some non-public email classes like ``EmailSetupConfiguration``,
``EmailSetupProviderUtil`` or ``SimpleMailSender`` then you need to touch your
project because they no longer exist. We are currently building a public API for
mail. It is already available but not officially public yet:


.. code:: java

  import ch.ivyteam.ivy.mail.MailClient:
  import ch.ivyteam.ivy.mail.MailMessage;

  try (var client = MailClient.newMailClient()) {
    var message = MailMessage.create()
      .to("my.good.old.friend@neighborhood.com")
      .subject("Beer!")
      .textContent("Do you feel like having a beer on Friday?")
      .toMailMessage();
    client.send(message);        
  }


Workflow Event Log API removed
------------------------------

|tag-project-removed|

The Workflow Event Log API has been deprecated in Axon Ivy 8.0
and has been removed now. As it was never Public API, most projects will
not be affected.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  The API consists of the following methods, interfaces and enums:

    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.findEventLog(...)`
    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.createEventLog(...)`
    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.createEventLogPropertyFilter(...)`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogDescription`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogProperty`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogStatus`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLog`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLogCase`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLogTask`


Removed StartSignalEventElementQuery
------------------------------------

|tag-project-removed|

There used to be an API to create a query for StartSignalEventElements (StartSignalEventElementQuery). As the
StartElements are no longer part of the System Database, we removed this API. If you had this API in usage, 
please change to the simpler methods *all()*, *matches(pattern)* or *contains(part)*.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Replace usages of:
  
    * :code:`Ivy.wf().signals().receivers().createStartSignalQuery()`
    
  With one of:
  
    * :code:`Ivy.wf().signals().receivers().all()`
    * :code:`Ivy.wf().signals().receivers().matches(pattern)`
    * :code:`Ivy.wf().signals().receivers().contains(part)`


Removed support for CMS Page
----------------------------

|tag-project-removed| 

We no longer support CMS pages. Both in Axon Ivy Designer and
on Axon Ivy Engine. You will need to manually re-implement them
to an alternative. For example as :ref:`HTML Dialog (JSF) <html-dialogs>` or
as :ref:`static JSF page <static-jsf-pages>`. We still support :ref:`plain JSP pages <user-interface-web-page>`
which would be a non-future alternative.


Removed support for Macro expansion in RTF documents
----------------------------------------------------

|tag-project-removed| 

RTF is not a common format anymore. We have supported macro
expansion in RTF documents from CMS. This is no longer working.
To generate documents with placeholders, use other well-maintained 
components like the DocFactory.


Call & Wait intermediate event
------------------------------

|tag-project-removed|

The Call&Wait intermediate process element is no longer supported. 

It will be automatically removed from existing processes where it has been present.

In most cases the 'call' aspect implementation can be replaced with a normal 
:ref:`process-element-pi` which subsequently is connected 
to a :ref:`process-element-wait-program-intermediate-event` element 
that implements the 'wait' aspect.


Subversion Client unplugged from Axon Ivy Designer
--------------------------------------------------

|tag-project-removed|

We removed the Subversion client Subclipse from the Axon Ivy Designer. It can still
be easily installed through the Eclipse Marketplace in the  Designer.
Go to :menuselection:`Help --> Eclipse Marketplace`, search for **Subclipse** and install it.


Special handling for Informix as external third-party database
--------------------------------------------------------------

|tag-project-removed|

Informix is a database management system and can be integrated with Axon Ivy
like any other database system. We have removed any special handling for
Informix as this is no longer necessary. If you are using Informix and have any
problems, please contact us.


------------

.. include:: _tagLegend.rst    
