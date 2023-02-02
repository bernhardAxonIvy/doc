Browsers
========


.. _attribute-method-browser:

Attribute and Method Browser
----------------------------

This browser is used to construct and insert IvyScript expressions for
IvyScript text fields or areas in inscription masks. Those expressions
are based on the process data in the context of the current step.

.. figure:: /_images/ivyscript/attribute-browser.png
   :alt: Attribute and Method Browser

   Attribute and Method Browser

In the upper left area, you can choose between the different process
attributes in the current context (such as ``in``, ``out``, ``param``,
``result`` or ``panel``). Depending on the selection, you can add a
corresponding method to the expression in the upper right area and the
*help* area displays information to the selected attribute/method. The
constructed expression can be previewed in the *insert* text box at the
bottom and be inserted into the inscription mask by clicking on the
button *insert*.


.. _function-browser:

Function Browser
----------------

This browser is used to construct and insert IvyScript expressions for
IvyScript text fields or areas in inscription masks. Those expressions
are based on the environment in the context of the current process or on
general-purpose functions.

.. figure:: /_images/ivyscript/function-browser.png
   :alt: Function Browser

   Function Browser

In the upper left area, you can choose between the different attributes
of the different environment variables in the current context. You can
add a corresponding method to the expression in the upper right area and
the *help* area displays information to the selected attribute/method.

A description of the accessible objects can be found in the section :ref:`ivy
environment variables <ivyscript-reference-environmentvariable>`

The constructed expression can be previewed in the *insert* text box at
the bottom and be inserted into the inscription mask by clicking on the
button *insert*.


.. _data-type-browser:

Data Type Browser
-----------------

The data type browser is used to choose a data type in the:

-  :ref:`Process Data Class editor <data-class-editor>`
-  :ref:`User Dialog Data Class editor <data-class-editor>`
-  :ref:`User Dialog Interface editor <user-dialog-interface-editor>`
-  :ref:`Code tabs of inscription masks <process-element-tab-code>`

Data types are divided into two categories:

.. figure:: /_images/ivyscript/data-type-browser-ivy-base-types.png
   :alt: Data Type Browser for Axon Ivy base types

   Data Type Browser for Axon Ivy base types

This category contains the Axon Ivy base types. These types may be used
within IvyScript without any restriction. Note that for convenience
reasons database ``Record`` and ``Recordset``, ``XML``, ``Tree`` and
``List`` types are supported out of the box.

Selecting ``List<?>`` will bring up another data type browser where you
specify the type of the list members.

.. figure:: /_images/ivyscript/data-type-browser-other-types.png
   :alt: Data Type Browser for other types

   Data Type Browser for other types

Here you can find all other types that are available in your project.
This includes all Data Classes that you have created, all classes that
were generated from Web Services and all other Java classes that are on
the build path.

Start typing the name of the desired type to get suggestions in the
list. On the bottom, you may limit the suggestions to only custom Data
Classes or Web Service classes.

.. tip::

   In the filter, you can use \* (any string) and ? (any character) as
   wild cards.


.. tip::

   To switch between the tabs, use the shortcuts 
   :guilabel:`Alt` + :guilabel:`Left`, :guilabel:`Alt` + :guilabel:`Right`
   or :guilabel:`Ctrl` + :guilabel:`Shift` + :guilabel:`T`.

   To change the focus from the filter to the list, press the 
   :guilabel:`Tab` or :guilabel:`Arrow-Down` key
