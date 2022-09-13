.. _engine-system-requirements:

System Requirements
===================

The following system requirements highly depend on the number of Named Users,
Concurrent Users and deployed applications.


Hardware Requirements
---------------------

By default, the Axon Ivy Engine is runs a bundled Elasticsearch server.
It is possible to run the Elasticsearch server :ref:`externally <elasticsearch>`.
This also affects the minimum hardware requirements.


.. rubric:: With bundled Elasticsearch server (default)

* **Memory (RAM)**:
  Minimum is 8 GB, we recommend to use 32 GB.

* **Disk Space**:
  Minimum is 20 GB, we recommend 100 GB on a Solid State Disk (SSD).

* **Processors**:
  Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


.. rubric:: With external Elasticsearch server

* **Memory (RAM)**:
  Minimum is 4 GB, we recommend to use 16 GB.

* **Disk Space**:
  Minimum is 2 GB, we recommend 50 GB on a Solid State Disk (SSD).

* **Processors**:
  Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


Software Requirements
---------------------

The Axon Ivy Engine needs Java SE 17 to run and is tested with `Eclipse Temurin
<https://adoptium.net/>`_.

Note: Java SE 17 `Eclipse Temurin <https://adoptium.net/>`_ is already
included in our Windows installation and the Docker container.    
On Linux, we do not include Java SE 17. You may want to use Java SE 17 provided
by your operating system or install `Eclipse Temurin <https://adoptium.net/>`_.


Operating Systems
-----------------

* **Windows**:
  Windows Server 2022, 2019, 2012 and 2008 R2 x64

* **Linux**:
  Linux x64 (tested on Ubuntu 22.04)


System Database
---------------

+---------------------+-----------------------+-----------+
|Database System      |Supported              | Tested    |
+=====================+=======================+===========+
|PostgreSQL           |9.1 - 14               |9.1, 14    |
+---------------------+-----------------------+-----------+
|MySQL (InnoDB)       |5.6 - 8                |5.6, 8     |
+---------------------+-----------------------+-----------+
|MariaDB (InnoDB)     |10                     |10         |
+---------------------+-----------------------+-----------+
|Microsoft SQL Server |2014, 2016, 2017, 2019 |2017, 2019 |
+---------------------+-----------------------+-----------+
|Oracle Database      |12c, 18c, 19c, 21c     |12c, 21c   |
+---------------------+-----------------------+-----------+


Browsers
--------
All well known web browsers are supported:

- Firefox
- Chrome
- Opera
- Safari
- Microsoft Edge

For security reasons we recommend to use the latest available web browser
versions. Most other web browsers which support the latest JavaScript, HTML 5 and
CSS 3 specifications will work, too.
