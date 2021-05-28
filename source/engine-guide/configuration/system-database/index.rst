.. _systemdb:

System Database
===============

An untouched |ivy-engine| runs in :ref:`demo mode <demo-mode>`. In
consequence workflow data is never stored, but kept in a memory database. To run
a productive engine an external system database must be connected, where
workflow data will be stored.

To define the database of the |ivy-engine|, the :code:`SystemDb` entries must be
set.

.. literalinclude:: ivy-systemdb.yaml
  :language: yaml
  :linenos:

The following database management systems are supported, choose one:

.. toctree::
   :maxdepth: 1

   postgres
   mysql
   mariadb
   mssql
   oracle 

Use the :ref:`setup-wizard` or the :ref:`engine-config-cli` to create the system
database. To run the |ivy-engine| with a system database a :ref:`license
<license>` is required.

|

.. rubric:: Advanced Configuration

* User passwords are stored encrypted in the system database. It is possible to
  configure the :ref:`encryption algorithm <systemdb-encryption>`.

* In some cases, you may want to perform :ref:`case-insensitive searches
  <systemdb-case-insensitive-searches>` for tasks or
  cases, for example. For this purpose, the system database must be configured
  accordingly.

* All tables and columns of the system database are described in the
  :ref:`schema reference <systemdb_schema>`.

.. toctree::
   :maxdepth: 1
   :hidden:

   password-encryption
   case-insensitive-searches
