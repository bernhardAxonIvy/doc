.. _engine-cockpit-monitor:

Monitor
-------

The **Engine Cockpit** allows you to :ref:`monitor <monitoring>` your |ivy-engine|.

OS
^^

The **OS** page shows an overview
of the CPU load, memory load, network traffic and disk read-write activity. 
Additionally, the memory monitor displays the max and current memory usage of the jvm.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-os.png


Engine
^^^^^^

The **Engine** pages allows you to monitor some critical indicators of your |ivy-engine|:

- **JVM**: CPU load, number of threads, loaded and unloaded classes.
- **Memory**: Heap and non heap memory, garbage collections time.
- **Cache**: System database caches and their metrics

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-jvm.png

.. _engine-cockpit-monitor-mbeans:

Cache
"""""

The **Cache** view displays a table with all system database caches and their metrics.
The caches reduce the amount of system database read access.
 
Increasing the amount of data that is cached may help solve performance problems. 
You should try to increase the cache limits if you have a lot of read misses and the number 
of cached entities are near the limit or above. 
If this case the number of both corresponding columns are displayed in red. The cache limits
can be configured in the :ref:`ivy.yaml <ivy-cache-properties>` file.     

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-cache.png

.. _engine-cockpit-monitor-performance:

Performance
"""""""""""

The **Performance** view allows you to activate and analyze the :ref:`process-element-performance` statistic. 

You can start, stop, clear, refresh the statistic or export it to an Excel file. Note, that by default not all
available columns are shown. Use the configure columns button right to the search box to show or hide the columns. 

If you want to configure that the statistic is written periodically to a :ref:`process-element-performance-file`
use the configuration icon left to the help button it will take you directly to the corresponding settings 
in the :ref:`engine-cockpit-system-configuration`.  

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-performance.png

MBeans
""""""

The **MBeans** view displays a tree with all engine :ref:`jmx` MBeans. 
Click on one of the MBeans to see all its attributes. Click on an attribute with numeric
values to display the value of the attribute over time in a chart. You can add multiple
attributes to the chart. Click on the remove icon in the table below the chart to remove
the attribute from the chart.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-mbeans.png

.. _engine-cockpit-monitor-services:

Services
^^^^^^^^

The **Services** pages allows you to monitor some critical indicators of external services your |ivy-engine| communicates with:

- **Email**: Number of mails sent, execution time to send mails. 
- **System Database**: Number of open and used connections, number of transactions and errors, transaction processing time.
- **Databases**: Number of open and used connections, number of queries and errors, query execution time of the selected database.
- **Web Services**: Number of calls and errors, execution time of the selected web service.
- **Rest Clients**: Number of open and used connections, Number of calls and errors, execution time of the selected Rest client.

You can open these live stats from the detailed view of the desired service using the monitor button at the right side.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-databases.png

Logs
^^^^

The **logs** view shows the current engine log files :file:`console.log`,
:file:`config.log`, :file:`deprecation.log`, :file:`ivy.log` and :file:`usersynch.log`.
Click on :guilabel:`+` to show or :guilabel:`-` to hide the log file details. If you
want to look at the logs of an different day, you can change the date at the top right.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-logs.png
