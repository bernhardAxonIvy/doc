Security
--------


.. _engine-cockpit-security-system:

Security System
^^^^^^^^^^^^^^^

The security system page will give you an overview of every running
application and the security system it is using. In addition you have the
possibility to trigger the synchronization directly over the UI. After the sync
process is finished you will see the log about what has been done.

.. note::
    Only external security systems (Microsoft Active Directory and Novell
    eDirectory) can be synchronized.

You can edit a configured external security system (not Ivy Security System)
directly in your configuration files (see :ref:`configuration-security-system`)
or you can click on the name of the system to open the
:ref:`engine-cockpit-security-system-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system.png


.. _engine-cockpit-security-system-detail:

Security System detail
""""""""""""""""""""""

On the security system detail view you can change a onfigured security
system. The settings are read directly from the :ref:`ivy-yaml` file.
Every change you make and save will be written directly back to the yam
file. The placeholders in the empty fields are the system default values.
If your settings are the same as the default ones, you do not need to define
them.

If you want the know more about how to configure a security system, have a look
at the :ref:`ivy-securitysystem-yaml` file.

.. note::
    If you had something configured and you delete this entry, the entry will be
    removed from the :ref:`ivy-yaml` file. 

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system-detail.png


Users
^^^^^

On this page you see all users per application. You can switch the application
by clicking on the tabs at the top of the view. The table displays basic information
about the users and if they have an open session. You can add a new users too. To
do so, click on the :guilabel:`New` button and fill in the dialog. A user name is
required and needs to be unique within an application.

A click on a user will display its :ref:`engine-cockpit-user-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-users.png


.. _engine-cockpit-user-detail:

User detail
"""""""""""

In the **User Detail** view you can view and change the settings of and information
about a user.

The :guilabel:`Information` panel displays the attributes of the user. You can
change all of them except the name. It is also possible to enable, disable or delete
the user. After disabling the user will not be able to login, all active sessions
will be closed, and he won't count as named user anymore. Deleting a user will
remove him from the users table in the database.

The :guilabel:`Roles` panel diplays a tree with all roles a user has. The user
is a direct member of a role if the role has a black tick. If the tick is grey
the user inherits the membership from a child or member role.

Additional user properties can be configured manually (over the buttons :guilabel:`Add`,
:guilabel:`Edit` and :guilabel:`Delete`) or they can be defined in an external
:ref:`engine-cockpit-security-system`. Attributes mapped in the external security
system's :ref:`Additional LDAP Attributes<engine-cockpit-security-system-detail>`
(e.g. phone number) will be displayed in this panel.

The :guilabel:`Email Notification Settings` panel displays the user's notification
settings.

In the :guilabel:`Permissions` panel you can see what permissions a user has and change
them. A tick is shown if the user has a permission or permissions within a group. The
tick is black if the user has this permission or all the permissions underneath this
permission group. The tick is grey if the user has only some of the permission of a group.
The user can have permissions directly granted / denied, or through a role. If
the permission is granted or denied through a role you can override this for the
user.

.. figure:: /_images/engine-cockpit/engine-cockpit-user-detail.png


Roles
^^^^^

The **Roles** page displays a tree of all roles per application. You can switch the application
by clicking on the tabs at the top of the view. If a role has child roles, the tree shows a ``>``
icon, which can be unfolded by clicking on it.

A click on a role will display its :ref:`engine-cockpit-role-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-roles.png


.. _engine-cockpit-role-detail:

Role detail
"""""""""""

In the **Role Detail** view you can view and change the settings of and information
about a user.

In the :guilabel:`Role information` panel you can edit the display name and description
of a role, or link the role to an external security name.

In the :guilabel:`Users` panel you can add users to the role or remove them.

Within the :guilabel:`Properties` panel you can edit properties of a role.

The :guilabel:`Role members` panel displays all child roles. You can add or remove
child roles here.

In the :guilabel:`Permissions` panel you can see what permissions a role has and change
them. A tick is shown if the role has a permission or permissions within a group. The
tick is black if the role has this permission or all the permissions underneath this
permission group. The tick is grey if the role has only some of the permission of a group.

.. figure:: /_images/engine-cockpit/engine-cockpit-role-detail.png
