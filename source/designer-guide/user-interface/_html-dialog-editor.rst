.. _html-dialog-editor:

Html Dialog Editor
^^^^^^^^^^^^^^^^^^

The Html Dialog editor allows to implement the view of an Html Dialog
(i.e. the *JSF view*). The Html Dialog editor consists of two views, the
source view and the graphical view. In the source view you can read and
edit the JSF (or xhtml) source in a text-based editor. In the graphical
view you can preview and edit the visual representation of the JSF page.
Both views are linked to each other and every change is synchronized to
the other view. So a change in one view is automatically reflected in
the other one, e.g. if I change the text of a h1 HTML element in the
source view then the design view is immediately updated and shows the
new text. There are options to arrange the two views in horizontal or
vertical panes or to show only one of them.

The third element is a palette with drawers for the most important
Primefaces and JSF components and widgets that can be used in views.
Such components/widgets can be dragged from the various palette drawers
and then be dropped onto both the design view or onto the source view As
well the rearrangement of already positioned widgets is possible in both
views.

|html-editor-image0|


Accessibility
~~~~~~~~~~~~~

Axon.ivy Project Tree -> double click on the *View* node of a Html
Dialog:

Graphical View
~~~~~~~~~~~~~~

The graphical view of the Html Dialog editor allows to compose an Html
Dialog view in a *graphical* mode by selecting a UI element from the
palette and positioning it on the view. Similarly, already positioned
elements can be dragged to another position on the view, simply by
selecting and dragging them with the mouse. In the same way, just select
an element and press the *delete* key to remove an element from the JSF
page. As the graphical and the source views are linked together, all
these actions are synchronized to the source view.

|html-editor-image1|

.. tip::

   The graphical view displays the JSF page as realistic as possible. It
   also shows all the content from the template or from includes. But
   you cannot select or edit these elements.

Default Actions
~~~~~~~~~~~~~~~

If you double click on one of the most important elements (the ones that
you find in the palette) then the default action of this element is
triggered. It depends on the element what happens. For example for a
Primefaces OutputLabel you can edit the text of the label or choose a
CMS content object for it. On the other hand, for the Primefaces
DataTable you can select which list from the data class will be used as
data source for the table.

|html-editor-image2|

Visual Markers
~~~~~~~~~~~~~~

The graphical view displays overlay markers for some elements:

-  CMS markers are displayed if you use the CMS for displaying text or
   an image. This helps you to verify very fast whether your JSF page is
   properly translated/internationalized.

-  Data binding markers are visible when the value of an input element
   is bound to a data element with an EL expression. You can use these
   markers to verify whether all your inputs are bound to data or a
   backing bean.

-  You see logic mapping markers if you call a Html Dialog logic element
   in a button or link. Use these to verify if all your actions are
   properly mapped to logic elements.

|html-editor-image3|

Source View (Code)
~~~~~~~~~~~~~~~~~~

For each element that has been dropped on the view the corresponding
code is generated in the source. Alternatively you can use the auto
completion support in the source editor. Just enter the first letter(s)
of a valid code fragment and a selection list of matching elements pops
up.

|html-editor-image4|

Content Assist (Ctrl+Space)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

In addition to the auto completion support you get further assistance
for writing expressions if you press ``Ctrl+Space`` on an expression to
get a pop-up with context aware list of proposed code fragments to
select from.

|html-editor-image5|

Quick Fix (Ctrl+1)
~~~~~~~~~~~~~~~~~~

There are Quick Fixes available to create missing events, methods and
data attributes on the current Html Dialog. Simply press ``Ctrl+1`` on a
**logic** or **data** expression respectively.

|html-editor-image6|

CMS Quick Assist (Ctrl+1)
~~~~~~~~~~~~~~~~~~~~~~~~~

There are Quick Assists available to create or use content objects in
the current Html Dialog. Simply press ``Ctrl+1`` on a text attribute or
on text between xml tags.

|html-editor-image7|

.. tip::

   If a new content object is created with the Quick Assist you can
   directly rename the created content object in the Html Dialog Editor.
   Just type a new name and confirm with ``Enter``, to abort the
   renaming press ``Esc``.


.. _html-dialog-editor-dragndrop:

CMS Drag & Drop support
~~~~~~~~~~~~~~~~~~~~~~~

CMS contents can directly be dragged from the CMS View into the Html
Dialog Editor. The dropped content will be automatically converted into
a valid JSF tag or EL-expression. Currently the content types String and
Text as well as all Images-types support drag & drop operations.

|html-editor-image8|

Linking to CMS content (F3 or Ctrl)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a shortcut to navigate to CMS content. Simply press ``F3`` on a
**ivy.cms.co(...)** expression to jump to the corresponding object in
the CMS. Alternatively press ``Ctrl`` and click on the link.

Linking to Data Class (F3 or Ctrl)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a shortcut to navigate to a data class definition. Simply press
``F3`` on a **data.xyz** expression to jump to the corresponding Data
Class. Alternatively press ``Ctrl`` and click on the link.

Linking to Logic (F3 or Ctrl)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a shortcut to navigate to a logic element definition. Simply
press ``F3`` on a **logic.xyz** expression to jump to the corresponding
logic element. Alternatively press ``Ctrl`` and click on the link.

Properties View
~~~~~~~~~~~~~~~

Together with the Html Dialog Editor you will want to use the Eclipse
properties view to define attributes for the UI elements of your dialog.
Simply switch to the **Process Development Perspective** that will
display the properties view at the bottom left area of the workbench
window.

.. |html-editor-image0| image:: /_images/html-dialog-editor/html-dialog-editor.png
.. |html-editor-image1| image:: /_images/html-dialog-editor/html-dialog-editor-graphicalview.png
.. |html-editor-image2| image:: /_images/html-dialog-editor/html-dialog-editor-defaultaction.png
.. |html-editor-image3| image:: /_images/html-dialog-editor/html-dialog-editor-overlaymarkers.png
.. |html-editor-image4| image:: /_images/html-dialog-editor/x-html-editor-source.png
.. |html-editor-image5| image:: /_images/html-dialog-editor/html-dialog-editor-contentassist.png
.. |html-editor-image6| image:: /_images/html-dialog-editor/html-dialog-editor-quickfix.png
.. |html-editor-image7| image:: /_images/html-dialog-editor/html-dialog-editor-quickassist.png
.. |html-editor-image8| image:: /_images/html-dialog-editor/x-html-editor-cms-dnd.png
