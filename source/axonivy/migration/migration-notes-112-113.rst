.. _migrate-112-113:

Migrating from 11.2 to 11.3
===========================

Upgrade to 11.3 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.


Legacy app.yaml in application zip
----------------------------------

|tag-ops-changed| 

With Axon Ivy 10.0 it is not only possible to deploy an `app.yaml` with an application zip, but
an entire configuration folder called `config`. In this case the `app.yaml` should be placed in
the `config` sub folder as part of the application zip. With Axon Ivy 10.0 we still support
the old location of the app.yaml (with a warning message in the log), but with Axon Ivy 11.3
this is no longer possible. The `app.yaml` must now be placed in the `config` sub-folder of the
application zip.


Data.WorkDirectory no longer configurable in ivy.yaml
-----------------------------------------------------

|tag-ops-changed| 

The `Data.WorkDirectory` is the temporary directory which Axon Ivy will create
files. :code:`Data.WorkDirectory` can no longer be configured in
:file:`ivy.yaml`. You need to configure it in :file:`jvm.options` as
:code:`ivy.Data.WorkDirectory`. Or as operation system environment
:code:`IVY_DATA_WORKDIRECTORY`.

------------

.. include:: _tagLegend.rst
