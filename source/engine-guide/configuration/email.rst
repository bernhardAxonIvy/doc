.. _config-email:

Email
=====

The Axon Ivy Engine sends emails for different purposes:

* In-process mails. Sent within a process via the mail step.
* Notificatinos via the :ref:`mail notification channel <notification-mail>`.
* License violations mails to the administrators.

For the Axon Ivy Engine to be able to send emails, you have to configure an
email server in :ref:`ivy-yaml`: 

.. literalinclude:: includes/ivy-email.yaml
  :language: yaml
  :linenos:

Users can customize their notification settings in the Portal.
