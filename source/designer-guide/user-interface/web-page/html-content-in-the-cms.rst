HTML content in the CMS
-----------------------

There are a number of specific content object types that are uniquely
used inside HTML Dialog pages. All of them have their own editors, the
usage of which is described in the following sections.

.. note::

   Web Pages can be accessed without starting a process. This allows you
   to create for example a translated start page with some process start
   links. See also chapter :ref:`Access CMS Content with a
   Browser <cms-access-with-browser>`.


.. _html-web-page-editor:

Web Page Editor
~~~~~~~~~~~~~~~


|image10|

The Page Editor is used to specify the *Style Sheet* and *Layout* of a
page. They can either be inherited from their parent objects in the CMS
hierarchy or can be set explicitly. Use the combo boxes to set one of
the style sheets, i.e. page layouts which are contained in the
corresponding CMS top level folders. The *Search...* buttons on the
other hand opens a dialog which does show all *CSS* and *Layout* content
objects in the whole CMS to select one. So the children content objects
of the page represent the selected *Layout* (see :ref:`html-layout-editor`).
The missing or obsolete
parts (i.e. children in the CMS hierarchy) of a page (e.g. after
changing layout) may be created or deleted with the corresponding
buttons at the bottom of the editor.




.. _html-panel-editor:

HTML Panel Editor
~~~~~~~~~~~~~~~~~

This is the most important editor to edit your HTML content. Each Web
Page (see :ref:`html-web-page-editor`) has
sections that are called *Panels* and which are defined by the page's
layout. Generally, a page has as many panels as are specified by its
associated layout (see :ref:`html-layout-editor`).

In the panels of a page, the actual content of the page is defined. Each
content part of a panel is stored as an own content object below that
panel's content object inside the content management:

|image20|

The contents of a panel are arranged in a table from left to right and
from top-to bottom in a structured manner. Each table cell contains a
single content object or some custom HTML or JSP code.

A panel can be rendered as plain HTML or as a HTML table. If it is
rendered with plain HTML cells are simply rendered one after another.
Rows are separated with a ``<br>`` tag. On the other hand, if it is
rendered as a HTML table, each cell will be rendered as a cell of the
table. You can switch the rendering kind using the checkbox *As HTML
Table*. Switching the rendering influences the available context menu
items of a cell and the buttons *Table*, *Row* and *Cell*.

You can switch between the *Edit* and the *Source* View of a panel. The
*Edit* View as explained above shows the table of the panel with its
cells. The *Source* View on the other hand shows the JSP Code that is
generated from the *Edit* View.


Menus
^^^^^

Insert Process Link/Form ...
   Use this menu to insert a link or form that triggers the continuation
   of the process after the page element.

Insert Content ...
   Use this menu to create sub content objects
   (
   :ref:`Texts <cms-text-editor>`,
   :ref:`Strings <cms-string-editor>`,
   :ref:`Sources <cms-source-editor>`,
   :ref:`Process Links <cms-html-link-editor>`,
   :ref:`Tables <cms-html-table-editor>`,
   :ref:`Result Tables <cms-result-table-editor>`,
   :ref:`Images <cms-image-editor>`
   ) and insert them or already existing content objects into the panel.

Insert Attribute
   Use this menu to insert process attribute values into the panel. The
   menu will open an :ref:`attribute-method-browser` where you can choose the
   process attribute to insert. You can specify a condition that gets
   evaluated during the rendering of the panel to control whether the
   content of the cell is rendered into the panel or not. Moreover you
   can specify how the process data value should be formatted.

Insert JSP
   Use this menu to insert JSP code into the panel.


Context Menus
^^^^^^^^^^^^^

Edit
   Opens the type specific editor (Attribute, Content, JSP, ...) of the
   selected cell.

Edit Condition
   Opens an IvyScript editor to edit the condition that controls whether
   the content of the cell is rendered or not.

Move
   Use this menu to move the current cell to another location.

Remove
   Removes the selected cell.

HTML Attributes <...> Table
   Opens an HTML attribute editor to edit the HTML attributes of the
   table.

HTML Attributes <...> Row
   Opens an HTML attribute editor to edit the HTML attribute of the
   currently selected table row.

