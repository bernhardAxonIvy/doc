Call Tab
~~~~~~~~

The *Call tab* defines the User Dialog to call and how it should be
started. The input parameters for the selected start method can be
mapped here.

.. figure:: /_images/process-inscription/common-tab-call.png
   :alt: Call tab

   Call tab

Dialog
   Defines the User Dialog component to be started by its ID.

   |image2| Selects an existing User Dialog
   
   |image3| Creates a new User Dialog and uses it
   
Start
   Defines the *start method* that should be called on the selected User
   Dialog.

Start Parameters Mapping
   Define the input parameters for the called User Dialog.

   If the selected *start method* requires any parameters, those may be
   mapped here to an ``param`` object, which offers a field for each
   declared start method parameter. You can define each parameter
   individually from the calling process's data.

   .. tip::

      Alternatively you can define the call parameters in the scripting
      field below the attribute table, e.g., if you need to perform some
      calculation in order to define a call parameter. You can also mix
      the two forms, in which case the table's definitions will be
      executed before the scripting block.

   .. note::

      The result values of the started User Dialog (if any) are mapped
      back onto the calling process's data on the *Output* tab. They are
      available as fields on a ``result`` variable.
