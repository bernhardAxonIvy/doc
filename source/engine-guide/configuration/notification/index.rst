Notification
============

The |ivy-engine| sends notifications to users such as when a
new task is assigned to a user. Different channels can be operated.
Built-in channels are the following:

.. toctree::
   :maxdepth: 1

   web
   mail

By default, only the web channel is active, which displays all notifications.
Each channel can be configured individually. However, users can individually 
set the notification settings in Axon Ivy Portal.

.. literalinclude:: ivy-notification.yaml
  :language: yaml
  :linenos:


.. rubric:: Events

You can configure which events are sent over which channels. If nothing
is configured all Events are distributed over the given channel. If you
specifcy `Events` of a channel only those events are sent. All available
events are:

- **new-task**: If user has a new task assignments (also on delegation)

