.. _engine-system-requirements:

System Requirements
===================

The following system requirements highly depend on the number of Named Users,
Concurrent Users and deployed applications.


Hardware Requirements
---------------------

By default, the |ivy-engine| runs a bundled OpenSearch server. It is possible
to integarte with an :ref:`external <opensearch-external>` OpenSearch
instance. This also affects the minimum hardware requirements.


.. rubric:: With bundled OpenSearch server (default)

* **Memory (RAM)**:
  Minimum is 8 GB, we recommend to use 32 GB.

* **Disk Space**:
  Minimum is 20 GB, we recommend 100 GB on a Solid State Disk (SSD).

* **Processors**:
  Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


.. rubric:: With external OpenSearch server

* **Memory (RAM)**:
  Minimum is 4 GB. We recommend to use at least 16 GB.

* **Disk Space**:
  Minimum is 2 GB. We recommend 50 GB on a Solid State Disk (SSD).

* **Processors**:
  Minimum is 4 cores with 2 GHz. We recommend 16 cores with 2.5 GHz.


Software Requirements
---------------------

The Axon Ivy Engine needs Java SE 21 to run and is tested with `Eclipse Temurin
<https://adoptium.net/>`_.

Note: Java SE 21 `Eclipse Temurin <https://adoptium.net/>`_ is already
included in our Windows installation and the Docker container.    
On Linux, we do not include Java SE 21. You may want to use Java SE 21 provided
by your operating system or install `Eclipse Temurin <https://adoptium.net/>`_.


Operating Systems
-----------------

* **Windows**:
  Windows Server 2022 and 2019

* **Linux**:
  Linux x64 (tested on Ubuntu 24.04)


System Database
---------------

+---------------------+-----------------------------+-----------+
|Database System      |Supported                    | Tested    |
+=====================+=============================+===========+
|PostgreSQL           |14 - 17                      |14, 17     |
+---------------------+-----------------------------+-----------+
|MySQL (InnoDB)       |8.4 - 9                      |8.4, 9     |
+---------------------+-----------------------------+-----------+
|MariaDB (InnoDB)     |10.11 - 11                   |10.11, 11  |
+---------------------+-----------------------------+-----------+
|Microsoft SQL Server |2019, 2022                   |2019, 2022 |
+---------------------+-----------------------------+-----------+
|Oracle Database      |19, 23                       |19, 23     |
+---------------------+-----------------------------+-----------+


OpenSearch
-------------

Version 2.17. Only required if you run an :ref:`own <opensearch-external>`
OpenSearch instance!


Browsers
--------
All popular web browsers are supported:

- Firefox
- Chrome
- Opera
- Safari
- Edge

For security reasons, we recommend using the latest available web browser
versions. Most other web browsers that support the latest JavaScript, HTML 5 and
CSS 3 specifications will work, too.
