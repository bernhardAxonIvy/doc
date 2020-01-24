.. _engine-service:

Engine Service
==============

In productive environments it is recommended to run the Axon.ivy Engine as a
service.


Windows Service
---------------

The binary :file:`bin/AxonIvyEngineService.exe` is the implementation of
Axon.ivy Engine as Windows Service. It can also be used as command
line tool to register, unregister, start and stop Axon.ivy Engine
as Windows Service. The command line tool must *run as administrator*.

.. rubric:: Register Axon.ivy Engine as Windows Service

.. code-block:: powershell

   AxonIvyEngineService.exe -register [windowsServiceName] [username] [password]

.. rubric:: Unregister Axon.ivy Engine as Windows Service

.. code-block:: powershell

   AxonIvyEngineService.exe -unregister [windowsServiceName]

.. rubric:: Start the Windows Service

.. code-block:: powershell

   AxonIvyEngineService.exe -start [windowsServiceName]

.. rubric:: Stop the Windows Service

.. code-block:: powershell

   AxonIvyEngineService.exe -stop [windowsServiceName]

Parameters:
  - ``windowsServiceName`` is always optional and set by default to **Axon.ivy Engine**.
  - ``username`` is optional and defines under which user the windows service should run.
  - ``password`` is mandatory if ``username`` is set and defines the password for the given user.

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
