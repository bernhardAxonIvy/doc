Use the Engine
--------------

The main page of the Axon.ivy Engine looks like this

.. figure:: /_images/engine-getting-started/engine-mainpage.png

The Axon.ivy Engine is running in :ref:`demo-mode`. This is because you did not install
a valid license yet nor did you configure a system database. Note, that
everything that you do with the Axon.ivy Engine running in :ref:`demo-mode` is lost
when you shut down the engine. However, you can use the engine also in :ref:`demo-mode`
and tryout the pre-installed Portal application by clicking on the
:guilabel:`Portal` Home link. To login use one of the predefined demo users:
**demo**, **guest** or **admin**. The passwords of the demo users are equal to
the user names (E.g. **demo** for the **demo** user). Login as **demo** user and
try to create a **TODO** task for the guest user using the **Axon.ivy
Selfservice** process:

.. figure:: /_images/engine-getting-started/portal.png

Configure the **TODO** task as follows:

.. figure:: /_images/engine-getting-started/selfservice.png

Start the workflow by pressing the :guilabel:`Start Workflow` button. After
that, logout, then login again as **guest** user. On the task list, you now see
the new **TODO** task that you created before. Try to work on the task by
clicking on it:

.. figure:: /_images/engine-getting-started/tasklist.png

Go ahead and play around with the Selfservice process. Try out different types of tasks.

.. Note::
  In Axon.ivy a task is a piece of work (a part of a process) that is assigned
  to a user or role. A user to whom a task is assigned or who has the role to
  which a task is assigned can work on the task. When a user works on a task the
  task disappears from the task list of other users who might also able to work
  on the task. This means only one user can really work on a task at the same
  time. In a process, it is possible to define parallel tasks. Therefore, it is
  possible that two or more users work parallel on different tasks of the same
  process instance. In Axon.ivy a process instance is called a case.
