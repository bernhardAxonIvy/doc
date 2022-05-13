Common UI Components
====================


|axon-ivy| uses some UI components that are widely used in the UI panels
of the product. This chapter introduces these components.



IvyScript Editor
----------------

IvyScript Editors are enhanced text fields or text areas where IvyScript
code can be entered. For more information about IvyScript please read
the chapter :ref:`ivyscript`. IvyScript Editors have a
yellow background to help you identify them visually. On the right side
some buttons are visible. These buttons are called :ref:`smart-buttons`.
If you click on them different dialogs appear which provide context
information that you may want to insert into the editor.

.. figure:: /_images/ivyscript/ivyscript-editor.png
   :alt: IvyScript Editor
   :align: center
   
   IvyScript Editor

An IvyScript Editor will validate the code you enter into it. If the
entered code is not valid the editor will change its background color to
red. The invalid part of the entered text will be underlined with a red
line. The tool tip of the editor will show a message with a description
of the problem.

.. figure:: /_images/ivyscript/ivyscript-editor-with-error.png
   :alt: IvyScript Editor with Error
   :align: center
   
   IvyScript Editor with Error

An IvyScript Editor has a completer that shows context
relevant information in a popup window while you are typing into the
editor. You can select any of the proposals to be inserted into the
editor. If you don't want to select a proposal simply continue typing.
The provided information will be filtered by your input. The popup
window will disappear if no proposal exists for the current input. You
can enforce the appearance of the popup window by pressing
``CTRL`` + ``SPACE``. Pressing ``CTRL`` + ``SPACE`` on a open
completer popup window will cycle the visibility level. The visibility
level controls how much information is displayed in the completer popup
window. Pressing ``ALT`` + ``h`` will switch the help text of the
selected information on and off. Pressing ``ESC`` will close the
completer popup window.

.. figure:: /_images/ivyscript/ivyscript-editor-with-completer.png
   :alt: IvyScript Editor with Completer
   :align: center
   
   IvyScript Editor with Completer




Macro Text Editor
-----------------

Like IvyScript Editors, Macro Text Editors are enhanced text fields or
text areas with Smart Buttons. Macro Text Editors have a blue background
to identify them visually. They are used to specify texts. Inside the
texts IvyScript Macros can be used. IvyScript Macros start with ``<%=``
and end with ``%>``. Between these two tags any IvyScript code can be
written. IvyScript Macros are place holders which are replaced with the
evaluated value of the IvyScript Macro before the text is used.

.. figure:: /_images/designer/macro-text-editor.png
   :alt: Macro Text Editor
   :align: center
   
   Macro Text Editor















.. _smart-buttons:

Smart Buttons
-------------

Smart Buttons are small buttons associated with other UI components. A
Smart Button opens a dialog that shows context sensitive information
which can be inserted into or used to configure the associated UI
component. The following table shows the various Smart Buttons and
explains their function.

