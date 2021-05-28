.. _data-classes:

Data Classes
============

This chapter deals with the Axon Ivy Data Classes. In general, a Data
Class holds the data that flows through your business or User Dialog
process. You can build complex data structures out of your Data Classes.
Use composition to split up your data if the amount of your data is
getting bigger.


Types of Data Classes
---------------------

There are four kinds of Data Classes in Axon Ivy.

Global Data Classes
   The global Data Classes are placed in the Data Class node in your
   project tree. They are accessible all over your project and the
   extending projects.

User Dialog Data Class
   Each User Dialog has its own Data Class. This class holds the data
   that flows through your User Dialog processes. In your User Dialog
   Data Class it is possible to define fields with a type of a global
   Data Class. The User Dialog Data Class is not visible at any other
   place except the User Dialog Processes.

Web Service (WS) Data Classes
   The Web Service Data Classes are automatically generated if you
   define a Web Service configuration. The Web Service Data Classes are,
   as well as the global Data Classes, accessible from all over the
   project and the extending projects. Use this Data Class to
   communicate with your Web Services.

Entity Classes
   :ref:`persistence-entity-classes` are like Global Data Classes but with additional
   information where and how to store the data of a class and its
   attributes to a relational database.

.. _data-class-new-wizard:

New Data Class Wizard
---------------------

The New Data Class wizard lets you create a new global Data Class.

.. figure:: /_images/data-class/data-class-new-wizard.png
   :alt: New Data Class Wizard

   New Data Class Wizard

Accessibility
^^^^^^^^^^^^^

File > New > Data Class


Features
^^^^^^^^

Project Name
   Choose the name of the project the new Data Class should belong to.

Namespace
   Choose a namespace for your Data Class. The name space lets you
   create a structure to organize your data. Use the dot character '.'
   to separate the folders from each other. The namespace will be
   visible in the Axon Ivy project tree.

Data Class Name
   Enter the name of your Data Class. Do not use the same name twice in
   your project, it may get confusing if you do so.



.. _data-class-editor:

Data Class Editor
-----------------

The Axon Ivy Data Class editor lets you configure the process data
objects of Axon Ivy. The process data is the data that **flows** through
your processes. It represents the state of the respective process.

Use this editor to add new data fields to your process data class, to
change the type of a field or to document your Data Class or Data Class
Field.

.. figure:: /_images/data-class/data-class-editor.png
   :alt: Data Class Editor

   Data Class Editor


Accessibility
^^^^^^^^^^^^^

#. Axon Ivy Project Tree > double click on a Data Class entry in the
   tree.

#. New > Data Class > then the editor opens if the class was created
   successfully


Attributes
^^^^^^^^^^

The attributes table specifies the Data Class contents.

Comment
   Use this field to document your data class

Annotations
   Annotations can be set to control certain behaviors:

   BusinessCaseData
      Objects of the data class are stored in the Business Data Store
      (``ivy.repo``) in the context of the current business case. See
      :ref:`business-case-data` for more information.

Table actions
   |image0| Adds a new attribute to the table. Alternatively the new
   attributes can be added by clicking on an empty row.

   |image1|\ Deletes the selected attribute.

   |image2|\ Reorders the selected attributes. The order influences just
   the presentation and has no logic implication.

   |image3| Toggles the value change breakpoint for selected attribute.
   The attribute icon |image4| shows that a breakpoint is installed on
   an attribute. More information about value change breakpoints can be
   found in chapter :ref:`simulate-process-models-breakpoints`.

Name column
   Enter the name of your attribute. The name should not contain any
   special characters or spaces.

   .. tip::

      You may already specify the type of the attribute here by adding a
      colon ':' to the attribute name, followed by the desired type
      (e.g. ``myDateAttribute:Date``).

      |image5|

      The entered type is used as a search filter. The following
      examples using a data or java class with the name
      ``ch.ivyteam.demo.Person``:

      -  ``person:Person`` results in ``person``,
         ``ch.ivyteam.demo.Person``.

      -  ``personList:List<Person>`` results in ``personList``,
         ``List<ch.ivyteam.demo.Person>``.

      -  ``javaPersonList:java.u.List<Person>`` results in ``person``,
         ``java.util.List<ch.ivyteam.demo.Person>`` (Here a prefix of
         the package name ``java.u`` is used as filter instead of the
         full qualified name ``java.util``).

      -  ``timestamp:Timestamp`` results in displaying the type
         selection dialog because there are mutliple types matching the
         type name ``Timestamp``.

Type column
   Enter the type of the attribute or press the |image6| to bring up the
   :ref:`data-type-browser`.

Persistent column
   Decide if the data should be persistent between a task switch. If the
   data is not set to be persistent, then you loose all information if
   the execution of the process passes a task switch process element.

   .. note::

      This flag can be removed on attributes if the value is stored in
      the :ref:`business data repository <business-data>` or using
      :ref:`persistence <persistence>` or the data is only used
      temporary within a task.

Attribute refactoring
^^^^^^^^^^^^^^^^^^^^^

The Data Class editor supports Data Class attributes refactoring.

Combine into new Data Class refactoring
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Over time the amount of attributes in a Data Class may become excessive.
This decreases the maintainability and re-usability of your process
logic. Therefore the editor allows you to extract multiple attributes
from an existing Data Class into a new Data Class. The extracted
attributes will be replaced with a delegate field for the new Data
Class.

E.g. if you have a Data Class that describes a person you could extract
the attributes that belong to the address part into an extra address
Data Class.

+-----------------------------------+-----------------------------------+
| Before refactoring                | After refactoring                 |
+===================================+===================================+
| |image7|                          | |image8|                          |
+-----------------------------------+-----------------------------------+

**Start Refactoring**

Select the attributes to extract in the Data Class attribute table. Open
the context menu of the selected attributes. Choose *Combine to Data
Class* to open the refactoring wizard.

|image9|

**Wizard Page 1 - Define the new Data Class**

The first refactoring wizard page lets you define the location and name
of the Data Class. |image10| The checkbox '*Include non type safe
refactorings within Web Pages (CMS)*' enables the refactoring of JSP
(macro) expressions within Web Pages. But Web Page modifications are not
type safe. This means that attributes that are collected as change
candidates may be wrong. So these changes should be inspected in detail
in the refactoring preview (page 2) and tested manually.

**Wizard Page 2 - Preview modifications**

The second page previews all changes that will be applied to your
artifacts. You can inspect most of the changes within the textual
compare view on the lower part of the page.

|image11|

The refactoring will modify all programmatic references to the
attributes. This means that statements written in Java, IvyScript, JSP
or El-Expressions could be changed by this refactoring.

.. |image0| image:: /_images/data-class/button-add.png
.. |image1| image:: /_images/data-class/button-delete.png
.. |image2| image:: /_images/data-class/button-order.png
.. |image3| image:: /_images/data-class/button-toggle-breakpoint.png
.. |image4| image:: /_images/data-class/button-attribute-with-breakpoint.png
.. |image5| image:: /_images/data-class/data-class-editor-enter-type.png
.. |image6| image:: /_images/data-class/button-type.png
.. |image7| image:: /_images/data-class/data-class-editor-extract-refactoring-original-structure.png
.. |image8| image:: /_images/data-class/data-class-editor-extract-refactoring-modified-classes.png
.. |image9| image:: /_images/data-class/data-class-editor-extract-refactoring-context-menu.png
.. |image10| image:: /_images/data-class/data-class-editor-extract-refactoring-wizard-page-1.png
.. |image11| image:: /_images/data-class/data-class-editor-extract-refactoring-wizard-page-2.png
