.. _process-editor:

Process Editor
--------------

The Process editor is used to design and edit the different process kinds
(mostly *business* and *User Dialog logic* processes). The Process editor
consists of two parts:

-  the :ref:`process-editor-area`, where the process logic is constructed element
   for element

-  the :ref:`process-editor-tool-bar`, where some tools are located and also all
   elements, which can be added to the process

-  the :ref:`process-editor-viewport-tool-bar`, where some tools for the
   viewport are located

|image2|

Accessibility
~~~~~~~~~~~~~

|axon-ivy| Project Tree > double click on a *process* node inside the
project tree (|image3|)

.. _process-editor-tool-bar:

Tool Bar
~~~~~~~~

The **Tool Bar** collects all tools which can be helpful for working with the
process editor:

Selection Tool: 
   The default selection tool.

Marquee Tool:
   Grabbing tool to select multiple elements (you can also select multiple elements by press *Ctrl*).

Inscribe process:
   Opens the configuration editor of the process.

Open data class:
   Opens the :ref:`data-class-editor` of the process.

Toggle custom icons:
   Toggle between custom and default icons.

Jump out
   *Only active if you're in a embedded subprocess*

   Jump out of an *embedded subprocess* to the process that
   contains the *Embedded Sub* element.

Delete:
   *Only active if at least one element is selected*

   Delete your current selection.

Wrap to embedded process:
   *Only active if at least one element is selected*

   Wrap your current selection into an embedded process.
   
Auto align:
   *Only active if at least two elements are selected*

   Aligns the selected elements *horizontally* and *vertically*.

Select color:
   *Only active if at least one element is selected*

   Change color of an element. 

.. tip::

   You can also define new colors or edit existing ones. For this press the
   :guilabel:`plus` or the :guilabel:`edit` buttons in the color palette. Valid
   colors are every possible `css color <https://developer.mozilla.org/en-US/docs/Web/CSS/color>`__.

Insert connector:
   Insert a :ref:`process-element-connector-activity`

Element Palette:
   The element palette on the right is split into the different types of nodes
   (Events, Gateways, Activities and Swimlanes). To add an element to the
   diagram, open the corresponding section, select the element and add it to the
   diagram at the wished position.


.. _process-editor-viewport-tool-bar:

Viewport Tool Bar
~~~~~~~~~~~~~~~~~


Origin View:
   Reset process editor to the origin viewport.

Fit to Screen:
   Fit the whole diagram (or your current selection) to the process editor screen.

Center:
   Center the whole diagram (or your current selection) in the process editor screen.

Zoom level:
   Displays the current zoom level of the process editor.


.. _process-editor-area:

Editor Area
~~~~~~~~~~~

Processes are designed, drawn and modified in the process editor area.
Select an element from the palette, then click in the process editor
area to place it. Click and drag elements to move them.

Connectors are drawn between two elements by using the **Connector Tool** in the
:ref:`process-editor-tool-bar` or clicking on the first element and select the
**Connector Tool** over the :ref:`process-editor-quick-actions`. You can also
add more bend waypoints to a connector or move them, by select the connector
and drag the handles. To reconnect a existing connector select the connector and
move the target handle to another element.

On each element you have a :ref:`process-editor-quick-actions`, which provides
useful actions to edit the element. If you select multiple elements you have
access to the :ref:`process-editor-quick-actions-multi`. And also on connectors
you will get a :ref:`process-editor-quick-actions-connector`.

To scroll in the process editor simply drag the diagram. If you want to Zoom,
use your mouse wheel. To undo/redo or copy/paste you can use the **Edit** menu
of the IDE or use the default shortcuts (`Ctrl + C`, `Ctrl + P`,
etc.).


.. _process-editor-quick-actions:

Quick Action Menu
^^^^^^^^^^^^^^^^^

To open the **Quick Action Menu** simply select an element in the editor. The
available actions can be different based on the element type:

Delete:
   Delete the current selection.
 
Edit Label:
   Opens an inline editor for the label of the current selected element.

Edit:
   Opens the inscription mask for the current selected element.

Attach Comment:
   Attach a :ref:`process-element-note` block to the current selection, where
   additional information can be added to a process element.

Custom Icon:
   Change the icon of the process element. If the icon is already a custom icon
   the click will reset it to the default icon. Any image of the project can be
   used as decorator icon.  

Toggle Breakpoint:
   To suspend the execution, :ref:`process-element-breakpoints` can be added to
   process elements.

Connect:
   The **Connection Tool** can connect the current element with another.

Jump
   Enters the embedded subprocess and shows the encapsulated process.

Unwrap embedded subprocess
   The elements encapsulated by the embedded subprocess are placed into
   the current process.

Attach Error Boundary:
   Attaches an error boundary event to the currently selected activity.

Attach Signal Boundary:
   Attaches an error boundary event to the currently selected activity.


.. _process-editor-quick-actions-multi:

Multi-Selection Quick Action Menu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you select multiple elements, e.g with the **Marquee Tool** of the
:ref:`process-editor-tool-bar`, you get access to a **Multi-Selection Quick
Action Menu**. The following actions are available:

Delete:
   Delete the current selection.

Wrap to embedded process:
   Wrap the current selection into an embedded process.

Auto align:
   Aligns the selected elements *horizontally* and *vertically*.


.. _process-editor-quick-actions-connector:

Connector Quick Action Menu
^^^^^^^^^^^^^^^^^^^^^^^^^^^

To open the **Connector Quick Action Menu** select a connector. The following
actions are available:

Delete:
   Delete the current selection.

Edit Label:
   Opens an inline editor for the label of the current selected connector.

Straighten
   Relayouts the arrow's path into a direct line without any angles.

Bend
   Relayouts the arrow's path on the editor's grid (use only rectangular
   angles).


Shortcut Keys
^^^^^^^^^^^^^

Some of the *tools* and *quick actions* are available with shortcut keys. To use
them, select the element press the according key.

.. |image2| image:: /_images/process-modeling/process-editor.png
.. |image3| image:: /_images/process-modeling/process-node.png
