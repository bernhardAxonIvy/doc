.. _config-email:

Email
=====

The Axon Ivy Engine sends emails for different purposes:

* In-process mails. Sent within a process via the mail step.
* New task assignments and daily task summaries to users.
* License expiration reminders to the administrators.

For the Axon Ivy Engine to be able to send emails, you have to configure an
email server in :ref:`ivy-yaml`: 

.. literalinclude:: includes/ivy-email.yaml
  :language: yaml
  :linenos:

You can configure task email notification settings for new task assignments and
daily task summaries at security system level in :ref:`ivy-yaml`: 

.. literalinclude:: includes/ivy-email-ivy.yaml
  :language: yaml
  :linenos:

Users can customize their notification settings in a workflow UI like
the Portal. The content of the task email notifications can be customized by
providing :ref:`custom Ivy email processes <email-notifications>`.
