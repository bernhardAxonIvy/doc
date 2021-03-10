Roles and Users
===============

Role is a widely used term in the computer industry and means a group of
users of a certain system which share a common property. This enables an
administrator to define configurations for this groups (roles) of users
at once instead of defining it for each and every user individually.
Axon Ivy incorporates a sophisticated role and user model to support:

-  **Authentication** - Who may login into Axon Ivy
-  **Authorization** - Control who is allowed to do what
-  **Task assignment** - Decide who has to perform a task in a workflow
-  **User dependent UI elements** - Configure who can see and operate on UI elements

In the following two sections you will learn how to create, edit and
remove roles and users and how to link users with roles and vice versa.


Role Concept
------------

The hierarchy of the roles is built upon the principle of
specialization. Each child role specialises its parent role(s) meaning
that a role **Team A** always implicitly contains its parent roles. The role
**Everybody** is the root for all roles, all roles specialize this role.
For example in the figure below, a member user of role **Team A** also has
the roles **Development** and **Everybody**.


Member Role
~~~~~~~~~~~

A **Member Role** can be added as a child of an existing **Role** and links
to another existing **Role**. While resolving the role tree, to collect
the specializations of each role, the **Member Role** is handled like a
normal child **Role**. Basically this simplifies the configuration and
administration of roles.

.. tip::

   The concept with **Member Roles** allows to create a sub-tree of roles
   with 'company roles' and a sub-tree of roles with 'permission roles'.
   The sub-tree of 'company roles' represents typically the structure of
   the company. The sub-tree of 'permission roles' represents the use or
   execution permission of a specific part or feature of an application.
   With a **Member Role** it is possible to assign a permission to a
   'company role' by linking the 'company role' as a member role of a
   specific 'permission role'.

   The following configuration illustrates that users of group **First
   Level** and **Team B** have the permission for **Process M** and users of
   both support groups and of the **Support Group** itself has the
   permission for **Process N**.

   ::

      + Everybody
        + Support Group
          + First Level
          + Second Level
        + Development
          + Team A
          + Team B

        + Application Permissions
          + Process M
            - First Level (Member Role linked to role 'First Level')
            - Team B (Member Role)
          + Process N
            - Support Group (Member Role linked to role 'Support Group')


.. _role-editor:

Role Editor
-----------

The role editor allows to create a new role and to edit and/or to remove
existing roles and to structure them into a hierarchy. It can be started
by double clicking on the :guilabel:`Roles` node in the :ref:`ivy-project-view`.

.. figure:: /_images/designer-configuration/role-editor.png
   :alt: Role Editor
   :align: center
   
   Role Editor

The left side of the Role editor consists of a tree showing all the
roles in a hierarchy order. A click on one of the roles will show the
properties for the selected role on the right side of the editor. The
role hierarchy can be manipulated by dragging a role and dropping it at
the new place in the hierarchy.

- :guilabel:`New`
  A new role is created as a child of the selected role.

- :guilabel:`Add`
  A role is added as a linked member role to the selected role.

- :guilabel:`Remove`
  The selected role and all its children roles are removed.
  The user is obliged to confirm the removal. Note that the role **Everybody** may not
  be deleted.

- :guilabel:`Import XML`
  A ``*.roleconfig`` file from another project can be imported for
  convenience reasons.

- :guilabel:`Export XML`
  All roles are exported in a XML file with the extension
  ``*.roleconfig`` to easily re-use the role hierarchy.

- :guilabel:`Sort`
  The selected roles are sorted alphabetically, if desired this is
  performed recursively on the children.

.. warning::

   Roles created in the designer are not uploaded to the Axon Ivy Engine
   until the deployment of the project. They are merged with all other
   roles in the same application context. Consider that the deployment
   will fail if the same role exist in more than one project in
   different role hierarchies.

.. _test-user-editor:

Test User Editor
----------------

Process designers can create, edit and remove test users in the user
editor. Users need a password in order to authenticate themselves and
they need to be assigned to at least one role. The editor can be started
by double clicking on the :guilabel:`Test Users` node in the
:ref:`ivy-project-view`.

.. note::

   Test users are only used in the process **simulation** within the
   Axon Ivy Designer and they are not uploaded to the engine at the
   deployment. Users for deployed processes on the Axon Ivy Engine need
   to be created and configured on the engine.
   
.. figure:: /_images/designer-configuration/test-user-editor.png
   :alt: Test User Editor
   :align: center
   
   Test User Editor

The left side of the editor you see all users with their user names
(i.e. login name) and their full names. On the right side the specific
properties for the selected user on the left side is displayed. A user
can be assigned to several roles and he is implicitly assigned to the
parent roles of the roles, he explicitly is assigned to (see :ref:`role-editor`).
Additional
properties can be added to each user in terms of string key-value pairs
and be reused within process steps in :ref:`ivyscript`.

- :guilabel:`New`
  Creates a new user with the specified name.

- :guilabel:`Remove`
  Removes a user from the list.
  The process designer is obliged to confirm the removal.

- :guilabel:`Sort`
  Sorts the user list in alphabetical order.

- :guilabel:`Import`
  A ``*.userconfig`` file from another project can
  be imported for convenience reasons.
  
- :guilabel:`Export XML`
  All users and their corresponding properties
  are exported in a XML file with the extension ``*.userconfig``
  to easily re-use the users in another project.

.. tip::

   You do not see the user called **Developer**, because it is a built in
   user, that belongs to all groups, and owns all rights. The user is
   meant to be used for testing, so it only exists in the Designer. The
   password of this user is **Developer** (in case you would like to log
   in using IvyScript)
