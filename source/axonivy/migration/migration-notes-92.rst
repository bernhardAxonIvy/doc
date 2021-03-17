.. _migrate-91-92:

Migrating from 9.1 to 9.2
=========================


.. _migrate-91-92-project-version:

New project version
*******************

|tag-ops-changed|

Due to the migration of the :ref:`Global Variable
<migrate-91-92-globalvar-migration>`, we introducing a new project version
:code:`92000`. If you want to deploy a project to a |ivy-engine| 9.2, your
project must be in this version. If you have a running project, it should still
be able to run, but :ref:`we recommend migrating your projects
<migration-project>` to the new version and redeploying them to your engine.


Business Case Lifecycle
***********************

|tag-project-changed|

The lifecycle of the :ref:`business-case` has been simplified.
The first case is the business case and will stay the business case forever.
Additional cases will be sub cases of the business case.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Previously the first case (formerly initial case) was copied as soon
  as new cases were attached. The copy was then the business case.

  This change also means that the business case can now have tasks as direct
  children and not only sub cases as children.


New app.yaml locations
**********************

|tag-ops-changed|

Shifting towards highly configurable ivy projects we needed to move the :file:`app.yaml` to a new location
in the Axon Ivy Engine.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    If the new engine is aware of the existing applications, the :file:`app.yaml`
    files should be migrated automatically. The new locations look like the following:

    +-------------------------------------------------------+--------------------------------------------------------------------------+
    | Old Location                                          | New Location                                                             |
    +=======================================================+==========================================================================+
    | /[engineDir]/applications/**myApplication**/app.yaml  | /[engineDir]/applications/**myApplication**/config/app.yaml              |
    +-------------------------------------------------------+--------------------------------------------------------------------------+
    | /[engineDir]/configuration/app-**myApplication**.yaml | /[engineDir]/configuration/applications/**myApplication**/app.yaml       |
    +-------------------------------------------------------+--------------------------------------------------------------------------+

    If you deploy an :file:`app.yaml` in full application zip, it must be placed
    now in the subfolder :file:`config`. For compatibility reasons the old
    legacy place in the root of the full application deployment zip is still
    supported at the moment.


Rename Global Variables in app.yaml
***********************************

|tag-project-changed| |tag-ops-changed|

The :code:`GlobalVariables` in the :ref:`app-yaml` are renamed to
:code:`Variables`. This is done automatically by the system database migration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    Old :file:`app.yaml`:
    
    .. code-block:: yaml
    
      GlobalVariables:
        myVariable: value

    New :file:`app.yaml`:

    .. code-block:: yaml

      Variables:
        myVariable: value


.. _migrate-91-92-globalvar-migration:

Global Variables in yaml files
******************************

|tag-ops-changed| |tag-project-changed|

Global Variables are stored in new locations. While developing the project
the Variables are now stored in the :ref:`variables.yaml <variables>`. On the
|ivy-engine| Global Variables have been moved from the System Database to the
:ref:`app-yaml`. Even so, database and project migrations do the conversion from
the old to the new format for you.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    **Project:**

    Global Variables are no longer defined using the :ref:`configuration-editor`
    but by the :ref:`variables.yaml <variables-yaml>` within your project.

    By running the latest :ref:`migration-project` in your designer, your existing
    Global Variables are automatically migrated into the :file:`variable.yaml` files.

    **Operation:**

    We have dropped the system database table :code:`IWA_GlobalVariables` and
    migrated this data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine. If you used you :ref:`app-yaml` to override your Global Variables,
    please be also informed about the change:
    :ref:`migrate-91-92-app-env-support`.


.. _migrate-91-92-app-env-support:

App yaml with environment support
*********************************

|tag-ops-changed|

As we now :ref:`support Environments for our app.yaml
<advanced-config-env-overriding>`, the :ref:`app-yaml` will no longer override
all environment values. If you want to override a value for a specific
environment, define this value in the :file:`_<environment>/app.yaml` file
besides the normal :file:`app.yaml` file.


Custom Application Properties API deprecated
********************************************

|tag-project-deprecated|

The Public-API's :public-api:`ICustomProperties
</ch/ivyteam/ivy/application/property/ICustomProperties.html>`, 
:public-api:`ICustomProperty
</ch/ivyteam/ivy/application/property/ICustomProperty.html>` and
:public-api:`ICustomPropertyProvider
</ch/ivyteam/ivy/application/property/ICustomPropertyProvider.html>` are
deprecated and will be removed in near future. Please use the
:public-api:`Ivy.var() </ch/ivyteam/ivy/environment/Ivy.html#var()>` API to
create application variables.


