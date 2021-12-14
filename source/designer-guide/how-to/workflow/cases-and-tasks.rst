
Case and Task
-------------

The ivy workflow manages the execution of process instances. A process
instance is represented trough one Case and one or multiple Tasks. The
Case exists from the first process step until the last process step and
holds information of a process instance. When the Case gets finished
even the process gets finished and backwards. A Case is processed though
Tasks. Each Task defines an unit of work, which has to be done as one
working step. Therefore a Task is assigned to a user or role which
executes Task. A Task starts by a process-start element or a task-switch
element and ends by the next task-switch element or an process-end
element.

|image0|

.. _business-case:

Business Case
-------------

Modern processes are loosely coupled and highly
:ref:`adaptive <adaptive-case-management>`. Business processes can break out of
the standard process flow and trigger asynchronous processes or send a
:ref:`signal <signal-reference>` that starts various other processes.
As every running process creates a new Case instance it can get
difficult for the workflow users to track the history and context of a
task.

To clarify the workflow view, multiple Cases can be attached to a single
Business Case.
:ref:`Triggered <process-element-start-request-trigger-tab>` or
:ref:`signaled <process-element-signal-start-tab-signal>`
process-starts define in their inscription whether the started Case
should be attached to the Business Case of the calling Case. Moreover,
any Case can be attached to a Business Case by API. If a case map is
started a business case is automatically created. See :ref:`casemap-execution`.


Lifecycle
~~~~~~~~~

The first case of a process always acts as Business Case (see image 'First Case').
All later attached cases are sub cases of the Business Case (see image 'Multiple Cases').

.. figure:: /_images/workflow/business-case-first-case.png
   :alt: First Case

   First Case

.. figure:: /_images/workflow/business-case-sub-case.png
   :alt: Multiple Cases

   Multiple Cases


.. |image0| image:: /_images/workflow/workflow-case-and-task.png
