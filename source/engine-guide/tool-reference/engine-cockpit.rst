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
can test it by clicking on the :guilabel:`Send` button and send a test mail.

.. figure:: images/engine-cockpit-dashboard.png



Applications
------------

On the **applications** page you have a list with each application which is
running on the engine. You can start, stop or lock these applications. Every
application has its process models and process model versions. Those can be
started and stopped too. If you click on a application, you switch to the
:ref:`engine-cockpit-application-detail` view of this application.

.. figure:: images/engine-cockpit-applications.png



.. _engine-cockpit-application-detail:

Application detail
^^^^^^^^^^^^^^^^^^

The **application detail** page gives you similar information like the dashboard
but specific for the chosen application. In addition you can change the active
environment, start or stop the application. On the **Security System** panel you
have the possibility to change your security system. You can choose every system
you have configured in your :ref:`ivy-yaml` file.

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

On the security system detail view you have the possebility to change a
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



Email
-----

In the **email** section you can change the default email notification settings
for each application. 

.. figure:: images/engine-cockpit-email.png



System Configuration
----------------------

On the **system configuration** page you will have an overview about all your
configurations defined in your running engine. Configurations which are grey,
are default values. If you click on the :guilabel:`New` button, you can add new
configurations. If you want to edit an existing configuration, click on the
:guilabel:`Pencil` button. If you click on the button :guilabel:`More`, you have
the possebility to reset a configuration or view the configuration file.

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

The **logs** view shows you the latest entries of the `console.log`,
`config.log` and `ivy.log`. Simply click on the :guilabel:`+` to show the log or
the :guilabel:`-` to hide it. If you want to see the logs of an other day, you
can change the date at the top right.

.. figure:: images/engine-cockpit-logs.png
