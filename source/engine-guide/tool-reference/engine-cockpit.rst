Engine Cockpit
==============

The **Engine Cockpit** is the application to administrate your engine.

.. warning::
    Please be aware, that this tool is in a development stage. That means not
    every part is fully functional and can change before its release.



Opening the tool
----------------

After you have successfully started the Axon.ivy Engine, you can launch the engine cockpit tool.

To do so, start your preferred web browser and open the address:
http://ServerName:Port/ivy/faces/view/system/engine-cockpit/dashboard.xhtml

.. tip::
    You can launch the engine cockpit over the Axon.ivy Engine info page as
    well. To do so, open the address: http://ServerName:Port/ivy in your browser
    and click on the :guilabel:`Cockpit` tab

.. note::
    For the usage of this tool, you will need a valid user with enough rights
    for the login.



Dashboard
---------

The **dashboard** provides you a quick overview of your running engine. There
are real time information about open sessions, user count, working tasks and
deployed applications. In addition it will show you information about your
system where the engine is running on. If you have a EMail Server configured you
can test it by clicking on the :guilabel:`Send` button and send a test mail. On
the licence panel you have the possibility to upload a licence. To do so click
on the :guilabel:`Upload Licence` button.

.. figure:: images/engine-cockpit-dashboard.png



.. _engine-cockpit-application:

Applications
------------

On the **applications** page you have a list with each application which is
running on the engine. You can start, stop or lock these applications. Every
application has its process models and process model versions. Those can be
started and stopped too. You can add a new application by clicking on the
:guilabel:`Add` button. By clicking on a application, you switch to the
:ref:`engine-cockpit-application-detail` view.

For deployment of a new version of an app, you can click on the
:guilabel:`Deployment` button to open the **Deployment Dialog**. Have a look at
the :ref:`engine-cockpit-application-detail` view for more information.

.. figure:: images/engine-cockpit-applications.png



.. _engine-cockpit-application-detail:

Application detail
^^^^^^^^^^^^^^^^^^

The **application detail** page gives you similar information like the dashboard
but specific for the chosen application. In addition you can change the active
environment, start or stop the application. On the **Security System** panel you
have the possibility to change your security system. You can choose every system
you have configured in your :ref:`ivy-yaml` file.

If you want to deploy an Axon.ivy project, click on the :guilabel:`Deployment`
button and select your :file:`.iar` or :file:`.zip` file. For the deployment you
can set additional deployment options. For more information have a look at
:ref:`deployment-options`. For the usage of this feature the
:ref:`deployment-rest` feature needs to be enabled
(:ref:`security-engine-optional-features`).

.. note:: 
    For CI/CD pipelines deployment visit the :ref:`deployment-automated`
    chapter.

.. figure:: images/engine-cockpit-application-detail.png



Security System
---------------

The security system page will give you an overview about every running
application and the security system it is using. In addition you have the
possibility to trigger the synchronization directly over the UI. After the sync
process is finished you will see the log about what has been done.

.. note::
    Only external security systems (Microsoft Active Directory and Novell
    eDirectory) can be synchronized.

You can edit a configured external security system (not ivy Security System)
directly in your :ref:`ivy-yaml` file or you can click on the name of the system
to open the :ref:`engine-cockpit-security-system-detail` view.

.. figure:: images/engine-cockpit-security-system.png


.. _engine-cockpit-security-system-detail:

Security System detail
^^^^^^^^^^^^^^^^^^^^^^

On the security system detail view you have the possibility to change a
configured security system. The settings is read directly from the
:ref:`ivy-yaml` file. Every change you make and save will be written directly
back to the yaml file. The placeholder in the empty fields are the default
values from the system. So you don't need to define those if they are the same.

.. note::
    If you had something configured and you delete this entry, the entry will be
    removed from the :ref:`ivy-yaml` file. 

.. figure:: images/engine-cockpit-security-system-detail.png



Users
-----

On this page you see all users per application. You can change the application
over the tabs on the top of the view. The table shows you basic information
about the user and if they have an open session. You can add a new users too. To
do so, click on the :guilabel:`New` button and fill in the dialog. The name is
required and needs to be unique.

.. warning::
    You can't add a new user to a chosen application, if the application is
    connected to an external active directory.

To get more information about a user or change some settings, you can click on
one user to go to the :ref:`engine-cockpit-user-detail` view.

.. figure:: images/engine-cockpit-users.png



.. _engine-cockpit-user-detail:

User detail
^^^^^^^^^^^

On the detail view of a user you can change information and settings. The
:guilabel:`Information` panel shows you the attributes of the user. You can
change all of them except the name. It's also possible to delete the user here.
The :guilabel:`Email Notification Settings` panel shows the notification
settings for the user. The :guilabel:`Roles` panel shows you a tree with all
roles. The user is a direct member of a role, if the role has a black check.
When the check is grey, then the user inherits the membership from a child or
member role. On the :guilabel:`Permissions` panel you can see if the user has
all permissions of a group, if the check is black, or some of them when it's
grey. The user can have permissions directly granted / denied or over a role. If
the permission is granted or denied from a role you can override it for this
user.

.. figure:: images/engine-cockpit-user-detail.png



Roles
-----

The **Roles** page gives you a tree of all roles per application. You can change
the selected application on the tabs at the top of the view. In addition you can
see here, if a role has a role member (role icon with a plus). For the detailed
view of a role you can click on the role name. Then you switch to the
:ref:`engine-cockpit-role-detail` page.

.. figure:: images/engine-cockpit-roles.png



.. _engine-cockpit-role-detail:

Role detail
^^^^^^^^^^^