Upgrade Log4j 1 to Log4j 2
**************************

|tag-ops-changed|

Logs are written now with Log4j 2 which has
a new configuration format. If you made
any custom logging configuration you need
to adapt these changes to the new logging
configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  The legacy logging configuration file
  :file:`[engineDir]/configuration/log4jconfig.xml` is no longer in charge. You
  need to make all your custom logging configuration in
  :file:`[engineDir]/configuration/log4j2.xml`. Read more about customizing the
  :ref:`logging`.


HTTPS port disabled by default
******************************

|tag-ops-changed|

HTTPS port is now disabled by default on the Axon Ivy Engine, because you should
always terminate SSL on the reverse proxy (frontend webserver). If you need
HTTPS directly on the Axon Ivy Engine then you need to set the property
:code:`WebServer.HTTPS.Enabled` to :code:`true` in :ref:`ivy-webserver-yaml`.



Frontend config combined into BaseUrl
*************************************

|tag-ops-changed|

The configuration of the frontend url in :ref:`ivy.yaml <ivy-yaml>` has been
simplified. You need to define now the :code:`BaseUrl` in your :file:`ivy.yaml`.
Combined out of the old frontend properties :code:`Frontend.Host`,
:code:`Frontend.Protocol` and :code:`Frontend.Port`.



AJP support is deprecated
*************************

|tag-ops-deprecated|

AJP is used to integrate the Axon Ivy Engine with Microsoft IIS  or Apache http
as :ref:`reverse proxy <reverse-proxy>`. We still support AJP but you should
migrate to modern URL rewrite approach based on HTTP/HTTPS.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  AJP's days are numbered. It is not being further developed and thus prevents
  the use of new web features such as websockets. We highly recommend to migrate
  to modern URL rewrite approach based on HTTP/HTTPS, because in future versions
  of Axon Ivy Engine you won't be able to use AJP.

  If you are using Microsoft IIS as your reverse proxy proceed as follows:

  #. Open the IIS administration interface
  #. Delete the virtualy directory named :guilabel:`ivy` which is
     under :guilabel:`Default Website`.
  #. Follow the :ref:`instructions <reverse-proxy-iis>` how to integrate Microsoft
     IIS with modern URL rewrite.

  If you are using Apache http as your reverse proxy you need to
  :ref:`reconfigure Apache http <reverse-proxy-apache>`.


SSL Client Configuration
************************

|tag-ops-changed|

We made the life of Axon Ivy Engine administrators easier
due simplification of the SSL configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  We removed :code:`SSL.Client.UseSystemTruststore` and :code:`SSL.Client.UseCustomTruststore` in the :ref:`ivy-yaml`.
  It's not possible to configure them anymore. The system trustore of the JVM and the custom
  truststore of ivy are always active now. If you don't trust a certificate
  remove them out of the specific truststore. 



Workflow Event Log API removed
******************************

|tag-project-removed|

The Workflow Event Log API has been deprecated in Axon Ivy 8.0
and has been removed now. It was never Public API, so most project should
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



Legacy jDTS driver for MS SQL Server dropped
********************************************

|tag-ops-removed| |tag-project-removed|

The legacy jDTS driver have been dropped. You need
to switch to the official Microsoft JDBC Driver for
the System Database and external databases if you
still have used the jDTS driver.

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
  
  #. Go to :ref:`Engine Cockpit / External Databases <engine-cockpit-external-database>`
  #. Edit all **External Databases** with :guilabel:`Driver` **net.sourceforge.jtds.jdbc.Driver**
  #. Choose **com.microsoft.sqlserver.jdbc.SQLServerDriver** as :guilabel:`Driver`
  #. Save configuration


Remove support for MySQL 5.5 as system database
***********************************************

|tag-ops-removed|

MySQL 5.5 has been released in 2010 and is end of life. We do no longer support
for MySQL 5.5. We recommend to upgrade to MySQL 8.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  If you use mysql as system database or as external database then you may have
  configured :code:`com.mysql.jdbc.Driver` as driver. MySQL has deprecated
  this driver and you should change it to :code:`com.mysql.cj.jdbc.Driver`. The
  old driver still works.



