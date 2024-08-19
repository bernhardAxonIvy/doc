.. _ivyscript-editor:

IvyScript Editor
================

Modes
-----

There are two kind of IvyScript editors which are used in different
places.


IvyScript Editor
~~~~~~~~~~~~~~~~

The normal editors expect you to enter either a script with multiple
statements (e.g., a script, that contains semicolons) which performs a
certain task, or just an expression that evaluates to a certain value.


.. _macro-editor:

Macro Editor
~~~~~~~~~~~~

The macro editor allows you to mix IvyScript with normal text. For
example you could name a task dynamically by including the case number
in the taskname. To use IvyScript in this Editor you must use these tags
``<%=%>``.


Features
--------

Content Assist
~~~~~~~~~~~~~~

Content Assist is invoked by pressing :guilabel:`CTRL` + :guilabel:`SPACE`
at any point of
editing a script. Content assist will open a popup, displaying proposals
that are available in the current context, from which you may then
select a suitable option. The selected proposal is inserted into the
editor. You can get proposals for functions, types, packages, variables
and methods and after the keyword ``new`` you also get a list of
constructor proposals.

**Example 1:** When you would like to have displayed a list with all
proposals that match with an already entered ``c``, you just enter ``c`` and
press :guilabel:`CTRL` + :guilabel:`SPACE`.
You will then get a list with proposals of
functions, types and packages, each displayed with a help text if
available.

.. figure:: /_images/ivyscript/content-assist-type.png
   :alt: Content assist in action

   Content assist in action

**Example 2:** The constructor proposal list just appears after the
keyword ``new``. So you could create a new date: ``Data d = new`` and
press :guilabel:`CTRL` + :guilabel:`SPACE` after typing 
``new`` and you get a list of possible
constructors to create a new date.

.. figure:: /_images/ivyscript/content-assist-constructor.png
   :alt: Constructor proposals

   Constructor proposals

**Example 3:** Similar to types, you can also get proposals for packages.

.. figure:: /_images/ivyscript/content-assist-package.png
   :alt: Package proposals

   Package proposals


Parameter Hopping
~~~~~~~~~~~~~~~~~

Another special feature is parameter hopping. When you insert a
constructor or a method that has parameters, the first parameter is
selected. When you now press the :guilabel:`Tab` key, then the next parameter gets
selected. This way you may edit one parameter after another and simply
jump to the next one when you're finished. After the last parameter was
selected, the first is selected again. When you have finished, you can
press :guilabel:`Enter` and the cursor jumps to the end of the inserted method or
constructor.

.. figure:: /_images/ivyscript/tab-hopping.png
   :alt: Parameter hopping: After insertion of proposal first parameter is selected

   Parameter hopping: After insertion of proposal first parameter is
   selected


Shortcuts
~~~~~~~~~

.. table:: Available Shortcuts inside the IvyScript (and Macro) Editor

   +-----------------------------------+-----------------------------------+
   | Shortcut                          | Action                            |
   +===================================+===================================+
   | CTRL+SPACE                        | Opens content assistant           |
   +-----------------------------------+-----------------------------------+
   | F2                                | When pressing F2 in an editor, a  |
   |                                   | bigger editor is opened in an own |
   |                                   | Dialog.                           |
   +-----------------------------------+-----------------------------------+
   | ESC                               | Inside an editor that was opened  |
   |                                   | with F2, this closes the dialog   |
   |                                   | and stores the entered text in    |
   |                                   | the editor from where the F2      |
   |                                   | editor was opened.                |
   +-----------------------------------+-----------------------------------+
   | CTRL+Z                            | Undo                              |
   +-----------------------------------+-----------------------------------+
   | CTRL+Y                            | Redo                              |
   +-----------------------------------+-----------------------------------+
   | CTRL+SHIFT+A                      | `Attribute and Method             |
   |                                   | Browser <#ivy.ivyscript.attribute |
   |                                   | browser>`__                       |
   +-----------------------------------+-----------------------------------+
   | CTRL+SHIFT+T                      | `Datatype                         |
   |                                   | Browser <#ivy.ivyscript.datatypeb |
   |                                   | rowser>`__                        |
   +-----------------------------------+-----------------------------------+
   | CTRL+SHIFT+C                      | Content Object Browser            |
   +-----------------------------------+-----------------------------------+
   | CTRL+SHIFT+F                      | `Function                         |
   |                                   | Browser <#ivy.ivyscript.functionb |
   |                                   | rowser>`__                        |
   +-----------------------------------+-----------------------------------+

.. _ivyscript-editor-smart-buttons:

Smart Buttons
~~~~~~~~~~~~~

.. figure:: /_images/ivyscript/smart-buttons.png
   :alt: Smart Buttons

   Smart Buttons

Next to the editors you usually find buttons (which ones, depends on the
context), that hold certain actions. The exact actions that those
buttons realize are described in the section :ref:`smart-buttons`.
There are e.g., actions to
select an attribute from the current process data, to select content or
to insert a link.

.. figure:: /_images/ivyscript/action-cms.png
   :alt: Macro Editor after insertion of a CMS object with help of the

   Macro Editor after insertion of a CMS object with help of the Content Smart Button
