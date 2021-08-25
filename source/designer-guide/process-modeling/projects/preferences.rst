

.. _project-preferences:

Project Preferences
--------------------

You can access the properties and preferences of a project either over
the item *Properties* in the popup menu of the :ref:`ivy-project-view` 
or over the menu item *Project -> Properties*.
Here you can redefine almost all of the global :ref:`workspace-preferences`
and override them with project specific values.

Additionally, the project preferences allow you to define values for
some project specific properties, that do not have a global default
value. Those are described in the sections below.


|axon-ivy| - Project Information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The main project properties page shows information about the project.

.. figure:: /_images/ivy-project/preferences-convert-project.png
   :alt: Project Properties |axon-ivy| information

   Project Properties |axon-ivy| information

Project format version
   Shows the version of the project format. If the project was created
   with an old version of |axon-ivy|, this is indicated with an warning
   message. Consult the Chapter :ref:`project-convert` to learn how to convert your
   project to a new version of the project format.

Number of process Elements
   Shows the number of :ref:`Process Elements <process-elements>` in this project.


.. _project-preferences-cms:

Content Management System Settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The languages in the CMS and the defaults for HTML dialog pages can be
set here.

|image0|

In the list at the top you can add and remove languages to/from the CMS
and you can set the default language. Just below you can define whether
|axon-ivy| should automatically create a value for every language of the
CMS if you create a new Content Object or not. Do not use this option if
you do not need content in multiple languages or if you :ref:`export the CMS
content <cms-export>` to translate it. Use the option if you know
that you need to translate the vast majority of Content Objects within
the |ivy-designer|

Furthermore, you have the choice between different HTML page layouts and
CSS style sheets for use as default values for HTML dialog pages.



Data Class Settings
~~~~~~~~~~~~~~~~~~~

Allows you to specify the default namespace and the name of the project
Data Class.



IvyScript Engine
~~~~~~~~~~~~~~~~

Automatically imported classes
  Allows you to specify fully qualified class names which should be
  automatically available with their simple class names in every ivy
  script code.



Java
~~~~

With these preferences you can adjust the Java settings of the project.

.. figure:: /_images/ivy-project/preferences-java.png
  :alt: Java preferences

  Java preferences

Optional classpath containers
  Defines optional libraries that can be accessed in your Java or IvyScript
  code.

.. |image0| image:: /_images/ivy-project/preferences-cms.png

