.. _global-variables:

Global Variables
================

Global Variables acts as global constants which can be used in your
application. Global Variables are simple key/value pairs which can be
specified by the developer. Some examples for global variables are:

-  Company data (name, address, contacts)
-  Simple Rule Values (e.g. credit account)
-  Path values for saving files
-  Path values for 3rd party systems and some other variables

Editor
------

The global variable editor is part of the :ref:`configuration-management`.
See :ref:`configuration-editor` for more information.
A global variable can be added by using the add configuration function. The name
of the global variable is the name of the configuration.

.. figure:: /_images/designer-configuration/global-variable-configuration.png
   :alt: Global Variable Configuration
   :align: center
   
   Global Variable Configuration

- :guilabel:`Default value`
  Provide a default value of the global variable. This can be a Number or
  a String. This value will be used if you access the global variable in
  the application.

- :guilabel:`Description`
  Provide a description of the global variable.

- :guilabel:`Environment settings`
  In this section the default value of the global variable can be
  overridden/new assigned for the specific :ref:`configuration-environments`.

Access global variables in IvyScript
------------------------------------

In order the access the Global Variables in your code a new environment
variable ``var`` was introduced in :ref:`ivyscript` which provides a
comfortable access to your defined variables. This approach has the
advantage that, if global variables are removed developers will
immediately informed in which process element the variable was used.

.. figure:: /_images/designer-configuration/global-variable-script-editor.png
   :alt: Global Variable Script Editor
   :align: center
   
   Global Variable Script Editor