.. _process-element-user-task:

User Task
=========

|image0| The *User Task* element is located in the *Activity* drawer of
the process editor palette.

Element Details
---------------

The *User Task* element calls a User Dialog in a new Task. Thus, it
combines the behavior of a :ref:`process-element-task-switch-event`
and a :ref:`process-element-user-dialog`. You can either call
a normal HTML Dialog or an Offline Dialog - they both are based on JSF
technology and can run in a Web Browser as well as on a mobile client.

Inscription
-----------

.. include:: _tab-name.rst

Call Tab
~~~~~~~~

The *Call tab* defines what User Dialog component should be called and
how it should be started. The input parameters for the selected start
method can be mapped here.

.. figure:: /_images/process-elements/user-task-tab-call.png
   :alt: Call tab

   Call tab

Dialog
   Defines the User Dialog to be started by its ID. The referenced User
   Dialog can either be a normal JSF based dialog component (Html
   Dialog) or a JSF based dialog that is designed for offline usage
   (Offline Dialog).

   |image2| Selects an existing User Dialog
   
   |image3| Creates a new User Dialog and uses it
   
   .. note::

      The behavior of the task will be noticeable different either if
      you select an HTML Dialog or an Offline Dialog. By selecting an
      Offline Dialog, an :ref:`offline-tasks` -
      designed for processing without continuous connection to the
      workflow server - will be generated.

Start
   Defines the *start method* that should be called on the selected User
   Dialog.

Start Parameters Definition
   Define the input parameters for the called User Dialog.

   If the selected *start method* requires any parameters, those may be
   mapped here to an ``param`` object, which offers a field for each
   declared start method parameter. You can define each parameter
   individually from the calling process's data.

   .. tip::

      Alternatively you can define the call parameters in the scripting
      field below the attribute table, e.g. if you need to perform some
      calculation in order to define a call parameter. You can also mix
      the two forms, in which case the table's definitions will be
      executed before the scripting block.

   .. note::

      The result values of the started User Dialog (if any) are mapped
      back onto the calling process's data on the *Output* tab. They are
      available as fields on a ``result`` variable.

.. include:: _tab-task.rst

.. include:: _tab-case.rst

.. include:: _tab-output.rst

.. note::

   Additionally to the regular variables of the *Output Tab* you have
   the following variable available:

   result
      If the selected *start method* defines return parameters they will
      be available as fields of the ``result`` variable.

      The variable is *not* available if the start method does not
      return any values (i.e. *void*).

.. |image0| image:: /_images/process-elements/user-dialog.png
.. |image2| image:: /_images/process-elements/button-select-user-dialog.png
.. |image3| image:: /_images/process-elements/button-new-user-dialog.png
