.. _migrate-100-111:

Migrating from 10.0 to 11.1
===========================

Upgrade to 11.1 is only supported from an Axon Ivy Engine 8.0 and higher.
If you have an Axon Ivy Engine older than version 8.0 you need first to migrate to a newer version.

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 11.1.


Ivy Environments
****************

Ivy Environments has been removed, finally. You can read more about the reason in our 
`blog post <https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term>`_.

Ivy environments were used for **staging** and in some rare cases for **multi-tenancy**. If you have
used it for staging, which was the initial use case, then you should not face any issues,
just make sure that :code:`Default` configuration is correct for each of your staging environment.
If you have used it for multi-tenancy, then you need to manually migrate each tenant to an own
Axon Ivy Engine or an own Axon Ivy Application, read more about this topic in :ref:`multi-tenancy`.

It was possible to set the environment on application level, session level and case level, all
thos APIs and configurations were completely removed. With Environments you was able to define
own configurations for:

- :ref:`variables`
- :ref:`rest-clients-configuration`
- :ref:`webservice-clients-configuration`
- :ref:`database-configuration`
- :ref:`business-calendar`

There was the possibilty on the :ref:`process-element-tab-data-cache` to define the ca on environment level.
This will be automatically migrated to application level.

For :ref:`unit-testing` you were able to set the current environment on the :code:`AppFixture`. This has been removed
you can now use the :code:`AppFixuter#config`` API to define exactly the configruation which you like to override
in your test case.

Ivy Files has the environment in it's path. They all stay at the place as they are. All new files will
be saved in the :code:`Default` environment. We plan to completely redesign the path of an single file, later.


MsSQL Server Database
*********************

|tag-ops-changed|

The JDBC driver for MsSQL server database has been upgraded and now connects to the database with SSL by default.
To change the behavior back to non SSL as in previous versions set the connection property ``encrypt`` to ``false``.
Because this is the new default behavior of the driver, both System Database and External Database configurations are affected by this change.


AJP Reverse Proxy Integration
*****************************

|tag-ops-changed|

The AJP integration for :ref:`reverse-proxy` has been finally removed. You need to migrate
to URL Rewrite if you still have used AJP.
