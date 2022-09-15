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

- `ImportOnDemand` -> `UserSynch.OnSchedule.ImportNewUsers`
- `UpdateEnabled` -> `UserSynch.OnSchedule.Enabled`
- `UpdateTime` -> `UserSynch.OnSchedule.Time`

`ImportOnDemand` also changes the semantic - the value needs to be changed from `false` to `true` or otherwise.

Read more in :ref:`Identity Provider <identity-provider>`.


Oracle Database
***************

|tag-ops-changed| |tag-ops-deprecated|

The support for Oracle Database 12c, 18c is removed as Oracle support has ended for these versions.
If using Oracle Database we recommend using version 19c as this is the long term support version.


------------

.. include:: _tagLegend.rst    
