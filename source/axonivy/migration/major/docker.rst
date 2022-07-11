.. _migration-upgrade-engine-major-docker:

Docker
==========

Docker's infrastructure enables you to do automate various kinds of infrastructure setups. Consequently, the 
kind of major migration steps are various too and highly dependent on your concrete setup. 
However, here are the major steps to do when migrating a docker based Axon Ivy Engine to another major version.

#. Switch your setup to the axonivy-engine tag you are aiming for. (e.g. from ``8.0`` to ``10.0``)
#. Migrate your configuration files as shown in the :ref:`Migration Notes document <migration-notes>`
#. Apply the :ref:`migration-upgrade-engine-common` 
