.. _control-center:

Control Center
==============

The Control Center integrates all tools to configure an engine, register it as a
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
within a console. Some information about the engine is logged to this console.
Please note that closing this console window will terminate the |ivy-engine|
without shutting it down properly. To stop the engine, click the red
:guilabel:`stop` button.

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
enable the remainder of the configuration sections.

.. Note::
    Service operations (register, unregister, start, stop) may fail because the
    current user does not have the required access rights. In this case close the
    Control Center and start it again by right clicking on the
    :file:`ControlCenter.exe` and choose the command :guilabel:`Run as
    administrator` from the context menu. After that, the service operation
    should work.

Now you may configure the user under which the service (and therefore the
|ivy-engine|) will be executed. This can either be the system user or any
other user with sufficient rights to start services and access the |ivy-engine|
installation directory (read and write).

By default, the service start kind is :guilabel:`Manually`. To start the engine
each time Windows is booted, choose the setting :guilabel:`Automatically`.

The last thing that can be configured are the services that the |ivy-engine|
depends on. This might be the database management system which hosts the system
database or the reverse proxy web server used by the |ivy-engine| (IIS or
Apache). All the services you add in this list will have to be started before
the |ivy-engine|, and if any of these services fail to start, the |ivy-engine|
won't start, either.

After you have finished the configuration, click :guilabel:`Ok`. Now you will be
able to start the engine from the control center or you may also use the Windows
Service Management Console.


Testing the Engine
------------------

Once you've started the |ivy-engine|, try to open the following address in your
preferred web browser: http://ServerName:Port/. If a web page with the
|axon-ivy| logo appears, the installation and configuration of the |ivy-engine|
has been successful - continue with the next chapter.


Service List Configuration
--------------------------

The Control Center also allows you to configure the |ivy-engine|.

.. Note::
    The indication whether the program behind an entry in the server list is
    running or not is only shown for the |ivy-engine| binaries of the
    installation the Control Center belongs to and for any Windows services
    (including the |ivy-engine| services). This applies too for the *show
    console* setting because only |ivy-engine| binaries can be started in a
    console (third party applications cannot).

:guilabel:`Add` first opens a dialog to choose the type for the new entry. You can choose
between a normal |ivy-engine| setup or to setup an |ivy-engine| as a
Windows Service. :guilabel:`Remove` removes the selected entry from the list and
:guilabel:`Edit` allows to edit the configuration for the selected entry in the
server list.

.. figure:: /_images/control-center/control-center-create-new-server.png

In the configuration dialog for a normal application, you can set the base name
and/or change the instance name (in the server list the instance name is
printed in brackets after the name). Add the server binary (or your third party
tool) in the :guilabel:`Engine start executable`. 

If you select the console based binaries (the ones with *C* at the end of the
file name, e.g. :file:`AxonIvyEngineC.exe`) you may tick the check box
:guilabel:`Show console`. It has no effect for all other binaries.

.. figure:: /_images/control-center/control-center-create-new-service.png

In the configuration dialog for adding and editing a service entry, you can
choose an already existing service from the combo box or set the service name if
you have not already registered the service. Set the service binary equivalent
to the description above. To simply start and stop existing services from the
Control Center, it is not necessary to define the service binary.

.. Note::
    The name in this dialog must be exactly the same name used to
    register the service, otherwise the lookup will fail.
