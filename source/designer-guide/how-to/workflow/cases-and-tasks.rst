
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

.. _workflow-languages:

Multilingual Name and Description of Cases and Tasks
====================================================

The name and description of a :ref:`case <process-element-tab-case>` or
:ref:`task <process-element-tab-task>` can be defined by using multilingual texts from the CMS. 
Because of performance and system database space reasons, the name and description are only stored 
in the configured workflow languages and not for every language available in the current CMS.
Workflow languages can be configured using :ref:`Security System <engine-cockpit-security-system-detail>` 
in the :ref:`Engine Cockpit <engine-cockpit>` or, for the Designer, in the :ref:`Language Settings <language-settings>`.

An end users sees the name and description of a case or task in his preferred language if that language is 
a supported workflow language. If not, the default workflow language is used. Searching for and sorting of 
cases and tasks uses the same language the end user sees the names and descriptions.

As a process developer, you should configure the main language of your process application as its default workflow language. 
Add additional workflow languages only if you use mutlilingual texts from the CMS in your case and task inscriptions and 
if you have configured those texts differently for multiple languages. If your projects support different sets of languages, consider 
to configure only the common set of languages that all your projects support as workflow languages.

If you add a new workflow language and there are already cases and tasks in your system database, then the name and description 
in the default workflow language of all your existing cases and tasks are copied to the new language. 
Therefore, adding a new workflow language can last several minutes and increases the size of your system database. 
An end user will still see names and descriptions of old cases and tasks in the default workflow language as it is a simple copy. 
Cases and tasks created after you added a new workflow language will support the new language correctly.

.. warning::

  If you delete a workflow language then all names and descriptions of all existing cases and tasks in that language will be 
  deleted permanently from the system database. Adding the language again later on will not bring the data back!

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
