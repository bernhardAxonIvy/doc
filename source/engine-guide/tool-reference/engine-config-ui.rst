.. _engine-config-ui:

Engine Configuration UI
=======================

The Engine Configuration UI is a simple user interface that lets operators apply
the basic configuration that is necessary to have a productive engine running.
This includes especially the installation of a license and the creation of a
system database.

Advanced users might prefer to use configurations files :ref:`ivy-yaml` and the
:ref:`engine-config-cli` to roll out and Axon.ivy Engine into production.
Configuration files make the installation process faster re-reproducible in
various environments such as dev, test and prod.

Usage: Apply configurations in the Tabs. Click :guilabel:`Save` to store the
modified data on all tabs. Hit :guilabel:`Discard Changes` to reload the
configuration from the filesystem and database. 

.. warning:: Legacy Storage Format
    The Engine Configuration UI stores the defined configurations in legacy
    storages such as the System Database (connector-properties, admins). Since
    7.2 users can stick to a file based configuration approach by using the
    :ref:`ivy-yaml`

.. note::
    The changes that you make with the Engine Configuration do not become active
    unless you restart the engine.


Launchers
---------

Use the program launchers of the :ref:`axonivy-engine` to start the Axon.ivy Engine
Configuration.

If you are not able to start the Axon.ivy Engine anymore. Remove the installed license
file from the `configuration` directory. Start the Axon.ivy Engine one more time. The
Axon.ivy Engine will start in demo mode now.



Licence
-------

On the :guilabel:`Licence` tab you have to upload a valid licence:

.. figure:: /_images/engine-config-ui/engine-config-ui/engine-config-ui-licence.png

Use the :guilabel:`Upload Licence` button to open the file browser and select
the licence which should be used. 

.. note::
    It is possible to configure the engine without a valid licence, but the
    engine will always start in the demo mode if you do not have a valid licence
    and therefore does not use your configuration. 


System Database
---------------

On the :guilabel:`System Database` tab the Axon.ivy Engine system database can
be configured, created and converted:

.. figure:: /_images/engine-config-ui/engine-config-ui-system-database.png

First choose the database system and the JDBC driver you want to use. At the
moment the Axon.ivy Engine supports the following database systems:

* :ref:`MySQL <systemdb-mysql>`
* :ref:`MariaDB <systemdb-mariadb>`
* :ref:`Oracle <systemdb-oracle>`
* :ref:`Microsoft SQL Server <systemdb-mssql>`
* :ref:`Postgre SQL <systemdb-postgres>`

The choice of the second step depends on the database system and JDBC driver you
have chosen in the first section. Click on the database system links above to
find information about how to configure the connection settings. The applied db
user needs the following privileges:

* CREATE DATABASE (to create the system database out of the Engine Configuration)
* CREATE, ALTER, DROP Tables, Views, Indexes, Triggers (to update the Axon.ivy Engine)
* INSERT, SELECT, UPDATE, DELETE data

In a third step you can configure additional connection properties. When
clicking on the :guilabel:`Additional Properties` button a dialog will show,
where you can add, edit or delete the properties. See database system specific
chapter (links above) to find information which additional connection properties
are available for the database system that you have chosen.

At the top of the page the state of the connection is visible. Use the button on
the right to try to connect to the system database.


Create new System Database
^^^^^^^^^^^^^^^^^^^^^^^^^^

If the system database does not exist, use the create button at the bottom to
create a new system database. During the creation of a new database the
configured connection parameters are used. For some database system additional
information is necessary. It must be provided in a pop-up dialog before the new
database can be created. See database system specific chapter (links above) to
find what additional information is necessary for the chosen database system. 


.. note::
    You can previously create an empty database/schema. In this case the server
    configuration tool will only create the necessary tables into the given
    database/schema. If the database/schema doesn't exist already, the server
    configuration tool creates it with a best practice configuration. In this
    case the applied db user needs the following privileges:
    
    * CREATE, ALTER, DROP Tables, Views, Indexes, Triggers (to update the
      Axon.ivy Engine)
    * INSERT, SELECT, UPDATE, DELETE data
 
    The best practice configurations are documented in chapter :ref:`System
    Database <systemdb>`.

Convert an old System Database
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. warning::
    We strongly recommend to backup your database before you convert it to a
    newer version. Be sure that you have enough disk/table space on your
    database server. Most conversions add new fields to existing database tables
    which will enlarge the used database space.

If the system database has an older version, use the convert button at the
bottom to convert it to the latest version. 

.. warning::
    Depending on the conversion steps and your database system it may be
    necessary to cut all connections to the system database to avoid problems.
    If you have problems with the conversion, please disconnect all other
    database management tools, clients or other tools that has a connection to
    the system database and try again.


System Administrators
---------------------

On the :guilabel:`Administrators` tab you can configure users that have the
right to administrate the Axon.ivy Engine:

.. figure:: /_images/engine-config-ui/engine-config-ui-admins.png

Defining an email address for the administrators is recommended. Notifications
of critical events like licence limits reached are sent to these email
addresses.

.. warning::
    This tab is only enabled if you have configured a connection to a valid
    system database.


Web Server Ports
----------------

On the :guilabel:`Web Server` tab you can configure which protocols the internal
web server of Axon.ivy Engine should support and on which IP ports the web
server is listening:

.. figure:: /_images/engine-config-ui/engine-config-ui-webserver.png

The following protocols are supported:

+----------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| Protocol | Description                                                                                                                                      |
+==========+==================================================================================================================================================+
| HTTP     | HTTP protocol                                                                                                                                    |
+----------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| HTTPS    | HTTP protocol over secure socket layer (SSL).                                                                                                    |
+----------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| AJP      | Apache Jakarta Protocol. This protocol is used for the communication of the embedded Servlet Engine with external WebServers like IIS or Apache. |
+----------+--------------------------------------------------------------------------------------------------------------------------------------------------+

.. warning::
    This tab is only enabled if you have configured a connection to a valid
    system database.

.. note::
    In case you disable HTTP port, then the specified port will still opened by
    the engine for internal purposes. Even though the engine will refuse
    connections from remote hosts. 


.. _tool-reference-engine-config-ui-cluster:

Cluster
-------

This tab is only visible if you have installed an Axon.ivy Enterprise Edition
licence. On the :guilabel:`Cluster` tab you have to configure some information
according the local cluster node:

.. figure:: /_images/engine-config-ui/engine-config-ui-cluster.png

Use the :guilabel:`Add local Node` button to add this installation as a new
Engine cluster node to the list of cluster nodes in your Axon.ivy Engine
Enterprise Edition. You have to configure an IP Address and an IP Port that will
be used by the cluster to communicate with this node.

.. note::
    An Engine cluster node is uniquely identify by the host it is running on and
    a local identifier. The local identifier is a unique number that identifies
    nodes running on the same host (machine). Both values are provided by the
    installed licence. Therefore, every Engine cluster node needs its own
    licence file.
   