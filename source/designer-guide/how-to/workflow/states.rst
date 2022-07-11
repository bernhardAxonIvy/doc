
.. _workflow-states:

States
---------------

During a process execution the corresponding case and tasks have various
states. Normally, a case is started non persistent. This means it is
stored in memory only. As soon as the process hits a task switch the
case and its tasks will be made persistent by storing them to the system
database. Only persistent cases and tasks can be resolved with the query
API's above.



Process without Task switch
~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image1|

.. table:: Process without Task switch

   +-----------------------+-----------------------+-----------------------+
   |                       | Process start         | Process end           |
   +=======================+=======================+=======================+
   | Case state            | CREATED               | DONE                  |
   +-----------------------+-----------------------+-----------------------+
   | Task state            | CREATED               | DONE                  |
   +-----------------------+-----------------------+-----------------------+
   | Persistent            | NO                    | NO                    |
   +-----------------------+-----------------------+-----------------------+



Process with session timeout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image19|

.. table:: Process with User Dialog that reaches a session timeout

   +-----------------------+-----------------------+-----------------------+
   |                       | Process start         | User Dialog           |
   +=======================+=======================+=======================+
   | Case state            | CREATED               | ZOMBIE                |
   +-----------------------+-----------------------+-----------------------+
   | Task state            | CREATED               | ZOMBIE                |
   +-----------------------+-----------------------+-----------------------+
   | Persistent            | NO                    | NO                    |
   +-----------------------+-----------------------+-----------------------+



Process with Task switch
~~~~~~~~~~~~~~~~~~~~~~~~

|image2|

.. table:: Process with Task switch

   +-----------------+-----------------+-----------------+-----------------+
   |                 | Process start   | Task switch     | Process end     |
   +=================+=================+=================+=================+
   | Case state      | CREATED         | RUNNING         | DONE            |
   +-----------------+-----------------+-----------------+-----------------+
   | Task state      | CREATED         | DONE            |                 |
   | (Task 1)        |                 |                 |                 |
   +-----------------+-----------------+-----------------+-----------------+
   | Task state      |                 | SUSPENDED       | DONE            |
   | (Task 2)        |                 |                 |                 |
   +-----------------+-----------------+-----------------+-----------------+
   | Persistent      | NO              | YES             | YES             |
   +-----------------+-----------------+-----------------+-----------------+



Task switch states in detail
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image20|

In detail the tasks are going to more technical task states inside of a
task switch element. After a task reaches a task switch it is in state
READY_FOR_JOIN. As soon as all input tasks have arrived at the task
switch the state of all input tasks are switched to JOINING and the
process data of the tasks are joined to one process data that is used as
start data for the output tasks. After joining the input tasks are in
state DONE and the output tasks are created in state SUSPENDED.

.. table:: Process with Task switch

   +-----------+-----------+-----------+-----------+-----------+-----------+
   |           | Before    | Task      | Task      | Task      | After     |
   |           | Task      | switch    | switch    | switch    | Task      |
   |           | switch    | (reached) | (entry)   | (done/out | switch    |
   |           |           |           |           | put)      |           |
   +===========+===========+===========+===========+===========+===========+
   | Case      | CREATED/R | RUNNING   |           |           |           |
   | state     | UNNING    |           |           |           |           |
   +-----------+-----------+-----------+-----------+-----------+-----------+
   | Task      | CREATED/R | READY_FOR | JOINING   | DONE      | -         |
   | state     | ESUMED    | _JOIN     |           |           |           |
   | (Task 1)  |           |           |           |           |           |
   +-----------+-----------+-----------+-----------+-----------+-----------+
   | Task      | -         | -         | -         | SUSPENDED | RESUMED   |
   | state     |           |           |           |           |           |
   | (Task 2)  |           |           |           |           |           |
   +-----------+-----------+-----------+-----------+-----------+-----------+
   | Persisten | NO/YES    | YES       |           |           |           |
   | t         |           |           |           |           |           |
   +-----------+-----------+-----------+-----------+-----------+-----------+

Task with session timeout
~~~~~~~~~~~~~~~~~~~~~~~~~

|image3|

If a user resumes a task with an user dialog and then the session of the
user timeouts then the task state is set back to state SUSPENDED and the
process of the task is set back to the task switch element.

.. table:: Task with session timeout

   +-----------------+-----------------+-----------------+-----------------+
   |                 | Task switch     | User Dialog     | Task switch     |
   |                 |                 |                 | (after session  |
   |                 |                 |                 | timeout)        |
   +=================+=================+=================+=================+
   | Case state      | RUNNING         | RUNNING         | RUNNING         |
   +-----------------+-----------------+-----------------+-----------------+
   | Task state      | SUSPENDED       | RESUMED         | SUSPENDED       |
   | (Task 1)        |                 |                 |                 |
   +-----------------+-----------------+-----------------+-----------------+
   | Persistent      | YES             | YES             | YES             |
   +-----------------+-----------------+-----------------+-----------------+

User Task
~~~~~~~~~

|image4|

A User Task is the combination of a Task Switch Event and a User Dialog.
When the user start working on a normal HTML User Dialog the task
changes its state to RESUMED. In case of an 'Offline Dialog' the task
state is not changed before the user submits the task form. Then the
state changes from SUSPENDED to RESUMED. Subsequent steps are executed
until the task is finally DONE. See also :ref:`offline-tasks`.


.. _signal-boundary-event:

Signal Boundary Event
~~~~~~~~~~~~~~~~~~~~~

|image5|

A User Task with an attached Signal Boundary Event is listening to a
signal while its task is in SUSPENDED state. If the signal has been
received the task is destroyed and the execution continues with a newly
created follow-up task.



Case Map with session timeout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image22|

When a task is created by :ref:`casemap`, its initial state is
CREATED and it is immediatly persisted to the database. If the session
of the user expires while working on this initial task, its state is
being reset to ZOMBIE. The same goes for the Case and Business Case.

.. table:: Case Map with User Dialog that reaches a session timeout

   +-----------------------+-----------------------+-----------------------+
   |                       | Process start         | User Dialog           |
   +=======================+=======================+=======================+
   | Case state            | CREATED               | ZOMBIE                |
   +-----------------------+-----------------------+-----------------------+
   | Task state            | CREATED               | ZOMBIE                |
   +-----------------------+-----------------------+-----------------------+
   | Business Case state   | CREATED               | ZOMBIE                |
   +-----------------------+-----------------------+-----------------------+
   | Persistent            | YES                   | YES                   |
   +-----------------------+-----------------------+-----------------------+

Other task states
~~~~~~~~~~~~~~~~~

There are more task states mainly for task synchronisation, error
handing, intermediate events, or user aborts. To learn more about task
states see enumeration ``ch.ivyteam.ivy.workflow.TaskState`` in public
API.

.. |image1| image:: /_images/workflow/workflow-states-simple-start-end.png
.. |image2| image:: /_images/workflow/workflow-states-simple-start-task-switch-end.png
.. |image3| image:: /_images/workflow/workflow-states-task-with-session-timeout.png
.. |image4| image:: /_images/workflow/workflow-states-user-task.png
.. |image5| image:: /_images/workflow/workflow-states-signal-boundary-event.png
.. |image19| image:: /_images/workflow/workflow-states-session-timeout.png
.. |image20| image:: /_images/workflow/workflow-states-task-switch-states.png
.. |image22| image:: /_images/workflow/workflow-casemap-session-timeout.png
