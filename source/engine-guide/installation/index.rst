Installation
************

.. rubric:: System Requirements

Before installing |ivy-engine| check if your system meets the
:ref:`system requirements <engine-system-requirements>`.

.. _install_engine:

.. rubric:: Install |ivy-engine|

To install the |ivy-engine| extract the correct zip file for your platform to
the directory where you want to install the |ivy-engine|. For Debian based
operating systems there is a convenient installer package available. The
following platforms are supported: 

+-------+--------------+----------------------+-----------------------------------------------------------------------------------------------+
| CPU   | Architecture | Operation System     | Installation File                                                                             |
+=======+==============+======================+===============================================================================================+
| Intel | x64          | Debian (Ubuntu/Mint) | :dev-url:`axonivy-engine-V_X.Y.Z.deb  </permalink/latest/axonivy-engine.deb>`                 |
+-------+--------------+----------------------+-----------------------------------------------------------------------------------------------+
| Intel | x64          | Windows              | :dev-url:`AxonIvyEngineX.Y.Z_Windows_x64.zip </permalink/latest/axonivy-engine-windows.zip>`  |
+-------+--------------+----------------------+-----------------------------------------------------------------------------------------------+
| Intel | x64          | Linux and Windows*   | :dev-url:`AxonIvyEngineX.Y.Z_All_x64.zip </permalink/latest/axonivy-engine.zip>`              |
+-------+--------------+----------------------+-----------------------------------------------------------------------------------------------+
| Intel | x64          | Linux and Windows*   | :dev-url:`AxonIvyEngineX.Y.Z_Slim_All_x64.zip </permalink/latest/axonivy-engine-slim.zip>`    |
+-------+--------------+----------------------+-----------------------------------------------------------------------------------------------+

\* The *All* and *Slim_All* engines are delivered with launchers for Linux and
Windows, but without a JRE. To use the slim |ivy-engine| set up the ``IVY_JAVA_HOME``
environment variable pointing to a supported x64 JRE, or the ``JAVA_HOME``
environment variable pointing to a supported x64 JDK. The slim |ivy-engine| comes
without demo projects.

.. Note::
    Note, that the installation procedure implies sufficient administration and
    access rights on the system. For example, the access to drive :file:`C:` on a
    Windows Server 2008 system is very restrictive that you might install the
    programs on drive :file:`D:` instead.


.. _start_engine:

.. rubric:: Start the |ivy-engine|

You can start the |ivy-engine| by navigation to the :file:`bin` folder and executing the
:file:`AxonIvyEngine` binary on Linux:

.. code:: bash

    cd bin
    ./AxonIvyEngine
    
and the :file:`AxonIvyEngineC.exe` on Windows:

.. code:: doscon

    cd bin
    AxonIvyEngineC.exe
    
Alternative, you can use the :ref:`control-center` to start the |ivy-engine|.     
By default the |ivy-engine| starts in :ref:`demo-mode`.


.. _installing-a-licence:

.. rubric:: Installing a Licence

You have to install a licence in order to run |ivy-engine| in :ref:`production-mode`.
To order a licence file you need to know the public URLs that end users will use to access your |ivy-engine|.

.. admonition:: Example
  
  Let's assume your |ivy-engine| is installed on a machine with the DNS name ``axonivyprod``.
  Users access the |ivy-engine| in two different ways:
  
  * Intranet users use ``http://axonivyprod:8080`` to access it. 
  * Internet users use ``https://www.customer.com`` to access it through a reverse proxy.

  An admistrator accesses the |ivy-engine| with an IP Address ``http://192.168.1.19``.
  
  In this case the licence must contain three public URLs:
  
  * ``axonivyprod``
  * ``www.customer.com``
  * ``192.168.1.19``

  Remark: Access via ``localhost``, ``127.0.0.1`` and ``::1`` is always possible
  and needs not to be provided in the licence..

To install a licence file use the :ref:`engine-cockpit` or follow the steps below:
  
#. Copy the licence file :file:`\*.lic` to the directory :file:`[engineDir]/configuration`.
#. Remove all other licence files in the :file:`[engineDir]/configuration` directory.

.. note::
  For container based installations it is also possible to make the license file
  available via :ref:`environment variables or docker-secrets <configuration_containers_licence>`.

.. rubric:: Creating a system database

You have to create and configure a :ref:`system database <systemdb>` in order to run |ivy-engine| in :ref:`production-mode`.
See :ref:`Configuration <config-systemdb>` to find out how you can create and configure |ivy-engine|
:ref:`system database <systemdb>`. 

.. rubric:: Detailed Installation Information

.. toctree::
   :maxdepth: 1

   system-requirements
   standard-edition
   enterprise-edition
   systemdatabase
   engine-modes
   files
