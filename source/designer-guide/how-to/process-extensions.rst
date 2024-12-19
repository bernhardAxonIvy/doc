Process Extensions
===================

|ivy| processes have a rich set of standard elements to fulfill
frequently required needs. 

However, the available elements can be extended 
to address your custom requirements.
Here we will elaborate on the extensions possibilities, 
empowering you to build your own elements.


.. _connector-process-elements:

Connector Elements
--------------------------------

Connector elements are the simplest and most effective way to build 
your custom element, encapsulating your logic.
The best thing about it? Creating such an Element doesn't require 
special new skills apart from being familiar 
with |ivy| Processes and their elements.

Callable Sub Processes
^^^^^^^^^^^^^^^^^^^^^^^^^^^

So this is for you if you have implemented something, that you 
call repetivitly from multiple processes. 
Normally, all you change when you reuse this logic 
is just the process data you work with.
To name a few: 

- a custom logic in Java wrapped in a Script Activity, 
- a RestClient which you use frequently, 
- or a set of process elements that you use as a pattern.

Instead of copying and pasting such logic into multiple processes, 
you can refactor them into a :ref:`Sub Process<process-kind-callable>`. 
Sub Processes wrap your logic behind a defined interface, 
declaring your input and output parameters.
This gives you the freedom to reuse its logic without 
additional maintenance efforts.

The journey starts, now wrap your logic as follows:

   1. Create a new Process using the :ref:`process-new-wizard`. 
   Select the type `Callable Sub Process` and finish the creation wizard.

   2. Name the automatically defined start event, 
   and define your required input parameters and the results you want to provide.

   3. Copy your custom logic into the Sub Process 
   and connect it with the provided start and end event.

This allows you already to reuse this encapsulated Sub Process 
logic in many Processes.
You can do it by using the :ref:`process-element-call-sub` Activity and selecting 
your just-built Sub Process as the target. Connect it, pass parameters to 
and fro and you are done. 

Custom Element feeling
^^^^^^^^^^^^^^^^^^^^^^^

Now let's go one step further and make 
the :ref:`process-element-call-sub` activity
look more like a distinct element that can easily be recognized.

Go to the :ref:`process-element-sub-process-start` event 
and add your custom icon onto it using the 
elements :ref:`process-editor-quick-actions`. 
This icon will be shown not only on this start 
but on all calling elements too. This makes your 
Sub Process way more popular and easier to identify.

To make this Sub Process even more popular for third parties,
we can make it appear in the process editor's palette.
Go to the Sub Process start event and open its :ref:`inscription<process-inscription-view>`.
In the :ref:`process-element-tab-general`, add the :ref:`tag<process-element-tab-general-tags>` `Connector` and save the Process.
Being tagged, the element now appears 
in the :ref:`Extensions<process-element-extension-item>` section, 
accessible for all Projects that depend upon yours.

Community
^^^^^^^^^^^^^^

Proud of your work, you may `contribute <https://github.com/axonivy-market/market/wiki>`_ this Sub Process 
to the |ivy| `Market <https://market.axonivy.com/>`_. 
So the |ivy| community can reuse and profit from your work.
You may choose to do so, to simplify your own maintenance efforts,
as the Market offers you a rich ecosystem that manages versions,
distributions, and automated test infrastructure for free.

Limits
^^^^^^^^^^

The only limitation you may face by re-using logic in Sub Processes
is the absence of a similar construct for custom Start Events
or custom Intermediate Events.

You can invent such custom logic nevertheless, 
by using :ref:`extensible-process-elements`,
which are explained in the next chapter.


.. _extensible-process-elements:

Extendible Process Elements
----------------------------

|ivy| comes with generic process elements that can be used to
address particular execution behavior requirements none of the standard
process elements can fulfill.

All generic process elements contain a tab in which a Java class can be
selected. The Java class implements the actual execution behavior. 
Some standard implementations are shipped with the |ivy| core, and with
these elements developers are able to specify their own implementation
as part of the project.

