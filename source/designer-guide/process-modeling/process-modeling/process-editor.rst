.. _process-editor:

Process Editor
--------------

The Process editor is used to design and edit the different process
kinds (mostly *business* and *User Dialog logic* processes). The Process
editor consists of two parts:

-  the :ref:`process-editor-area` where the
   process logic is constructed element for element and

-  the :ref:`process-editor-palette` where the elements
   that are to be placed inside the process are selected

|image2|

Accessibility
~~~~~~~~~~~~~

|axon-ivy| Project Tree > double click on a *process* node inside the
project tree (|image3|)

.. _process-editor-palette:

Palette
~~~~~~~

The palette shows the process elements that are available for a specific
process kind. The set of available process elements may vary for
different process kinds.

.. tip::

   The purpose and configuration of all available process elements are
   described in detail in the :ref:`process-elements`.
   
.. _process-editor-area:

Editor Area
~~~~~~~~~~~

Processes are designed, drawn and modified in the process editor area.
Select an element from the palette, then click in the process editor
area to place it. Click and drag elements to replace them.

Arrows are drawn between two elements by clicking on the first element,
then holding the left mouse button down until releasing on the second
element.

You have four context menus available in the Process editor: the *editor
menu*, the *element menu*, the *arrow menu* and the *selection menu*.

Editor Menu
^^^^^^^^^^^

To open the *editor menu* right click anywhere on the editors area
canvas (i.e. background). The following actions are available:

Jump to Data Class
   Opens the data class editor of the data class used by the current process.
 
Leave Subprocess
   Will jump out of an *embedded subprocess* to the process that
   contains the *Embedded Sub* element.

Select All
   Selects all process elements.

Copy (as Image)
   Copies the whole process (as image only) to clipboard.

Insert template
   Inserts an existing *process template*. Opens a selection dialog to
   choose the template to be inserted, then inserts the selected
   template at the current mouse position. All of currently defined
   process templates are also available from the :ref:`process-template-view`.

Paste
   Pastes a previously *copied* or *cut* element into the process at the
   current mouse position.

Undo
   Undo the last drawing command. The process editor keeps up to 100
   commands in the history buffer that can be undone.

Zoom In
   Zoom in to get a close-up view of the process model. The view is
   enlarged by a factor of 20%. With a wheel mouse, you can also zoom in
   with the wheel together with the ``Ctrl`` key.

Zoom Out
   Zoom out to see more of the process model at a reduced size. The view
   is reduced by a factor of 20%. With a wheel mouse, you can also zoom
   out with the wheel together with the ``Ctrl`` key.

Zoom 100%
   Reset the zoom factor to the default size.

Change orientation of swimlanes
   Changes the orientation of pools and lanes from *horizontal* to
   *vertical* or vice versa.

Add pool
   Adds another pool before the swimlane at the current mouse position.

Add lane
   Adds another lane before the lane or inside the pool at the current
   mouse position.

Edit pool/lane
   Opens the configuration of the pool or lane at the current mouse
   position

Remove pool/lane
   Removes the pool or lane at the current mouse position

Inscribe Process
   Opens the configuration editor of the process.

.. _process-editor-element-menu:

Element Menu
^^^^^^^^^^^^

To open the *element menu* right click on an process element. The
following actions are available:

Copy
   See :ref:`process-editor-selection-menu`.

Cut
   See :ref:`process-editor-selection-menu`.

Inscribe
   Opens the configuration editor of the process element.

Wrap Text
   Places the name of the element inside the element's icon. The icon
   size is stretched accordingly.

Move Text
   Replaces the element's text with a box that can be moved around. You
   can also achieve this by simply clicking and dragging an element's
   associated text.

Style
   See :ref:`process-editor-selection-menu`.

Open Document Reference
   Opens document URLs which are configured in the elements 'Name'
   inscription tab.

Breakpoint
   Add a *regular* or *conditional* breakpoint to the element or remove
   all breakpoints from the element.

Connect
   Creates an arrow that starts at this element. Click on another
   element to create a connection between the two elements. You can also
   create an arrow by clicking on the process element where the arrow
   should start and then move the mouse while you keep the mouse button
   pressed to the process element where the arrow should end.

Extended Functions
   Select from extended layout functions for the element. You can *reset
   the default size* of an accidentally resized element. If elements are
   placed on top of each other you may *send an element to the back* or
   *bring it to the front* of the element stack.

Delete Element
   Deletes the element.

