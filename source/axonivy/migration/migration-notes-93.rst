.. _migrate-92-93:

Migrating from 9.2 to 9.3
=========================


.. _migrate-92-93-project-version:

New project version
*******************

|tag-ops-changed|

Due to the migration of the :ref:`External Databases
<migrate-92-93-external-database-migration>`, we introducing a new project version
:code:`93000`. If you want to deploy a project to an |ivy-engine| 9.3, your
project must be in this version. If you have a running project, it will still
be able to run, but :ref:`we recommend migrating your projects
<migration-project>` to the new version and redeploying them to your engine.


.. _migrate-92-93-external-database-migration:

Defining Databases
******************

|tag-ops-changed| |tag-project-changed|

Databases are stored in new locations. During development, the project's
Databases are now stored in the :ref:`databases.yaml <variables>` file. On the
|ivy-engine|, Databases have been moved from the System Database to the
applications's :ref:`app-yaml` file. Furthermore, database and project migrations do
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
    They were never intended to use it in your Axon Ivy Projects.

Cluster Name
************

|tag-ops-changed| |tag-ops-wizard|

The name of a :ref:`cluster <cluster>` (Axon Ivy Engine Enterprise Edition) can now be configured 
in the :ref:`ivy.yaml <ivy-yaml>` file. Before it was preconfigured in the :ref:`licence <licence>` 
file as :code:`server.cluster.name` property. 
