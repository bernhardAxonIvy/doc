Use the Engine
--------------

The main page of the |ivy-engine| looks as follows:

.. figure:: /_images/engine-getting-started/engine-mainpage.png

The |ivy-engine| is running in :ref:`demo mode <demo-mode>`. This is because
you did not install a valid license yet nor did you configure a system database.
Note that everything that you do with the |ivy-engine| running in demo mode
is lost when you shut down the engine. However, you can use the engine also in
demo mode and try out the pre-installed Portal application by clicking on the
:guilabel:`Portal` Home link. To log in, use one of the predefined demo users:
**demo**, **guest** or **admin**. The passwords of the demo users are equal to
the user names (E.g. **demo** for the **demo** user). Login as user **demo** and
try to create new **Express Workflow** process (rocket link at the top of the
portal process list).

.. figure:: /_images/engine-getting-started/engine-portal-starts.png

Configure the new **Express Workflow** process as detailed below:

.. figure:: /_images/engine-getting-started/engine-portal-express.png

Save the workflow by pressing the :guilabel:`Save Workflow` button. You can
start this newly created workflow from the **process start list**. Do so and
after that log out, then log in again as the **guest** user. On the task list,
you now see the **open task** from the workflow process that you just created.
Try to work on the task by clicking on it:

.. figure:: /_images/engine-getting-started/engine-portal-home.png

Go ahead and play around with the **Express Workflow** process. Try out
different types of tasks.

.. Note::
  In |axon-ivy| a task is a piece of work (a part of a process) that is assigned
  to a user or role. A user to whom a task is assigned or who has the role to
  which a task is assigned can work on the task. When a user works on a task the
  task disappears from the task list of other users who might also able to work
  on the task. This means only one user can really work on a task at the same
  time. In a process, it is possible to define parallel tasks. Therefore, it is
  possible that two or more users work in parallel on different tasks of the same
  process instance. In |axon-ivy| a process instance is called a **case**.
