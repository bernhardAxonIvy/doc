.. _html-dialog-preferences:

Html Dialog Preferences
-----------------------

In the Axon.ivy Designer preferences you can configure the templates
used for the creation of Html Dialogs and Offline Dialogs.

.. note::

   There are different templates for Html Dialogs and Offline Dialogs.
   Whereas Html Dialog templates are targeted to make use of the full
   JSF stack, Offline Dialog templates are designed to work without
   enduring connection to the Engine and are optimized for use on rather
   small mobile devices with touch input.


Accessibility
^^^^^^^^^^^^^

Axon.ivy Designer *Menu -> Windows -> Preferences -> Web -> HTML Files -> Editor -> Templates*

Html Dialog View Type Templates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

*View Type Page* and *View Type Component* are the predefined view types
for Html Dialogs. Furthermore every template with a name that starts
with 'View Type' is considered as an Html Dialog View Type and therefore
listed in the :ref:`user-dialog-new-wizard`.

Offline Dialogs have only one predefined view type called *Offline View
Type Page*. Custom templates for Offline Dialogs have to start with
'Offline View Type'

.. tip::

   When the template for a View Type contains
   ``<ui:composition template="${layout}">``, it will be a template for
   an Html Page. Otherwise it will be a template for an Html Component.

Form Field Templates
^^^^^^^^^^^^^^^^^^^^

Every template with a name pattern 'form field [Type]' (for Html Dialogs)
respectively 'offline form field [Type]' (for Offline Dialogs)
is considered as a form field template of the specified type. The form
field templates are used during the creation of a Html Dialog by the
:ref:`user-dialog-new-wizard`.

.. tip::

   Each template can be inserted into an Html Dialog view via the auto
   complete function (CTRL+Space).
