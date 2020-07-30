Process Element Performance
===========================

Configure
---------

It is possible to configure |ivy-engine| to print out performance statistic
informations periodically into a CSV formatted file. This allows to analyze the
performance of the engine and to detect long running and performance intensive
process elements and processes. The file contains detailed informations of each
executed process element since the last dump.

After activation, all performance related information is collected and written
to the :file:`log` directory of your |ivy-engine| installation. The file name
has the pattern :file:`performance_statistic_jjjj-mm-tt_hh-mm-tt.csv`
(e.g. :file:`performance_statistic_2011-03-15_09-21-05.csv`)

Process element performance statistics are not collected by default. They need to
be enabled in the :code:`ProcessEngine` section of the :ref:`ivy-yaml` file.

Analyze
-------

All time values are in milliseconds. The execution of most process elements gets
divided into two categories, internal and external.

**Internal Category**
    The internal category is used for the execution time in the process engine
    itself, without the external execution time.

**External Category**
    The external category is used for execution time in external systems. In the
    table below the process elements are listed that use the external category.

+-----------------------+---------------------------------------------------------------------+------------------------------------------------------------+
| Process Element       | Internal Category                                                   | External Category                                          |
+=======================+=====================================================================+============================================================+
| Database Step         | Parameter-mapping, caching, output-mapping and ivyScript execution. | The execution of the SQL statement on the database server. |
+-----------------------+---------------------------------------------------------------------+------------------------------------------------------------+
| Web Service Call Step | Parameter-mapping, caching, output-mapping and ivyScript execution. | The execution of the Web Service on the web server.        |
+-----------------------+---------------------------------------------------------------------+------------------------------------------------------------+
| E-Mail Step           | Parameter-mapping                                                   | The interaction with the Mail-Server.                      |
+-----------------------+---------------------------------------------------------------------+------------------------------------------------------------+
| Program Interface     |                                                                     | The execution of the defined Java-Class.                   |
+-----------------------+---------------------------------------------------------------------+------------------------------------------------------------+

An entry in the view is created for each executed process element. The table below
shows what information is available.

+-----------------+--------------------------------------------------------------+
| Name            | Description                                                  |
+=================+==============================================================+
| Entry ID        | Entry ID, useful to order the entries by its first execution.|
+-----------------+--------------------------------------------------------------+
| Application     | Application of the process element.                          |
+-----------------+--------------------------------------------------------------+
| Process Model   | Process Model of the process element.                        |
+-----------------+--------------------------------------------------------------+
| PM Version      | Process Model Version of the process element.                |
+-----------------+--------------------------------------------------------------+
| Process Path    | The path to the process.                                     |
+-----------------+--------------------------------------------------------------+
| Element ID      | The identifier of the process element.                       |
+-----------------+--------------------------------------------------------------+
| Element Name    | The first line of the process element name (display name).   |
+-----------------+--------------------------------------------------------------+
| Element Type    | The type of the process element.                             |
+-----------------+--------------------------------------------------------------+
| Total Time      | Total time [ms] of internal and external execution.          |
+-----------------+--------------------------------------------------------------+
| Int. Executions | Total internal executions of the process element.            |
+-----------------+--------------------------------------------------------------+
| Total Int. Time | Total internal time [ms] of process engine executions.       |
+-----------------+--------------------------------------------------------------+
| Min. Int. Time  | Minimum internal process engine execution time [ms].         |
+-----------------+--------------------------------------------------------------+
| Avg. Int. Time  | Avarage internal process engine execution time [ms].         |
+-----------------+--------------------------------------------------------------+
| Max. Int. Time  | Maximum internal process engine execution time [ms].         |
+-----------------+--------------------------------------------------------------+
| Ext. Executions | Total external execution count.                              |
+-----------------+--------------------------------------------------------------+
| Total Ext. Time | Total external execution time [ms].                          |
+-----------------+--------------------------------------------------------------+
| Min. Ext. Time  | Minimum external execution time [ms].                        |
+-----------------+--------------------------------------------------------------+
| Avg. Ext. Time  | Average external execution time [ms].                        |
+-----------------+--------------------------------------------------------------+
| Max. Ext. Time  | Maximum external execution time [ms].                        |
+-----------------+--------------------------------------------------------------+
