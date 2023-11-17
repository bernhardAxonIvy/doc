.. _notification:

Notification
============

The Axon Ivy Engine sends notifications to users via different notification channels based
on subscription management.

A notification arises from a specific event while the Axon Ivy Engine is running.
For example, a task assignment to a user is such an event. A notification can be sent
to a specific user or to a role. In the case of a role, the user candidates are calculated,
which means all users of this role. If a user is absent and has substitutes,
the substitutes also receive a notification. Which notifications have been sent to which users
can be monitored in the :ref:`engine cockpit <engine-cockpit-notifications>`.


Notification Channel
^^^^^^^^^^^^^^^^^^^^

A notification will be delivered over a notification channel. The Axon Ivy Engine comes
with three built-in channels:

- **Web Channel**: Notifications will be shown in the header section of the Axon Ivy Portal.
- **Mail Channel**: Notifications will be sent as mail.
- **Microsoft Teams Channel**: Notifications will be delivered as Microsoft Teams messages.

Each of these channels can be :ref:`configured <engine-notification>` in :ref:`ivy.yaml <ivy-yaml>`. There are also
dedicated views in :ref:`engine cockpit <engine-cockpit-notification-channels>`.


Subscription Management
^^^^^^^^^^^^^^^^^^^^^^^

Which users receive which notifications over which channels is defined as part of the
notification subscription management. You can define the default subscription management
for your security system for every channel. For example, you can define that all users
must receive notifications for new task assignments over the mail channel by default but not by
default over the Microsoft Teams channel.

.. code:: yaml

   # ivy.yaml
   SecuritySystems:
     default:
       Notification:
         Channels:
           mail:
             Enabled: true
             Kinds:
             - new-task
           microsoft-teams:
             Enabled: true
             AllKinds: disabled


All users can override the default subscription management settings in their profile
in the Axon Ivy Portal. The subscription management as the channel configuration itself
can be :ref:`configured <engine-notification>` in :ref:`ivy.yaml <ivy-yaml>`.
There are also dedicated views in :ref:`engine cockpit <engine-cockpit-notification-channels>`.

.. note::

    You can suppress a notification for a task assignment :ref:`in the process <process-element-tab-task:>`
    itself. No matter how the subscription management is configured, there is no notification for this given
    task.


Templating
^^^^^^^^^^

The content of the notification is templated-based. Based on the given channel there are one or multiple
templates for one given notification. For example: The mail channel always needs :code:`Subject` and :code:`Content`.

The templates are currently in the system cms (:file:`[engineDir]/system/cms`) and
can be modified there directly. The cms structure is as follows:

.. code:: yaml

    #cms_de.yaml
    Notification:

      # notification kind
      new-task:
        
        Templates:
          
          # channel
          mail:

            # mail channel needs a subject
            Subject: New Task '<%= ivy.html.escape(ivy.task.name) %>' for <%= ivy.html.escape(ivy.task.activator().displayName()) %>

            # mail channel needs a content
            # big templates can be placed in their own file
            # e.g. [engineDir]/system/cms/Notification/new-task/Templates/mail/Content.html
            Content: 


You can use ivy macro for templating and you can use the following variables:

- :code:`ivy.session`: :code:`ch.ivyteam.ivy.workflow.IWorkflowSession`
- :code:`ivy.cm`: :code:`ch.ivyteam.ivy.cm.exec.ContentManagement`
- :code:`ivy.html`: only one method :code:`ivy.html.escape(..)` is available
- :code:`ivy.branding`: only one method :code:`ivy.branding.ref(..)` is available

.. note::

    You need to manually escape untrusted input. For example, a task name can consist of user input. The user
    input must be properly escaped so that nobody can make XSS or Phishing Attacks. Use :code:`ivy.html.escape()`
    for this.

Resource attachments like images or documents can be used too. Place them in the system cms and use them in the cms
via :code:`ivy.cm.ref(..)`.
