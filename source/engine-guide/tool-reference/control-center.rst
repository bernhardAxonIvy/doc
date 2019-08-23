.. _control-center:

Control Center
==============

The Control Center integrates all tools to configure the engine, register as a
Windows service and to start & stop the installed |ivy-engine|.


Launchers
---------

Use one of the following launchers to start the Control Center.

+--------------------------------+----------+-----------------+
| Launcher                       | Platform | Console support |
+================================+==========+=================+
| :file:`bin/ControlCenter.exe`  | Windows  | no              |
+--------------------------------+----------+-----------------+
| :file:`bin/ControlCenterC.exe` | Windows  | yes             |
+--------------------------------+----------+-----------------+
| :file:`bin/ControlCenter`      | Linux    | yes             |
+--------------------------------+----------+-----------------+


Start / Stop
------------

To start the |ivy-engine|, simply choose the **|ivy-engine|** in the list on the
left side and then press the green :guilabel:`start` button. Alternatively, you
can choose the **|ivy-engine| [Console]** from the list to start the engine
within a console to which some information about the engine is logged. Please
note that closing this console window will terminate the |ivy-engine| without
shutting it down properly. To stop the engine, click the red :guilabel:`stop`
button.

.. figure:: /_images/control-center/control-center-start-server.png


Register Windows Service
------------------------

If you've installed the **|ivy-engine|** under a Windows operating system, you
can register it as a Windows service. To do so, select the entry **|ivy-engine|
[Windows Service]** from the list on the left and press the button
:guilabel:`Windows Service` on the right. A dialog will open, prompting you for
additional configuration data:

.. figure:: /_images/control-center/control-center-windows-service.png

First of all press :guilabel:`Register service` to register the service and to
enable the rest of the configuration sections.

.. Note::
    Service operations (register, unregister, start, stop) may fail because the
    current user does not own the necessary rights. In this case close the
    Control Center and start it again by right clicking on the
    :file:`ControlCenter.exe` and choose the command :guilabel:`Run as
    administrator` from the context menu. After that, the service operation
    should work.

Now you may configure the user under which the service (and therefore the
Axon.ivy Engine) will be executed. This can be either the system user or any
other user with sufficient rights to start services and access the Axon.ivy
Engine installation directory (read and write).

By default, the service start kind is :guilabel:`Manually`. To start the engine
each time Windows is booted, choose the setting :guilabel:`Automatically`.

The last thing that can be configured are the services that the Axon.ivy Engine
depends on. This might be the database management system on which the system
database is located or the web server in which Axon.ivy is integrated (IIS or
Apache). All the services that you add in this list will be started before
Axon.ivy and if any of these services fail to start, Axon.ivy won't start too.

After you have finished the configuration, click :guilabel:`Ok`. Now you will be
able to start the engine from the control center or you may also use the Windows
Service Management Console.


Testing the Engine
------------------

Once you've started the Axon.ivy Engine, try to open the following address in
your preferred web browser: http://ServerName:Port/ivy. If a web page with the
Axon.ivy logo appears, the installation and configuration of the Axon.ivy Engine
was successful and you may continue with the next chapter.


Service List Configuration
--------------------------

The Control Center integrates all tools to configure the engine, the (Windows)
service and to start/stop the installed Axon.ivy Engine.

To open the Control Center application, go to your Axon.ivy Engine installation
directory and launch the :file:`ControlCenter.exe` or the ControlCenter program
located in the :file:`bin` folder.

.. Note::
    The indication whether the program behind an entry in the server list is
    running or not is only shown for the Axon.ivy Engine binaries of the
    installation the Control Center belongs to and for any Windows services
    (including the Axon.ivy Engine services). This applies too for the *show
    console* setting because only Axon.ivy Engine binaries can be started in a
    console (third party applications cannot).

:guilabel:`Add` opens a dialog to choose the type for the new entry. You are
able to decided between a normal Axon.ivy Engine or an Axon.ivy Engine as a
Windows Service. :guilabel:`Remove` removes the selected entry from the list and
:guilabel:`Edit` allows to edit the configuration for the selected entry in the
server list.

.. figure:: /_images/control-center/control-center-create-new-server.png

In the configuration dialog for a normal application you can set the base name
and/or refine with the instance name (in the server list the instance name is
printed in brackets after the name). Add the server binary (or your third party
tool) in the :guilabel:`Server start executable` and the configuration utility
in the field :guilabel:`Configuration program` (or the configuration program of
your third party application). If and only if you choose the console based
binaries (the ones with *C* at the end of the file name, e.g.
:file:`AxonIvyEngineC.exe`) then tick the check box :guilabel:`Show console`. It
has no effect on all other binaries.

.. figure:: /_images/control-center/control-center-create-new-service.png

In the configuration dialog for adding & editing a service entry, you can choose
an already existing service from the combo box or set the service name when you
did not already register the service. Set the configuration program and the
service binary similarly to the description above. For simply starting &
stopping existing services from the Control Center, it is not necessary to
define the service binary

.. Note::
    The name in this dialog must be exactly the same name that is used to
    register the service. Otherwise the lookup will not work.
