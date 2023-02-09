.. _data-classes:

Data Classes
============

This chapter deals with |ivy| Data Classes. A Data Class generally holds the
data that flows through your business or User Dialog process. You can build
complex data structures in your Data Classes. Use composition to split up
your data if the amount of your data is getting large.


Types of Data Classes
---------------------

There are four kinds of Data Classes in |ivy|.

Global Data Classes
   The global Data Classes are located in the Data Class node in your project
   tree. They are accessible in your project and projects depending on it.

User Dialog Data Class
   Each User Dialog has its Data Class. This class holds the data that flows
   through your User Dialog process. In your User Dialog Data Class, you can
   define fields with a type of a global Data Class. The User Dialog Data Class
   is visible only in the associated User Dialog Process.

Web Service (WS) Data Classes
   |ivy| generates a Web Service Data Class automatically when you create a
   Web Service configuration. The Web Service Data Class, like a global
   Data Class, is accessible in your project and projects depending on it. Use
   this Data Class to communicate with your Web Services.

Entity Classes
   :ref:`persistence-entity-classes` are like Global Data Classes but with
   additional information on where and how to store the data of a class and its
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
   Choose a namespace for your Data Class. The namespace lets you create a
   structure to organize your data. Use the dot character '.' to separate the
   folders. The namespace will be visible in the |ivy| project tree.

Data Class Name
   Enter the name of your Data Class. Do not use a Data Class Name twice in
   your project, it may get confusing if you do so.



.. _data-class-editor:

Data Class Editor
-----------------

The |ivy| Data Class editor lets you configure the process data objects of
|ivy|. The process data is the data that **flows** through your processes. It
represents the state of the respective process.

Use this editor to add new data fields to your process data class, to
change the type of a field or document your Data Class or Data Class
Field.

.. figure:: /_images/data-class/data-class-editor.png
   :alt: Data Class Editor

   Data Class Editor


Accessibility
^^^^^^^^^^^^^

#. |ivy| Project Tree > double click on a Data Class entry in the
   tree.

#. New > Data Class > then the editor opens if the class has been created
   successfully


Attributes
^^^^^^^^^^

The attributes table specifies the Data Class contents.

Comment
   Use this field to document your data class

Annotations
   You can use annotations to control certain behaviors:

   BusinessCaseData
      Objects having the BusinessCaseData annotation are stored in the Business
      Data Store (``ivy.repo``) in the context of the current business case. See
      :ref:`business-case-data` for additional information.

Table Actions
   |image0| Adds a new attribute to the table. You can also add new attributes
   by clicking on an empty row.

   |image1|\ Deletes the selected attribute.

   |image2|\ Reorders the selected attributes. The order influences just
   the presentation and has no implications on the logic.

   |image3| Toggles the value change breakpoint for selected attribute. The
   attribute icon |image4| shows that a breakpoint is installed on an attribute.
   Find more information on value change breakpoints in chapter
   :ref:`simulate-process-models-breakpoints`.

Name Column
   Enter the name of your attribute. The name should not contain any
   special characters or spaces.

   .. tip::

      You may already specify the type of the attribute here by adding a
      colon ':' to the attribute name, followed by the desired type
      (e.g., ``myDateAttribute:Date``).

      |image5|

      The entered type is used as a search filter. The following
      examples use a data or Java class with the name
      ``ch.ivyteam.demo.Person``:

      -  ``person:Person`` results in ``person``,
         ``ch.ivyteam.demo.Person``.

      -  ``personList:List<Person>`` results in ``personList``,
         ``List<ch.ivyteam.demo.Person>``.

      -  ``javaPersonList:java.u.List<Person>`` results in ``person``,
         ``java.util.List<ch.ivyteam.demo.Person>`` (Here, a prefix of
         the package name ``java.u`` is used as a filter instead of the
         full qualified name ``java.util``).

      -  ``timestamp:Timestamp`` displays the type selection dialog because
         there are multiple types matching the type name ``Timestamp``.

Type Column
   Enter the type of the attribute or press |image6| to bring up the
   :ref:`data-type-browser`.

Persistent Column
   Decide if the data should be persistent between task switches. If the data is
   not set to be persistent, then you lose all information if the execution of
   the process passes a task switch process element.

   .. note::

      You can remove this flag on attributes if their value is stored in the
      :ref:`business data repository <business-data>`, in :ref:`persistence
      <persistence>`, or if the data is only used temporarily within a task.


Attribute Refactoring
^^^^^^^^^^^^^^^^^^^^^

The Data Class editor supports Data Class attribute refactoring.

Combine Into New Data Class Refactoring
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Over time, the number of attributes in a Data Class may become excessive.
This decreases the maintainability and re-usability of your process
logic. Therefore, the editor allows you to extract multiple attributes
from an existing Data Class into a new Data Class. The extracted
attributes will be replaced with a delegate field for the new Data
Class.

If you have a Data Class that describes a person, you could extract
the attributes that belong to the address part into an extra address
Data Class.

+-----------------------------------+-----------------------------------+
| Before Refactoring                | After Refactoring                 |
+===================================+===================================+
| |image7|                          | |image8|                          |
+-----------------------------------+-----------------------------------+

**Start Refactoring**

Select the attributes to extract in the Data Class attribute table. Open
the context menu of the selected attributes. Choose *Combine to Data
Class* to open the refactoring wizard.

|image9|

**Wizard Page 1 - Define the new Data Class**

The first refactoring wizard page lets you define the location and name of the
Data Class. |image10| The checkbox '*Include non-type safe refactorings within
Web Pages (CMS)*' enables the refactoring of JSP (macro) expressions within Web
Pages. Web Page modifications are not type-safe: Attributes collected as change
candidates may be wrong. So these changes should be inspected in detail in the
refactoring preview (page 2) and tested manually.

**Wizard Page 2 - Preview modifications**

The second page previews all changes that will be applied to your artifacts. You
can inspect most of the changes within the textual compare view on the lower
part of the page.

|image11|

The refactoring will modify all programmatic references to attributes.
Statements written in Java, IvyScript, JSP or El-Expressions may be changed by
this refactoring.

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
