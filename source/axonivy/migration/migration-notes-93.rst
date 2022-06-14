.. _migrate-92-93:

Migrating from 9.2 to 9.3
=========================


.. _migrate-92-93-project-version:

New project version
*******************

|tag-ops-changed| |tag-project-auto-convert|

Due to the migration of the
:ref:`External Databases <migrate-92-93-external-database-migration>`,
:ref:`Rest Clients <migrate-92-93-rest-clients>`,
:ref:`Web Service Clients <migrate-92-93-webservice-clients>`,
:ref:`Environments <migrate-92-93-envs>`,
:ref:`Formats <migrate-92-93-formats>`
and projects to Eclipse Maven projects, we
introduced a new project version :code:`93900`. If you
have an existing project in version :code:`80000`, 
it will still run on the |ivy-engine|, 
but :ref:`we recommend to migrate your projects <migration-project>`
to the new version and re-deploy them.


.. _migrate-92-93-external-database-migration:

Defining Databases
******************

|tag-ops-changed| |tag-project-changed| |tag-project-auto-convert|

Configurations of Databases are stored in new locations. During development, the project's
Databases are now stored in the :ref:`databases.yaml <database-configuration>` file. On the
|ivy-engine|, the configurations of Databases have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, the System Database and project migration 
converts from the old to the new format automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    We have dropped the System Database tables :code:`IWA_ExternalDatabase` and
    :code:`IWA_ExternalDatabaseProperty` and
    migrated its data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine.

    All APIs to load databases configuration from :code:`IApplication` and :code:`IEnvironment`
    has been removed. They were introduced to show the configuration in the legacy AdminUI.
    They were never intended to be used in your |axon-ivy| Projects.


.. _migrate-92-93-rest-clients:

Defining Rest Clients
*********************

|tag-ops-changed| |tag-project-changed| |tag-project-auto-convert|

Configurations of Rest Clients are stored in new locations. During development, the project's
Rest Clients are now stored in the :ref:`rest-clients.yaml <rest-clients-configuration>` file. On the
|ivy-engine|, configurations of Rest Clients have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, System Database and project migrations do
converts from the old to the new format automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    We have dropped the System Database tables :code:`IWA_RestClient`,
    :code:`IWA_RestClientFeature` and :code:`IWA_RestClientProperty` and
    migrated its data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine.


.. _migrate-92-93-webservice-clients:

Defining Web Service Clients
****************************

|tag-ops-changed| |tag-project-changed| |tag-project-auto-convert|

Configurations of Web Service Clients are stored in new locations. During development, the project's
Web Service Clients are now stored in the :ref:`webservice-clients.yaml <webservice-clients-configuration>` file. On the
|ivy-engine|, configurations of Web Service Clients have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, System Database and project migrations 
converts from the old to the new format automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

      **Details**

  .. container:: detail 

    We have dropped the System Database tables :code:`IWA_WebService`,
    :code:`IWA_WebServiceEndpoints`, :code:`IWA_WebServiceEnvironments`,
    :code:`IWA_WebServiceFeature`, :code:`IWA_WebServicePortType` and
    :code:`IWA_WebServiceProperty` and migrated its data to the :ref:`app-yaml`.
    We recommend that you :ref:`migrate your projects <migration-project>` and
    redeploy them to your engine.


.. _migrate-92-93-envs:

Environments
************

|tag-project-changed| |tag-project-deprecated|

The environment editor and all environment aware editors like the Web Service
Client Editor, the Rest Client Editor and the Database Editor are not
environment aware anymore. Learn how you can define :ref:`environment aware
configurations <configuration-environments>`.

Read more here about the future of environments:
https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term


.. _migrate-92-93-formats:

Formats
*******

|tag-project-changed| |tag-project-auto-convert|

:ref:`Formats <configuration-formats>` are migrated from the so-called config
CMS to the :file:`config/formats.yaml` in your project. There is no more UI
Editor to edit those formats. If you migrate a running |ivy-engine| you need
to convert your projects and redeploy them again to make formats work.


Configuration deployment options removed
****************************************

|tag-ops-changed| |tag-ops-deprecated|

Now that most of the app configuration is defined in YAML files, the
:code:`configuration` deployment options are disregarded and can be removed from your
:ref:`deploy.options.yaml <deployment-options>` file.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    The following options are deprecated and can be removed:

    .. code-block:: yaml
    
      configuration:
        overwrite: false               # [false], true
        cleanup: DISABLED              # [DISABLED], REMOVE_UNUSED, REMOVE_ALL


