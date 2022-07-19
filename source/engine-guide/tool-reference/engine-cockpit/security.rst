Security
--------


.. _engine-cockpit-security-system:

Security System
^^^^^^^^^^^^^^^

The security system page will give you an overview of every running application
and the security system it is using. In addition, you have the possibility to
trigger the synchronization of users and role assignments directly in the UI.
After the sync process is finished you will see what has been done in the log.

.. note::
    Only external security systems (Microsoft Active Directory and Novell
    eDirectory) can be synchronized.

You can edit a configured external security system (not the Axon Ivy Security System)
directly in your configuration files (see :ref:`configuration-security-system`)
or you can click on the name of the security system to open the
:ref:`engine-cockpit-security-system-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system.png


.. _engine-cockpit-security-system-detail:

Security System Detail
""""""""""""""""""""""

In the security system detail view you can change a configured security system.
The settings are read directly from the :ref:`ivy-yaml` file. Every change you
make and save is meediately written to the :ref:`ivy-yaml` file. The
placeholders in the empty fields are the system default values. If your settings
are the same as the default ones, you do not need to define them.

.. note::
    If you had something configured and you delete this entry, the entry will be
    removed from the :ref:`ivy-yaml` file. 

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system-detail.png

For all configuration options on a security system, refer to the
:ref:`ivy-securitysystem-yaml` file.

Users
^^^^^

On this page you see all users per application. You can switch the application
by clicking on the tabs at the top of the view. The table displays basic information
about the users and if they have an open session. You can add a new users, too. To
do so, click on the :guilabel:`New` button and fill in the dialog. A user name is
required and needs to be unique within an application.

A click on a user will display its :ref:`engine-cockpit-user-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-users.png


.. _engine-cockpit-user-detail:

User Detail
"""""""""""

In the **User Detail** view you can view information about a user. If you are
using the Axon Ivy Security System, you can also change his settings.

The :guilabel:`Information` panel displays the attributes of the user. You can
change all of them except the name. It is also possible to enable, disable or delete
the user. After disabling the user, he will not be able to log in, all of his active sessions
will be closed, and he won't be counted as named user anymore. Deleting a user will
also remove him from the users table in the database.

The :guilabel:`Roles` panel displays a tree with all roles the selected user is
a member of.
- If the role has a black tick, the user is a direct member of this role.
- If the role has a grey tick, the user inherits the membership from a child or member role.

You can configure additional user properties manually (using the buttons
:guilabel:`Add`, :guilabel:`Edit` and :guilabel:`Delete`) or in an external
:ref:`engine-cockpit-security-system`. Attributes mapped in the external
security system's :ref:`Additional LDAP
Attributes<engine-cockpit-security-system-detail>` (e.g. phone number,
department, etc.) will be displayed in this panel.

The :guilabel:`Email Notification Settings` panel displays the user's notification
settings.

In the :guilabel:`Permissions` panel you can see what permissions a user has and change
them. A tick is shown if the user has a permission or permissions within a group. The
tick is black if the user has this permission or all the permissions underneath this
permission group. The tick is gray if the user has only some of the permission of a group.
The user can have permissions directly granted / denied, or through a role. If
the permission is granted or denied through a role you can override this for the
user.

.. figure:: /_images/engine-cockpit/engine-cockpit-user-detail.png


Roles
^^^^^

The **Roles** page displays a tree of all roles per application. You can switch the application
by clicking on the tabs at the top of the view. If a role has child roles, the tree shows a ``>``
icon, which can be unfolded by clicking on it.

A click on a role displays its :ref:`engine-cockpit-role-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-roles.png


.. _engine-cockpit-role-detail:

Role Detail
"""""""""""

In the **Role Detail** view you can view information about the role and change its settings.

The :guilabel:`Role information` panel allows you to edit display name and description
of the role, or link the role to an external security name (usually a group or a user).

The :guilabel:`Users` panel allows you to add or remove users. 
Note: If the role is linked to a external security name, you cannot change user assignments.

Within the :guilabel:`Properties` panel you can edit properties of a role.

The :guilabel:`Role members` panel displays all child roles. You can add or remove
child roles here.

The :guilabel:`Permissions` panel allows you to see and change the permissions
of the role. A tick is shown if the role has a given permission or permissions within a
group. The tick is black if the role has this permission or all the permissions
underneath this permission group. The tick is grey if the role has only some of
the permission of a group.

.. figure:: /_images/engine-cockpit/engine-cockpit-role-detail.png
