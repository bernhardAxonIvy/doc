Monitor
-------

The **engine cockpit** gives you the possibility to **monitor** the system
your engine is running on.

Resources
^^^^^^^^^

On the resources page you will have an overview
about cpu load, memory load, network traffic and disk read write. 
In addition, the memory monitor displays the max and current memory usage of the jvm.

.. figure:: /_images/engine-cockpit/engine-cockpit-monitor.png


.. _engine-cockpit-monitor-mbeans:

MBeans
^^^^^^

The **MBeans** view shows a tree with all :ref:`jmx` MBeans of the engine. 
Click on one of the MBeans to see all its attributes. Click on an attribute with numeric values 
to trace the value of the attribute in the chart. You can add multiple attributes to the chart. 
Click on the remove icon in the table below the chart to remove the attribute from the chart.

.. figure:: /_images/engine-cockpit/engine-cockpit-mbeans.png


Logs
^^^^

The **logs** view shows you the latest entries of the :file:`console.log`,
:file:`config.log` and :file:`ivy.log`. Simply click on the :guilabel:`+` to show the log or
the :guilabel:`-` to hide it. If you want to see the logs of an other day, you
can change the date at the top right.

.. figure:: /_images/engine-cockpit/engine-cockpit-logs.png