HTML Attributes <...> Cell
   Opens an HTML attribute editor to edit the HTML attributes of the
   currently selected table cell.

Insert Row
   Inserts a row above the selected cell.

Delete Row
   Deletes the row of the selected cell.

Merge Cell Left
   Merges the selected cell with the cell at the left side.

Merge Cell Right
   Merges the selected cell with the cell at the right side.

Merge Cell Up
   Merges the selected cell with the cell at the top.

Merge Cell Down
   Merges the selected cell with the cell at the bottom.

Split Cell into Rows
   Splits the selected cell into multiple cells one cell for each row.

Split Cell into Columns
   Splits the selected cell into multiple cells one cell for each
   column.


Buttons and Check boxes
^^^^^^^^^^^^^^^^^^^^^^^

As HTML Table
   Use this checkbox to switch the rendering kind of the panel from raw
   HTML to HTML table and vice versa.

Table
   Use this button to open an HTML attribute editor to edit the HTML
   attributes of the table.

Row
   Use this button to open an HTML attribute editor to edit the HTML
   attribute of the currently selected row.

Cell
   Use this button to open an HTML attribute editor to edit the HTML
   attribute of the currently selected cell.


.. _html-table-editor:

HTML Table Editor
^^^^^^^^^^^^^^^^^

|image11|

The *HTML Table* editor can be used to configure a HTML table. In
contrary to the :ref:`html-result-table-editor` the numbers of rows
and columns is defined here statically. And for each cell the content
must be chosen specifically although the content itself may be generated
dynamically at run-time. Using the menu *Insert...* it is possible to
use :ref:`Text <cms-text-editor>`,
:ref:`Source <cms-source-editor>` or *CMS* elements and using
the menu *Insert Attribute* it is possible to use attributes from the
process data in the cell content.

.. tip::

   A *Text* element can be inserted in a cell by just selecting the cell
   and starting to type the text. The :ref:`cms-text-editor` opens automatically then.

With the buttons *Table*, *Row* and *Cell* or the corresponding entries
in the popup menu the HTML attributes for the corresponding table part
can be manipulated. Furthermore you can add/delete table rows and merge
or split table cells to influence the layout of the table. The source
tab allows to view and edit the generated HTML code directly.

Typically a table object is not created as an independent content object
in the CMS tree, but rather inserted below a *Page* content object. The
cell contents are no first-class CMS elements but are stored within the
HTML table content object itself.



.. _html-result-table-editor:

Result Table Editor
^^^^^^^^^^^^^^^^^^^

|image55|

The *Result Table* editor is used to configure the dynamic generation of
(HTML) data tables on either *DB page* or *Page* process elements.
Typically a result table object is not created as an independent content
object in the CMS tree, but rather inserted below a *Page* content
object when a table gets inserted onto one of the pages panels (using the :ref:`html-panel-editor`).

Data Source
   Specify here the source of the result table's data. You can select a
   *recordset* or a *list* as data source from the process data
   attributes.

Visible Columns
   Select the columns that should be rendered by the result table. You
   can either use the column numbers (1,5,8,2,3) or column names (name,
   first_name, customer_id) in a comma-separated list to specify subset
   and order.

Selection Links
   Hers it is possible to select which column entries that should be
   turned into a link for the one of the page's output links. The
   *select* entry specifies what value that should be assigned to which
   *result value* (a process attribute). This is used to identify the
   selected record on the next process element.

Table Caption
   A caption text for the rendered result table. Macros may be used.

Column Headers
   Specify the names of the columns as they should appear in the header
   row as a comma-separated list. Macros may be used, the order must be
   the same as specified in the *Visible Columns* field.

Automatic Headers
   If selected, then the column headers will be selected from the
   specification in the database.

Empty Table Text
   The text to display if the source data is empty. May contain macros.

HTML Attributes
   Specify the HTML attribute values for *table*, *even rows*, *odd
   rows*, *header cells* and *column cells*.

For almost all of the above described features, the attributes of the
corresponding HTML tags can be edited explicitly by clicking on the
*HTML tag button*.








.. _html-link-editor:

HTML Link Editor
^^^^^^^^^^^^^^^^

Link editor is used to render process and static links. Whereas the
execution of a process link will lead to the continuation of the process
(i.e. activate a specific arc in the process model) and the activation
of a static link leads to some other HTML page independent of the
process.

