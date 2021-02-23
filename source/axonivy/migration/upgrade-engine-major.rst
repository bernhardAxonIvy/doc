.. _migration-upgrade-engine-major:


Major Upgrade
---------------

Upgrades to a new |ivy-engine| version are warmly recommended to benefit of new features
that will increase your productivity and ability to react on new business needs. 

This chapter focuses on migrations from a major version to another (e.g. form ``8.0`` to ``10.0``).
If you are only intersted in applying hotfix upgrades (e.g. from ``8.0.6`` to ``8.0.13``), 
please consult the simpler :ref:`migration-upgrade-engine-hotfix` chapter.

Switching from a Long-Term-Supported (LTS) release train (e.g. ``8.0``) to a LE (Leading Edge) release (e.g. ``9.1``) follows
the same logic as described in this chapter. Nevertheless, be aware that we do not recommend switching 
light-heartedly from an LTS to a LE version as the possability to face breaking changes
are more likely and the effort to migrate between the LE versions is higher.
See our release-cycle (:dev-url:`/release-cycle`) for more informations on our release concept. 


Backward-compatibility
==============================

The |ivy-engine| can run and execute workflow applications that have been built towards
an older engine version. Even so, we do recommend to **simulate migrations to new versions
in a testing environment** since there is a chance that your project relies upon a no longer 
supported infrastructure, such as old Primefaces versions, java libraries or internal
java classes from the |ivy-engine|. By sticking only to PublicAPI and best practices however, 
you have a minimal risk to face these versions incompatibilities.

To start with, we warmly recommend to :ref:`Read the Migration Notes document <migration-notes>`
for the versions you are migrating to. It documents are possible braking changes that
may affect you, so that manual changes in your project are necessary.


The way to migrate to the latest hotfix highly dependes on the hosting 
environment, so please jump right to the execution environment you are
using:


 * :ref:`migration-upgrade-engine-major-deb`
 * :ref:`migration-upgrade-engine-major-docker`
 * :ref:`migration-upgrade-engine-major-win`
 * :ref:`migration-upgrade-engine-major-lin`



.. _migration-upgrade-engine-major-deb:

Debian
==========

Our Debian packages contain a major version qualifier (e.g. ``axonivy-engine-8x``) and can therefore be installed independently.
So you can proceed for your major version migration as follows:

#. Download the latest |ivy-engine| you wan't to migrate to. E.g. ``wget https://dev.axonivy.com/permalink/9.2/axonivy-engine.deb``.
#. Install the new version with apt ``sudo apt install axonivy-engine.deb``
#. Run the :ref:`migration-wizard` to migrate crucial configuration files to the new |ivy-engine|. You can start using the wizard by starting the new |ivy-engine|. Browse to the |ivy-engine| URI (e.g http://localhost:8080 ) and click on ``Setup Wizard`` > ``Migration Wizard``.
#. Migrate using the Migration Wizard: 

   #. provide the location of your previous installation as input (e.g. ``/usr/lib/axonivy-engine-8x/``.
   #. run the migration tasks and answer the manual migration steps.

#. Apply the :ref:`migration-upgrade-engine-common` 



.. _migration-upgrade-engine-major-docker:

Docker
==========

Docker's infrastructure enables you to do automate various kinds of infrastructure setups. Consequently, the 
kind of major migration steps are various too and highly dependent on your concrete setup. 
However, here are the major steps to do when migrating a docker based |ivy-engine| to another major version.

#. Switch your setup to the axonivy-engine tag you are aiming for. (e.g. from ``8.0`` to ``10.0``)
#. Migrate your configuration files as shown in the :ref:`Migration Notes document <migration-notes>`
#. Apply the :ref:`migration-upgrade-engine-common` 



.. _migration-upgrade-engine-major-win:

Windows
==========

On Windows the migration is very similar to a hotfix migration. However, some additional steps are required at the end.

#. Do all steps as you would do in a :ref:`Windows hotfix migration <migration-upgrade-engine-hotfix-win>`.
#. Apply the additional steps required in a major upgrade. See the :ref:`migration-upgrade-engine-common`.



.. _migration-upgrade-engine-major-lin:

Linux
====================

On Linux systems without Debian's apt support the migration is very similar to a hotfix migration. However, some additional steps are required at the end.

#. Do all steps as you would do in a :ref:`Linux hotfix migration <migration-upgrade-engine-hotfix-lin>`.
#. Apply the additional steps required in a major upgrade. See the :ref:`migration-upgrade-engine-common`.



.. _migration-upgrade-engine-common:

Common Migration Steps
==============================

#. Restart the |ivy-engine| .
#. Very likely you will need a new license after a major version change.

   #. Request a new licence as described in the :ref:`licence` chapter.
   #. Copy the new licence to the ``configuration`` directory or upload it using the :ref:`Engine Cockpit <setup-wizard>`
#. Migrate the Database to the latest version: :ref:`upgrade-system-db`

   a. Either :ref:`convert the system database <upgrade-system-db>` with the :ref:`Engine Cockpit <engine-cockpit-systemdb>`
   b. or set the ``autoConvert`` property in the :ref:`ivy-yaml` to ``true`` and it will be done with the next |ivy-engine| restart.
#. Test your workflow app for braking changes and identify them using the :ref:`Migration Notes document <migration-notes>`.
#. Examine the logs for errors while an automated test or a business user clicks through important workflows.


.. _migration-project:

Project-Migration
++++++++++++++++++

If you face incompatibilites in the UI or see errors in the logs while using the new |ivy-engine|, here's how you make your projects compatible with the new |ivy-engine| version. 

#. Download the latest |ivy-designer| which is available for the release you are migrating to.
#. Import the version that is deployed on your |ivy-engine| from your source repository
   into into your |ivy-designer| workspace.
#. Migrate the project according the description in section :ref:`project-convert` of the
   |ivy-designer| Guide. Usually this is achieved by invoking the project conversion action
   on each project. Some manual adaptations may be necessary.
#. Test the migrated project in the |ivy-designer|.
#. All migrated projects must be re-deployed to the new, upgraded |ivy-engine| version. 

   #. Not only the ``RELEASE`` process model version (PMVs) must be updated and re-deployed, but all ``DEPRECATED`` projects too.
   #. Other versions in state ``PREPARED`` or ``ARCHIVED`` may be easier to delete, rather than updatig and re-deploying them.

.. toctree::
   :hidden:
   :maxdepth: 1

   upgrade-systemdatabase

