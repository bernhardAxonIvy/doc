.. _installation-standard-edition:

Standard Edition
================

The following list shows the necessary steps that are required to install and
run an |ivy-engine|:

#. Gather all the information you need:
   
   * The server platform the engine will be installed on.
   * The database system used to host the system database.
   * Order a licence file for your installation. More information
     about the licence can be found in the section :ref:`installing-a-licence`.
   * If an integration with a frontend web server or reverse proxy server is planned, then get all the necessary
     configuration information about that server.
   * If an integration with an external security system is planned, then get all
     the necessary configuration information of the external security system
     (e.g. Active Directory or Novell eDirectory).
   * Ivy uses a bundled Elasticsearch server to search through Business Data. If
     the use of an external Elasticsearch server is planned, then get the
     necessary configuration information for it. See the Elasticsearch section in the :ref:`ivy-yaml`.

#. Install all required operating systems, web servers and :ref:`database
   systems <systemdb>`.
#. :ref:`install_engine`
#. :ref:`installing-a-licence`
#. :ref:`Configure <configuration>` the |ivy-engine|
#. :ref:`Start <control-center>` the |ivy-engine| and test if it is running.

If everything is fine so far, you can perform the following optional
configuration steps:

* Run the |ivy-engine| as :ref:`Service <engine-service>` which runs
  automatically after a reboot.
* :ref:`Integrate <integration>` |ivy-engine| into frontend web servers or reverse proxy servers if necessary.
* :ref:`Deploy <deployment>` workflow applications.

.. Tip::
    It is good practice to separate the data directory where you store the
    deployed project and other data files from the |ivy-engine| installation
    directory. This will later simplify a migration to newer |ivy-engine| versions.
    Example:

    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | Path                                              | Description                                                                                      |
    +===================================================+==================================================================================================+
    | .../AxonIvyEngine/Data/Applications/HRM/...       | Directory where the deployed projects for the HRM application are stored.                        |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/Data/Applications/FinTech/...   | Directory where the deployed projects for the FinTech application are stored.                    |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/Data/ElasticSearch/...          | Directory where the Business Data search indexes are stored.                                     |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.0.1/...                       | Installation directory of the Axon.ivy Engine version 6.0.1 (can be removed if no longer needed) |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.1.0/...                       | Installation directory of the Axon.ivy Engine version 6.1.0 (can be removed if no longer needed) |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
    | .../AxonIvyEngine/6.2.0/...                       | Installation directory of the Axon.ivy Engine version 6.2.0                                      |
    +---------------------------------------------------+--------------------------------------------------------------------------------------------------+
