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

Axon Ivy Project Tree > double click on a *process* node inside the
project tree (|image3|)

.. _process-editor-tool-bar:

Tool Bar
~~~~~~~~

The **Tool Bar** collects all tools that can be helpful for working with the
process editor:

Left
^^^^

|select-tool| Select: an element in your process.

|marquee-tool| Marquee: grab multiple elements from your process. 
The Marquee Tool can also be started if you hold *Shift* or you can select multiple elements by hold *Ctrl*.

|undo-tool| Undo: your last changes.

|redo-tool| Redo: your last changes.

.. |select-tool| image:: /_images/ui-icons/selection-tool.svg
   :alt: Select Item
   :width: 2em

.. |marquee-tool| image:: /_images/ui-icons/multi-selection.svg
   :alt: Marquee Item
   :width: 2em

.. |undo-tool| image:: /_images/ui-icons/undo.svg
   :alt: Undo Item
   :width: 2em

.. |redo-tool| image:: /_images/ui-icons/redo.svg
   :alt: Redo Item
   :width: 2em


Center
^^^^^^

Create Element:
   You can create many different elements, by select the wished element and add
   it to a position in the diagram. To keep the overview they are divided into
   different categories: 
   
   - All Elements
   - Events
   - Gateways
   - Activities
   - Artifacts
   - :ref:`Extensions <process-element-extension-item>`


Right
^^^^^

Inscribe:
   Opens or closes the :ref:`process-inscription-view` of the process.

Open data class:
   Opens the :ref:`data-class-editor` of the process.

Options:
   - Darkmode: Toggle between dark and light theme.
   - Grid: Toggle the grid mode. (You can also set the grid mode in the :ref:`process-editor-preferences`)
   - Custom Icon: Toggle between custom and default icons.


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
useful actions to edit the element. If you select multiple elements, you have
access to the :ref:`process-editor-quick-actions-multi`. And also on
:ref:`connectors <process-editor-quick-actions-connector>` and :ref:`swimlanes
<process-editor-quick-actions-lanes>` you will get a Quick Action Menu.

To scroll in the process editor simply drag the diagram. If you want to Zoom,
use your mouse wheel. To undo/redo or copy/paste you can use the **Edit** menu
of the IDE or use the default shortcuts (`Ctrl + C`, `Ctrl + P`,
etc.).


.. _process-editor-quick-actions:

Quick Action Menu
^^^^^^^^^^^^^^^^^

To open the **Quick Action Menu** simply select an element in the editor. The
available actions can be different based on the element type:

.. include:: _delete-quick-action.rst

.. _process-editor-quick-actions-start-process:

Start Process:
   Only available on the :ref:`Start Element <process-element-start-request>`

   Run the selected process.

.. include:: _info-quick-action.rst

Edit:
   Opens the legacy inscription mask for the current selected element.

Search callers of this process:
   *Only available on some start events*

   Search for all usages of this start event.

.. _process-editor-quick-actions-toggle-breakpoint:

Toggle Breakpoint:
   To suspend the execution, :ref:`process-element-breakpoints` can be added to
   process elements.
 
Jump:
   *Only available on elements with an reference to another process*

   Enters the embedded or referenced process and shows the encapsulated process.

Unwrap embedded subprocess:
   Only available on :ref:`process-element-embedded-sub` or
   :ref:`process-element-bpmn-activity`

   The elements encapsulated by the embedded subprocess are placed into
   the current process.

.. include:: _edit-label-quick-action.rst

Edit Source:
   *Only available on elements with a referenced view or java class*

   Jump to the referenced view or java class.

Custom Icon:
   Change the icon of the process element. If the icon is already a custom icon
   the click will reset it to the default icon. Any image of the project can be
   used as decorator icons.  

.. include:: _select-color-quick-action.rst

Add Element:
   Directly insert an element to the process workflow. There are three
   categories of elements:

   - Events: All possible event elements (also for
     :ref:`process-element-error-boundary-event` and
     :ref:`process-element-signal-boundary-event`)
   - Gateways
   - Activities

   .. tip::
     
     Press the key :guilabel:`A` to get a list of all elements. 
     You can also navigate through the list with the :guilabel:`Arrow` keys and 
     add an element with the :guilabel:`Enter` key.

Connect:
   *Only available if the element has no outgoing connector or supports multiple
   outgoing connectors*

   The **Connection Tool** can connect the current element with another.


.. _process-editor-quick-actions-multi:

Multi-Selection Quick Action Menu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you select multiple elements, e.g with the **Marquee Tool** of the
:ref:`process-editor-tool-bar`, you get access to a **Multi-Selection Quick
Action Menu**. The following actions are available:

.. include:: _delete-quick-action.rst

Wrap to embedded process:
   Wrap the current selection into an embedded process.

Auto align:
   Aligns the selected elements *horizontally* and *vertically*.

.. include:: _select-color-quick-action.rst


.. _process-editor-quick-actions-connector:

Connector Quick Action Menu
^^^^^^^^^^^^^^^^^^^^^^^^^^^

To open the **Connector Quick Action Menu** select a connector. The following
actions are available:

.. include:: _delete-quick-action.rst

.. include:: _info-quick-action.rst

Straighten:
   Change layout of the arrow path to a straight line.

Bend:
   Change layout of the arrow path to horizontal and vertical lines with 90° angles.

.. include:: _edit-label-quick-action.rst

.. include:: _select-color-quick-action.rst

Reconnect:
   Trigger a reconnection of the selected connector, by selecting a new target
   element.

   .. tip::

     You can also trigger a reconnection by pressing the target handle on the selected connector


.. _process-editor-quick-actions-lanes:

Swimlane Quick Action Menu
^^^^^^^^^^^^^^^^^^^^^^^^^^

To open the **Swimlane Quick Action Menu** select a pool or a lane. The following
actions are available:

.. include:: _delete-quick-action.rst

.. include:: _edit-label-quick-action.rst

.. include:: _select-color-quick-action.rst

Add Lane
   *Only available on pools*

   Add a lane to the current pool.


Shortcut Keys
^^^^^^^^^^^^^

Some of the *tools* and *quick actions* are available with shortcut keys. To use
them, select the element, then press the associated key.


Jump out
^^^^^^^^
   *Only active if you're in an embedded subprocess*

   Visible in the top left of the :ref:`process-editor-area` to jump out of an
   *embedded subprocess* to the process that contains the *Embedded Sub*
   element.



.. |image2| image:: /_images/process-editor/process-editor.png
.. |image3| image:: /_images/process-modeling/process-node.png
