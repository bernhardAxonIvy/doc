.. _migrate-100-111:

Migrating from 10.0 to 11.1
===========================

Upgrade to 11.1 is only supported from an Axon Ivy Engine 8.0 and higher.
If you have an Axon Ivy Engine older than version 8.0 you need first to migrate to a newer version.

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 11.1.


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
