Use the Engine
--------------

The main page of the Axon Ivy Engine looks as follows:

.. figure:: /_images/engine-getting-started/engine-mainpage.png

The Axon Ivy Engine is running in :ref:`demo mode <demo-mode>`. This is because
you did not install a valid license yet.

.. Note::
  While running in demo mode, the Axon Ivy Engine is fully functional. 
  However, everything is lost when you shut down the engine. 

For a quick spin, use the engine in demo mode to test the pre-installed Portal
application by clicking on the :guilabel:`Home` link. 

To log in, use one of the predefined demo users: **demo**, **guest** or
**admin**. The passwords of the demo users are equal to the user names (E.g.
**demo** for the **demo** user). Login as **demo** and try to create a new
**Express Workflow** process (rocket link at the top of the portal process
list).

.. figure:: /_images/engine-getting-started/engine-portal-starts.png

Configure the new **Express Workflow** process as detailed below:

.. figure:: /_images/engine-getting-started/engine-portal-express.png

Save the workflow by pressing :guilabel:`Save Workflow`. Then, start this newly
created workflow from the **process start list**. 

Then, log out as **demo** and log in as **guest**. On the task list, you now see the
**open task** from the workflow process that you just created. Try to work on
the task by clicking on it:

.. figure:: /_images/engine-getting-started/engine-portal-home.png

Go ahead and play around with the **Express Workflow** process. Try the
different types of tasks.

.. Note::
  In Axon Ivy, a task is a piece of work (a part of a process) assigned to a user
  or a role. A user can work on a task if this task is assigned to him or if
  he has the role that the task is assigned to. When a user works on a task, the
  task disappears from the task list of other users who would be able to work on
  the task, too. Only one user can work on a task at a time. In a process, it is
  possible to define parallel tasks. Therefore, it is possible that two or more
  users work in parallel on different tasks of the same process instance. In
  Axon Ivy, a process instance is called a **case**.
