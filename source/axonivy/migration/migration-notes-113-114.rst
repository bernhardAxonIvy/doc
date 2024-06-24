.. _migrate-113-114:

Migrating from 11.3 to 11.4
===========================

Upgrade to 11.4 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.

.. _variables-migration:

Variables
-------------

|tag-project-changed| |tag-project-auto-convert| 

We are no longer supporting dots in the keys of :file:`variables.yaml`. All keys
containing dots will be migrated to corresponding mappings.

For example:

.. code-block:: yaml
      
  Variables:
    connector.user: user
    connector.password: password

will be migrated to:

.. code-block:: yaml
      
  Variables:
    connector:
      user: user
      password: password

------------

.. include:: _tagLegend.rst