Links can be rendered in many different forms, e.g. both the "classic"
hyperlink as well as the display of a form with a submit button are
considered to be special forms of links.

All of those different link types are configured with the HTML Link
Editor. The link editor can be opened in two different ways: either by
selecting a link content object below a page in the CMS editor tree or
by double clicking on a link field in the :ref:`html-panel-editor`.

|image12|

The following options can be configured for all links:

Link Target (Href)
   Specify the target of the link that will be jumped when the link is
   activated. If this is the configuration of a process link, then a
   macro that specifies the link that should be executed will already be
   specified (see example image above). However, any valid HTTP-link is
   accepted as value for this field, e.g. ``http://www.acme.com``.

Link Type
   Specifies the visual appearance (type) of link that should be
   configured. Depending on the type that is selected, the configuration
   fields below this attribute will change.

Depending on the selected *Link Type*, additional options are available
for configuration.


Configuring Text, Button, Image and Timed Auto-Redirect Links
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|image13|

For *Text*, *Button*, *Image* and *Timed Auto-Redirect*, the Link Editor
allows for configuration of rather simple additional options. The smart
buttons at the right side of the macro fields can be used to either
configure the HTML attributes of the rendered link source or to insert
and expand process attributes and content objects.

The following options can be configured for those link types
(configuration of a :ref:`Form Link <html-link-editor-form-link>`
is described in the next section):

Displayed Text
   Specifies the text that will be shown to the user and presented as
   link. This option is available for the link types *Text*, *Button*
   and *Image + Text*.

Alternate Text
   Specifies the alternate text that will be set on the displayed image
   (is shown by most browsers as tool-tip when the mouse hovers over the
   image). This option is only available for the link type *Image*.

Time to go in Seconds
   Specifies number of seconds to wait before the link is activated
   automatically. This option is only available for the link type
   *Auto-Redirect (timed)*.


.. _html-link-editor-form-link:

Configuring a Form Link
~~~~~~~~~~~~~~~~~~~~~~~

|image14|

When selecting *Form* as *Link Type* the link editor will show a
sub-editor that allows you to specify a form and all form fields, that
are initialized and/or set from/to process data. Furthermore, you can
configure whether a *Submit* and/or a *Reset* button should be displayed
(including the text of the buttons). At the bottom you even have the
choice to change the editor's view for either designing the tabular
layout of the form in a graphical editor or directly editing the HTML
code.

At run-time the form defined in the *Form Field Editor* will be rendered
in a HTML page. Clicking the submit button results in the continuation
of the process of this element. Therefore, if you disable the submit
button you have to ensure that a process link for process continuation
is part of the HTML page (e.g. by adding such a link in the HTML view of
the editor).


.. _html-configuring-form-field-details:

Configuring Form Field Details
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the Details button of a form field is clicked (when configuring a
Form Link) a specialized sub-editor is presented to the user. This
editor allows to configure in detail how a specific form field is to be
rendered in HTML.

|image15|

Several types of input kinds for the form fields are available such as
text fields, lists or date pickers. For each type, the configuration and
therefore the layout of this editor may differ slightly and some parts
(irrelevant to the chosen) may be invisible. For most form fields you
can define the layout, the default value and the validation.

