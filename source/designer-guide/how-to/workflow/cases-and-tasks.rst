
Cases and Tasks
---------------

The Axon Ivy workflow manages the execution of **process instances**. A **process
instance** is represented by one **Case** and one or more **Tasks**. The
**Case** exists from the first process step until the last process step and
holds information about its **process instance**. The **Case** is finished when
the process is completed. A **Case** is composed of one or more connected
**Tasks**. Each **Task** defines a unit of work, which has to be done as one
working step. Therefore, a **Task** is to be executed by a user or role - the
**Task** is assigned to a user or a task. A **Task** is started by a process-start
or a task-switch element and ends at the next task-switch element or at a
process-end element.

|image0|

.. _business-case:

Business Case
-------------

Modern processes are loosely coupled and highly :ref:`adaptive
<adaptive-case-management>`. Business processes can break out of the standard
process flow and trigger asynchronous processes or send a :ref:`signal
<signal-reference>` that starts various other processes. As every running
process creates a new **Case**, it can get difficult for the workflow users
to track the history and context of a **Task**.

To clarify the workflow view, multiple **Cases** can be attached to a single
**Business Case**.
:ref:`Triggered <process-element-start-request-trigger-tab>` or
:ref:`signaled <process-element-signal-start-tab-signal>`
process-starts define in their inscription whether the started **Case**
should be attached to the **Business Case** of the calling **Case**. Moreover,
any **Case** can be attached to a **Business Case** by API. If a case map is
started, a **Business Case** is automatically created. See :ref:`casemap-execution`.


Lifecycle
~~~~~~~~~

The first **Case** of a process always acts as **Business Case** (see image 'First Case').
All **Cases** attached later to the **Business Case** are subcases of the **Business Case** (see image 'Multiple Cases').

.. figure:: /_images/workflow/business-case-first-case.png
   :alt: First Case

   First Case

.. figure:: /_images/workflow/business-case-sub-case.png
   :alt: Multiple Cases

   Multiple Cases


.. |image0| image:: /_images/workflow/workflow-case-and-task.png
