Configure the Engine
--------------------

Now, let's configure the |ivy-engine| with a license and system database. 

To start with that you must first request a valid |ivy-engine| license.
Either you get a license for your productive system through one of our sales
personal or contact our support for time limited trial licenses. If you do not
have a license you can skip this section and continue with the next section.

Moreover, you need to have a supported database server up and running with a
database user that has the rights to create new databases. The configuration and
creation of the system database differs a little bit depending on the database
system you use. We will use a PostgreSQL database server.

You can start the :ref:`setup-wizard` on the main page of the |ivy-engine|
(e.g. http://localhost:8080) by clicking on the link of the demo mode
warning message.

On the first page use the :guilabel:`Choose license` button to install your
license file or drop it inside the field.

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-licence.png

Your installed license can be viewed if you click on the link at the top right.
Press the :guilabel:`Next` button to continue.

On the next page, you can configure system administrators. 

.. figure:: /_images/engine-cockpit/engine-cockpit-dialog-new-admin.png

Click :guilabel:`Add Administrator`, fill in the form and press the
:guilabel:`Add Administrator` button. 

.. Note::
  Administrators can administrate the |ivy-engine|. For example, they can add
  or remove users, assign user to roles, deploy projects, etc. Therefore, you
  need at least one administrator to administrate the |ivy-engine|. The Email
  addresses of administrators are used to send mail notifications if license
  problems occur.

On the next page configure which protocol connectors and ports the Axon Ivy
Engine internal web server should provide. 

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-webserver.png

.. include:: ../_webserver.rst

Press the :guilabel:`Next` button.

On the next screen choose the correct **Database** and **Driver** (in our case
PostgreSQL). Configure the **Host** and **Port** where your database server is
running and listening. Configure the **Username** and **Password** of a database
user that has the right to create a new database on the database server. Press
the :guilabel:`Create Database` button.

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-systemdb.png

On the appearing dialog configure the name of the Axon Ivy system database.
Press the :guilabel:`Save and create` button to save and create the system
database.

.. figure:: /_images/engine-cockpit/engine-cockpit-dialog-setup-systemdb-create.png

As soon as the database creation is finished you can click on the
:guilabel:`Connect` button to connect to the new system database. 

.. Note::
  The system database is used by the |ivy-engine| to store configurations,
  users, roles, process instances, tasks and process data

Press the :guilabel:`Finish` button.

A dialog appears (you may see configuration warnings that should be resolved
first) and you can click :guilabel:`OK` to go back to the *main page*. 

.. figure:: /_images/engine-cockpit/engine-cockpit-dialog-setup-finish.png

Switch back to the **Control Center** and restart the |ivy-engine| by
stopping and starting it again. 

Note, that the HTTP port of the |ivy-engine| may have changed. If you did
change the HTTP settings. So open again a web browser and navigate to
http://localhost:8080. Have you seen that the header with the :ref:`demo-mode`
message is gone? You now have a production ready |ivy-engine|.
