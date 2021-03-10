Use the Engine
--------------

The main page of the Axon Ivy Engine looks like this

.. figure:: /_images/engine-getting-started/engine-mainpage.png

The Axon Ivy Engine is running in :ref:`demo mode <demo-mode>`. This is because
you did not install a valid licence yet nor did you configure a system database.
Note, that everything that you do with the Axon Ivy Engine running in demo mode
is lost when you shut down the engine. However, you can use the engine also in
demo mode and tryout the pre-installed Portal application by clicking on the
:guilabel:`Portal` Home link. To login use one of the predefined demo users:
**demo**, **guest** or **admin**. The passwords of the demo users are equal to
the user names (E.g. **demo** for the **demo** user). Login as **demo** user and
try to create new **Express Workflow** process (rocket link at the top of the
portal process list).

.. figure:: /_images/engine-getting-started/engine-portal-starts.png

Configure the new **Express Workflow** process as follows:

.. figure:: /_images/engine-getting-started/engine-portal-express.png

Save the workflow by pressing the :guilabel:`Save Workflow` button. Now this new
created workflow can be started from the **process start list**. Do so and after
that, logout, then login again as **guest** user. On the task list, you now see
the **open task** from your new created Workflow process that you created
before. Try to work on the task by clicking on it:

.. figure:: /_images/engine-getting-started/engine-portal-home.png

Go ahead and play around with the **Express Workflow** process. Try out
different types of tasks.

.. Note::
  In Axon Ivy a task is a piece of work (a part of a process) that is assigned
  to a user or role. A user to whom a task is assigned or who has the role to
  which a task is assigned can work on the task. When a user works on a task the
  task disappears from the task list of other users who might also able to work
  on the task. This means only one user can really work on a task at the same
  time. In a process, it is possible to define parallel tasks. Therefore, it is
  possible that two or more users work parallel on different tasks of the same
  process instance. In Axon Ivy a process instance is called a case.
