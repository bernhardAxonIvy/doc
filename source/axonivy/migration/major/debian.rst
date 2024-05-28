.. _migration-upgrade-engine-major-deb:

Debian
==========

Our Debian packages contain a major version qualifier (e.g.,
``axonivy-engine-10x``) and can therefore be installed independently. So, you can
proceed with your major version migration as follows:

#. Download the latest |ivy-engine| you want to migrate to. E.g., ``wget
   https://dev.axonivy.com/permalink/10.0/axonivy-engine.deb``.
#. Backup the system database and runtime data of your Axon Ivy Engine installation.
#. Install the new version with apt ``sudo apt install axonivy-engine.deb``
#. Run the :ref:`migration-wizard` to migrate crucial configuration files to the
   new |ivy-engine|. You can start using the wizard by starting the new
   |ivy-engine|. Browse to the |ivy-engine| URI (e.g., ``http://localhost:8080``
   ) and click on ``Setup Wizard`` > ``Migration Wizard``.
#. Migrate using the :ref:`migration-wizard`: 

   #. Provide the location of your previous installation as input (e.g.,
      ``/usr/lib/axonivy-engine-8x/``.
   #. Provide the new licence in case of a major upgrade.
   #. Run the migration tasks and answer the manual migration steps.

#. Apply the :ref:`migration-upgrade-engine-common` 
