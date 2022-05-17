.. _email-notifications:

Email Notifications
===================

To customize the content of the email notifications like the new task email or
the daily task Summary, you must implement processes with a predefined process
start signature.

Mail notifications require a configured mail server and enabled notification
settings as described in :ref:`config-email`.


Implementation
--------------

To customize a email notification you need to do the following: 

#. Implement a process with a predefined process start signature in an ivy
   project. See the following sub chapters for more information.
#. :ref:`Deploy <deployment>` the Ivy project with the customized standard
   processes in the application. 
#. Optional: If you have multiple projects which provides the default pages
   you may need to fix the provider in :ref:`ivy-yaml`.


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
    | **New Task** page with the new assigned task. This is done everytime a new task is created, an existing task expires or the creator of an existing tasks changes. These events affect the user directly, via his role or his substitution. | MailNotification_NewTask(String notificationSecurityMemberId, Number notificationTaskId)                   |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
    | **Daily Task Summary** page with all open tasks for the user. This notification is executed once a day for each user.                                                                                                                      | MailNotification_DailyTaskSummary(String notificationSecurityMemberId)                                     |
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

.. figure:: /_images/standard-process/standard-process-new-task.png
    :align: center

    New Task Mail


Hints
-----

**Subject**
    The ``<title>`` html tag is re-used as email subject

**Images**
    Can be referred in the html either from CMS or the file system. These
    resources will be embedded as mime parts. External images will not be
    embedded and the links will not be modified at all.

**Skip**
    You can avoid the standard mail sending procedure by custom conditions (e.g.
    do not send mails to technical users). To do so implement an alternative
    process flow without displaying any User Dialog or HTML Page activity.

**API**
    Some API hints to implement email notification processes:
    
    * get the user you can use
      ``ivy.security().members().findById(notificationSecurityMemberId)`` 
    * get the task you can use ``ivy.wf.findTask(notificationTaskId)``
    * get the current open task for a user ``ivy.wf.findWorkTasks(...)``
