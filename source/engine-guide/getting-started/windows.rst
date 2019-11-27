.. _getting-started-windows:

Windows (with UI tools)
=======================

Download the Engine
-------------------

:dev-url:`Download </download>` the |ivy-engine| and save the
:file:`AxonIvyEngine\*.zip` file to your temporary download folder. 


Install the Engine
------------------

We suggest that you install the |ivy-engine| into a new folder called
:file:`ivy\\engine` on one of your drives (e.g. :file:`c:\\ivy\\engine`). To do
so open a Windows Explorer and navigate to :file:`C:\\` and create those new
folders. Then, navigate to your temporary download folder and copy the file
:file:`AxonIvyEngine\*.zip` to the newly created folder.

Right click the :file:`AxonIvyEngine\*.zip` file and press :guilabel:`Extract
All ...` from the context menu.

.. figure:: /_images/engine-getting-started/unzip-windows.png

On the appearing dialog press the :guilabel:`Extract` button. After the
:file:`AxonIvyEngine\*.zip` is extracted navigate into the new
:file:`AxonIvyEngine` folder. The content of the installation folder looks like
this:

.. figure:: /_images/engine-getting-started/engine-folder.png

.. Hint:: 
  The most important sub folders in the |ivy-engine| installation folder are:

  * :file:`bin` folder contains all the executables
  * :file:`configuration` folder contains the configuration files.


Start the Engine
----------------

Navigate to the :file:`bin` folder and double click on the
:file:`ControlCenter.exe` file to start the Control Center. You can use this
tool to start and stop the |ivy-engine| in different ways (as Windows Service,
as normal user process, with a console window). Select the |ivy-engine| and
press the green play button to start the |ivy-engine| as a normal user process:

.. figure:: /_images/engine-getting-started/controlcenter.png

.. Hint::
  You can use the Control Center also to register Axon.ivy Engine as Windows
  Service. Moreover, you can add other existing Windows Services to the list of
  Engines to start and stop them with the Control Center. For example, if you
  have installed your database server on the same machine you can add the
  Windows Service of the database server.

After the Axon.ivy Engine has beend started a web browser is opened and the main
page of the Axon.ivy Engine is displayed.


.. include:: _use-the-engine.rst


Configure the Engine
--------------------

Now, let's configure the Axon.ivy Engine with a license and system database. 

To start with that you must first request a valid Axon.ivy Engine license.
Either you get a license for your productive system through one of our sales
personal or contact our support for time limited tryout licenses. If you do not
have a license you can skip this section and continue with the next section.

Moreover, you need to have a supported database server up and running with a
database user that has the rights to create new databases. The configuration and
creation of the system database differs a little bit depending on the database
system you use. We will use a PostgreSQL database server.

You can start the :ref:`setup-wizard` on the main page of the Axon.ivy Engine
(e.g. http://localhost:8080) by clicking on the link of the **Demo Mode**
warning message.

On the first page use the :guilabel:`Choose licence` button to install your
license file or drop it inside the field.

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-licence.png

Your installed licence can be viewed if you click on the link at the top right.
Press the :guilabel:`Next` button to continue.

On the next page, you can configure system administrators. 

.. figure:: /_images/engine-getting-started/administrator.png

Click :guilabel:`Add Administrator`, fill in the form and press the
:guilabel:`Add Administrator` button. 

.. Note::
  Administrators can administrate the Axon.ivy Engine. For example, they can add
  or remove users, assign user to roles, deploy projects, etc. Therefore, you
  need at least one administrator to administrate the Axon.ivy Engine. The Email
  addresses of administrators are used to send mail notifications if license
  problems occur.

On the next page configure which protocol connectors and ports the Axon.ivy
Engine internal web server should provide. 

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-webserver.png

.. include:: _webserver.rst

Press the :guilabel:`Next` button.

On the next screen choose the correct **Database** and **Driver** (in our case
PostgreSQL). Configure the **Host** and **Port** where your database server is
running and listening. Configure the **Username** and **Password** of a database
user that has the right to create a new database on the database server. Press
the :guilabel:`Create Database` button.

.. figure:: /_images/engine-getting-started/systemdatabase.png

On the appearing dialog configure the name of the Axon.ivy system database.
Press the :guilabel:`Save and create` button to save and create the system
database.

.. figure:: /_images/engine-getting-started/createdatabase.png

As soon as the database creation is finished the following dialog appears:

.. figure:: /_images/engine-getting-started/createdatabase-success.png

Press the :guilabel:`Connect` button to connect to the newly created system
database. 

.. Note::
  The system database is used by the Axon.ivy Engine to store configurations,
  users, roles, process instances, tasks and process data

Press the :guilabel:`Finish` button.

A dialog appears and you can click :guilabel:`OK` to go back to the *main
page*. 

.. figure:: /_images/engine-getting-started/summary.png

Switch back to the **Control Center** and restart the Axon.ivy Engine by
stopping and starting it again. 

Note, that the HTTP port of the Axon.ivy Engine may have changed. If you did
change the HTTP settings. So open again a web browser and navigate to
http://localhost:8080. Have you seen that the header with the :ref:`demo-mode`
message is gone? You now have a production ready Axon.ivy Engine.



Deploy a project
----------------

Let's deploy an Axon.ivy project to the Axon.ivy Engine. Simply download
WorkflowDemos and drop it in :file:`[engineDir]/deploy` folder. Refresh the
main page of the Axon.ivy Engine. There is now a new section called
WorkflowDemos available with new links to start processes.

.. figure:: /_images/engine-getting-started/workflow-demos.png

Congratulations you have installed and configured your first Axon.ivy Engine and
deployed your first Axon.ivy project.