Removed support for CMS Page
****************************

|tag-project-removed| 

We no longer support CMS pages. Both in |ivy-designer| and
on |ivy-engine|. You will need to manually reimplement them
to an alternative. For example as :ref:`HTML Dialog (JSF) <html-dialogs>` or
as :ref:`static JSF page <static-jsf-pages>`. We still support :ref:`plain JSP pages <user-interface-web-page>`
which would be a non-future alternative.


Removed support for Macro expansion in RTF documents
****************************************************

|tag-project-removed| 

RTF is not a common format anymore. We have supported macro
expansion in RTF documents from CMS. This is no longer working.
To generate documents with placeholders, use other well-maintained 
components like the DocFactory.


Moved JSP pages from CMS to webContent
**************************************

|tag-project-changed| |tag-project-auto-convert|

We now only support plain JSP pages in the webContent folder.
The project conversion copies the JSP pages from the CMS automatically to the webContent folder.


Non-public API Email
********************

|tag-project-removed| 

If you have used some non-public email classes
like ``EmailSetupConfiguration``, ``EmailSetupProviderUtil``
or ``SimpleMailSender`` then you need to touch your project,
because they no longer exist. We are currently building a public API
for mail. It is already available but not officially public yet:


.. code-block:: java

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

.. _migrate-93_axis:
    
Drop AXIS Technology for Web Service Client
*******************************************

|tag-project-removed|

With Axon Ivy 7.1 we have introduced CXF Web Service Client as a super-fast,
secure and future driven technology to call SOAP Web Services. AXIS is
making more and more trouble and to keep the quality of the Axon Ivy Platform
on a high level we need to cut AXIS off. You have to convert all Web
Service Clients based on AXIS (1+2) to CXF in the |ivy-designer|.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    The Designer comes with a :ref:`project converter <project-convert-wizard>`
    to convert your Axis2 clients automatically to CXF. Also a quick fix is available 
    on the Axis error marker.

    The detailed steps to migrate from AXIS clients to CXF are outlined here:
    https://community.axonivy.com/d/199-migrate-from-axis2-webservice-to-cxf    

.. _migrate-92-93-caseScope-deprecated:

Overriding
******************

|tag-project-deprecated|

We deprecated the :ref:`case_scope` project overrides in favor of :ref:`strict_overriding`.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    If your application uses Overrides. You should migrate to :ref:`strict_overriding`.
    Define the customization project in your :ref:`app.yaml <strict_overriding_config>`.

    .. code-block:: yaml
    
      OverrideProject: com.acme.solution:MyCustomerAdaption


Default Rest Client entity processing changed to buffered
*********************************************************

|tag-ops-changed|

Since we are using the *ApacheConnectorProvider* as default provider
for Rest Clients also the default of entity processing
has changed from :code:`BUFFERED` to :code:`CHUNKED`. Which means that
the http header :code:`Content-length` is not set which makes trouble
with a lot of services. You can fix this by switching to chunked processing again. 
Change your Rest Client config and set the property :code:`jersey.config.client.request.entity.processing`
to :code:`CHUNKED`.


System Database Cache Configuration and MBean (JMX)
***************************************************

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


Cluster Name
************

|tag-ops-changed| |tag-ops-wizard|

The name of a :ref:`cluster <cluster>` (|ivy-engine| Enterprise Edition) can now be configured 
in the :ref:`ivy.yaml <ivy-yaml>` file. Before, it was pre-configured in the :ref:`license <license>` 
file as :code:`server.cluster.name` property. 


JGroups Configuration
*********************

|tag-ops-changed|

JGroups is the library we use to communicate between :ref:`cluster nodes <cluster>` (|ivy-engine| Enterprise Edition).
By default, you do not need to provide the :file:`jgroups.xml` file in the ``configuration``
folder anymore. Please remove your existing :file:`jgroups.xml` file from the ``configuration``
folder, if you have not made any changes to it; otherwise replace it with a standard JGroups 5.0
:file:`jgroups.xml` file and re-apply your changes to this file. :file:`jgroups.xml` files used
in earlier versions of the |ivy-engine| are not compatible with JGroups 5.0.
    
------------

.. include:: _tagLegend.rst    