.. table:: Smart Buttons
   :widths: 10 90
    
   +-----------------------------------+-----------------------------------------------------------+
   | Smart Button                      | Description                                               |
   +===================================+===========================================================+
   | |image14|                         | Opens an                                                  |
   |                                   | :ref:`attribute-method-browser`                           |
   |                                   | that shows the current                                    |
   |                                   | process data structure and the                            |
   |                                   | methods that are available on the                         |
   |                                   | process data entries. Use this                            |
   |                                   | Smart Button if you want to                               |
   |                                   | insert process data into the                              |
   |                                   | associated UI component.                                  |
   +-----------------------------------+-----------------------------------------------------------+
   | |image15|                         | Opens a                                                   |
   |                                   | :ref:`function-browser` that                              |
   |                                   | shows the structure of the                                |
   |                                   | currently available Ivy                                   |
   |                                   | environment variable and the                              |
   |                                   | methods that they provide.                                |
   |                                   | Moreover it shows all available                           |
   |                                   | global functions. Use this Smart                          |
   |                                   | Button if you want to insert the                          |
   |                                   | Ivy environment variable or a                             |
   |                                   | global function.                                          |
   +-----------------------------------+-----------------------------------------------------------+
   | |image16|                         | Opens a                                                   |
   |                                   | :ref:`data-type-browser` that                             |
   |                                   | shows all available process data                          |
   |                                   | classes and Java classes. Use                             |
   |                                   | this Smart Button if you want to                          |
   |                                   | insert a process data or Java                             |
   |                                   | class into the associated UI                              |
   |                                   | component. Import statements for                          |
   |                                   | the selected class will be                                |
   |                                   | created on the fly.                                       |
   +-----------------------------------+-----------------------------------------------------------+
   | |image17|                         | Opens the                                                 |
   |                                   | :ref:`new-bean-class-wizard`.                             |
   |                                   | Use this Smart Button if you want                         |
   |                                   | to create and configure a new                             |
   |                                   | Java bean class.                                          |
   +-----------------------------------+-----------------------------------------------------------+
   | |image18|                         | Opens a Java editor with the                              |
   |                                   | class configured in the                                   |
   |                                   | associated UI component. Use this                         |
   |                                   | Smart Button if you want to edit                          |
   |                                   | the configured Java class.                                |
   +-----------------------------------+-----------------------------------------------------------+
   | |image19|                         | Opens a                                                   |
   |                                   | :ref:`cms-content-object-editor`                          |
   |                                   | that                                                      |
   |                                   | shows all available content                               |
   |                                   | objects. Use this Smart Button if                         |
   |                                   | you want to insert the content or                         |
   |                                   | a reference to a content object                           |
   |                                   | into the associated UI component.                         |
   +-----------------------------------+-----------------------------------------------------------+
   | |image20|                         | Opens a Database Field Browser                            |
   |                                   | that shows all available database                         |
   |                                   | fields. Use this Smart Button if                          |
   |                                   | you want to insert a database                             |
   |                                   | field into the associated UI                              |
   |                                   | component                                                 |
   |                                   | (:ref:`process-element-db-step`).                         |
   +-----------------------------------+-----------------------------------------------------------+
   | |image21|                         | Opens an Operator Browser that                            |
   |                                   | shows all available operators.                            |
   |                                   | Use this Smart Button if you want                         |
   |                                   | to insert an operator (e.g. a SQL                         |
   |                                   | operator) into the associated UI                          |
   |                                   | components                                                |
   |                                   | (:ref:`process-element-db-step`).                         |
   +-----------------------------------+-----------------------------------------------------------+
   | |image22|                         | Opens an Web Service                                      |
   |                                   | Configuration Browser that shows                          |
   |                                   | all available Web Service                                 |
   |                                   | configurations. Use this Smart                            |
   |                                   | Button if you want to insert a                            |
   |                                   | reference to a web service                                |
   |                                   | configuration into the associated                         |
   |                                   | UI components                                             |
   |                                   | (:ref:`process-element-web-service-call-activity`).       |
   +-----------------------------------+-----------------------------------------------------------+
   | |image23|                         | Opens a HTML Tag/Attribute                                |
   |                                   | Browser that shows available html                         |
   |                                   | tags and attributes. Use this                             |
   |                                   | Smart Button if you want to                               |
   |                                   | configure html tags or attributes                         |
   |                                   | of the associated UI component.                           |
   +-----------------------------------+-----------------------------------------------------------+
   | |image25|                         | Opens a Color Browser that shows                          |
   |                                   | available colors. Use this Smart                          |
   |                                   | Button if you want to insert a                            |
   |                                   | color definition into the                                 |
   |                                   | associated UI component.                                  |
   +-----------------------------------+-----------------------------------------------------------+
   | |image26|                         | Opens a Font Browser that shows                           |
   |                                   | available fonts. Use this Smart                           |
   |                                   | Button if you want to insert a                            |
   |                                   | font definition into the                                  |
   |                                   | associated UI component.                                  |
   +-----------------------------------+-----------------------------------------------------------+
   | |image27|                         | Cancels the current editing                               |
   |                                   | operation and resets the value in                         |
   |                                   | the associated UI component to                            |
   |                                   | the value it has before the                               |
   |                                   | editing was started.                                      |
   +-----------------------------------+-----------------------------------------------------------+

.. |image14| image:: /_images/designer/smart-button-attribute-browser.png
.. |image15| image:: /_images/designer/smart-button-function-browser.png
.. |image16| image:: /_images/designer/smart-button-class-browser.png
.. |image17| image:: /_images/designer/smart-button-new-class.png
.. |image18| image:: /_images/designer/smart-button-open-java-editor.png
.. |image19| image:: /_images/designer/smart-button-content-browser.png
.. |image20| image:: /_images/designer/smart-button-database.png
.. |image21| image:: /_images/designer/smart-button-operator.png
.. |image22| image:: /_images/designer/smart-button-ws-config.png
.. |image23| image:: /_images/designer/smart-button-html.png
.. |image25| image:: /_images/designer/smart-button-color.png
.. |image26| image:: /_images/designer/smart-button-font.png
.. |image27| image:: /_images/designer/smart-button-cancel.png























Refactoring Wizards
-------------------

Refactoring wizards appear when you *rename*, *move*, *delete* or
*copy/paste* |axon-ivy| artifacts.