These generic elements are:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-wait-program-intermediate-event`
   Interrupts process execution until an (external) event occurs.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).
   Using this in new solutions is discouraged, see the warning below.


.. warning::

   Extendible Process Elements were the first solution for custom Process elements.
   Today however, they are rarely used, since the :ref:`connector-process-elements`
   offer a similar mechanism which requires less technical skills 
   and offers a better integration into the Process editor tooling.


.. _new-bean-class-wizard:

New Bean Class Wizard
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

With the *New Bean Class Wizard* you can create a Java class that
implements the interface of one of the extendible process elements.
Optionally, it can also generate a UI editor for the configuration of
the event for the corresponding bean. The generated Java class contains
example code on how to implement the Java bean.

.. figure:: /_images/extensions/new-bean-class-wizard.png
   :alt: New Bean Class Wizard

   New Bean Class Wizard

Accessibility
^^^^^^^^^^^^^

Process Editor > inscribe > Inscription Mask > ... > Java Class to
execute > |image0|

.. _provide-your-own-process-elements: 

Provide your own process elements
---------------------------------

Instead of using the generic extendible process element with your Java
class, you can go one step further and implement your own process
elements, available in the process editor palette.

To implement your own process elements in an `Eclipse bundle <extensions-bundles>`
you need to implement two extension points, one for the execution (Engine) and one
for the user interface (Designer):

:public-api:`IBpmnProcessElement </ch/ivyteam/ivy/bpm/exec/IBpmnProcessElement.html>`
  You need to specify a name, an executor class. Optionally, you can also specify what kind
  of process element you are providing (default is `Activity`), and a validator class.

:public-api:`IBpmnProcessElementUi </ch/ivyteam/ivy/designer/process/ui/info/IBpmnProcessElementUi.html>`
  This extension point allows you to define a visual representation of your custom process
  element in the |ivy-designer|. By adding custom tabs to the Inscription mask you can also
  make your process element configurable. The configuration can be stored in a `String`.
  The name must be specified and match the name defined in your IBpmnProcessElement
  implementation. It is recommended to add an icon.

You need to implement both process element extension points in order to have a working process element.

.. tip::

   Sample implementations of custom process elements can be found on
   GitHub in our open source `repository <https://github.com/axonivy>`__, e.g., https://github.com/axonivy/bpm-beans


.. _extensions-bundles:

|ivy| extensions bundles (Eclipse plugin)
----------------------------------------------

In order to provide an |ivy| extension for the Designer or Engine you
need to provide it as an Eclipse plugin.

Development
~~~~~~~~~~~

You can create your own Eclipse plugin in the |ivy-designer| by
following these steps:

#. Start |ivy-designer|

#. Switch to the :guilabel:`Plug-in Development Perspective`. Menu: :guilabel:`Window` >
   :guilabel:`Open Perspective` > :guilabel:`Other...` > :guilabel:`Plug-in Development`

#. Create a new Plug-in Project. Menu: :guilabel:`File` > :guilabel:`New` > :guilabel:`Project ...`.
   In the appearing dialog:

   -  Choose :guilabel:`Plug-in Project`.
   -  Press :guilabel:`Next`.
   -  Enter a project name.
   -  Press :guilabel:`Next`.
   -  Enter the :guilabel:`Plug-in Properties`.

      .. table:: Plug-in Properties

         +-----------------------+-----------------------+--------------------------------------+
         | Property              | Description           | Example                              |
         +=======================+=======================+======================================+
         | Plug-In ID            | Identifier of the     | ch.ivyteam.ivy.example               |
         |                       | plugin. Must be       |                                      |
         |                       | unique. This          |                                      |
         |                       | identifier must be    |                                      |
         |                       | specified in the      |                                      |
         |                       | ``*.extensions`` file |                                      |
         |                       | in the bundle         |                                      |
         |                       | attributes.           |                                      |
         +-----------------------+-----------------------+--------------------------------------+
         | Plug-In Version       | The version of the    | 1.0.0                                |
         |                       | plugin.               |                                      |
         +-----------------------+-----------------------+--------------------------------------+
         | Plug-In Name          | The name of the       | Example                              |
         |                       | plugin. The name is   |                                      |
         |                       | used for              |                                      |
         |                       | documentation only.   |                                      |
         +-----------------------+-----------------------+--------------------------------------+
         | Plug-In Provider      | The provider of the   | Muster AG                            |
         |                       | plugin. The provider  |                                      |
         |                       | is used for           |                                      |
         |                       | documentation only.   |                                      |
         +-----------------------+-----------------------+--------------------------------------+

   -  Press :guilabel:`Finish`.