Input Kind
   .. table:: All the different input kinds

      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Input Kind      | Image           | Description                                                        | HTML Tag                         |
      +=================+=================+====================================================================+==================================+
      | Text Field      | |image61|       | A single line                                                      | ``<input                         |
      |                 |                 | input field for                                                    | type="text">``                   |
      |                 |                 | text of all                                                        |                                  |
      |                 |                 | kind.                                                              |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Password Field  | |image62|       | The same as the                                                    | ``<input                         |
      |                 |                 | text field but                                                     | type="password"                  |
      |                 |                 | each inserted                                                      | >``                              |
      |                 |                 | character is                                                       |                                  |
      |                 |                 | displayed as                                                       |                                  |
      |                 |                 | black bullet.                                                      |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Text Area       | |image63|       | This is a multi                                                    | ``<textarea>``                   |
      |                 |                 | line input                                                         |                                  |
      |                 |                 | field for text                                                     |                                  |
      |                 |                 | of all kind.                                                       |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Check Box       | |image64|       | A simple box to                                                    | ``<input                         |
      |                 |                 | selecting zero,                                                    | type="checkbox"                  |
      |                 |                 | one or more of                                                     | >``                              |
      |                 |                 | two or more                                                        |                                  |
      |                 |                 | options                                                            |                                  |
      |                 |                 | (ideally for                                                       |                                  |
      |                 |                 | yes/no or                                                          |                                  |
      |                 |                 | true/false                                                         |                                  |
      |                 |                 | information).                                                      |                                  |
      |                 |                 | The data that                                                      |                                  |
      |                 |                 | is associated                                                      |                                  |
      |                 |                 | with the chosen                                                    |                                  |
      |                 |                 | option is                                                          |                                  |
      |                 |                 | saved.                                                             |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Radio Button    | |image65|       | It is sort of a                                                    | ``<input                         |
      |                 |                 | button for                                                         | type="radio">``                  |
      |                 |                 | selecting one                                                      |                                  |
      |                 |                 | and only one of                                                    |                                  |
      |                 |                 | two or more                                                        |                                  |
      |                 |                 | options which                                                      |                                  |
      |                 |                 | are mutually                                                       |                                  |
      |                 |                 | exclusive. The                                                     |                                  |
      |                 |                 | data that is                                                       |                                  |
      |                 |                 | associated with                                                    |                                  |
      |                 |                 | the chosen                                                         |                                  |
      |                 |                 | option is                                                          |                                  |
      |                 |                 | saved.                                                             |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Combo Box       | |image66|       | A text field                                                       | ``<select                        |
      |                 |                 | with an                                                            | size="0">``                      |
      |                 |                 | attached                                                           |                                  |
      |                 |                 | drop-down list                                                     |                                  |
      |                 |                 | to select from                                                     |                                  |
      |                 |                 | several                                                            |                                  |
      |                 |                 | predefined                                                         |                                  |
      |                 |                 | values.                                                            |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | List            | |image67|       | A list to                                                          | ``<select                        |
      |                 |                 | choose from                                                        | size="*nbOfOpti                  |
      |                 |                 | several                                                            | ons*">``                         |
      |                 |                 | predefined                                                         |                                  |
      |                 |                 | values.                                                            |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | File Upload     | |image68|       | With this input                                                    | ``<input                         |
      |                 |                 | kind, the user                                                     | type="file">``                   |
      |                 |                 | can choose a                                                       |                                  |
      |                 |                 | file to upload                                                     |                                  |
      |                 |                 | to the Axon Ivy                                                    |                                  |
      |                 |                 | Engine file                                                        |                                  |
      |                 |                 | area                                                               |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Hidden Field    | |image69|       | Hidden fields                                                      | ``<input                         |
      |                 |                 | can be used to                                                     | type="hidden">``                 |
      |                 |                 | transfer                                                           |                                  |
      |                 |                 | additional data                                                    |                                  |
      |                 |                 | invisible for                                                      |                                  |
      |                 |                 | the user (for                                                      |                                  |
      |                 |                 | use in e.g.                                                        |                                  |
      |                 |                 | JavaScript or                                                      |                                  |
      |                 |                 | e-mail transfer                                                    |                                  |
      |                 |                 | of forms)                                                          |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+
      | Date Picker     | |image70|       | To choose a                                                        | Implemented in                   |
      |                 |                 | date. Note that                                                    | Java Script                      |
      |                 |                 | the date is                                                        |                                  |
      |                 |                 | displayed                                                          |                                  |
      |                 |                 | according to                                                       |                                  |
      |                 |                 | the language                                                       |                                  |
      |                 |                 | set in the                                                         |                                  |
      |                 |                 | browser of the                                                     |                                  |
      |                 |                 | user (while                                                        |                                  |
      |                 |                 | simulating in                                                      |                                  |
      |                 |                 | the Designer                                                       |                                  |
      |                 |                 | you can set the language in the toolbar). Note                     |                                  |
      |                 |                 | too, that if                                                       |                                  |
      |                 |                 | dates are                                                          |                                  |
      |                 |                 | entered in a                                                       |                                  |
      |                 |                 | 2-digit format,                                                    |                                  |
      |                 |                 | then Axon Ivy                                                      |                                  |
      |                 |                 | will interpret                                                     |                                  |
      |                 |                 | numbers within                                                     |                                  |
      |                 |                 | the next 20                                                        |                                  |
      |                 |                 | years as years                                                     |                                  |
      |                 |                 | in the future.                                                     |                                  |
      |                 |                 | All other                                                          |                                  |
      |                 |                 | numbers are                                                        |                                  |
      |                 |                 | interpreted as                                                     |                                  |
      |                 |                 | years from the                                                     |                                  |
      |                 |                 | past (e.g. in                                                      |                                  |
      |                 |                 | 2010 entering                                                      |                                  |
      |                 |                 | 30 leads to                                                        |                                  |
      |                 |                 | 2030 whereas                                                       |                                  |
      |                 |                 | entering 35                                                        |                                  |
      |                 |                 | leads to 1935).                                                    |                                  |
      |                 |                 | The Javascripts                                                    |                                  |
      |                 |                 | used for the                                                       |                                  |
      |                 |                 | Date Picker are                                                    |                                  |
      |                 |                 | copied into the                                                    |                                  |
      |                 |                 | *webContent*                                                       |                                  |
      |                 |                 | folder of the                                                      |                                  |
      |                 |                 | project to                                                         |                                  |
      |                 |                 | *scripts/datepicker*                                               |                                  |
      |                 |                 | and                                                                |                                  |
      |                 |                 | *scripts/jquery*.                                                  |                                  |
      +-----------------+-----------------+--------------------------------------------------------------------+----------------------------------+

