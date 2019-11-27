.. _standard-processes:

Standard Processes
******************

With standard processes you can change the default workflow behaviour by simply
providing a custom implementation in your ivy project.

For example: Once a user has completed a task, he will be redirected to his
personal task list. The default task list is workflow driven and maybe to
technical for your end user. With a standard process you could easily provide a
branded and use case driven task list that fits perfectly into your domain.

We distinguish between two types of standard processes: 

* :ref:`Default Pages <standard-processes-default-pages>` are simple pages like
  the login page or the task list page. 
* :ref:`Email Notifications <standard-process-email>` are mail content creation
  processes which inform user about new task assignments or daily task summaries.


Implementation
==============

To customize a standard process you need to do the following: 

#. Implement a process with a predefined process start signature in an ivy
   project. See the following sub chapters for more information. 
#. :ref:`Deploy <deployment>` the ivy project with the customized standard
   processes in the application. 
#. Finally, the project with the standard processes must be activated in
   :ref:`app-yaml`: 

.. literalinclude:: includes/standardprocess-app.yaml
  :language: yaml
  :linenos:


.. _standard-processes-default-pages:

Default Pages
=============

To customize default pages, you must implement processes with a predefined
process start signature. Checkout the process :file:`Processes/Workflow/Home` in
the BasicWorkflowUI which also overrides all types of default pages. The
BasicWorkflowUI can be found over the **Ivy Projects Importer**. 

The following default pages can be customized: 

.. table::

    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | Default Page                                                                           | Process Start Signature                            |
    +========================================================================================+====================================================+
    | **Application Home Page** as the entry page to the application.                        | DefaultApplicationHomePage()                       |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **Task List** with all tasks the current user can work on.                             | DefaultTaskListPage()                              |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **Process Start List** with all processes which the current user can start.            | DefaultProcessStartListPage()                      |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **End Page** which will be displayed to the user after a task or process is completed. | DefaultEndPage(Number endedTaskId)                 |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **Login Page** which comes up whenever authentication is needed.                       | DefaultLoginPage(String originalUrl)               |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **Error Page** which visualizes error on the front end                                 | no signature: globally defined in :ref:`web-xml`   |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+
    | **Frame Page** as the entry page to embed a given url in a frame.                      | DefaultFramePage(String relativeUrl,               |
    |                                                                                        | Number runningTaskId)                              |
    +----------------------------------------------------------------------------------------+----------------------------------------------------+

.. figure:: /_images/standard-process/standard-process-task-list.png
    :align: center

    Task List provided by BasicWorkflowUI


.. _standard-process-email:

Email Notifications
===================

To customize the content of the email notification, you must implement processes
with a predefined process start signature. Checkout the processes
:file:`Processes/NewTaskMailContent` and
:file:`Processes/DailyTaskSummaryMailContent` in the BasicWorkflowUI which also
provides standard processes for email notification. The BasicWorkflowUI can be
found over the **Ivy Projects Importer**.

Mail notifications require a configured mail server and enabled notification
settings as described in :ref:`config-email`.

The following email notifications can be customized:

.. table::

    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
    | Email Notification                                                                                                                                                                                                                         | Process Start Signature                                                        |
    +============================================================================================================================================================================================================================================+================================================================================+
    | **New Task** page with the new assigned task. This is done everytime a new task is created, an existing task expires or the creator of an existing tasks changes. These events affect the user directly, via his role or his substitution. | MailNotification_NewTask(Number notificationUserId, Number notificationTaskId) |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
    | **Daily Task Summary** page with all open tasks for the user. This notification is executed once a day for each user.                                                                                                                      | MailNotification_DailyTaskSummary(Number notificationUserId)                   |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+

.. figure:: /_images/standard-process/standard-process-new-task.png
    :align: center

    New Task Mail provided by BasicWorkflowUI


Implementation hints
--------------------

**Subject**
    The ``<title>`` html tag is re-used as email subject

**Images**
    Can be referred in the html either from CMS or the file system. These
    resources will be embedded as mime parts. External images will not be
    embedded and the links will not be modified at all.

**Skip**
    You can avoid the standard mail sending procedure by custom conditions (e.g.
    do not send mails to technical users). To do so implement an alternative
    process flow without displaying any User Dialog or Html Page activity.

**API**
    Some API hints to implement email notification processes:
    
    * get the user you can use
      ``ivy.session.getSecurityContext().findUser(notificationUserId)`` 
    * get the task you can use ``ivy.wf.findTask(notificationTaskId)``
    * get the current open task for a user ``ivy.wf.findWorkTasks(...)``
