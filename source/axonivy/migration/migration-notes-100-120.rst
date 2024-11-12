.. _migrate-100-120:

Migrating from 10.0 to 12.0
===========================

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 12.0.


------------

Updates
*******

Java 21
-------

|tag-project-changed| |tag-project-auto-convert| |tag-ops-changed|

We updated Java to version 21:

- Convert your Axon Ivy projects to the latest version to use the new Java 21
  features. 
- You may have to update third-party libraries that do not yet support Java 21
  to newer versions.
- Use Java 21 to run your Maven project builds.
- Use an `Adoptium / Eclipse Temurin JDK or JRE
  <https://adoptium.net/temurin/releases?version=21>`_ to run Axon Ivy on Linux
  or macOS.


OpenSearch
----------

|tag-ops-changed|

We switch from Elasticsearch to OpenSearch. If you have used an external
Elasticsearch server you need to switch to OpenSearch.

All configuration keys in :code:`ivy.yaml` starting with :code:`Elasticsearch`
starts now with :code:`SearchEngine`. When migrating the Axon Ivy Engine this
will be automatically done.


Primefaces 13
-------------

|tag-project-changed| |tag-project-auto-convert| 

We have updated the `Primefaces JSF <https://www.primefaces.org/>`_ library from
version 11 to version 13. For details have a look at the `Primefaces Migration
Notes
<https://primefaces.github.io/primefaces/13_0_0/#/../migrationguide/migrationguide>`_


.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    There is a new :ref:`Project Conversion<project-convert-wizard>` available that
    updates projects from Primefaces 11 to 13. The following is automatically
    converted:

    - Rename ``p:repeat`` to ``ui:repeat`` because ``p:repeat`` was removed
    - Style classes from `PrimeFlex <https://primeflex.org/>`_ 2 to `PrimeFlex
      <https://primeflex.org/>`_ 3
    - Stylesheet primeflex-2.min.css to primeflex-3.min.css
    - Add missing attributes ``layout="tabular"`` and ``columns="0"`` for component
      ``p:panelGrid``
    - Method ``contentLength`` of class ``DefaultStreamedContent.Builder`` takes a
      Long argument instead of an Integer argument
    - Convert value of attribute ``height`` of tag ``p:textEditor`` from type
      Integer to String (e.g., ``200`` to ``200px``)    

    The component ``p:chart`` was removed. You have to manually migrate to `Chart.js
    <https://primefaces.github.io/primefaces/13_0_0/#/components/charts>`_.

    Beyond what is documented in the Primefaces Migration Notes we faced the
    following additional problems when we migrated projects:

    - ``p:selectItems`` with a ``value`` attribute of type ``List<SelectItem>`` and
      attributes ``var="filter"`` and ``itemLabel=#{filter}`` displays wrong labels.
      You can remove the attributes ``itemLabels`` and also ``itemValue`` as the
      ``SelectItem`` object already defines the label and value of the items.
    - ``p:commandButton`` with an ``ajax="false"`` attribute sometimes does not work
      in ``p:confirmDialog``. You can remove the ``ajax`` attribute since AJAX
      should work now in ``p:confirmDialog``.


------------

Engine changes
**************


Docker Image
------------

|tag-ops-changed|

The file paths of the Axon Ivy Engine Docker image has changed. The Axon Ivy
Engine is now installed in the root directory :file:`/ivy` and no longer under
:file:`/usr/lib/axonivy-engine`. Also, all symlinks like
:file:`/etc/axonivy-engine` are no longer provided. The full `changelog
<https://github.com/axonivy/docker-image/blob/master/CHANGELOG.md>`_ of the
docker image is available here.


Mobile Workflow REST API
------------------------

|tag-ops-changed|

We no longer use the term *mobile* for the :ref:`Workflow REST API
<workflow-api>`. Therefore we renamed the configuration property in
:ref:`ivy.yaml <ivy-yaml>` from :code:`REST.Servlet.MobileWorkflow.API` to
:code:`REST.Servlet.API` and this REST API is now by default enabled.