The visibility of the following menu entries are depending on the type
of the process element:

Start Process
   Starts the process that begins at the process element.

Send Signal
   Opens a dialog to send a :ref:`signal <signal-reference>`. The
   dialog uses the signal code configured on the process element as
   default value.

Change Icon
   Changes the decorator icon of an element. 
   You can use any image in your project as decorator icon by using the *Browse ...* sub menu.  

Enter Subprocess
   Enters the embedded subprocess and shows the encapsulated process.

Toggle Transparency
   Changes the transparency state of the embedded subprocess. This
   either hides the process that is encapsulated by the embedded sub
   element or makes it visible.

Unwrap Subprocess
   The elements encapsulated by the embedded subprocess are placed into
   the current process.

Change type
   Converts the *Embedded Sub* into another subprocess type (e.g. from
   *BPMN User Activity* to *BPMN Send Activity*). The inner fields will
   be kept, but its field ids will change. This makes the Process Model
   incompatible when elements are wrapped for the first time. See
   :ref:`Embedded Subprocess <process-kind-embedded-subprocess>`.
   
Move
   Move the selected element.

Search callers of this process
   Displays all callers of a Start in the Search view.

Search callers of this error element
   Displays all process elements that call an Error Start when an
   exception occurred.
      
Jump to connected element
   Will jump out of an *embedded subprocess* to the process that
   contains the *Embedded Sub* element and selects the process element
   that is connected with the Embedded Start or End Event.

Jump to referenced process
   Opens the process that is referenced by the process element.

Jump to User Dialog Process
   Opens the process of the User Dialog that is referenced by the
   process element.

Edit Page
   Opens the web page configured on the process element. If no page is
   configured then the *Create New Page* dialog is opened.

Edit Java Class
   Opens the Java editor with the Java class configured on the process
   element. If no Java class is configured the :ref:`new-bean-class-wizard`
   is opened.

Edit User Dialog
   Opens the view editor (e.g. JSF Editor) for the selected User Dialog.
   
Attach boundary event
   Attaches an additional boundary event to the currently selected
   activity.

Arrow Menu
^^^^^^^^^^

To open the *arrow menu* right click on a an arrow. The following
actions are available:

Inscribe
   Opens the configuration editor of the arrow that the mouse is placed
   over.

Move Text
   Replaces the arrow's text with a box that can be moved around. You
   can also achieve this by simply clicking and dragging the arrow's
   associated text.

Bend
   Relayouts the arrow's path on the editor's grid (use only rectangular
   angles).

Straighten
   Relayouts the arrow's path into a direct line without any angles.

Color
   Changes the color of the arrow.

Bring to front
   If elements and arrows are placed on top of each other then this
   action brings the one with the cursor over it to the front of the
   element stack.

Send to back
   If elements and arrows are placed on top of each other then this
   action sends the one with the cursor over it to the back of the
   element stack.

Reconnect
   Detaches the selected arrow's head from the element it is connected
   to and let's you reconnect the arrow to another element.

Delete connector
   Deletes the selected arrow.

.. _process-editor-selection-menu:

Selection Menu
^^^^^^^^^^^^^^

To open the *selection menu* right click on a selected element or a
group of selected elements (i.e. selection frame is visible). The
following actions are available:

Copy
   Copies the selection to the clipboard.

Cut
   Copies the selection to the clipboard and deletes all contained
   elements from the process.

Style
   Sets the style of the selected elements to a style in the predefined
   list of styles.

Auto Align
   Aligns the selected elements *horizontally* and *vertically*.

Same Width
   Assigns the same *width* to all of the selected elements. The
   resulting width is determined by the widest element in the selection.

Same Height
   Assigns the same *height* to all of the selected elements. The
   resulting height is determined by the highest element in the
   selection.

Same Width and Height
   Combination of the menus *Same Width* and *Same Height*.

Set to default size
   Resets the size of the selected elements to their default sizes.

Create template
   Creates a new *process template* from the selected elements. After
   prompting for a name for the selection, the new template will be
   available from the :ref:`process-template-view`.

Wrap into Subprocess
   Creates an *embedded subprocess* from the selected elements.

Delete selection
   Deletes all of the selected elements from the process.

Shortcut Keys
^^^^^^^^^^^^^

Some of the entries in the context menus are available with shortcut
keys. To use them, place the mouse over a process element and press the
according key.

.. |image2| image:: /_images/process-modeling/process-editor.png
.. |image3| image:: /_images/process-modeling/process-node.png
