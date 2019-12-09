.. _systemdb:

System Databases
================

The |ivy-engine| system database is used to store configuration,
security, content and workflow information. See :ref:`Configuration
<config-systemdb>` to find out how you can create and configure |ivy-engine|
system databases. |ivy-engine| supports the following database systems to host
the system database:

* :ref:`systemdb-mysql`
* :ref:`systemdb-mariadb`
* :ref:`systemdb-postgres`
* :ref:`systemdb-mssql`
* :ref:`systemdb-oracle`

You have the choice to create the database without the tables on your own. Or
let the :ref:`engine-cockpit` make you that. In the second case, good default
creation parameters will be applied.


.. rubric:: Password Encryption

Passwords are stored encrypted in the system database using state of the art
encryption algorithms. More information can be found in the chapter
:ref:`system-db-encryption`.


.. rubric:: Character set and collation

All characters in databases are encoded with a specific charset (e.g. utf8,
latin1, cp1257). Lastly it defines which kind of characters can be stored at
all.

The collation is a set of rules that defines how the database management system
compares and orders the data (e.g. utf8_unicode_ci, latin2_general_ci). Common
abbreviations in the name of the collations are the following:

* ci = case insensitive
* cs = case sensitive
* ai = accent insensitive
* as = accent sensitive

As well as the character set the collation can be defined mostly on several
levels: server, database, table or column. Everything about this subject is very
dependent on the actual database management system.


.. rubric:: Support case insensitive searches

If a case insensitive search is required, it must be guaranteed that the
affected column has a case insensitive collation.

#. Check character set & collation of the column
#. Change character set & collation if necessary





.. _systemdb-mysql:

MySQL
-----

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mysql.yaml
  :language: yaml
  :linenos:

We only support **InnoDB** as storage engine. If database will be created by the
|ivy-engine| the charset is set to ``utf8`` and collation is set to
``utf8_unicode_ci``.

.. warning::
  The newer charset ``utf8mb4`` is not supported. 
  The creation of the system database tables will fail if you use ``utf8mb4`` charset.

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``innodb-buffer-pool-size`` in the :file:`my.cnf` configuration 
  file of the database. 
    
.. _systemdb-mariadb:

MariaDB
-------

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mariadb.yaml
  :language: yaml
  :linenos:

We only support **InnoDB** as storage engine. If database will be created by the
|ivy-engine| the charset is set to ``utf8`` and collation is set to
``utf8_unicode_ci``.

.. warning::
  The newer charset ``utf8mb4`` is not supported. 
  The creation of the system database tables will fail if you use ``utf8mb4`` charset.

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``innodb-buffer-pool-size`` in the :file:`my.cnf` configuration 
  file of the database. 

.. _systemdb-postgres:

PostgreSQL
----------

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-postgres.yaml
  :language: yaml
  :linenos:

If database will be created by the |ivy-engine| the encoding is set to ``UTF8``.

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``work_mem`` in the :file:`postgresql.conf` configuration 
  file of the database.     

.. _systemdb-mssql:

Microsoft SQL Server
--------------------

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mssql.yaml
  :language: yaml
  :linenos:

If database will be created by the |ivy-engine| the collate is set to
``Latin1_General_CI_AI``. If you want to connect to an existing instance of a MS
SQL Server you have to configure an additional connection property that is
called ``instance`` / ``instanceName`` containing the name of the corresponding
database instance.

.. tip::
  If you want to join tables of the system database with tables of another business database, 
  then ensure that all involved databases use the same collate. 
  Otherwise, you will get bad performance when comparing 
  character columns from different databases because the data 
  must be converted from one collate to another.

.. tip:: 
  If you cannot connect to a Microsoft SQL Server, check first if the tcp/ip
  protocol for SQL Server is activated (by default it's deactivated). SQL Server
  Authentication must be enabled too. By default only Windows Authentication is
  enabled which is not supported by JDBC drivers.


.. _systemdb-oracle:

Oracle
------

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-oracle.yaml
  :language: yaml
  :linenos:

If database will be created by the |ivy-engine| the collate is set to ``Latin1_General_CI_AI``.


.. tip::

  On all (reused) oracle database connections the maximum number of open cursors
  is set to 1000, independently from the default setting that may be set on the
  database itself. Those cursors are needed to cache all prepared statements and
  also for PL/SQL blocks.

  It may turn out that the number of open cursors is exceeded, which is
  indicated by an error message similar to the following:

  .. code-block:: bash
  
    ch.ivyteam.ivy.persistence.PersistencyException: java.sql.SQLException: 
    ORA-00604: error occurred at recursive SQL level 1
    ORA-01000: maximum open cursors exceeded

  If this should happen, then you may customize (and increase) the number of
  open cursors per connection with the Java system property
  ``ch.ivyteam.ivy.persistence.db.oracle.MaxOpenCursors``. It can be set in the
  :ref:`jvm-options`.

.. note:: Schema Creation
    
    Before you can create the system database tables on a Oracle Database you have to do the following steps:

    #. You may want to create a new Oracle database where the Axon.ivy Engine
       System Database is located. This is optional you can use an already existing
       Oracle database.
    #. Create a new user (e.g. AxonIvy). Grant all necessary permissions to the
       user so that he can create and alter tables, indexes, sequences. Of
       course, the user must be able to insert, update, delete and select data
       from the tables of the system database. This is optional you can use an
       already existing Oracle user or let the Axon.ivy Engine create one for
       you with the Axon.ivy Engine Configuration.
    #. You may want to create a new tablespace (e.g. AxonIvy) where the Axon.ivy
       Engine System Database can store the table data. This is optional you can
       use an already existing tablespace.

.. warning:: 
    Be sure that the configuration of the database connection uses the new
    database and the Oracle Service ID reflecting the database you want to
    create the system database tables in.