URL changes
-----------

|tag-ops-changed|

We now emphasize the security context and manage all resources under the
security context. We add the name of the security context as a prefix to all
URLs, e.g., :code:`/{securityContext}/{myApp}/*`.

As standard, the :code:`default` security context is made available under root:
:code:`/{myApp}/*`

The core REST endpoints now run directly under the security context and no
longer under the application, for example :code:`/{myApp}/workflow/tasks` has
been changed to :code:`/{securityContext}/workflow/tasks`.

You need to check your routing settings in the reverse proxy configuration if
you only allow certain paths.


Mail Notifications
------------------

|tag-ops-changed| 

The notification concept has been completely revised and standardized so that
notifications can be sent via different channels. :ref:`Read more about this
here <notification>`. Here are the most important changes:

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Detail**

  .. container:: detail 

    - Mail notifications can no longer be customized via custom mail standard
      processes. There is a templating concept for this. You may have used a custom
      mail process to suppress notifications. This can now be done directly in the
      :ref:`process <process-element-tab-task-notification>` with :code:`Suppress
      Notification`.
    - There is still a notification for a new task assignment. There is no longer a
      daily task summary mail.
    - In addition to the mail channel, there is also a web and Microsoft Teams
      channel.
    - If a user has manually enabled new task notification mails, this setting will
      be automatically migrated. However, the mail channel is disabled by default
      and needs to be enabled so that users get new task notification mails in the
      :ref:`engine cockpit <engine-cockpit-notification-channels>`.


Application Path
----------------

|tag-ops-changed| |tag-ops-wizard|

With Axon Ivy 7.0 and earlier you were able to define the installation path of
an application. The Admin UI allowed this input on the wizard to create a new
application. This path was stored in the Axon Ivy System Database
(:code:`IWA_Application.FileDirectory`). Since Axon Ivy 8.0, new applications will be
stored under the configurable path :code:`Data.AppDirectory` in :ref:`ivy.yaml
<ivy-yaml>` which points by default to :code:`applications`.

We now have removed the legacy support for :code:`IWA_Application.FilePath` and
automatically move the application to the correct place during migration.


Microsoft SQL Server Database
-----------------------------

|tag-ops-changed|

The JDBC driver for Microsoft SQL Server or Microsoft SQL Server database has
been upgraded and now connects to the database with SSL by default. To change
the behavior back to non SSL as in previous versions set the connection property
``encrypt`` to ``false``. Because this is the driver's new default behavior,
both System Database and External Database configurations will be affected by
this change.


Data.WorkDirectory no longer configurable in ivy.yaml
-----------------------------------------------------

|tag-ops-changed| 

The :code:`Data.WorkDirectory` is the temporary directory which Axon Ivy will
use to create temporary files. :code:`Data.WorkDirectory` can no longer be
configured in :file:`ivy.yaml`. You need to configure it in :file:`jvm.options`
as :code:`ivy.Data.WorkDirectory`. Or as operation system environment variable
:code:`IVY_DATA_WORKDIRECTORY`.


SSO per security context
------------------------

|tag-ops-changed| |tag-ops-wizard|   

Now we support a separate Single Sign-On (SSO) for each security context. With
this change, the default SSO no longer exists at the :file:`ivy.yaml` root level
and will be moved to each security context individually.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Example**

  .. container:: detail 

    For example:

    .. code-block:: yaml
          
      SSO:
        Enabled: true
        UserHeader: X-Forwarded-User
      SecuritySystems:
        Name1:
          UrlPath: abc1

    will be migrated to:

    .. code-block:: yaml
          
      SecuritySystems:
        default:
          SSO:
            Enabled: true
            UserHeader: X-Forwarded-User
        Name1:
          UrlPath: abc1
          SSO:
            Enabled: true
            UserHeader: X-Forwarded-User


------------

Ivy Project changes
*******************


WebPage activity
----------------

|tag-project-removed|

