.. _migration-upgrade-engine-common:

Common Migration Steps
=======================

After running Operating System specific migration steps:

#. Restart the Axon Ivy Engine .
#. Very likely you will need a new license after a major version change.

   #. Request a new licence as described in the :ref:`licence` chapter.
   #. Copy the new licence to the ``configuration`` directory or upload it using the :ref:`Engine Cockpit <setup-wizard>`
#. Migrate the Database to the latest version: :ref:`upgrade-system-db`

   a. Either :ref:`convert the system database <upgrade-system-db>` with the :ref:`Engine Cockpit <engine-cockpit-systemdb>`
   b. or set the ``autoConvert`` property in the :ref:`ivy-yaml` to ``true`` and it will be done with the next Axon Ivy Engine restart.
#. Test your workflow app for braking changes and identify them using the :ref:`Migration Notes document <migration-notes>`.
#. Examine the logs for errors while an automated test or a business user clicks through important workflows.


.. _migration-project:

Project-Migration
++++++++++++++++++

If you face incompatibilities in the UI or see errors in the logs while using the new Axon Ivy Engine, here's how you make your projects compatible with the new Axon Ivy Engine version. 

#. Download the latest Axon Ivy Designer which is available for the release you are migrating to.
#. Import the version that is deployed on your Axon Ivy Engine from your source repository
   into your Axon Ivy Designer workspace.
#. Migrate the project according the description in section :ref:`project-convert` of the
   Axon Ivy Designer Guide. Usually this is achieved by invoking the project conversion action
   on each project. Some manual adaptations may be necessary.
#. Test the migrated project in the Axon Ivy Designer.
#. All migrated projects must be re-deployed to the new, upgraded Axon Ivy Engine version. 

   #. Not only the ``RELEASE`` process model version (PMVs) must be updated and re-deployed, but all ``DEPRECATED`` projects too.
   #. Other versions in state ``PREPARED`` or ``ARCHIVED`` may be easier to delete, rather than updating and re-deploying them.
