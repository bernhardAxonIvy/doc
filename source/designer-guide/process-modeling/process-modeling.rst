.. _process-modeling:

Process Modeling
================

This chapter introduces Axon.ivy processes and how to work with them.
The creation and logical organisation of processes is explained as well
as the functionality of the :ref:`process-editor` and the different kinds of processes.

Process Kinds
-------------

There are different kinds of processes. Their use and capabilities are
explained in the sections below.

.. _process-kind-business:

Business Process
~~~~~~~~~~~~~~~~

Business processes are the *regular* kind of processes that are used to
implement business cases. Business processes contain starts that can be
selected by any user from his/her workflow list or from the list of star
table processes.

.. _process-kind-embedded-subprocess:

Embedded Subprocess
~~~~~~~~~~~~~~~~~~~

An embedded subprocess is essentially a syntactical collapse of elements
into a single element to hide details from process design. They are
available in all other process kinds. The hierarchy of embedded
subprocesses is potentially indefinite, i.e. you can create further
embedded subs inside an already existing subprocess.

Since *embedded subprocesses* are simply a structural means for process
diagram simplification, no mapping of data is required when entering or
leaving this kind of subprocess (i.e. inside an embedded subprocess the
same data is available as inside the caller process).

.. warning::

   Wrapping process elements into an embedded subprocess does not
   influence the functionality of most process elements. But the
   wrapping influences the way process elements are addressed by
   Axon.ivy. This may cause incompatibilities with older versions of the
   process and will hinder you to deploy such a process over an already
   deployed older version of the process. The process elements that may
   cause such incompatibilities are:

   -  :ref:`process-element-task-switch-gateway`
   -  :ref:`process-element-task-switch-event`
   -  :ref:`process-element-wait-program-intermediate-event`
   -  :ref:`process-element-call-and-wait`

.. _process-kind-callable:

Independent Subprocess (Callable)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An independent subprocess (callable) is a process, that can be called
from any other process with the *call subprocess element*. Independent
subprocesses can be used to factor out frequently used functionality
which can then be reused by any other process.

Because *callables* are *independent* implementations of processes (or
parts of process logic) they have an own Data Class which might not
match the caller's data. Therefore parameters need to be mapped in both
directions when entering and leaving an independent subprocess.

To create an independent subprocess, select the *callable process*
option from the :ref:`process-new-wizard`. The
created process will contain special start and end elements that must
encompass the process implementation.

.. _process-kind-webservice:

Web Service Process
~~~~~~~~~~~~~~~~~~~

Web Service processes are a special case of *independent subprocesses*.
A Web Service process can be started (i.e. called) from any other
application (or from another process) by using the *Web Service call
element* or any other SOAP web service compatible client..

A web service process will provide a web service with one or more
operations, which are defined by the *Web Service Process Start*
elements within the process. Each of these start elements have their own
input and output parameters that will be mapped to and from the process
data.

Due to the nature of web services, which are intended to be called by
other applications and not by a user directly, no user-interaction (HTML
or User Dialogs) is allowed within such a process. If the process does
contain user-interaction an exception will be thrown.

To create a web service process, select the *Web Service Process* option
from the :ref:`process-new-wizard`. The created
process will contain special start and end elements that must encompass
the process implementation.

User Dialog Logic
~~~~~~~~~~~~~~~~~

User Dialog logic processes are the implementation of the behavior of
User Dialogs, the :ref:`controller <user-dialogs>` in the MVC
pattern. A whole new set of elements is available for this kind of
processes (from the *User Dialog drawer* on the process editor palette),
while other elements (such as *task switch* or *HTML page*) are not
available for conceptual reasons.

A User Dialog logic process is invoked with an *User Dialog* element
inside a *business process*. Its execution starts with an *init start*
element and ends with a *dialog exit* element. The two elements do not
need to have a direct connection (in fact they never have). Once a User
Dialog process is running, it is driven by *user interface events* which
will trigger individual sub processes.

.. note::

   Calling a *process based User Dialog* (and thus executing its logic)
   can (or rather should) be seen as equivalent to calling of a
   *callable process* with the sole difference that the User Dialog
   offers a user interface that allows a user to interact with the
   process logic directly.

   However, from an abstract point of view, a User Dialog is nothing
   else than a function call. It is invoked with a list of (optional)
   arguments and returns a list of result values. This is exactly the
   same behavior as a callable process offers.


.. _process-new-wizard:

New Process Wizard
------------------

