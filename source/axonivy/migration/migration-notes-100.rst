.. _migrate-94-10:

Migrating from 9.4 to 10.0
==========================

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 10.0.

Security System Configuration
*****************************

|tag-ops-changed| |tag-ops-wizard|

We renamed configuration keys to be more clear.

- `ImportOnDemand` -> `UserSynch.OnSchedule.ImportUsers`
- `UpdateEnabled` -> `UserSynch.OnSchedule.Enabled`
- `UpdateTime` -> `UserSynch.OnSchedule.Time`

`ImportOnDemand` also changes the semantic - the value needs to be changed from `false` to `true` or otherwise.

Read more in :ref:`Identity Provider <identity-provider>`.


Oracle Database
***************

|tag-ops-changed| |tag-ops-deprecated|

The support for Oracle Database 12c, 18c is removed as Oracle support has ended for these versions.
If using Oracle Database we recommend using version 19c as this is the long term support version.

Postgres Database
*****************

|tag-ops-changed| |tag-ops-deprecated|

The support for Postgres Database 9 and 10 is removed as Postgres support has ended for this version.
We recommend using Postgres 14 as this is the latest and longest supported version.


MySQL Database
**************

|tag-ops-changed| |tag-ops-deprecated|

The support for MySQL 5.6 is removed as MySQL support has ended for this version.
We recommend upgrading to MySQL 8.0 as this is the latest and longest supported version.


MariaDB Database
****************

|tag-ops-changed| |tag-ops-deprecated|

The support for MariaDB 10.0 - 10.2 is removed as they are not supported anymore.
We recommend upgrading to MariaDB 10.6 as this is the long term support version.


Windows Server
***************

|tag-ops-changed| |tag-ops-deprecated|

The support for Windows Server 2008 R2 is removed as Microsoft support has ended for this version.
If using Windows Server we recommend using version 2022 as this is the long term support version.


------------

.. include:: _tagLegend.rst    
