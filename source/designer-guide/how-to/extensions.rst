Extensions
==========

This chapters shows how easily a process or the Axon.ivy engine itself
can be customized with your own logic.


.. _extendible-process-elements:

Extendible Process Elements
---------------------------

Axon.ivy comes with four generic process elements that can be used to
address particular execution behaviour requirements none of the standard
process elements can fulfill.

All generic process elements contain a tab in which a Java class can be
selected. The Java class implements the actual execution behaviour. Some
standard implementations are shipped with the Axon.ivy core, and with
these elements developers are able to specify their own implementation
as part of the project.

These generic elements are:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).

:ref:`process-element-wait-program-intermediate-event`
   Interrupts process execution until an (external) event occurs.

:ref:`process-element-call-and-wait`
   A combination of the *PI* and *Wait* process elements.

.. tip::

   Sample implementations of custom process elements can be found on
   GitHub in our open source
   `repository <https://github.com/ivy-supplements>`__, e.g.

   https://github.com/ivy-supplements/bpm-beans/tree/master/ldap-beans


.. _new-bean-class-wizard:

New Bean Class Wizard
~~~~~~~~~~~~~~~~~~~~~

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
   GitHub in our open source
   `repository <https://github.com/ivy-supplements>`__, e.g.

   -  https://github.com/ivy-supplements/birt-reporting
   -  https://github.com/ivy-supplements/bpm-beans/tree/master/blockchain-beans


.. _extensions-bundles:

Axon.ivy extensions bundles (Eclipse plugin)
--------------------------------------------

In order to provide an Axon.ivy extension for the Designer or Engine you
need to provide it as an Eclipse plugin.

Development
~~~~~~~~~~~

You can create your own Eclipse plugin in the Axon.ivy Designer by
following these steps:

#. Start Axon.ivy Designer

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
         | Plug-In Provider      | The provider of the   | Axon Ivy AG                          |
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
   Axon.ivy Designer or Engine installation. Press the **Finish**
   button. Your plugin is created in the ``dropins/plugins``
   directory.

Installation
~~~~~~~~~~~~

Follow these steps to install your extensions in an Axon.ivy Designer or
Engine:

#. Stop the running instance (if applicable).

#. Copy your plugin (bundle) that contains your extension classes to the
   ``dropins`` directory inside the Axon.ivy Designer or Engine
   installation directory.

#. Start the Axon.ivy Designer or Engine.

.. tip::

   If your extension is not active as expected, consult the ``dropins/README.html``.


.. _extension-point-reference:

Extension Point Reference
-------------------------

Axon.ivy supports the following extension points:


:public-api:`IServerExtension </ch/ivyteam/ivy/server/IServerExtension.html>`
  A Server extension can be used to start and stop your code when the Axon.ivy
  Engine is started or stopped. Server extensions can be accessed from Process
  Start Event and Process Intermediate Event Beans and also from every process
  element using the ivy.extensions environment variable.


:public-api:`IIvyProjectClassPathExtension </ch/ivyteam/ivy/java/IIvyProjectClassPathExtension.html>`
  Adds libraries or classes from bundles to the ivy project class path. This extension point allows to
  add libraries or classes to the compile and the runtime class path. This is useful if you want to
  provide your own classes in a eclipse bundle and want to access these classes from ivyScript or
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
