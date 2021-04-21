.. _engine-cockpit-monitor:

Monitor
-------

The **Engine Cockpit** allows you to :ref:`monitor <monitoring>` your |ivy-engine|.

OS
^^

The **OS** page shows an overview
of the CPU load, memory load, network traffic and disk read-write activity. 
Additionaly, the memory monitor displays the max and current memory usage of the jvm.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-os.png


Engine
^^^^^^

The **Engine** pages allows you to monitor some critical indicators of your |ivy-engine|:

- **JVM**: CPU load, number of threads, loaded and unloaded classes.
- **Memory**: Heap and non heap memory, garbage collections time.
- **Requests**: Number of processed incoming requests, errors, received and sent bytes, processing time.
- **Sessions**: Number of HTTP, Ivy and licensed sessions.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-jvm.png

.. _engine-cockpit-monitor-mbeans:

MBeans
""""""

The **MBeans** view diplays a tree with all engine :ref:`jmx` MBeans. 
Click on one of the MBeans to see all its attributes. Click on an attribute with numeric
values to display the value of the attribute over time in a chart. You can add multiple
attributes to the chart. Click on the remove icon in the table below the chart to remove
the attribute from the chart.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor-mbeans.png

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