#. In the appearing editor click on the **Extensions** tab. In the
   section **All Extensions** press the **Add** button. Un-tick the box
   **Show only extension points from the required plug-ins**. From the
   list of extension points choose the one you want to provide an
   extension for. Press the **Finish** button. You may need to confirm
   adding a new plug-in dependency. Save the changes.

#. Select the added extension point from the list in the section **All
   Extensions**. Select the added sub entry. In the section **Extension
   Element Details** click on the link **class\***.

   |image1|

#. A **New Java Class** dialog appears. Specify the name of your
   extension class in the **Name** text field and the package name in
   the **Package** text field.

   |image2|

#. Write your extension class by implementing the extension point
   interface (see :ref:`extension-point-reference`)

#. Switch back to the **META-INF/MANIFEST.MF** file editor. Choose the
   **Overview** tab and click on the link **Export Wizard**. As
   **Destination Directory** choose the ``dropins`` directory of your
   |ivy-designer| or Engine installation. Press the **Finish**
   button. Your plugin is created in the ``dropins/plugins``
   directory.

Installation
~~~~~~~~~~~~

Follow these steps to install your extensions in an |ivy-designer| or
Engine:

#. Stop the running instance (if applicable).

#. Copy your plugin (bundle) that contains your extension classes to the
   ``dropins`` directory inside the |ivy-designer| or Engine
   installation directory.

#. Start the |ivy-designer| or Engine.

.. tip::

   If your extension is not active as expected, consult the ``dropins/README.html``.


.. _extension-point-reference:

Extension Point Reference
-------------------------

|ivy| supports the following extension points:


:public-api:`IServerExtension </ch/ivyteam/ivy/server/IServerExtension.html>`
  A Server extension can be used to start and stop your code when the |ivy-engine|
  is started or stopped. Server extensions can be accessed from Process
  Start Event and Process Intermediate Event Beans and also from every process
  element using the ivy.extensions environment variable.


:public-api:`IIvyProjectClassPathExtension </ch/ivyteam/ivy/java/IIvyProjectClassPathExtension.html>`
  Adds libraries or classes from bundles to the |ivy| project class path. This extension point allows to
  add libraries or classes to the compile and the runtime class path. This is useful if you want to
  provide your own classes in a eclipse bundle and want to access these classes from IvyScript or
  use them as Program Interface (PI), Start Event, Intermediate Event and Call&Wait bean.


:public-api:`IBpmnProcessElement </ch/ivyteam/ivy/bpm/exec/IBpmnProcessElement.html>`
  Extension point to define the execution part of your custom process element. The code
  provided in the executor class will be run on the |ivy-engine| during process execution.
  The user interface part to configure your element can be implemented with extension
  point IBpmnProcessElementUi. An optional validator class can be specified that will be
  run during execution as well as project validation in the |ivy-designer|.


:public-api:`IBpmnProcessElementUi </ch/ivyteam/ivy/designer/process/ui/info/IBpmnProcessElementUi.html>`
  Extension point to define the user interface part of your custom process element. You only
  need to provide a name matching the name specified in the IBpmnProcessElement implementation.
  Optionally, you can specify an icon, a short name, a description, additional editor tabs, add
  new palette groups, and add the element to a specific group at a specific position.


.. |image0| image:: /_images/extensions/new-bean-class-smart-button.png
.. |image1| image:: /_images/extensions/add-extension-point.png
.. |image2| image:: /_images/extensions/create-extension-class-wizard.png
