.. _migration-upgrade-engine-major-deb:

Debian
==========

Our Debian packages contain a major version qualifier (e.g.,
``axonivy-engine-10x``) and can therefore be installed independently. So, you can
proceed with your major version migration as follows:

.. rubric:: Preparation

#. Download the latest |ivy-engine| you want to migrate to. E.g., ``wget
   https://dev.axonivy.com/permalink/10.0/axonivy-engine.deb``.
#. Backup the system database and runtime data of your Axon Ivy Engine installation.
#. Install the new version with apt ``sudo apt install axonivy-engine.deb``

.. include:: _wizardMigration.rst
