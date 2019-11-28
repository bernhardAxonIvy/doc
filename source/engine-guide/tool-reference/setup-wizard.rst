.. _setup-wizard:

Setup Wizard
============

The Setup Wizard is a simple user interface, for operators to apply the 
initial configuration that is necessary to turn a demo engine into a
productive |ivy-engine| instance. This includes especially the installation of a
license and the creation of a system database.

.. note::
    The changes that you make with the :ref:`setup-wizard` do not become active
    unless you restart the engine. Even though, configurations are constantly written
    from the wizard to the :ref:`ivy-yaml` file.

Advanced users might prefer to manually craft configurations in :ref:`ivy-yaml` and 
use the :ref:`engine-config-cli` to roll out and |ivy-engine| into production.
Configuration files make the installation process faster re-reproducible in
various environments such as dev, test and prod.


.. _setup-wizard-launchers:

Launchers
---------

Start the :ref:`axonivy-engine` using its launcher. 
If the engine runs in the :ref:`demo-mode` you see a warning on
the info page with a link to the :ref:`setup-wizard`. 
E.g. http://myServer:myPort/ivy/faces/view/system/engine-cockpit/setup.xhtml

If you are not able to start the |ivy-engine| anymore, you may remove the
installed license file from the :file:`configuration` directory. The
|ivy-engine| should now start up in :ref:`demo-mode`.

.. note::
    For the usage of this tool, you will need an administrator user account. 
    If you run in :ref:`demo-mode` the administrator user and password is
    **admin**.


.. _setup-wizard-licence:

Licence
-------

On the :guilabel:`Licence` step you have to upload a valid licence:

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-licence.png

Use the :guilabel:`Choose licence` button to open the file browser and select
the licence which should be used or simply drop your licence inside the marked
field.

.. note::
    It is possible to configure the engine without a valid licence, but the
    engine will always start in the :ref:`demo-mode` if you do not have a valid licence
    and therefore does not use your configuration. 


.. _setup-wizard-admins:

System Administrators
---------------------

On the :guilabel:`Administrators` step you can configure users that have the
right to administrate the |ivy-engine|:

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-admins.png

Defining an email address for the administrators is mandatory. Notifications
of critical events, such as licence violations, are sent to administrator email adresses.

.. _setup-wizard-webserver:

Web Server Ports
----------------

On the :guilabel:`Web Server` step you can configure the enabled web protocols of the |ivy-engine|. 
Furthermore, IP port bindings can be customized:

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-webserver.png

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

.. note::
    In case you disable HTTP port, then the specified port will still opened by
    the engine for internal purposes. Even though, the engine will refuse
    connections from remote hosts. 


.. _setup-wizard-systemdb:

System Database
---------------

On the :guilabel:`System Database` step the |ivy-engine| system database can
be configured, created and converted:

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-systemdb.png

First choose the database system and the JDBC driver you want to use. At the
moment the |ivy-engine| supports the following database systems:

* :ref:`MySQL <systemdb-mysql>`
* :ref:`MariaDB <systemdb-mariadb>`
* :ref:`Oracle <systemdb-oracle>`
* :ref:`Microsoft SQL Server <systemdb-mssql>`
* :ref:`Postgre SQL <systemdb-postgres>`

On the second part you need to define you connection settings. Those depends on
the chosen **database system** and **JDBC driver**. Click on the database system links above to find information about how
to configure the connection settings. The applied db user needs the following
privileges:

* ``CREATE DATABASE`` (to create the system database out of the Engine Configuration)
* ``CREATE``, ``ALTER``, ``DROP``: Tables, Views, Indexes, Triggers (to update the Axon.ivy Engine)
* ``INSERT``, ``SELECT``, ``UPDATE``, ``DELETE`` data

In a third step you can configure additional connection properties. When
clicking on the :guilabel:`Add Property` button a dialog will show, where you
can add properties. See :ref:`systemdb` to find information which
additional connection properties are available for the database system that you
have chosen.

At the top of the page the state of the connection is visible. Use the button
:guilabel:`Check Connection` to try to connect to the system database.


.. _setup-wizard-systemdb-create:

Create new System Database
^^^^^^^^^^^^^^^^^^^^^^^^^^

If the system database does not exist, use the :guilabel:`Create Database`
button to create a new **system database**. During the creation of a new
database the configured connection settings are used, but may some additional
information is necessary. It must be defined in the **creation dialog**. See
:ref:`systemdb` to find what additional information is necessary for the
chosen database system.

.. note::
    You can previously create an empty database/schema. In this case the wizard
    will only create the necessary tables into the given
    database/schema. If the database/schema doesn't exist already, the wizard
    creates it with a best practice configuration. In this
    case the applied db user needs the following privileges:
    
    * ``CREATE``, ``ALTER``, ``DROP``: Tables, Views, Indexes, Triggers (to update the
      Axon.ivy Engine)
    * ``INSERT``, ``SELECT``, ``UPDATE``, ``DELETE`` data
 
    The best practice configurations are documented in chapter :ref:`System
    Database <systemdb>`.

.. _setup-wizard-systemdb-convert:

Convert an old System Database
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. warning::
    We strongly recommend to backup your database before you convert it to a
    newer version. Be sure that you have enough disk/table space on your
    database server. Most conversions add new fields to existing database tables
    which will enlarge the used database space.

If the system database has an older version, use the :guilabel:`Migrate
Database` button to convert it to the latest version. 

.. warning::
    Depending on the conversion steps and your database system it may be
    necessary to cut all connections to the system database to avoid problems.
    If you have problems with the conversion, please disconnect all other
    database management tools, clients or other tools that has a connection to
    the system database and try again.
