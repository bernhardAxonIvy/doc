.. _engine-system-requirements:

System Requirements
===================

Hardware Requirements
---------------------

Hardware requirements may vary depending on the deployed applications, number of concurrent users
and the stored application data.

.. rubric:: With included Elasticsearch (Default)

`Elasticsearch <https://www.elastic.co>`__ runs on the same machine as |ivy-engine|.
This is the default installation.

:Memory (RAM): Minimum is 8 GB, we recommend to use 32 GB.

:Disk Space: Minimum is 20 GB, we recommend 100 GB on a Solid State Disk (SSD).

:Processor: Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.

.. rubric:: With Elasticsearch on a separate machine

`Elasticsearch <https://www.elastic.co>`__ runs on a different machine than the |ivy-engine|.
This must be configured explicitly.

:Memory (RAM): Minimum is 4 GB, we recommend to use 16 GB.

:Disk Space: Minimum is 1 GB, we recommend 20 GB on a Solid State Disk (SSD).

:Processor: Minimum is 4 cores with 2 GHz, we recommend 16 cores with 2.5 GHz.


Software Requirements
---------------------

|ivy-engine| needs Java OpenJDK 11 to run. Note that OpenJDK is already included in the Windows installation.


Operating Systems
-----------------

:Windows: Windows Server 2019, 2012 and 2008 R2 x64

:Linux: Linux x64, preferably with ``systemd`` (tested on Ubuntu 18.04)


System Database
---------------

+---------------------+-----------------------+-----------+
|Database System      |Supported              | Tested    |
+=====================+=======================+===========+
|MySQL (InnoDB)       |5.5 - 8                |5.5, 8     |
+---------------------+-----------------------+-----------+
|MariaDB (InnoDB)     |10                     |10         |
+---------------------+-----------------------+-----------+
|Microsoft SQL Server |2014, 2016, 2017, 2019 |2017, 2019 |
+---------------------+-----------------------+-----------+
|Oracle Database      |12c, 18c, 19c          |12c, 19c   |
+---------------------+-----------------------+-----------+
|PostgreSQL           |9.1 - 12               |9.1, 12    |
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

For security reasons we recommend to use the latest available web browser versions.
Most other web browser that support the latest JavaScript, Html 5 and CSS 3 specifications will work, too.

.. [1] Internet Explorer 11 is supported but we do not recommend using it. Microsoft only supports Internet Explorer 11 for backward compatibility. Microsoft recommends using Edge instead.