The WebPage activity process element is no longer supported. It will be
automatically removed from existing processes where it has been present. In most
cases, it can be replaced with normal :ref:`html-dialogs`.


Programed elements
------------------

|tag-project-deprecated|

Editable Program Start, Intermediate Wait, and Program Activity bean implementors
have to adjust code in order to keep the Editor inscription functional.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Detail**

  .. container:: detail 

    Namely, we have deprecated the methods to read and write configuration within the
    Editor implementation. It is no longer the Editor implementor's responsibility,
    to maintain the element configuration values. Therefore implementors can remove
    overwritten methods to read and write configurations, but must instead link
    their UI widgets, to the configuration field by passing its name as input. You
    can adapt this change from our `Example Migration
    <https://github.com/axonivy-market/kafka-connector/pull/11/files#diff-593779ded8c9bd4c468c5bb873996d599871d68797d228a1d42709421ec0c6cdR230>`_
    .

    Furthermore, the bean runtime should be adapted, to use the new
    :public-api:`initialize(IProcessStartEventBeanRuntime runtime, ProgramConfig config) </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html#initialize(ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime,ch.ivyteam.ivy.process.extension.ProgramConfig)>`
    method. Configuration parameter values can then be consumed at runtime from the
    new `getConfig(String)` APIs.

    - :public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
    - :public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
    - :public-api:`IProcessExtension </ch/ivyteam/ivy/process/extension/IProcessExtension.html>`

    Until your editable beans are migrated, the old configurations are still
    functional at runtime. Note though, that Inscription Editors won't work
    correctly until you migrate your API calls to the latest
    :public-api:`ExtensionUiBuilder </ch/ivyteam/ivy/process/extension/ui/ExtensionUiBuilder.html>`.

    **AutoProcessStarterEventBean**

    The process start event bean
    :code:`ch.ivyteam.ivy.process.eventstart.beans.AutoProcessStarterEventBean` has
    been deprecated. Instead use the new
    :code:`ch.ivyteam.ivy.process.eventstart.beans.TimerBean`.  


Variables
---------

|tag-project-changed| |tag-project-auto-convert| 

We are no longer supporting dots in the keys of :file:`variables.yaml`. All keys
containing dots will be migrated to corresponding mappings.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Detail**

  .. container:: detail 

    For example:

    .. code-block:: yaml
          
      Variables:
        connector.user: user
        connector.password: password

    will be migrated to:

    .. code-block:: yaml
          
      Variables:
        connector:
          user: user
          password: password

    In rare cases, conflicts can occur during migration. In that case, a comment is
    added to the :file:`variables.yaml` with the lines that would result in such a
    conflict. These need to be fixed manually.

    For example:

    .. code-block:: yaml
          
      Variables:
        connector.user: user
        connector.user.password: password

    will be migrated to:

    .. code-block:: yaml
          
      Variables:
        connector:
          user: user
          # FIXME: user.password: password




------------

More changes
************


Axon Ivy Designer for Mac
-------------------------

The Axon Ivy Designer for Mac is in beta. The reason for this is the integrated
SWT browser as part of Eclipse, which only works sparsely.


Maven 3.9
---------

|tag-project-changed| 

The `project-build-plugin <https://axonivy.github.io/project-build-plugin>`__
now requires Maven 3.9 to build Axon Ivy Projects. You need to install Maven 3.9
on your :ref:`CI/CD environment <continuous-integration>` and also on your
machine, if you execute Maven builds locally. Maven can be installed according
to these `instructions <https://maven.apache.org/install.html>`__.


Preference pages
---------------------------

|tag-project-changed|

The Email and SSL preference pages to set engine settings during development
have been removed from the Designer. In the older version they were accessible under
the menu: `Ẁindow` > `Preferences` > `Axon Ivy`.

As a replacement, the Engine-Cockpit is now shipped with the Designer. The
Engine-Cockpit can be reached by clicking on the 'Developer' menu on top of the
included Web-Browser.

