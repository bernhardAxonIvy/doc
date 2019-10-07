.. _config-email:

Email
=====

The Axon.ivy engine sends emails for different purposes:

* Emails that are sent within a process via the mail step.
* New task assignment and daily task summaries to users.
* License expiration reminders to the administrators.

For this you have to configure an email server in :ref:`ivy-yaml`: 

.. literalinclude:: includes/ivy-email.yaml
  :language: yaml
  :linenos:

You can configure task email notification settings for new task assignments and
daily task summaries at application level in :ref:`app-yaml`: 

.. literalinclude:: includes/ivy-email-app.yaml
  :language: yaml
  :linenos:

Users are able to customize their notification settings in a workflow ui like
the Portal. The content of the task email notifications can be customized by
providing :ref:`standard-processes`.