Coerce to zero in JSF
*********************

|tag-project-changed|

We use now the JSF standard and do not coerce to zero anymore
for number value objects like :code:`java.lang.Integer` or
:code:`java.lang.Double`.
  
.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  We use now the JSF standard for :code:`org.apache.el.parser.COERCE_TO_ZERO` which is now
  by default to :code:`false`. This means that number value objects like :code:`java.lang.Integer` or
  :code:`java.lang.Double` are no longer coerced to zero (0) if they are :code:`null`. They will
  stay :code:`null`. Be aware that in ivy script auto initialization happens if its :code:`null`
  which will turn the value still to :code:`0`. This does not effect primitive numbers like
  :code:`int` or :code:`double`. There is widely read article in the web about this topic:
  https://balusc.omnifaces.org/2015/10/the-empty-string-madness.html

  You are still able to set :code:`org.apache.el.parser.COERCE_TO_ZERO` to :code:`true` in
  :ref:`jvm-options`. 



Enabled JavaTime module for Rest Clients by default
***************************************************

|tag-project-changed|

The standard JSON serialization feature for Rest Clients is now aware of JavaTime objects,
such as ZonedDateTime, and will therefore optimize their JSON representation.
  
.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  E.g. ``java.time.ZonedDateTime`` will be serialized as a simple timestamp number, rathern than a complex object structure.

  This change should not have any side-effects on existing clients since java.time objects
  which did not have any special serializer features enabled could not be serialized in way that provides any
  value outside of the java world.
  
  However, if you face any issues with change java.time object serialization. You may disable
  the JavaTime module by setting the RestClient property ``JSON.Module.JavaTime=false``



Removed StartSignalEventElementQuery
************************************

|tag-project-removed|

There was an API to create a Query for StartSignalEventElements (StartSignalEventElementQuery), as the
StartElements are no longer part of the System Database, we removed this API. If you had this API in usage, 
please change to the simpler methods *all()*, *matches(pattern)* or *contains(part)*.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Repalce usages of:
  
    * :code:`Ivy.wf().signals().receivers().createStartSignalQuery()`
    
  With one of:
  
    * :code:`Ivy.wf().signals().receivers().all()`
    * :code:`Ivy.wf().signals().receivers().matches(pattern)`
    * :code:`Ivy.wf().signals().receivers().contains(part)`



Maven dependencies automatically packed to ivy archives
*******************************************************

|tag-project-changed|

With 9.2, it is no longer necessary to copy maven dependencies to a specific
folder manually or with the maven dependency plugin. However, this `old way <https://answers.axonivy.com/questions/2089/add-library-with-pom-xml>`__
still works.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  There is a new project-build-plugin version 9.2.1, with to new execution
  goals, which are active per default:
  
    * :project-build-plugin-doc:`maven-dependency <9.2/maven-dependency-mojo.html>`: 
      Copy maven dependencies to :file:`lib/mvn-deps`
    * :project-build-plugin-doc:`maven-dependency-cleanup <9.2/maven-dependency-cleanup-mojo.html>`: 
      Remove :file:`lib/mvn-deps` folder.
  
  When you use the functions to **pack or export project** projects in the
  |ivy-designer|, the same happens as with the plugin:
    
    * Your maven dependencies are copied to the :file:`lib/mvn-deps` folder.

  If you used the **maven dependency plugin** to copy your dependencies and you
  have made manual entries to the :file:`.classpath` file, you can remove those
  now and use the normal `maven dependencies
  <https://maven.apache.org/pom.html#Dependencies>`__ descriptor. To remove
  those entries you can edit the :file:`.classpath` file directly or use the
  |ivy-designer|.

  **Before:**

  .. figure:: /_images/migration/9.2/mvn-deps-before.png

  **After:**

  .. figure:: /_images/migration/9.2/mvn-deps-after.png
  
  .. warning::
  
    Make sure that your project is converted to a maven project!

    Only dependencies with the scope :code:`compile`, :code:`system` and
    :code:`runtime` are copied. To reduce the size of your ivy archive, make sure
    that your dependencies are configured correctly:

      * Mark test dependencies with the scope :code:`test`
      * `Exclude transient dependencies <https://maven.apache.org/pom.html#exclusions>`__ which are already delivered by the core


.. include:: _tagLegend.rst