Displayed Name
   Axon Ivy adds a text label to the form field for reference. The text
   of this label can be set here using process data or CMS entries.

Orientation
   It is possible to choose how the label and the form field are
   positioned to each other, either side by side or super-imposed.

Initialize with...
   You can use process data, function return values (both *value from
   attribute*) or plain text (*initial value*) to set a default value
   for the form field. For check boxes it is additionally possible to
   select whether it is checked or not.

   .. warning::

      Make sure that the data types of the default value matches to the
      chosen form field otherwise an error will be thrown at runtime.

Maximum Characters
   The maximum number of characters which are allowed to enter. The user
   will not be able to enter more characters.

Size (Columns)
   You can set the width of the form field to layout your forms nicely.

Options
   Here the content of the list based form fields (Combo Box, List,
   Check Box, Radio Button) can be defined. You can either choose an Ivy
   Script :ref:`ivyscript-datatype-recordset`
   or :ref:`ivyscript-datatype-list` (*select options form attribute)*
   or you can define the content in a table
   with values and display texts. For recordset based content, the first
   column is used as values and the second column as display texts (all
   other columns are omitted). For list based content all the list
   entries are used as value and as display names.

Values per Row
   For check boxes and radio buttons it is possible to define how many
   options are rendered in the same line (or row)

Rows
   Only used for the list form field. It represents the number of
   visible rows in the list. If more items than rows are defined, the
   list will have scroll bars.

Mime Type
   Is only used for the file upload form field. The `mime
   type <http://www.iana.org/assignments/media-types/>`__ corresponding
   to the type of file which can be uploaded.

Input Validation
   By selecting an input validation script you may validate the values
   that an user enters in a specific field on the client, e.g. before
   the form is submitted. If the user tries to submit a form but input
   validation fails on some of the form fields, then a message will be
   displayed to the user and the form will not be sent.

   Axon Ivy offers you a number of built in validation functions that
   can be selected from the *Input Validation* combo box. The scripts
   that are available depend on the input kind of the currently edited
   form field (e.g. different scripts are available for checkbox and
   text input fields).

   If the built-in scripts do not satisfy your needs, you may provide
   your own validation scripts written in JavaScript. Read the section
   :ref:`html-provide-own-html-validation-scripts` to learn
   more about this topic.

   .. warning::

      Please note, that *JavaScript* must be enabled in your client's
      browsers in order for the validation scripts to work!

Alert message if invalid
   For any selected Input Validation a predefined warning message
   exists. If you don't like the default message, you may specify a
   custom message that will be displayed if the entered value is
   invalid.

   You may use the content smart button to select and insert a textual
   content object that should be displayed as message or as part of your
   message. This allows you to specify messages in multiple languages.

   If you leave the field empty, the default message of the selected
   validation script will be displayed.


