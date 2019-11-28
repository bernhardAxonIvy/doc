Security
--------


.. _engine-cockpit-security-system:

Security System
^^^^^^^^^^^^^^^

The security system page will give you an overview about every running
application and the security system it is using. In addition you have the
possibility to trigger the synchronization directly over the UI. After the sync
process is finished you will see the log about what has been done.

.. note::
    Only external security systems (Microsoft Active Directory and Novell
    eDirectory) can be synchronized.

You can edit a configured external security system (not ivy Security System)
directly in your files (see :ref:`configuration-security-system`) or you can click on the name of the system
to open the :ref:`engine-cockpit-security-system-detail` view.

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system.png


.. _engine-cockpit-security-system-detail:

Security System detail
""""""""""""""""""""""

On the security system detail view you have the possibility to change a
configured security system. The settings is read directly from the
:ref:`ivy-yaml` file. Every change you make and save will be written directly
back to the yaml file. The placeholder in the empty fields are the default
values from the system. So you don't need to define those if they are the same.

If you want the know more about how to configure a security system, have a look
at the :ref:`ivy-securitysystem-yaml` file.

.. note::
    If you had something configured and you delete this entry, the entry will be
    removed from the :ref:`ivy-yaml` file. 

.. figure:: /_images/engine-cockpit/engine-cockpit-security-system-detail.png


Users
^^^^^

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

.. figure:: /_images/engine-cockpit/engine-cockpit-users.png


.. _engine-cockpit-user-detail:

User detail
"""""""""""

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

Additional user properties can be configured manually (over the buttons
:guilabel:`Add`, :guilabel:`Edit` and :guilabel:`Delete`) or they can be read
from a :ref:`engine-cockpit-security-system`. To do so, the user needs to be
synced from a security system with :ref:`Additional LDAP Attributes
<engine-cockpit-security-system-detail>` configured. If this is the case,
properties (e.g. phone number) should be appearing here. Be aware of that this
properties can only be edited on your security system.

.. figure:: /_images/engine-cockpit/engine-cockpit-user-detail.png


Roles
^^^^^

The **Roles** page gives you a tree of all roles per application. You can change
the selected application on the tabs at the top of the view. In addition you can
see here, if a role has a role member (role icon with a plus). For the detailed
view of a role you can click on the role name. Then you switch to the
:ref:`engine-cockpit-role-detail` page.

.. figure:: /_images/engine-cockpit/engine-cockpit-roles.png


.. _engine-cockpit-role-detail:

Role detail
"""""""""""

On the **Role Detail** view you can change Information and settings and edit
them. The :guilabel:`Information` panel gives you the possibilities to change
the display name, description or link the role to an external security name. On
the :guilabel:`Users` panel you can add users to this role or remove them. The
:guilabel:`Member` panel shows you all roles, which are members of this role.
You can add more or remove a role here. The :guilabel:`Permission` panel has the
same functionalities, as the one you can find in the
:ref:`engine-cockpit-user-detail` view.

You can add additional properties to a role over the buttons :guilabel:`Add`,
:guilabel:`Edit` and :guilabel:`Delete` on the panel :guilabel:`Properties`.

.. figure:: /_images/engine-cockpit/engine-cockpit-role-detail.png
