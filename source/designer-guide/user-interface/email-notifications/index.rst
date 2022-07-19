.. _email-notifications:

Email Notifications
===================

To customize the content of the email notifications like the new task email or
the daily task summary, you have to implement processes with a predefined process
start signature.

Mail notifications require a configured mail server and enabled notification
settings as described in :ref:`config-email`.


Implementation
--------------

To customize an email notification you need to do the following: 

#. Implement a process with a predefined process start signature in an Ivy
   project. See the following subchapters for more information.
#. :ref:`Deploy <deployment>` the Axon Ivy project with the customized standard
   processes in the application. 
#. Optional: If you have multiple projects which provide the default pages
   you may need to fix the provider in file :ref:`ivy-yaml`.


.. literalinclude:: standardprocess-ivy.yaml
  :language: yaml
  :linenos:


Notifications
-------------

The following email notifications can be customized:

.. table::

    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
    | Email Notification                                                                                                                                                                                                                         | Process Start Signature                                                                                    |
    +============================================================================================================================================================================================================================================+============================================================================================================+
    | **New Task** page with the new assigned task. This is done everytime a new task is created, an existing task expires or the creator of an existing tasks changes. These events affect the user directly, via his role or his substitution. | MailNotification_NewTask(Number notificationTaskId, String notificationSecurityMemberId)                   |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
    | **Daily Task Summary** page with all open tasks for the user. This notification is executed once a day for each user.                                                                                                                      | MailNotification_DailyTaskSummary(String notificationSecurityMemberId)                                     |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

.. figure:: /_images/standard-process/standard-process-new-task.png
    :align: center

    New Task Mail


Hints
-----

**Subject**
    The ``<title>`` HTML tag is re-used as the email subject

**Images**
    In the HTML, images can be referred to either from the CMS or the file
    system. These resources will be embedded as MIME parts. External images will
    not be embedded and the links will not be modified at all.

**Skip**
    You can modify the standard mail sending behavior using custom conditions (e.g.
    do not send emails to technical users). To do so, implement an alternative
    process flow without displaying any User Dialog or HTML Page activity.

**API**
    Some hints on APIs to implement email notification processes:
    
    * get the user with
      ``ivy.security().members().findById(notificationSecurityMemberId)`` 
    * get the task with ``ivy.wf.findTask(notificationTaskId)``
    * get the list of tasks that a user can work on with ``ivy.wf.findWorkTasks(...)``
