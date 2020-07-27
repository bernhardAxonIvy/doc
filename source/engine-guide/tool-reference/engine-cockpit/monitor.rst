Monitor
-------

The **engine cockpit** allows you to **monitor** the system
your engine is running on.

Resources
^^^^^^^^^

The the **Resources** page shows an overview
of the cpu load, memory load, network traffic and disk read-write activity. 
Additionaly, the memory monitor displays the max and current memory usage of the jvm.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor.png


.. _engine-cockpit-monitor-mbeans:

MBeans
^^^^^^

The **MBeans** view diplays a tree with all engine :ref:`jmx` MBeans. 
Click on one of the MBeans to see all its attributes. Click on an attribute with numeric
values to display the value of the attribute over time in a chart. You can add multiple
attributes to the chart. Click on the remove icon in the table below the chart to remove
the attribute from the chart.

.. figure:: /_images/engine-cockpit/engine-cockpit-mbeans.png


Logs
^^^^

The **logs** view shows the current engine log files :file:`console.log`,
:file:`config.log`, :file:`deprecation.log`, :file:`ivy.log` and :file:`usersynch.log`.
Click on :guilabel:`+` to show or :guilabel:`-` to hide the log file details. If you
want to look at the logs of an different day, you can change the date at the top right.

.. figure:: /_images/engine-cockpit/engine-cockpit-logs.png
