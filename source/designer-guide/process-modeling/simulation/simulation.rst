.. _simulation:

Simulation
----------

A simulation can be started directly on the :ref:`process-element-start-request`
or on the Designer Workflow UI Overview page displayed either in the browser view of the
:ref:`Process Development Perspective <perspectives-axonivy>` or in a
separate browser window, depending on the setting in the
:ref:`corresponding preference <workspace-preferences-process-engine>`.
This Process Start Overview web page shows all processes that can be started
by clicking on the link.

Also the Web Services are displayed on the Process Start Overview page.
By clicking a Web Service Process link, the corresponding WSDL is
displayed.

.. figure:: /_images/simulation-debugging/start-process-on-start-request-element.png
   :alt: Start process on the Request Start element

   Start process on the Request Start element

.. _designer-workflow-ui:

.. figure:: /_images/simulation-debugging/process-start-overview.png
   :alt: Designer Workflow UI Overview Page

   Designer Workflow UI Overview Page

.. tip::

   You can switch off the simulation of Process Start Events and
   Intermediate Process Events when you want to simulate or test other
   parts of a projects. Just set the corresponding options in the
   :ref:`preferences <workspace-preferences-process-engine>`.


Engine Actions
~~~~~~~~~~~~~~

You are able to control the simulation and to influence the animation
using the actions in the toolbar or the |axon-ivy| menu.

.. figure:: /_images/simulation-debugging/menu-engine.png
   :alt: Engine Sub-Menu

   Engine Sub-Menu

Starting the engine and show overview page
   Select the entry |image1| in the menu or as button in the toolbar to start
   the Simulation Engine, open the Process Development Perspective and refresh
   the Process Start Overview page.

Starting the engine
   Select the entry |image3| in the menu or as button  in the
   toolbar to start the Simulation Engine and refresh the Process Start
   Overview page but without opening the Process Development
   Perspective.

Stopping the engine
   Select the entry |image5| in the menu or as button in the
   toolbar to stop the Simulation Engine.

Adjust the engine animation speed
   Select the entry |image7|\ in the menu or as button in the
   toolbar to show the slider to adjust the speed of the animation. This
   overwrites the :ref:`corresponding setting <workspace-preferences-process-engine>` in the
   preferences.

Suppressing the engine animation
   Select the entry |image9| in the menu or as button in the
   toolbar to switch the engine animation on and off. This overwrites
   the :ref:`corresponding setting <workspace-preferences-process-engine>` in the
   preferences.



.. _content-formatting-language-settings:

Content and Formatting Language Settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This dialog allows to edit the content language and the formatting
language. The language settings are used at design time for displaying
the User Dialogs. If option *Use settings while simulating* is checked
the settings are also used while simulating.

.. figure:: /_images/simulation-debugging/content-formatting-language-settings.png

Accessibility
^^^^^^^^^^^^^

Press |image20d| in the toolbar.

Settings
^^^^^^^^^^^^^

The following language settings can be configured:

Content Language
   The content language is used to select the values of content objects.

Formatting Language
   The formatting language is used when objects are formatted using the
   ``format()`` method.

Use settings while simulating
   If checked then the content and the formatting language settings will
   be used while simulating. If **not** checked then the settings of the
   browser will be used.

How to use in IvyScript
^^^^^^^^^^^^^^^^^^^^^^^

To get or set the content or formatting language in IvyScript use
``ivy.session.contentLocale`` respectively
``ivy.session.formattingLocale``.

Find out more about |axon-ivy|'s scripting language :ref:`ivyscript`.

.. |image20d| image:: /_images/simulation-debugging/button-languages.png






.. _simulate-process-models-breakpoints:

Breakpoints
~~~~~~~~~~~

A breakpoint is a marker that tells the simulation engine to pause the
execution. It is then possible to inspect the execution history, to view
the values of internal variables and evaluate user defined expressions
without being interfered by the running execution. The execution must be
resumed by the user explicitly over the functionality of the
:ref:`Debug View <debugger-debug-view>`. You can see a list of your breakpoints and
edit them in the :ref:`Breakpoint View <debugger-breakpoints-view>`.

.. _process-element-breakpoints:

Process Element Breakpoints
^^^^^^^^^^^^^^^^^^^^^^^^^^^

A process element breakpoint is a breakpoint that can be set on a
process element. The execution of the process will be interrupted before
the process element is executed.

**Add / Remove a breakpoint**

You can add process element breakpoints in a Process editor or User Dialog Logic
editor window by using the Quick-Action menu. Select the process step on which
you intend to set the breakpoint and click on the bug.

|image10|

**Edit a breakpoint**

You can add a *condition* to a breakpoint. If you do so, the breakpoint is only
active if the expression evaluates to `true` and will then suspend the
execution. In the expression you have access to the ``in`` variable and all
other variables in the context of the process step. 

|image11|

**Disable a breakpoint**

You can disable a specific breakpoint over the :ref:`debugger-breakpoints-view` or by clicking
on a breakpoint in the Process Editor. It is also possible to disable all
breakpoints in the :ref:`debugger-breakpoints-view`. 

|image12|

Data Class Attribute Value Change Breakpoints
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A data class attribute value change breakpoint is a breakpoint that can
be set on a data class attribute. The execution of the process will be
interrupted before the value of the process data attribute is changed.
Data class attribute value change breakpoints can be added or removed in
the :ref:`data-class-editor` or the :ref:`persistence-entity-class-editor`.
The current available variables
and the current debug context is available in the
:ref:`debugger-variables-view`.
The old and new value of the debugging
field is displayed in the variable ``debug``.

.. note::

   The breakpoint only breaks if the value of an attribute is changed by
   an IvyScript write attribute operation (e.g.
   ``in.data.myField="Hello"``). If the attribute is changed by a setter
   method then the breakpoint will not break (e.g.
   ``in.data.setMyField("Hello")``).


.. |image1| image:: /_images/simulation-debugging/button-engine-start-with-page.png
.. |image3| image:: /_images/simulation-debugging/button-engine-start.png
.. |image5| image:: /_images/simulation-debugging/button-engine-stop.png
.. |image7| image:: /_images/simulation-debugging/button-engine-speed.png
.. |image9| image:: /_images/simulation-debugging/button-engine-animation.png
.. |image10| image:: /_images/simulation-debugging/breakpoint-add.png
.. |image11| image:: /_images/simulation-debugging/breakpoint-condition.png
.. |image12| image:: /_images/simulation-debugging/breakpoint-disable.png
