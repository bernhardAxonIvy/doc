.. _migrate-80-91:

Migrating from 8.0 to 9.1
=========================

VisualVM Plugin in the Axon.ivy Market
--------------------------------------

The Axon.ivy Visual VM plugin is now available in the :dev-url:`Axon.ivy Market </market/visualvm-plugin>`
and not bundled anymore with the Axon.ivy Engine in the directory :file:`[engineDir]/misc/visualvm/`.


Global deploy.options.yaml removed
----------------------------------

The `deploy.options.yaml` in the deployment directory can no longer be used to influence deployments.
We think that it made deployments unnecessary hard to track and that users are better of with 
the deploy.options packed as part of the application ZIP or specific yaml per artifact. :ref:`deployment-options` 
