.. _migration-upgrade-engine-common:

Common Migration Steps
=======================

After running Operating System specific migration steps:

#. Restart the |ivy-engine|.
#. Very likely you will need a new license after a major version change.

   #. Request a new license as described in the :ref:`license` chapter.
   #. Copy the new license to the ``configuration`` directory or upload it using the :ref:`Engine Cockpit <setup-wizard>`

#. Test your workflow app for breaking changes and identify them using the :ref:`Migration Notes document <migration-notes>`.
#. Examine the logs for errors while an automated test or a business user clicks through important workflows.

.. _migration-project:

Project-Migration
++++++++++++++++++

If you face incompatibilities in the UI or see errors in the logs while using the new |ivy-engine|, here's how you make your projects compatible with the new |ivy-engine| version. 

#. Download the latest |ivy-designer| which is available for the release you are migrating to.
#. Import the version that is deployed on your |ivy-engine| from your source repository
   into your |ivy-designer| workspace.
#. Migrate the project according to the description in section :ref:`project-convert` of the
   |ivy-designer| Guide. Usually, this is achieved by invoking the project conversion action
   on each project. Some manual adaptations may be necessary.
#. Test the migrated project in the |ivy-designer|.
#. All migrated projects must be re-deployed to the new, upgraded |ivy-engine| version. 

   #. Not only the ``RELEASE`` process model version (PMVs) must be updated and re-deployed, but all ``DEPRECATED`` projects too.
   #. Other versions in the states ``PREPARED`` or ``ARCHIVED`` may be easier to delete, rather than updating and redeploying.