.. _html-jsp-editor:

JSP Editor
^^^^^^^^^^

The JSP editor is used to edit a JSP content object which can be used in
the
:ref:`process-element-web-page`,
:ref:`process-element-end-page`,
:ref:`process-element-task-switch-event` or
:ref:`process-element-task-switch-gateway`
process elements.

Inside JSP content objects you can make use of the
:ref:`Environment Variable ivy <ivyscript-reference-environmentvariable>`.
It is imported and declared as follows:

::

       <%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
       <jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>

You can also use the *in* object (i.e. process data) of the process
where the associated process element is located. You can access the
process data by using the ``ivy.html.get()`` method, e.g.:

::

       <%=ivy.cms.co("myUri")"%>
       <%=ivy.html.get("in.myString")%>

Furthermore you can insert references to content from the :ref:`web content
directory <html-content-in-the-web-content-folder>` into your JSP content objects, e.g.:

::

       <jsp:include page="/jspToInclude/include.jsp" />
       <img src="images/myImage.jpg" >




.. _html-layout-editor:

Layout Editor
^^^^^^^^^^^^^

The Layout editor is used to edit a JSP Layout content object which
defines the *Layout* of an HTML dialog page (see :ref:`html-web-page-editor`).

Inside the Layout JSP content objects you can make use of the
:ref:`Environment Variable ivy <ivyscript-reference-environmentvariable>`
or you can insert
references to content from the :ref:`web content directory <html-content-in-the-web-content-folder>`
(see :ref:`JSP Editor <html-jsp-editor>`).

For the layout creator there are some useful functions on the *ivy*
variable:

+--------------------------------------+-----------------------------------------+
| Layout functions                     | Description                             |
+======================================+=========================================+
| ``ivy.style()``                      | Returns the URL to the CSS style,       |
|                                      | which is set on the current :ref:`HTML  |
|                                      | Editor <html-web-page-editor>`).        |
+--------------------------------------+-----------------------------------------+
| ``ivy.content("coName","coType")``   | The layout creator can define a         |
|                                      | placeholder for content, that the       |
|                                      | page designer should fill in.           |
|                                      | When a page with this layout is         |
|                                      | created the specified placeholder       |
|                                      | is created as a content object          |
|                                      | with the given name and type            |
|                                      | under the HTML dialog page whose        |
|                                      | value is set by the page                |
|                                      | designer. At execution time the         |
|                                      | value of the content object is          |
|                                      | set as a String into the layout.        |
+--------------------------------------+-----------------------------------------+
| ``ivy.panel("panelName")``           | This creates a Panel content            |
|                                      | object with the specified name          |
|                                      | under the HTML dialog page when a       |
|                                      | page with this layout is created.       |
+--------------------------------------+-----------------------------------------+

A very simple JSP Layout example which includes the style of the page,
creates a content object named *Caption* with the type *String* and a
*Panel* content object with the name *Panel1* looks as follows:

.. literalinclude:: includes/sample.jsp
   :language: jsp
   :linenos:





.. _link-browser:

Link Browser
^^^^^^^^^^^^

.. figure:: /_images/user-interface-html/link-browser.png

The link browser can be used to insert a HTML ``<a href="...">`` link
tag. The appearing dialog shows the available link types to choose from.
If you select a link type and then press ``Ok`` (or double-click the
link type), then another dialog appears to configure the link.

Visible Text
   The visible text of the HTML link that will be inserted. Or, in HTML
   language, the text between the ``<a>`` and the ``</a>`` tags.

Link Type
   The type of link to insert.

