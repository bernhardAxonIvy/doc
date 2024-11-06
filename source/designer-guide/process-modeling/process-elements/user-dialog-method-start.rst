.. _process-element-user-dialog-method-start:

User Dialog Method Start
========================

|image0| The *User Dialog Method Start* element is located in the *User Dialog*
drawer of the Process editor palette.

Element Details
---------------

The User Dialog method element is used to map a *User Dialog method* (as
declared on the User Dialog's :ref:`user-dialog-interface-editor`
to a process that implements the functionality of that method.

The element allows to set internal data of the User Dialog from the
``input`` parameters of the method call and to define *return* values
either from process data or by calculation.

Inscription
-----------

.. include:: _tab-name.rst

Start Tab
~~~~~~~~~

This tab is used to define the name and input parameters of the *User Dialog Method*
that is implemented by this element's process. See :ref:`process-element-tab-start`
for a more detailed description.

Result Tab
~~~~~~~~~~

This tab is used to define the values that will be returned to the
caller when the method process finishes. See :ref:`process-element-tab-result`
for a more detailed description.

Method
   Both the table's assignments and any scripting code below the table
   will be executed when the method process reaches an :ref:`process-element-user-dialog-process-end`.
   The table's statements will be executed before the scripting block.

.. |image0| image:: /_images/process-editor/elements/hd-method-start.png
