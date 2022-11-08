.. _variables:

Variables
=========

Variables are dynamic key/value pairs which can be used to configure your application at runtime.
So, by using Variables, rather than static texts, you can master the following scenarios at ease:

-  Workflow-Application customizations (branding, multi-tenancy)
-  Different runtime settings (staging vs. production) 
-  Company data (name, address, contacts)
-  Simple Rule Values (e.g. credit account)

To see and configure Variables at runtime, use the :ref:`Engine
Cockpit Variables View <engine-cockpit-variables>` on the Axon Ivy Engine. 


.. _variables-yaml:

Editor
------

The Axon Ivy Designer delivers a **Yaml-Editor** to edit the
:file:`<project>/config/variables.yaml` file, where you can maintain you
variables.


.. literalinclude:: includes/variables.yaml
   :language: yaml
   :linenos: 

- :guilabel:`Name`
  The name is identifier for the Variable  (e.g *myTextVar*)

- :guilabel:`Default value`
  The default value is the value (e.g *value* for the *myTextVar*)

- :guilabel:`Description`
  The description is can be added before the Variable itself, started by a :code:`#`

- :guilabel:`Metadata`
  You can specify additional meta data for a Variable. Strings, Boolean values
  and numbers are recognized by the default value, but there are other types you
  can define:

  * **password:** This tells the engine that the value of this Variable
    should be written encrypted to the  YAML files.
  * **daytime:** This value will be interpreted as daytime 
  * **enum:** The enum annotation will give you the possibility to define possible 
    values for this Variable. 
  * **file:** The file annotation configures the value of this Variable 
    to be read from an external file. This file can be a :file:`.json` or a :file:`.txt`
    file. If your Variable is called :code:`myFile` and it should be a
    :code:`json` file, then your file must be located at 
    :file:`<project>/config/variables/myFile.json`. 
    Alternatively the :code:`variables` prefix can also be
    part of the file-name rather than a parent directory. 
    So, the file :file:`<project>/config/variables.myFile.json` could also serve 
    the value for the variable called :code:`myFile`.

.. warning::
  The `indentation spaces <https://yaml.org/spec/1.2.2/#61-indentation-spaces>`__ needs to be the same in the whole yaml file.


Environments for Variables
--------------------------

You can override the default value of a Variable for a particular
:ref:`Environment <configuration-environments>`, by adding a
:file:`<project>/config/_<environment>/variables.yaml` file and defining your
Variables in there. This can be useful if you need different values for the same
Variable, if this is used in different software development stages ("testing",
"productive"). You don't have to provide the metadata (e.g description) again:

.. literalinclude:: includes/variables_env.yaml
   :language: yaml
   :linenos: 


Access Variables
----------------

To access the Variables in your code, you can use the :public-api:`var
</ch/ivyteam/ivy/environment/Ivy.html#var>` method. In :ref:`ivyscript`, you
can use it with the name of the Variable to get a convenient access to your
defined Variables. In addition, this approach has the advantage that you have
validation notifications when a Variable is removed by a developer. 

.. code:: java
  
  ivy.var.myVariable;

If you want to access **Metadata**, you can also use the :code:`var` keyword.
This will deliver an :public-api:`interface
</ch/ivyteam/ivy/vars/Variables.html>` where you can get, for example, a
:public-api:`Variable object </ch/ivyteam/ivy/vars/Variable.html>`. This
contains additional metadata for that Variable.

.. code:: java

  ivy.var.variable("myVariable").description();