The *New Process Wizard* lets you create a new Business, Callable Sub or
Web Service Process.

Accessibility
~~~~~~~~~~~~~

File > New > Process


Process Definition (page 1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: /_images/process-modeling/new-process-wizard-page-1.png
   :alt: New Process Wizard

   New Process Wizard

Project
   Choose the project where the new process should be created.

Namespace
   Select a group where the new process will be inserted (this is
   roughly equivalent to a namespace). Select the ``<default>`` process
   group to create a process directly below the project's processes
   folder (i.e. equal to "no group"). You can click on the group folder
   button to open the *New Process Group Wizard*, if you want to create
   a new group "on the fly". The process groups are listed relative to
   the project's *process* folder.

Name
   Enter the name of the new process.

Type
   :ref:`process-kind-business`:
   This option is the default option an creates a normal standard business
   process. Use this option to implement your business logic.

   :ref:`Callable Sub Process <process-kind-callable>`:
   This option creates a callable sub process including a
   process-call-start element and a process-call-end element. You need
   to implement your process between those two elements. It is allowed
   to have multiple Process Starts and Process End elements in a
   callable process.

   :ref:`process-kind-webservice`:
   This option creates a web service process which can be called from
   other systems. WS Start and WS End elements will be created
   automatically and you can implement your process between these
   elements. Please note that no user interaction may occur in a web
   service process.

Process Data (page2)
~~~~~~~~~~~~~~~~~~~~

.. figure:: /_images/process-modeling/new-process-wizard-page-2-normal.png
   :alt: Simple Process Data selection on page 2

   Simple Process Data selection on page 2

Process Data
   *default*: Select this option to use the project's default data class
   as data structure for the new process.

   *existing*: Select this option to choose an already existing data
   class as data structure for the new process. Any existing Data Class
   can be chosen with the class selector button on the right side. **It
   is strongly recommended to select a data class from the project where
   the process will be created** in order to avoid dependencies on the
   implementation of another project.

   *create new*: Select this option to create a new, empty data class
   that will be associated with the new process. Enter the name of the
   new data class to create (including namespace). Initially a data
   class name that is based on the new process' name and group will be
   suggested, but you're free to change it.

Process Data with simple mapping (page2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: /_images/process-modeling/new-process-wizard-page-2-mapping.png
   :alt: Process Data selection with auto data Mapping

   Process Data selection with auto data Mapping

Callable Sub Processes often consume or return data from a high level
process. The data which is passed to and given back to the caller
process can be easily mapped within this page.

Callable Sub Process Data
   Defines the Data Class which is used within the Process to create.
   The simple mapping parameters below are only available if a new Data
   Class is created or when the Callable Sub Process uses the same Data
   Class as the caller Process.

Parameters
   The *Caller Data* references the Data Class from the Caller Process.
   The fields of this Data Class can be automatically mapped to the
   Callable Sub Process Data.

   In the mapping table below the Caller Data the In and Out arguments
   for the new Process can be defined. If any mappings are chosen, the
   Wizard will automatically configure the Call Sub Start Event, its
   internal input mapping (param > in) and its output mapping (out >
   result). The calling process element of the high level process will
   also be inscribed with input- & output mappings, if the new Process
   Wizard was opened from the Call Sub inscription step.


.. _process-new-group-wizard:

New Process Group Wizard
------------------------

The New Process Group wizard lets you create a new grouping folder for
business processes. Process groups can be nested.

.. note::

   The process group is just used to categorize similar processes. A
   process is always treated independent from its parent process
   group(s)

.. figure:: /_images/process-modeling/new-process-group-wizard.png
   :alt: New Process Group Wizard

   New Process Group Wizard

Accessibility
~~~~~~~~~~~~~

File > New > Process Group

Features
~~~~~~~~

Project Name
   Choose the project that your group belongs to.

Parent Group Name
   Select a group that is the parent of your new creating group.

Process Group Name
   Enter the name of the group that you want to create.



Process Properties
------------------

Like the process elements that are used inside a process, the process
itself has an *inscription* that allows to specify and edit a processes
properties. To open and show a the inscription mask of a process you
simply select the process in the :ref:`ivy-project-view`,
right-click and select *inscription* from the pop-up menu.

Name and Description
~~~~~~~~~~~~~~~~~~~~

The common :ref:`process-element-tab-name` allows
to specify name, description and associated documents for each process.

Process Data
~~~~~~~~~~~~

The *Process Data tab* allows to specify the data class that will be
used to define the process's data structure.

|image0|

Each process must be associated with a data class, otherwise the tab
will show an error. The used data class is initially specified with the
:ref:`process-new-wizard`, but you may change
this association at any later time.

You can use the (C) button next to the data class field to select any
existing data class that is visible to the edited process. Please note
that **it is strongly recommended that you only set data classes that
are defined in the same project as the process** in order to avoid
dependencies on the specific implementation of another project.

It is legal for two processes to specify the same data class. This can
be desired if the processes operate on the same set of data (e.g. sub
processes) and it may facilitate the mapping in some cases.

Web Service Process
~~~~~~~~~~~~~~~~~~~

The *Web Service Process* tab is only available on web service processes
and allows to specify the web service configuration.

|image1|

The *Fully qualified Web Service name* will be used to generate the web
service class and the WSDL. The namespace part will be used as
*targetNamespace* in the WSDL. Choose this name carefully since it
should not be modified anymore as soon as clients start using the web
service.

The *Web Service authentication* options allows you to specify how
clients are authenticated when invoking the web service. You can select
one of the following available authentication methods:

None/Container
   Authentication is not handled by the web service element. However, if
   the web container (Tomcat) or a web server (Microsoft IIS/Apache)
   handles user authentication, the user is passed through to Axon.ivy
   (e.g. Single Sign On).

WS Security
   UsernameToken with Password will be sent in clear-text to the ivy
   engine.

   .. warning::

      Only use this option in a trusted network or over a secure
      connection (e.g. HTTPS).

HTTP Basic
   Username and Password will be sent in clear-text to the ivy engine
   using standard HTTP Basic authentication mechanism.

   .. note::

      HTTP Basic is the only authentication option that is supported by
      Web Service processes and Web Service process elements in common.
      It can therefore be used to call a Web Service process from a Web
      Service process element if authentication is required.

   .. warning::

      Only use this option in a trusted network or over a secure
      connection (e.g. HTTPS).

   If the web container (Tomcat) or a web server (Microsoft IIS/Apache)
   already handels user authentication, the user is passed through to
   Axon.ivy without doing an additional HTTP Basic authentication.

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

Axon.ivy Project Tree > double click on a *process* node inside the
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

Attach boundary event
   Attaches an additional boundary event to the currently selected
   activity.

Breakpoint
   Add a *regular* or *conditional* breakpoint to the element or remove
   all breakpoints from the element.

Connect
   Creates an arrow that starts at this element. Click on another
   element to create a connection between the two elements. You can also
   create an arrow by clicking on the process element where the arrow
   should start and then move the mouse while you keep the mouse button
   pressed to the process element where the arrow should end.

Disconnect
   Disconnects this element from another element. Click on another
   element to remove the connection between the two elements.

Move
   See :ref:`process-editor-selection-menu`.

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

Search callers of this process
   Displays all callers of a Start in the Search view.

Search callers of this exception element
   Displays all process elements that call an Exception Start when an
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

Wrap into Subprocess
   Creates an *embedded subprocess* from the selected elements.

Create template
   Creates a new *process template* from the selected elements. After
   prompting for a name for the selection, the new template will be
   available from the :ref:`process-template-view`.

Delete selection
   Deletes all of the selected elements from the process.

Shortcut Keys
^^^^^^^^^^^^^

Some of the entries in the context menus are available with shortcut
keys. To use them, place the mouse over a process element and press the
according key.

.. |image0| image:: /_images/process-modeling/process-data-tab.png
.. |image1| image:: /_images/process-modeling/ws-process-tab.png
.. |image2| image:: /_images/process-modeling/process-editor.png
.. |image3| image:: /_images/process-modeling/process-node.png


Swimlanes
---------

.. figure:: /_images/process-modeling/swimlanes.png

Processes can be visually structured by using *pools* and *lanes*. Pools
and lanes are colored background swimlanes with a label that is placed
*behind* the process logic. Swimlanes can have a *horizontal* or
*vertical* orientation.

Swimlanes are available for all process kinds and are typically used to
visualize organisations, roles, responsibility assignments or systems
for process elements or sections of process logic.

A pool or lane can be widened or narrowed by dragging it's border/edge
with the mouse. By default, the position of process elements lying
outside the modified lane are adjusted accordingly. By pressing the
``Shift-Key`` during the drag, you can omit the automatic adjustment of
process elements.

.. note::

   Please note, that pools and lanes do not have any *syntactical*
   meaning whatsoever; their purpose is purely semantical. A pool or
   lane is *not* a container that elements are placed in or associated
   with. They are simply a structured "coloring" of the process'
   background; they do not grow or shrink when you change the processes
   logic and need to be adjusted manually.


Process Model Reporting Wizard
------------------------------

The Axon.ivy Process Model Reporting Wizard lets you create customized
reports of your process models.

.. figure:: /_images/process-modeling/report-configuration-wizard.png
   :alt: Process Model Reporting Wizard

   Process Model Reporting Wizard

Accessibility
~~~~~~~~~~~~~

Axon.ivy->Create Report...

Features
~~~~~~~~

Name
   The name of the report that will be created. This name should be
   without file name extension. E.g. use "MyReport" instead of
   "MyReport.pdf".

Output Format
   The report output format. Currently this can be HTML, PDF or DOC. You
   can also select multiple report formats that should be created
   simultaneously.

Save to Folder
   Choose the location where the reports should be generated to. The
   default destination where reports are stored is
   ``IvyDesigner/reporting/reports/``.

Report Template
   Choose a report template, also known as *BIRT report design*
   file(\*.rptdesign) which defines the structure and contents of your
   report. There are some BIRT report designs provided by default (e.g.
   ``Default.rptdesign``). Please use the predefined report designs
   unless you want to create a custom report design.

   .. note::
   
      In case you want to create a custom BIRT report design you first need
      to install a BIRT Report Designer which can be found on the `BIRT
      Website <http://www.eclipse.org/birt/phoenix/>`__. With the BIRT
      Report Designer you can create your own reports. In order to use the
      Process Model Data, as e.g. Process model images, process names, User
      Dialog interfaces, data class attributes etc., or predefined themes
      in your newly created report design, you need to use the
      ``IvyDesigner/reporting/designs/Axon.ivy.rptlibrary``
      BIRT Report Library within your report and link against its Data
      Source, Data Sets and Parameters. In this way you will also be able
      to use the predefined themes of the Report Library.
      
      For further information on how the BIRT Designer can be used, please
      refer to a BIRT Book or online Resource which can be found at
      http://www.eclipse.org/birt/ or http://www.birt-exchange.com.

Corporate Identity
   This group of text fields provides you some additional, optional
   information to customize your report.

   -  Title: Select a Title that will be shown on the first page of your
      report.

   -  Header: Select a Header for the report, that will be shown on
      every page.

   -  Footer: Select a Footer for the report, that will be shown on
      every page.

   -  Logo: Select a Company Logo Image that will be displayed on the
      first page of your report.

Projects
   This Tree shows the currently active projects that can be reported.
   You may check or uncheck the individual Process Models, Process
   Groups, Processes, User Dialogs or Data Classes that are to be
   reported.

Maximum nesting depth
   Choose the maximum depth up to which nested embedded sub processes
   should be reported. By default and when the field is empty all
   embedded sub processes are reported.

Cancel Button
   To cancel report creation. The current report configuration settings
   will be stored to
   ``your_ivy_workspace/.metadata/.plugins/ch.ivyteam.ivy.designer.reporting.ui/lastReportconfiguration.xml``

Save the Configuration...
   To save the report configuration you have entered up to now into an
   XML report configuration file (\*.rptconfig). This allows you to store
   multiple configurations for different types of reports and reuse them
   later. Note that currently the selected Projects, Processes, User
   Dialogs etc. are not remembered, as they might not be available at
   loading time. The default place where the report configurations are
   stored is in ``IvyDesigner/reporting/configurations/``.

Load a Configuration...
   This allows you to load a previously stored report configuration
   files (\*.rptconfig).

Create the Report...
   This will start the generation of the reports. While the report is
   being generated you will be informed about its progress. After the
   report has been generated a confirmation window will provide you with
   links to the generated reports. The default destination where reports
   are stored is ``IvyDesigner/reporting/reports/``.

   The report configuration will be stored to
   ``your_ivy_workspace/.metadata/.plugins/ch.ivyteam.ivy.designer.reporting.ui/lastReportconfiguration.xml``

Process Outline View
--------------------

The outline view displays all elements of the process which is currently
opened in the process editor.

|img-outline-view0|

Accessibility
~~~~~~~~~~~~~

Window > Show View > Other... > General > Outline View

Features
~~~~~~~~

The outline view has the following features:

Selection
   Process elements which are selected in the outline view are selected
   in the process editor and vice versa, which helps to search and
   manipulate elements, especially in large processes.

Classification
   Elements are grouped by their BPMN type, where the element type is
   visualized with an icon in front of the element name. The element
   categories are start events |img-outline-view1|, intermediate events |img-outline-view2|,
   end events |img-outline-view3|, gateways |img-outline-view4| and tasks |img-outline-view5|.

.. |img-outline-view0| image:: /_images/process-modeling/outline-view.png
.. |img-outline-view1| image:: /_images/process-modeling/outline-start-event.png
.. |img-outline-view2| image:: /_images/process-modeling/outline-intermediate-event.png
.. |img-outline-view3| image:: /_images/process-modeling/outline-end-event.png
.. |img-outline-view4| image:: /_images/process-modeling/outline-gateway.png
.. |img-outline-view5| image:: /_images/process-modeling/outline-task.png


.. _process-template-view:

Process Template View
---------------------

The process template view displays the currently defined process
templates. A *process template* is essentially a selection of process
elements which are stored under a specific name. Once defined, process
templates can be inserted into any existing process, either by drag and
drop or by selection from a dialog. New process templates can be added
to the template store by pressing 't' on a selection of elements in the
:ref:`process-editor-selection-menu`.

.. figure:: /_images/process-modeling/process-template-view.png

Accessibility
~~~~~~~~~~~~~

Window > Show View > Axon.ivy > Process Template View

Features
~~~~~~~~

The process template view has the following features:

Preview
   A preview for each selected template will be shown on the right-hand
   side of the process template view, showing its structure in detail.

Drag-and-drop
   Templates can be dragged and dropped on the process editor. Press and
   hold the mouse down over a template name and drag it over to the
   process editor to insert the template.

Context menu
   Selected templates can be renamed and deleted using the context menu
   or by pressing 'R' or 'DEL' keys, respectively.

Export / Import
~~~~~~~~~~~~~~~

Process templates are stored per workspace. To export a set of process
templates from a workspace use *File > Export... > General > Preferences
> Process Templates*. To import a set of template into a workspace use
*File > Import... > General > Preferences*.


.. _problems-view:

Problems View
-------------

The problems view displays errors and warnings (problem markers) that
exists in yours projects. You can double click an error or warning in
the view to open the associated editor.

.. figure:: /_images/process-modeling/problem-view.png

In the process editor process elements that have errors are marked with
an error overlay icon.

.. figure:: /_images/process-modeling/process-element-with-problem-marker.png

Accessibility
~~~~~~~~~~~~~

Window > Show View > Problems

Features
~~~~~~~~

This view is a standard Eclipse IDE view. More information about the
Problems View can be found in the Online Help: *Workbench User Guide >
Reference > User interface information > Views and editors > Problems
View*.

.. _reference-view:

Reference View
--------------

The Reference view shows the references between the various Axon.ivy
project artifacts. A reference of an artifact is everything which is
used/called from the artifact (e.g. call to a callable process or User
Dialog) or which is embedded in the artifact (e.g. embedded sub element
in a process or processes inside a project). Inverse references are the
opposite of references. This means an inverse reference of an artifact
is everything which uses/calls the artifact or which contains it.

.. figure:: /_images/process-modeling/reference-view.png

.. tip::

   To work with references of process elements, there are also some
   useful features on the Process Editor :ref:`process-editor-element-menu`.

Accessibility
~~~~~~~~~~~~~

Window > Show View > Reference View

Right click on a project, process, User Dialog or embedded sub element
in the project tree > Show References or Show Inverse References

.. figure:: /_images/process-modeling/reference-menu.png
   :alt: Reference Menus

   Reference Menus

Features
~~~~~~~~

The Reference view has the following functions:

Refresh (|img-reference-view0|)
   This function reloads the actual showed references.

Stop (|img-reference-view1|)
   This function stops the calculation of references.

Show References (|img-reference-view2|)
   This option shows the references of the actual root object.

Show Inverse References (|img-reference-view3|)
   This option shows the inverse references of the actual root object.

.. |img-reference-view0| image:: /_images/process-modeling/reference-view-refresh.png
.. |img-reference-view1| image:: /_images/process-modeling/reference-view-stop.png
.. |img-reference-view2| image:: /_images/process-modeling/reference-view-references.png
.. |img-reference-view3| image:: /_images/process-modeling/reference-view-inverse-references.png