.. table:: Link Types

   +-----------------------+-----------------------+-------------------------+
   | Link Type             | Description           | HTML href link target   |
   +=======================+=======================+=========================+
   | Process               | A link to continue    | ``<%=ivy.html.ref("My   |
   |                       | the process with the  | Link.ivp")%>``          |
   |                       | corresponding         |                         |
   |                       | sequence flow out of  |                         |
   |                       | the *Web Page*        |                         |
   |                       | element that shows    |                         |
   |                       | this page. The link   |                         |
   |                       | target is addressed   |                         |
   |                       | relatively, i.e. uses |                         |
   |                       | the same protocol     |                         |
   |                       | like the request to   |                         |
   |                       | the page. See the     |                         |
   |                       | section for the       |                         |
   |                       | inscription mask of   |                         |
   |                       | the web page          |                         |
   |                       | element               |                         |
   |                       | for further           |                         |
   |                       | information about     |                         |
   |                       | process links.        |                         |
   +-----------------------+-----------------------+-------------------------+
   | Process (SSL on)      | Same as the process   | ``<%=ivy.html.ref("My   |
   |                       | link, but addresses   | Link.ivp", true)%>``    |
   |                       | the process link      |                         |
   |                       | absolutely using      |                         |
   |                       | HTTPS.                |                         |
   +-----------------------+-----------------------+-------------------------+
   | Process (SSL off)     | Same as the process   | ``<%=ivy.html.ref("My   |
   |                       | link, but addresses   | Link.ivp", false)%>``   |
   |                       | the process link      |                         |
   |                       | absolutely using      |                         |
   |                       | HTTP.                 |                         |
   +-----------------------+-----------------------+-------------------------+
   | Content Object        | This is a link to a   | ``<%=ivy.html.coref("   |
   |                       | content object in the | /uri/to/my/jpeg")%>">`` |
   |                       | CMS. Note that not    |                         |
   |                       | all  content object   |                         |
   |                       | types                 |                         |
   |                       | may be used but only  |                         |
   |                       | the ones that         |                         |
   |                       | represent file-based  |                         |
   |                       | resources. This holds |                         |
   |                       | true especially for   |                         |
   |                       | file-based content    |                         |
   |                       | objects such as       |                         |
   |                       | images or documents.  |                         |
   +-----------------------+-----------------------+-------------------------+
   | Process Start         | A link that starts a  | ``<%=ivy.html.startre   |
   |                       | new process. Note     | f("myPID/start.ivp")%   |
   |                       | that the process is   | >``                     |
   |                       | started in a new      |                         |
   |                       | case.                 |                         |
   +-----------------------+-----------------------+-------------------------+
   | Web Content           | For linking to a      | ``<%=ivy.html.wr("myR   |
   |                       | resource in the web   | esource")%>``           |
   |                       | content               |                         |
   |                       | folder.               |                         |
   +-----------------------+-----------------------+-------------------------+
   | HTTP Address          | Inserts a link to an  | ``http://www.example.   |
   |                       | arbitrary web         | com``                   |
   |                       | resource such as a    |                         |
   |                       | web page or a video   |                         |
   |                       | on the web.           |                         |
   +-----------------------+-----------------------+-------------------------+


Other content editors
^^^^^^^^^^^^^^^^^^^^^

Content editors that are not described in this chapter are described in
the :ref:`cms-content-object-value-editors` chapter.

.. |image10| image:: /_images/user-interface-html/cov-editor-page.png
.. |image11| image:: /_images/user-interface-html/html-table-editor.png
.. |image12| image:: /_images/user-interface-html/open-link-editor.png
.. |image13| image:: /_images/user-interface-html/link-editor-text.png
.. |image14| image:: /_images/user-interface-html/link-editor-form.png
.. |image15| image:: /_images/user-interface-html/formfield-details-editor.png
.. |image20| image:: /_images/user-interface-html/panel-in-cms.png
.. |image55| image:: /_images/user-interface-html/cov-editor-table.png
.. |image61| image:: /_images/user-interface-html/form-widget-text.png
.. |image62| image:: /_images/user-interface-html/form-widget-password.png
.. |image63| image:: /_images/user-interface-html/form-widget-textarea.png
.. |image64| image:: /_images/user-interface-html/form-widget-checkbox.png
.. |image65| image:: /_images/user-interface-html/form-widget-radio.png
.. |image66| image:: /_images/user-interface-html/form-widget-combobox.png
.. |image67| image:: /_images/user-interface-html/form-widget-list.png
.. |image68| image:: /_images/user-interface-html/form-widget-file-upload.png
.. |image69| image:: /_images/user-interface-html/form-widget-hidden.png
.. |image70| image:: /_images/user-interface-html/form-widget-date.png
