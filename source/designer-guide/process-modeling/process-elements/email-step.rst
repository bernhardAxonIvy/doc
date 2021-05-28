.. _process-element-email-step:

E-Mail Step
===========

|image0| The *E-Mail Step* element is located in the *Activity* drawer
of the process editor palette.

Element Details
---------------

This element allows to send e-mails out of processes (e.g. for
information or alert purposes). The general configuration must be set in
the :ref:`workspace-preferences-email` for the
|ivy-designer| and in the :ref:`ivy.yaml <config-email>` for the |ivy-engine|.

With the default E-Mail preferences mails will be sent to a
:ref:`workspace-preferences-email-developer-smtp` that quickly shows you the
mailboxes in the 'Mail Messages' view of the Designer.

.. note::

   In the designer the sender (from) and the recipient (to) are always
   taken from the :ref:`workspace-preferences-email`, so you can
   easily test whether the mails are sent correctly by using your own
   e-mail address (or a dedicated test address)

Inscription
-----------

.. include:: _tab-name.rst

Tab Header
~~~~~~~~~~

In this tab the e-mail header is defined. You can use the :ref:`cms` 
and the process data (the ``in`` variable) to compose
the header fields.

.. figure:: /_images/process-elements/email-step-tab-header.png
   :alt: Header Tab

   Header Tab

Subject
   The title of the e-mail to send.

From
   The sender of the e-mail (always use a valid e-mail address).

Reply to
   The e-mail address which is used by most e-mail clients when the
   reader clicks on "Reply" or "Reply all". Always use a valid e-mail
   address.

To
   The recipient(s) of the e-mail. Multiple recipients can be separated
   by a comma or semi-colon.

CC
   The recipient(s) in carbon copy of the e-mail. Multiple recipients
   can be separated by a comma or semi-colon.

BCC
   The recipient(s) in blind carbon copy of the e-mail. Multiple
   recipients can be separated by a comma or semi-colon.

Error
   Is thrown whenever an error occurs during the execution of this
   element. The error can be handled by a catching
   :ref:`process-element-error-start` or by an
   :ref:`process-element-error-boundary-event`.

Tab Content
~~~~~~~~~~~

In this tab the e-mail content is defined.

.. figure:: /_images/process-elements/email-step-tab-content.png
   :alt: Content Tab

   Content Tab

Message
   The text of the e-mail. Use the :ref:`cms` to have messages
   in multiple languages.

   .. tip::

      Start your message with an ``<HTML>`` tag to let you define your
      whole message in HTML format. (of course at the end of message an
      ``</HTML>`` is expected)

Tab Attachments
~~~~~~~~~~~~~~~

In this tab you can attach files to your e-mail. Each attachment line
below on the screenshot represents one file. You can choose a file
directly, take a process attribute with the type *File*, select a CMS
entry or even build up the filename using script(s). The provided
reference will be searched as CMS entry first, if no CMS entries found
then the system will search the name as file in your :ref:`|axon-ivy| file
area <ivyscript-reference-file>`.

.. note::

   CMS entry names do not have an extension (meanwhile filenames used to
   have one) so that the lookup order should cause no file overlapping.

.. figure:: /_images/process-elements/email-step-tab-attachment.png
   :alt: Attachment Tab

   Attachment Tab

.. tip::

   Right click on a file input line to access further commands.

.. |image0| image:: /_images/process-elements/email-step.png
