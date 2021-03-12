.. _variables:

Variables
=========

Variables are simple key/value pairs which can be used in your application.
Some examples for Variables are:

-  Customizing of workflow application
-  Multi-Tenancy
-  Settings
-  Company data (name, address, contacts)
-  Simple Rule Values (e.g. credit account)

To see which Variables exists on the |ivy-engine| you can use the :ref:`Engine
Cockpit Variables View <engine-cockpit-variables>`.


Editor
------

The |ivy-designer| delivers a **Yaml-Editor** to edit the
:file:`<project>/config/variables.yaml` file, where you can maintain you
variables.


.. literalinclude:: includes/variables.yaml
   :language: yaml
   :linenos: 

- :guilabel:`Name`
  The name is identifier for the Variable  (e.g *myVariable*)

- :guilabel:`Default value`
  The default value is the value (e.g *value* for the *myVariable*)

- :guilabel:`Description`
  The description is can be added before the Variable itself, started by a :code:`#`

- :guilabel:`Metadata`
  You can specify additional meta data for a Variable. Strings, Boolean values
  and numbers are recognized by the default value, but there are other types you
  can define:

  * **password:** This tells the engine that the value of this Variable
    should be written encrypted to the yaml files.
  * **daytime:** This value will be interpreted as daytime 
  * **enum:** The enum annotation will give you the possibility to define possible 
    values for this Variable. 
  * **file:** The file annotation will tell the engine to retrieve the value for this Variable 
    from an external file. This file can be a :file:`.json` or a :file:`.txt`
    file. If your Variable is called :code:`myFile` and it should be a
    :code:`json` file, then your file must be at the location
    :file:`variables/myFile.json` or the :code:`variables` prefix can also be
    part of the file name itself :file:`variables.myFile.json`.


Environments for Variables
--------------------------

You can override the default value of a Variable for a particular
:ref:`Environment <configuration-environments>`, by adding a
:file:`<project>/config/_<environment>/variables.yaml` file and defining your
Variables in there. This can be useful if you need different values for the same
Variable, if this is used in different software development stages ("testing",
"productive").


Access Variables
----------------

-> neu schreiben (neu var???) weil in ivvscript nutzbar -> überall nutzbar

To access the Variables in your code, you can use the :public-api:`var
</ch/ivyteam/ivy/environment/Ivy.html#var>` method. In :ref:`ivyscript`, you
can use it with the name of the Variable to get a convenient access to your
defined Variables. In addition, this approach has the advantage that you have
validation notifications when a Variable is removed by a developer. 

.. code-block:: java
  
  ivy.var.myVariable;

If you want to access **Metadata**, you can also use the :code:`var` keyword.
This will deliver an :public-api:`interface
</ch/ivyteam/ivy/vars/Variables.html>` where you can get, for example, a
:public-api:`Variable object </ch/ivyteam/ivy/vars/Variable.html>`. This
contains additional metadata for that Variable.

.. code-block:: java

  ivy.var.variable("myVariable").description();
