.. _migrate-100-111:

Migrating from 10.0 to 11.1
===========================

Upgrade to 11.1 is only supported from an Axon Ivy Engine 8.0 and higher.
If you have an Axon Ivy Engine 8.0 and younger you need first migrate to 10.0.

MsSQL Server Database
*********************

|tag-ops-changed|

The JDBC driver for MsSQL server database has been upgraded and now connects to the database with SSL by default.
To change the behavior back to non SSL as in previous versions set the connection property ``encrypt`` to ``false``.
Because this is the new default behavior of the driver, both System Database and External Database configurations are affected by this change.

