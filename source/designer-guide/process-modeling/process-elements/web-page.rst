.. _process-element-web-page:

Web Page (Deprecated)
=====================

|image0| The *Web Page* element is located in the *Activity* drawer of
the process editor palette.

Element Details
---------------

This element presents an interactive web page to the user via his
browser and may be defined in the CMS or externally by a .html, or .jsp
file.

For each exit of this element (the outgoing arrows from this element) a
link is set that defines which way the process proceeds. By clicking on
such a link (it may be a simple link or one combined with an input form)
the user carries the data object with the process data to the
appropriate exit, i.e. process path.

In case of a form the data that have been entered into it will be
assigned to the process data attributes.

Inscription
-----------

.. include:: _tab-name.rst

Tab Dialog
~~~~~~~~~~

On this tab you set the dialog page and its properties. In addition, you
are able to create the Web Page from scratch and store it in the CMS.

.. figure:: /_images/process-elements/web-page-tab-dialog.png
   :alt: Dialog tab

   Dialog tab

Dialog Page
   The selected page will be displayed in the user's browser whenever
   the element is activated by the process. Pages can be referenced from
   the content management system or the web content directory. The
   wizard allows you to create, select or edit pages.

   Please refer to :ref:`user-interface-web-page-creating` for a
   more thorough explanation of this tab section.

Output Links
   List of the links with which the process may proceed to the next
   step. You can edit the names of the links as you like but they always
   need to have an .ivp file extension. The links appear in the order
   they were connected with the HTML Page element. Pausing the mouse
   cursor shortly over one of the outgoing arrows of the element shows a
   tool tip that indicates the name of the corresponding link.

Responsible Role
   Restricts the access to this dialog to the given role.

Role Violation error
   This error is thrown whenever a user tries to access the dialog page
   without having granted the required role. The error can be handled by
   a catching :ref:`process-element-error-start` or by an
   :ref:`process-element-error-boundary-event`.

.. |image0| image:: /_images/process-elements/web-page.png
