Standard Edition
================

It is recommended to read the Introduction chapter before installing an Axon.ivy
Engine. The following list shows the necessary steps that are required to
install and run an Axon.ivy Engine:

#. Gather all the information you need:
   
   * The server platform the engine will be installed on.
   * The database system used to host the system database.
   * Order a licence file for your installation. You need to know the host name
     of the machine you want to install the Axon.ivy Engine on. More information
     about the licence can be found in the section Install a Licence of the
     Installation chapter.
   * If an integration with a web server is planned, then get all the necessary
     configuration information of the web server.
   * If an integration with an external security system is planned, then get all
     the necessary configuration information of the external security system
     (e.g. Active Directory or Novell eDirectory).
   * Ivy uses a bundled Elasticsearch server to search through Business Data. If
     the use of an external Elasticsearch server is planned, then get the
     necessary configuration information for it. When running an Axon.ivy Engine
     Enterprise Edition the use of an external Elasticsearch server is
     mandatory. See the Elasticsearch section in the“ivy.yaml” of the
     configuration directory.

#. Install all required operating systems, web servers and database systems.
#. Install the Axon.ivy Engine
#. Install your licence file
#. Configure the Axon.ivy Engine
#. Start the Axon.ivy Engine and test if it is running.


Demo Mode
---------

Axon.ivy Engine offers a demo mode for demonstration purposes. The demo mode
allows you to install and start the Axon.ivy Engine without configuration and
without a productive licence. To install and start an Axon.ivy Engine in demo
mode simply execute the steps 3 and 6 from the list above. The username of demo
administratior is **admin** and password **admin**.

.. WARNING::
    The Axon.ivy Engine uses a memory database as system database in demo mode.
    This means that everything you configure and all cases that are created by
    any sessions in demo mode are lost when you shut down the engine.

.. Tip::
    It is good practice to separate the data directory where you store the
    deployed project and other data files from the engine installation
    directory. This will later simplify a migration to newer engine versions.
    Example:

    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | Path                                              | Description                                                                                |
    +===================================================+============================================================================================+
    | .../AxonIvyEngine/Data/Applications/HRM/...       | Directory where the deployed projects for the HRM application are stored.                  |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/Data/Applications/FinTech/...   | Directory where the deployed projects for the FinTech application are stored.              |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/Data/ElasticSearch/...          | Directory where the Business Data search indexes are stored.                               |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.0.1/...                       | Installation directory of the engine version 6.0.1 (can be removed if no longer needed)    |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.1.0/...                       | Installation directory of the engine version 6.1.0 (can be removed if no longer needed)    |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.2.0/...                       | Installation directory of the engine version 6.2.0                                         |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------+