On the **Role Detail** view you can change Information and settings and edit
them. The :guilabel:`Information` panel gives you the possibilities to change
the display name, description or link the role to an external security name. On
the :guilabel:`Users` panel you can add users to this role or remove them. The
:guilabel:`Member` panel shows you all roles, which are members of this role.
You can add more or remove a role here. The :guilabel:`Permission` panel has the
same functionalities, as the one you can find in the
:ref:`engine-cockpit-user-detail` view.

.. figure:: images/engine-cockpit-role-detail.png



Global Variables
----------------

The view **Global Variables** shows you all global variables which are defined
for every application. They can be configured on the project or set in the
:ref:`app-yaml` file. You can switch the environment at the top. To add a new
variable click on the :guilabel:`New` button. If you want to edit a variable click on
the :guilabel:`Pencil` button or the :guilabel:`Delete` button to delete one.
To delete a global variable you have to remove it on the **Default** environment.
Deleting one on a specific environment only resets it to its default value.

.. figure:: images/engine-cockpit-configuration-variables.png



Business Calendar
-----------------

The **Business Calendar** view allows you to see all configured business calendars.
This overview shows you the hierarchical order of each calendar.

.. figure:: images/engine-cockpit-configuration-businesscalendar.png

By clicking on one of the calendars you get redirected to its actual configurations.
The panel **Week configuration** shows you the calendar configuration while
the other three panels show you the registered free days.

.. figure:: images/engine-cockpit-configuration-businesscalendar-detail.png


Email
-----

In the **email** section you can change the default email notification settings
for each application. 

.. figure:: images/engine-cockpit-email.png



External Databases
------------------

The **external databases** view gives you an overview over your configured
external databases inside your project. You can switch to the desired
application over the tabs at the top. If you want to show a different
environment, you can change it at the top right. To get more information over a
database click on one to go to the
:ref:`engine-cockpit-external-database-detail` view.

.. note::
    If you want to add a new external database configuration, please have a look
    at :designer-guide:`Designer Guide </ivy.configuration.html#ivy.database>`.

.. figure:: images/engine-cockpit-external-databases.png



.. _engine-cockpit-external-database-detail:

External Database Detail
^^^^^^^^^^^^^^^^^^^^^^^^

In the **external database detail** view, you can see all configurations from
the selected external database. You can test if the configuration works and a
connection to this database can be established, when you click on the
:guilabel:`Arrow` button. If you click on the :guilabel:`Pencil` button you
notice that you can't edit those configurations here. But you see a snippet from
the :ref:`app-yaml` file, how the configuration above would look like.

.. note:: 
    It could be that the configurations here are not the same as they are configured on the
    project. Maybe they were overwritten inside the :ref:`app-yaml` file.

.. figure:: images/engine-cockpit-external-database-detail.png



Web Services
------------

The **web services** page lists all defined web services. Change the application
or environment at the top to get your desired services. For a detailed view of
the service click on one entry to switch to the
:ref:`engine-cockpit-webservice-detail` view.

.. note::
    If you want to add a new web service, please have a look at
    :designer-guide:`Designer Guide
    </ivy.configuration.html#ivy-editors-webservice>`.

.. figure:: images/engine-cockpit-webservice.png



.. _engine-cockpit-webservice-detail:

Web Service Detail
^^^^^^^^^^^^^^^^^^

On this view all configurations from a web service will be shown. If you wish to
edit the service you can't do that here. But if you click on the
:guilabel:`Pencil` button you will get a snippet from this web service. When you
want to change some configurations you can edit them in the :ref:`app-yaml` file
as like you see it in the snippet.

.. figure:: images/engine-cockpit-webservice-detail.png



Rest Clients
------------

The **rest clients** view gives you an overview over all rest clients which are
configured on this system. You can change the application or environment at the
top. Click on one rest client to get all configurations on the
:ref:`engine-cockpit-rest-client-detail` page.

.. note::
    If you want to add a new rest client, please have a look at
    :designer-guide:`Designer Guide </ivy.configuration.html#ivy-rest-client>`.

.. figure:: images/engine-cockpit-rest-clients.png



.. _engine-cockpit-rest-client-detail:

Rest Client Detail
^^^^^^^^^^^^^^^^^^

On the **rest client detail** page all configurations for this service are
shown. You can click on the :guilabel:`Pencil` button to get a snippet for the
:ref:`app-yaml` file. This snippet shows you an example how you can override this rest client.

.. figure:: images/engine-cockpit-rest-client-detail.png



System Configuration
--------------------

On the **system configuration** page you will have an overview about all your
configurations defined in your running engine. Configurations which are grey,
are default values. If you click on the :guilabel:`New` button, you can add new
configurations. If you want to edit an existing configuration, click on the
:guilabel:`Pencil` button. If you click on the button :guilabel:`More`, you have
the possibility to reset a configuration or view the configuration file.

.. warning::
    Application configurations are not shown on this view. You can see defined
    application configurations on the :ref:`engine-cockpit-application-detail` view.

.. note::
    For more information about the configuration, please have a look at the
    :ref:`configuration` section. 

.. figure:: images/engine-cockpit-system-config.png



Monitor
-------

The **engine cockpit** gives you the possibility to **monitor** your system
where your engine is running on. On the monitor page you will have an overview
about cpu load, memory load, network traffic and disk read write. The memory
monitor shows you in addition the max and usage of the jvm.

.. figure:: images/engine-cockpit-monitor.png



Logs
----

The **logs** view shows you the latest entries of the :file:`console.log`,
:file:`config.log` and :file:`ivy.log`. Simply click on the :guilabel:`+` to show the log or
the :guilabel:`-` to hide it. If you want to see the logs of an other day, you
can change the date at the top right.

.. figure:: images/engine-cockpit-logs.png
