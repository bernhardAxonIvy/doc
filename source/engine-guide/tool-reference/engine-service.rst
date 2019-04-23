.. _engine-service:

Engine Service
==============

In productive environments it is recommended to run the Axon.ivy Engine as a
service.


Windows Service
---------------

The binary :file:`bin/AxonIvyEngineService.exe` is the implementation of
Axon.ivy Engine as Windows Service. But it can also be used to register,
unregister, start and stop Axon.ivy Engine as Windows Service. 

The following options are available for Axon.ivy Engine Service program:

.. code-block:: powershell

  AxonIvyEngineService.exe [-start|-stop|-register [username password]|-unregister]

+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
| Options     | Parameters | Description                                                               | Mandatory                     |
+=============+============+===========================================================================+===============================+
| -start      |            | Starts the Axon.ivy Engine Windows Service                                | no                            |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
| -stop       |            | Stops the Axon.ivy Engine Windows Service                                 | no                            |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
| -register   |            | Registers the Axon.ivy Engine Windows Service within Windows              | no                            |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
|             | username   | The user name of the user in which context the windows service should run | no                            |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
|             | password   | The password of the user in which context the windows service should run  | yes, if username is specified |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+
| -unregister |            | Unregisters the Axon.ivy Engine Windows Service from Windows              | no                            |
+-------------+------------+---------------------------------------------------------------------------+-------------------------------+

.. Note::
    You can also use the :ref:`control-center` to register, unregister, start
    and stop the Axon.ivy Engine Windows Service.


Linux Service
-------------

The install service program :file:`InstallService.sh` helps to install the
Axon.ivy Engine as a systemd Linux daemon. To install the service:

#. Run following command as root: ``[engineDir]/bin/InstallService.sh``
#. Accept the directory of your engine installation.
#. Set the user and group under which the Engine service should run. Must not be
   root. Typically, a special user with limited access right should be used.
#. Start the Engine service with ``systemctl start AxonIvyEngine.service`` to
   check if it works.
#. Check the current status of the service with ``systemctl status
   AxonIvyEngine.service``
#. If you want to start the Engine service on the system start, execute
   following command: ``systemctl enable AxonIvyEngine.service``

.. Hint::
    For more information about systemd services consult ``man systemd`` and
    ``man systemctl``.