.. _engine-system-requirements:

System Requirements
===================

The following system requirements highly depends on the number of users,
concurrent sessions and deployed applications.


Hardware Requirements
---------------------

By default the Axon.ivy Engine is running with the bundled Elasticsearch server.
It's possible to run the Elasticsearch server :ref:`externally <elasticsearch>`.
Depending on that the hardware minimum requirements changes.


.. rubric:: With bundled Elasticsearch (default)

* **Memory (RAM)**:
  Minimum is 8 GB, we recommend to use 32 GB.

* **Disk Space**:
  Minimum is 20 GB, we recommend 100 GB on a Solid State Disk (SSD).

* **Processor**:
  Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


.. rubric:: With external Elasticsearch

* **Memory (RAM)**:
  Minimum is 4 GB, we recommend to use 16 GB.

* **Disk Space**:
  Minimum is 1 GB, we recommend 20 GB on a Solid State Disk (SSD).

* **Processor**:
  Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


Software Requirements
---------------------

Axon.ivy Engine needs Java SE 11 to run and is tested with `AdoptOpenJDK
<https://adoptopenjdk.net/>`_ and with `OpenJDK <https://openjdk.java.net/>`_.

Note, that Java SE 11 `AdoptOpenJDK <https://adoptopenjdk.net/>`_ is already
included in our Windows installation and Docker container.    
On Linux we do not include Java SE 11. You may want to use Java SE 11 provided
by your operating system or install `AdoptOpenJDK <https://adoptopenjdk.net/>`_.


Operating Systems
-----------------

* **Windows**:
  Windows Server 2019, 2012 and 2008 R2 x64

* **Linux**:
  Linux x64 (tested on Ubuntu 20.04)


System Database
---------------

+---------------------+-----------------------+-----------+
|Database System      |Supported              | Tested    |
+=====================+=======================+===========+
|PostgreSQL           |9.1 - 13               |9.1, 13    |
+---------------------+-----------------------+-----------+
|MySQL (InnoDB)       |5.5 - 8                |5.5, 8     |
+---------------------+-----------------------+-----------+
|MariaDB (InnoDB)     |10                     |10         |
+---------------------+-----------------------+-----------+
|Microsoft SQL Server |2014, 2016, 2017, 2019 |2017, 2019 |
+---------------------+-----------------------+-----------+
|Oracle Database      |12c, 18c, 19c          |12c, 19c   |
+---------------------+-----------------------+-----------+


HtmlDialog Clients
------------------
All well known web browsers are supported:

- Firefox
- Chrome
- Opera
- Safari
- Microsoft Edge
- Internet Explorer 11 [1]_

For security reasons we recommend to use the latest available web browser
versions. Most other web browser that support the latest JavaScript, Html 5 and
CSS 3 specifications will work, too.

.. [1] Internet Explorer 11 is supported but we do not recommend using it.
       Microsoft only supports Internet Explorer 11 for backward compatibility.
       Microsoft recommends using Edge instead.
