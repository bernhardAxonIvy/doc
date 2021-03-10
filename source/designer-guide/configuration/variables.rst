.. _variables:

Variables
=========

Variables acts as global constants which can be used in your application.
Variables are simple key/value pairs which can be specified by the developer.
Some examples for variables are:

-  Company data (name, address, contacts)
-  Simple Rule Values (e.g. credit account)
-  Path values for saving files
-  Path values for 3rd party systems and some other variables

Editor
------

In the current version there is no UI editor for maintaining your variables. However, you
can use the normal **Generic Text Editor** to add new variables. To do this, add or
edit the :file:`<project>/config/variables.yaml` file:


.. literalinclude:: includes/variables.yaml
   :language: yaml
   :linenos: 

- :guilabel:`Name`
  The name is identifier for the variable  (e.g *myVariable*)

- :guilabel:`Default value`
  The default value is provided by the value itself.

- :guilabel:`Description`
  The description is can be added before the variable itself, started by a :code:`#`.

- :guilabel:`Metadata`
  You can specify additional meta data for a variable. Strings, Boolean values
  and numbers are recognized by the default value, but there are other types you
  can define:

  * **password:** This tells the engine that the value of this variable
    should be written encrypted to the yaml files.
  * **daytime:** This value will be interpreted as daytime 
  * **enum:** The enum annotation will give you the possibility to define possible 
    values for this variable. 
  * **file:** The file annotation will tell the engine to retrieve the value for this variable 
    from an external file. This file can be a :file:`.json` or a :file:`.txt`
    file. If your variable is called :code:`myFile` and it should be a
    :code:`json` file, then your file must be at the location
    :file:`variables/myFile.json` or the :code:`variables` prefix can also be
    part of the file name itself :file:`variables.myFile.json`.


Environments
------------

You can override the default value of a variable for a particular
:ref:`Environment <configuration-environments>`, by adding a
:file:`<project>/config/_<environment>/variables.yaml` file and defining your
variables in there.


Access variables in IvyScript
------------------------------------

In order the access the variables in your code a new environment
variable ``var`` was introduced in :ref:`ivyscript` which provides a
comfortable access to your defined variables. This approach has the
advantage that, if variables are removed developers will
immediately informed in which process element the variable was used.

.. code-block:: java
  
  ivy.var.myVariable;

If you want to access **Metadata**, you can also use the :code:`var` keyword.
This will deliver an :public-api:`interface
</ch/ivyteam/ivy/vars/Variables.html>` where you can get, for example, a
:public-api:`variable object </ch/ivyteam/ivy/vars/Variable.html>`. This
contains additional metadata for that variable.

.. code-block:: java

  ivy.var.variable("myVariable").description();