The wizards allow you to specify the new name/namespace/location of the
artifacts that should be refactored and will give you an overview of the
result of the operation before it is actually executed, so that you can
estimate the consequences.

All refactoring wizards have the same structure:

-  On the *first page* you enter the **parameters** of the operation
   (e.g. new name and/or namespace, target project, etc.) if any are
   required. Also you may chose whether any existing references to the
   refactored artifact should be updated automatically (e.g. if you
   rename a sub process then all callers to that sub process will be
   updated, so that they point to the renamed instance). This is the
   default behavior.

-  On the *second page* you will be presented with a **list of
   references that will be broken** after the operation is executed.
   This page is not displayed, if no broken references are detected.
   This page is only displayed for *delete* or *move* refactorings, i.e.
   if the artifact will no longer exist in the scope of any callers that
   referred to it before the operation.
   
   .. figure:: /_images/designer/refactoring-broken-references-page.png
      :alt: Refactoring Broken References Page
      :align: center
   
      Refactoring Broken References Page

-  On the *third page*, you will eventually be presented with a
   **detailed list of operations** that will be performed as a result of
   the selected refactoring and possibly a preview of any old and new
   resources that will be created. You may individually deselect any
   operations, they will then not be executed when you press *Finish*.

   .. warning::

      It is recommended that you don't uncheck any of the scheduled
      operations (unless you know exactly what you're doing), since this
      may leave the workspace in an inconsistent state.


.. figure:: /_images/designer/refactoring-overview-page.png
   :alt: Refactoring Overview Page
   :align: center
   
   Refactoring Overview Page

You can get from one page to another by pressing the *Next* and *Back*
buttons, however there is no requirement to have a look at all three
pages. As soon as the *Finish* button is enabled (this may not be the
case, if some required input is missing on the first page), you may
press it and execute the operation immediately.





.. _refactoring-wizards-rename:

Rename Wizard
~~~~~~~~~~~~~

.. figure:: /_images/designer/refactoring-rename-wizard.png
   :alt: Rename Wizard
   :align: center
   
   Rename Wizard

Change the name and/or namespace. If you enter invalid values then an
error will be displayed.

If you leave the *Update references* box checked, then all existing
references to the renamed artifact (within the current workspace) will
be updated automatically. Otherwise, no callers or references will be
updated, which will possibly result in broken references.

.. note::

   Please note, that the namespace for processes is written with forward
   slashes '/' as separators (e.g. 'MyProcesses/Customer/Invoice') while
   the namespace for Data Classes and User Dialogs is written with a dot
   '.' as separator (e.g. 'customerportal.users.Employee').

Click on :guilabel:`Finish` to actually rename the selected resource(s) or on
:guilabel:`Cancel` to abort the operation.


.. _refactoring-wizards-move:

Move Wizard
~~~~~~~~~~~

.. figure:: /_images/designer/refactoring-move-wizard.png
   :alt: Move Wizard
   :align: center
   
   Move Wizard

Select the destination project for the move operation from the proposed
list. The moved artifact will keep its original name and namespace.

Click on :guilabel:`Finish` to actually move the selected resource(s) to the
selected project or on :guilabel:`Cancel` to abort the operation.


.. _refactoring-wizards-delete:

Delete Wizard
~~~~~~~~~~~~~

.. figure:: /_images/designer/refactoring-delete-wizard.png
   :alt: Delete Wizard
   :align: center
   
   Delete Wizard

If the selected resources are not |axon-ivy| artifacts, then you will be
presented with a confirmation dialog for the delete operation.

If you select an |axon-ivy| artifact (|axon-ivy| projects, User Dialog,
Process, Data Class) for deletion, then you might be presented with a
list of references that will break, if the operation is executed.

Click on :guilabel:`Finish` to actually delete the selected resource(s) or on
:guilabel:`Cancel` to abort the operation.



.. _refactoring-wizards-copy:

Copy Wizard
~~~~~~~~~~~

.. figure:: /_images/designer/refactoring-copy-wizard.png
   :alt: Copy Wizard
   :align: center
   
   Copy Wizard

The copy wizard appears when you execute the *Paste* operation (either
through the menu action *Paste* or with *Ctrl-V*) after having copied
something to the clipboard (e.g. through the menu action *Copy* or with
*Ctrl-C*).

The copy wizard lets you change the project, name and namespace of the
copy that will be created. All of the parameters are already filled in,
the system tries to make educated guesses, if the selected target
location is not valid or does not supply sufficient information (e.g. if
a resource with the same name already exists at the paste location, then
the name of the copy will be automatically have a "CopyOf" prefix).

Click on :guilabel:`Finish` to actually paste the copied resource(s) to the
defined location or on :guilabel:`Cancel` to abort the operation.
