.. _engine-system-requirements:

System Requirements
===================

The following system requirements highly depends on the number of users,
concurrent sessions and deployed applications.


Hardware Requirements
---------------------

By default the |ivy-engine| is running with the bundled Elasticsearch server.
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

|ivy-engine| needs Java SE 11 to run and is tested with `Adoptium
<https://adoptium.net/>`_ and with `OpenJDK <https://openjdk.java.net/>`_.

Note, that Java SE 11 `Adoptium <https://adoptium.net/>`_ is already
included in our Windows installation and Docker container.    
On Linux we do not include Java SE 11. You may want to use Java SE 11 provided
by your operating system or install `Adoptium <https://adoptium.net/>`_.


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
|PostgreSQL           |9.1 - 14               |9.1, 14    |
+---------------------+-----------------------+-----------+
|MySQL (InnoDB)       |5.6 - 8                |5.6, 8     |
+---------------------+-----------------------+-----------+
|MariaDB (InnoDB)     |10                     |10         |
+---------------------+-----------------------+-----------+
|Microsoft SQL Server |2014, 2016, 2017, 2019 |2017, 2019 |
+---------------------+-----------------------+-----------+
|Oracle Database      |12c, 18c, 19c          |12c, 19c   |
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
versions. Most other web browser that support the latest JavaScript, Html 5 and
CSS 3 specifications will work, too.
