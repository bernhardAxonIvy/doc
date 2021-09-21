.. _database-configuration:

Databases
=========

To use databases in your business or User Dialog processes you need to define
some database configurations first. After you have configured the databases
(data sources) you can use them in your process steps. The process steps
references only the database configuration ids. So you can use different
database configuration settings on your productive server.


.. _database-configuration-editor:

Database Configuration Editor
-----------------------------

The database configuration editor lets you configure the
databases you use in your project and the extending projects.

.. figure:: /_images/designer-configuration/database-editor.png
   :alt: Database Configuration Editor

   Database Configuration Editor

- :guilabel:`All Database Configurations`
  A list of all database configurations defined in this project. A red
  or green icon indicates the result of the automatically executed
  connection test.

- :guilabel:`New`
  Add a new database configuration

- :guilabel:`Remove`
  Remove the selected database configuration

- :guilabel:`Test Connection`
  Test database connection. A dialog shows the result status if the
  database can be connected or not. In the case of a failure the reason
  will be displayed

- :guilabel:`SQL`
  Opens a SQL editor in order to set up SQL Statements. The SQL Editor
  displays the result in a result table

- :guilabel:`Database`
  Select the type and driver of the database you use. Some often
  used and tested drivers are shipped with the Designer.

  The field :guilabel:`Max Connections` lets you specify the number of
  concurrent connections to your database.
  
  Choose an :guilabel:`Icon` that represents the database. 
  The icon will also be used as decorator icon on 
  Database process elements that references this database.  

- :guilabel:`Connection Properties`
  Specify the properties for the connection to your database.

- :guilabel:`Additional Connection Properties`
  If your database needs more information you can use this section
  to define the additional properties.

Dynamic properties
^^^^^^^^^^^^^^^^^^^^^^^^^
You may need to adjust property values for multiple runtime environments. 
E.g. to call different database hosts for testing than in production, 
consequently with other credentials.

You can forsee and simplify these configuration adjustments for operations
by using :ref:`dynamic-config` expressions in properties or any other configuration value.
E.g. the property ``databaseName=${ivy.var.cloudDb}`` will at runtime
have the value of the variable called ``cloudDb``.
