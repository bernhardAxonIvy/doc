.. _launch-config:

Launch Configuration
====================

.. _windows-program-launch-config:

Windows Program Launcher Configuration
--------------------------------------

All windows program launchers can be reconfigured with an additional ivy launch
control file :file:`(\*.ilc)`. The ivy launch control file must have the same
name like the launcher itself but instead of the extension :file:`\*.exe` it
must use an extension :file:`\*.ilc`.

.. tip::
    If you want to reconfigure the :file:`AxonIvyEngine.exe` launcher, then
    copy the :file:`Example.ilc` file and rename it to :file:`AxonIvyEngine.ilc`.

The ivy launch control file is a text-based property file. The file has the
following format:

.. code-block:: properties

    # comment line
    property=value
    property=value

Open the file with a text editor to reconfigure it. Most properties found in the
ivy launch control file are used to modify java virtual machine options. The
following list shows all available options and explains them:

+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Property                      | JVM Option | Description                                                                                                                                                                 |
+===============================+============+=============================================================================================================================================================================+
| ivy.heap.max.ratio            | yes        | The maximum heap size (-Xmx) in percentage of the physical memory of the machine.                                                                                           |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.max.size             | yes        | The maximum heap size (-Xmx) in megabytes.                                                                                                                                  |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.start.size           | yes        | Start heap size (-Xms) in mega bytes.                                                                                                                                       |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.free.max.ratio       | yes        | The maximum free heap memory (-XX:MaxHeapFreeRatio) in percentage of the current heap size.                                                                                 |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.free.min.ratio       | yes        | The minimum free heap memory (-XX:MinHeapFreeRatio) in percentage of the current heap size.                                                                                 |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.young.max.size       | yes        | The maximum young heap size (-XX:MaxNewSize) in megabytes.                                                                                                                  |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.young.min.size       | yes        | The minimum young heap size (-XX:NewSize) in megabytes.                                                                                                                     |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.eden.survivor.ratio  | yes        | The survivor heap size as ratio between the eden and the survivor heap size (-XX:SurvivorRatio)                                                                             |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.heap.tenured.young.ratio  | yes        | The young heap size as ratio between the tenured and the young heap size (-XX:NewRatio).                                                                                    |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.jvm.type                  | yes        | The Java virtual machine type to use (ClientHotspotJVM, ServerHotspotJVM).                                                                                                  |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.dir.aux                   | no         | The directory where the ivyTeam jars are located.                                                                                                                           |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.dir.jre                   | no         | The directory where the java runtime environment is located.                                                                                                                |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.java.main.class           | no         | An own Java class to launch instead of ivy engine's main starter class.                                                                                                     |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.java.main.method          | no         | Another Java static method to launch on the ivy.java.main.class instead of the default main method. The called method should take the same arguments as a Java main method. |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.vm.additional.options     | yes        | Additional Java virtual machine arguments                                                                                                                                   |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.garbage.collector.options | yes        | Additional garbage collector arguments. See too GC Optimization.                                                                                                            |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.windows.service.name      | no         | The name of the Windows service (only for Windows service launcher).                                                                                                        |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.application.name          | no         | The name of the application (only for application launcher).                                                                                                                |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ivy.application.singleton     | no         | Is the application a singleton (true, false; only for application launcher).                                                                                                |
+-------------------------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. _linux-launcher-config:

Linux Launcher Configuration
----------------------------

The Java virtual machine (JVM) options for the Engine are configured in the
:file:`AxonIvyEngine.conf` file. For all other helper programs the JVM options
are configured in the :file:`control.conf` file.

.. tip::
    If you want to configure the memory (-Xmx, -Xms, etc.) or optimize any other
    JVM options of the Engine then edit the :file:`AxonIvyEngine.conf` file.

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.product/root/bin/linux/AxonIvyEngine.conf
    :language: bash
