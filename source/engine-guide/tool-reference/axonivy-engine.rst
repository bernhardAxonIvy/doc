.. _axonivy-engine:

Axon.ivy Engine
===============

This program starts an instance of the Axon.ivy Engine. 

.. tip::
    An Axon.ivy Engine can also be started as service. More information can
    be found in the section :ref:`engine-service` chapter.


Launchers
---------

The following program launchers are available for the Axon.ivy Engine program:

+---------------------------------+----------+-----------------+
| Launcher                        | Platform | Console support |
+=================================+==========+=================+
| :file:`bin/AxonIvyEngine.exe`   | Windows  | no              |
+---------------------------------+----------+-----------------+
| :file:`bin/AxonIvyEngineC.exe`  | Windows  | yes             |
+---------------------------------+----------+-----------------+
| :file:`bin/AxonIvyEngine`       | Linux    | yes             |
+---------------------------------+----------+-----------------+


Options
-------

The following options are available for the Axon.ivy Engine program:

+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
| Option       | Description                                                                                                                                         | Mandatory |
+==============+=====================================================================================================================================================+===========+
| -start       | Starts the engine. Same behaviour as if no options are given. Allows to stop the engine by pressing a key in the console if a console is available. | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
| -startdaemon | Starts the engine. Does not allow to stop the engine by pressing a key in the console.                                                              | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
| -stop        | Stops the engine. Only initiate the stop but will not wait until the engine has really stopped.                                                     | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
| -stopdaemon  | Stops the engine. Will wait until the engine has really stopped.                                                                                    | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
| -status      | Prints the current status of the engine.                                                                                                            | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
