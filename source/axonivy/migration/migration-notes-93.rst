.. _migrate-92-93:

Migrating from 9.2 to 9.3
=========================


Drop AXIS Technology for Web Service Client
*******************************************

|tag-project-changed|

With Axon Ivy 7.1 we have introduced CXF Web Service Client as a super fast,
secure and future driven technology to call SOAP Web Services. AXIS is
making more and more trouble and to keep the quality of the Axon Ivy Platform
on a high level we need to cut AXIS off. You will need now to convert all Web
Service Clients based on AXIS (1+2) to CXF in the Axon Ivy Designer.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    #. Convert project to latest version which will remove all AXIS 1 and AXIS 2 artifacts
    #. Open the Web Service Client Editor
    #. Open a Web Service Client which was based on AXIS 1 or AXIS 2
    #. Change :guilabel:`Library` to :guilabel:`Apache CXF`
    #. Click on the button :guilabel:`Generate WS classes`
    #. Repeat step 4, 5 and 6 for all your web service clients
    #. Validate your project by right-click on the project and :guilabel:`Validate`

    It is quite possible that the web service calls now work with CXF without
    further intervention, especially with AXIS 1. With AXIS 2, the data mappings
    on the inscription masks will most likely still have to be adjusted.


.. _migrate-92-93-project-version:

New project version
*******************

|tag-ops-changed|

Due to the migration of the :ref:`External Databases
<migrate-92-93-external-database-migration>`, :ref:`Rest Clients
<migrate-92-93-rest-clients>` and projects to Eclipse Maven projects, we
introduced a new project version :code:`93300`. If you want to deploy a project
to an |ivy-engine| 9.3, this must be your project version. If you
have a running project, it will still be able to run, but
:ref:`we recommend migrating your projects <migration-project>`
to the new version and re-deploying them to your engine.


.. _migrate-92-93-external-database-migration:

Defining Databases
******************

|tag-ops-changed| |tag-project-changed|

Databases are stored in new locations. During development, the project's
Databases are now stored in the :ref:`databases.yaml <database-configuration>` file. On the
|ivy-engine|, Databases have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, database and project migrations do
the conversion from the old to the new format for you automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    We have dropped the system database tables :code:`IWA_ExternalDatabase` and
    :code:`IWA_ExternalDatabaseProperty` and
    migrated its data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine.

    All APIs to load databases configuration from :code:`IApplication` and :code:`IEnvironment`
    has been removed. They were introduced to show the configuration in the legacy AdminUI.
    They were never intended to use it in your |axon-ivy| Projects.


.. _migrate-92-93-rest-clients:

Defining Rest Clients
*********************

|tag-ops-changed| |tag-project-changed|

Rest Clients are stored in new locations. During development, the project's
Rest Clients are now stored in the :ref:`rest-clients.yaml <rest-clients-configuration>` file. On the
|ivy-engine|, Rest Clients have been moved from the System Database to the
application's :ref:`app-yaml` file. Furthermore, rest clients and project migrations do
the conversion from the old to the new format for you automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    We have dropped the system database tables :code:`IWA_RestClient`,
    :code:`IWA_RestClientFeature` and :code:`IWA_RestClientProperty` and
    migrated its data to the :ref:`app-yaml`. We recommend that you
    :ref:`migrate your projects <migration-project>` and redeploy them to your
    engine.


Environments
************

Editors like the Web Service Client Editor, the Rest Client Editor and the
Database Editor are not environment aware anymore. Learn how you can define
:ref:`environment aware configurations <configuration-environments>`.

Read more here about the future of environments:
https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term


Cluster Name
************

|tag-ops-changed| |tag-ops-wizard|

The name of a :ref:`cluster <cluster>` (|ivy-engine| Enterprise Edition) can now be configured 
in the :ref:`ivy.yaml <ivy-yaml>` file. Before, it was pre-configured in the :ref:`license <license>` 
file as :code:`server.cluster.name` property. 


JGroups Configuration
*********************

|tag-ops-changed|

By default, the :file:`jgroups.xml` file does not need to be provided in the ``configuration``
folder any more. Please remove your existing :file:`jgroups.xml` file from the ``configuration``
folder, if you haven't made any changes to it; otherwise replace it with a standard JGroups 5.0
:file:`jgroups.xml` file and re-apply your changes to this file. :file:`jgroups.xml` files used
in earlier versions of the |ivy-engine| are not compatible with JGroups 5.0.

System Database Cache Configuration and MBean (JMX)
***************************************************

|tag-ops-changed|

We have changed the system database cache configuration. Instead of configuring a ``UsageLimit`` 
you can now configure a ``TimeToIdle`` (TTI) value. As alternative you can also configure a ``TimeToLive`` (TTL) value.
The ``TimeToIdle`` value specifies how long after the last usage a cached object will be hold in the cache. Whereas
the ``TimeToLive`` value specifies how long after the first usage a cached object will be hold in the cache.
Have a look at ``configuration\ivy.cache.properties`` and replace all configured ``UsageLimit`` 
values with appropriate ``TimeToIdle`` and/or ``TimeToLive`` values. By default, the ``TimeToIdle`` 
value is 600 (10 minutes) and the ``TimeToLive`` is 0 (disabled).

The ``usageLimit`` attribute on MBeans with name pattern ``ivy Engine:type=CacheClassPersistencyService,name=*,strategy=CacheAllRemoveUnused``
was removed. Instead, the ``timeToIdle`` and ``timeToLive`` attributes were introduced.  
