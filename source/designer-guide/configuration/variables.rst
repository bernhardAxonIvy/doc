.. _variables:

Variables
=========

Variables are dynamic key/value pairs that can be used to configure your application at runtime.
By using Variables, rather than static texts, you can master the following scenarios easily:

-  Workflow-Application customizations (branding, multi-tenancy)
-  Different runtime settings (staging vs. production) 
-  Company data (name, address, contacts)
-  Simple Rule Values (e.g., credit account)

To see and configure Variables at runtime, use the :ref:`Engine
Cockpit Variables View <engine-cockpit-variables>` on the |ivy-engine|. 


.. _variables-yaml:

Editor
------

The |ivy-designer| delivers a **Yaml-Editor** to edit the
:file:`<project>/config/variables.yaml` file, where you can maintain your
variables.


.. literalinclude:: includes/variables.yaml
   :language: yaml
   :linenos: 

- :guilabel:`Name`
  The name is the identifier of the Variable (e.g., *myTextVar*)

- :guilabel:`Default value`
  The default value is the value (e.g., *value* for the *myTextVar*)

- :guilabel:`Description`
  You can add a description before the Variable itself, starting it by a :code:`#`

- :guilabel:`Metadata`
  You can specify additional meta data for a Variable. Strings, Boolean values
  and numbers are recognized by the default value, but there are other types you
  can define:

  * **password:** This tells the |ivy-engine| to write this Variable value in
    encrypted form to the YAML files. 
    
    .. tip::
      If you add a password variable in the |ivy-designer|, 
      you get an validation warning, that the variable is not
      encrypted. You can fix this via a :ref:`problems-view` > *QuickFix* or right
      click in the **Yaml-Editor** > *Encrypt passwords*
      
  * **daytime:** This value is interpreted as a time consisting of HH:mm[:ss]. 
  * **enum:** You can use this annotation to enumerate all possible values for
    this Variable. 
  * **file:** The file annotation configures the value of this Variable to be
    read from an external file. This file can be a :file:`.json` or a
    :file:`.txt` file. If your Variable is called :code:`myFile` and it should
    be a :code:`json` file, then your file must be located at
    :file:`<project>/config/variables/myFile.json`. Alternatively, the
    :code:`variables` prefix can also be part of the filename rather than a
    parent directory. So, the file
    :file:`<project>/config/variables.myFile.json` can contain the value for the
    variable called :code:`myFile`.

.. tip::
  If your variable has :code:`password` or :code:`secret` in its name (e.g., :code:`hidePasswordMenu`) and no type is explicitly set, 
  the |ivy-engine| will automatically treat this variable as a password to increase the security of it.
  If this behavior does not suit your needs, you can override it by explicit setting the type 
  (e.g., with :code:`# [boolean]`, :code:`# [string]` or :code:`# [number]`).

.. warning::
  The number of `indentation spaces <https://yaml.org/spec/1.2.2/#61-indentation-spaces>`__ 
  needs to be the same in the whole yaml file.


How to Access Variables
-----------------------

To access the Variables in your code, you can use the :public-api:`var
</ch/ivyteam/ivy/environment/Ivy.html#var>` method. In :ref:`ivyscript`, you can
use the name of the Variable to get access to your defined Variables. In addition,
this approach has the advantage that you receive validation notifications when a
Variable is removed by a developer. 

.. code:: java
  
  ivy.var.myVariable;

If you want to access Variable **Metadata**, you can also use the :code:`var`
keyword. This delivers an :public-api:`interface
</ch/ivyteam/ivy/vars/Variables.html>`. From the interface, you can get a 
:public-api:`Variable object </ch/ivyteam/ivy/vars/Variable.html>`. 
This object contains additional metadata for that Variable.

.. code:: java

  ivy.var.variable("myVariable").description();
