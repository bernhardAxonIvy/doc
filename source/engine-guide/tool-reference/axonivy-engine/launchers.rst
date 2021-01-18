.. _axonivy-engine:

Engine Launchers
================

This program starts an instance of an |ivy-engine|.

.. tip::
    An |ivy-engine| can also be started as a service. For more information
    see section :ref:`engine-service`.


.. rubric:: Launchers

The following program launchers are available for the |ivy-engine|:

+---------------------------------+----------+-----------------+
| Launcher                        | Platform | Console support |
+=================================+==========+=================+
| :file:`bin/AxonIvyEngine.exe`   | Windows  | no              |
+---------------------------------+----------+-----------------+
| :file:`bin/AxonIvyEngineC.exe`  | Windows  | yes             |
+---------------------------------+----------+-----------------+
| :file:`bin/AxonIvyEngine`       | Linux    | yes             |
+---------------------------------+----------+-----------------+


.. rubric:: Options

The following options are available for the |ivy-engine|:

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
| -maintenance | Starts the engine in maintenance mode.                                                                                                              | no        |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+
