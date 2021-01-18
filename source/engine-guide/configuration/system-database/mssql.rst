.. _systemdb-mssql:

Microsoft SQL Server
--------------------

There are two basic authentication schemes used to connect to a Microsoft SQL
Server, *SQL Server Authentication* and *Windows Authentication*.

SQL Server Authentication
*************************

With SQL Server Authentication you are connecting to the database with a database user.

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mssql.yaml
  :language: yaml
  :linenos:

.. note::

   On an SQL Server installation, only Windows Authentication is enabled by
   default. If you face problems connecting to the database, check if SQL
   Server Authentication is activated.

Windows Authentication
**********************

Microsoft SQL Server can be configured so it uses Windows credentials to log into
the database.

There are two ways to do that, one where you configure a specific Windows user (and
password), and one where the user credentials of the user running the |ivy-engine|
are used.

**Using specific Windows user:**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mssql-windows-user.yaml
  :language: yaml
  :linenos:

**Using user credentials of the process owner:**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mssql-windows-service-user.yaml
  :language: yaml
  :linenos:

Instance Name
*************

Microsoft recommends not to use the ``instanceName`` and prefers specifying
the port in the connection url, as for each connection there is a round trip
to determine the port. Therefore you will need to configure a static
TCP port (e.g. 1433) in the **SQL Server Configuration Manager**.

If you still need to work with the ``instanceName`` you
must define it as an additional connection property and remove
the port specification in the connection url.

.. tip:: 
  If you cannot connect to a Microsoft SQL Server, check first if the TCP/IP
  protocol for SQL Server is activated (by default it's deactivated). If you still
  face problems then you may check if SQL Server Authentication is activated. By
  default only Windows Authentication is enabled.

If the database is created by the |ivy-engine| the collate is set to
``Latin1_General_CI_AI``.