Within you can open the :ref:`engine-cockpit-system-configuration` and filter
for `Mail` to inspect and set configurable values. Furthermore, there is a new
view to define your :ref:`engine-cockpit-ssl`.








------------

Deprecations and Removals
*************************

Axon Ivy Environments
---------------------

|tag-project-changed| |tag-project-removed| |tag-ops-wizard|

Axon Ivy Environments have been removed, finally. We detailed the reason for this in our 
`blog post <https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term>`_.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Detail**

  .. container:: detail 

    |ivy| Environments have been used for **staging** and in some rare cases for **multi-tenancy**. If you have
    used them for staging, the initial use case, then you shouldn't face any issues.
    The migration wizard will merge the configuration from the active environment to the main :ref:`app-yaml`
    If you have used it for multi-tenancy, then you need to manually migrate each tenant to either its own
    |ivy-engine| or its own |ivy| Application. Read more about this topic in :ref:`multi-tenancy`.

    It has been possible to set the Environment on application, session, and case level. All
    of these APIs and configurations have been removed completely. Using Environments, you have been able to define
    specific configuration sets for:

    - :ref:`variables`
    - :ref:`rest-clients-configuration`
    - :ref:`webservice-clients-configuration`
    - :ref:`database-configuration`
    - :ref:`business-calendar`

    You have been able to define the cache on the Environment level using the :ref:`process-element-tab-data-cache`.
    This will be migrated automatically to the application level.

    For :ref:`unit-testing`, you have been able to set the current Environment on the :code:`AppFixture`. 
    This has been removed, too. Now, use the :code:`AppFixture#config`` API to define the exact configuration which you 
    like to override in your test case.

    |ivy| Files have the Environment name in their path. The existing files all stay at their current path. 
    All new files will be saved in the :code:`Default` Environment. 
    Later on, we intend to redesign the path of files completely to remove the Environment dependency.


System Database
---------------

|tag-ops-removed|

We do support all the newest version of all database management systems for the
system database and dropped the support for the following versions:

- PostgreSQL 13 and lower
- MariaDb 10.10 and lower
- MSSQL 2017 and lower
- MySQL 8.3 and lower


Windows Server
--------------

|tag-ops-removed|

Support for Windows Server 2012 and 2016 was dropped.


AJP Reverse Proxy Integration
-----------------------------

|tag-ops-removed|

The AJP integration for :ref:`reverse-proxy` has finally been removed. You need
to migrate to URL Rewrite if you still have used AJP.


Removal of system database conversion
-------------------------------------

|tag-ops-removed| 

It is no longer possible to convert only the system database. Engine migrations
must now always be carried out via the Engine :ref:`Migration Wizard
<migration-wizard>`.

Therefore, the button to convert the system database from the Engine Cockpit was
removed. Furthermore, the :ref:`Engine Config CLI <engine-config-cli>` command
to convert the system database is gone. As a replacement, you can trigger the
Engine Migration command :code:`migrate-engine`.

In addition, the :code:`autoConvert` configuration from :ref:`ivy-yaml` no
longer works. An engine migration must be carried out manually via the
:ref:`Migration Wizard <migration-wizard>` or :ref:`Engine Config CLI
<engine-config-cli>` tool.


Legacy app.yaml in application zip
----------------------------------

|tag-ops-removed| 

With Axon Ivy 10.0 it is not only possible to deploy an :code:`app.yaml` with an
application zip, but an entire configuration folder called :code:`config`. In
this case the :code:`app.yaml` should be placed in the :code:`config` sub folder
as part of the application zip. With Axon Ivy 10.0 we still support the old
location of the app.yaml (with a warning message in the log), but with Axon Ivy
12.0 this is no longer possible. The :code:`app.yaml` must now be placed in the
:code:`config` sub-folder of the application zip.


Debian Package
--------------

|tag-ops-removed|

A debian package for the Axon Ivy Engine will no longer be provided.
We recommend to use the Axon Ivy Docker Image.


-------------------

.. include:: _tagLegend.rst
