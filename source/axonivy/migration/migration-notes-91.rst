.. _migrate-80-91:

Migrating from 8.0 to 9.1
=========================

VisualVM Plugin in the Axon.ivy Market
--------------------------------------

The Axon.ivy Visual VM plugin is now available in the :dev-url:`Axon.ivy Market </market/visualvm-plugin>`
and not bundled anymore with the Axon.ivy Engine in the directory :file:`[engineDir]/misc/visualvm/`.


Using HttpAsyncClient for CXF web service calls
-----------------------------------------------

We switched the default connection implementation of CXF web service calls from
:code:`HttpURLConnection` to :code:`org.apache.http.nio.client.HttpAsyncClient`.
The :code:`HttpAsyncClient` has improved performance and provides better support for NTML authentication.

There are no known issues with :code:`HttpAsyncClient`, but if you still want to use
:code:`HttpURLConnection` you can set the property :code:`use.async.http.conduit` to :code:`false` on the
web service client configuration.


Global deploy.options.yaml removed
----------------------------------

The `deploy.options.yaml` in the deployment directory can no longer be used to influence deployments.
We think that it made deployments unnecessary hard to track and that users are better of with 
the deploy.options packed as part of the application ZIP or specific yaml per artifact. :ref:`deployment-options` 


Static JSF pages moved to webContent/view
-----------------------------------------

The location of static JSF pages has been changed to :file:`webContent/view` to
improve security. With 8.0 the static pages were located directly inside the
:file:`webContent` folder. From 9.1 and later, these pages are no longer
accessible. Please refer to the chapter :ref:`static-jsf-pages` for more
information.
