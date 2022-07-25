.. _process-element-program-start:

Program Start
=============

|image0| The *Program Start* element is located in the *Event & Gateway*
drawer of the process editor palette.

Element Details
---------------

The Program Start element allows you to start a process by a custom trigger.
Therefore, it is perfect to integrate legacy-systems or any java-implementation
you can think of being useful in starting workflow-cases. 

Inscription
-----------

.. include:: _tab-name.rst


Start Tab
~~~~~~~~~

On this tab you define the Java class to be executed.

.. figure:: /_images/process-elements/programStart_startTab.png
   :alt: Start tab

   Start tab

Java Class
   Fully qualified name of the Java class that implements the
   :public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
   interface. 
   Use the :ref:`new-bean-class-wizard` |image2| to create a new Java
   source file with an example implementation of the bean class.

Permission
   Defines the role that is required to be able to start a process. The
   bean will set up an authorized session that calls the
   ``fireProcessStartEventRequest()`` from the ``eventRuntime`` to
   trigger a process.


Editor Tab
~~~~~~~~~~

The custom editor UI provided by the implementation of 
:public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
to configure its execution.

.. figure:: /_images/process-elements/programStart_editorTab.png
   :alt: Editor Tab

   A custom editor example


Implementation
---------------

To initiate a custom bean implementation for your third party system, 
you start most conveniently by using the :ref:`New Class <new-bean-class-wizard>` |image2| 
button on the Start Tab.
The wizard will create a minimal sample implementation that works already. 
You can then adjust it to your needs.


API reference
~~~~~~~~~~~~~~~~~~~~

The Program Start consumes a Java class that implements the
:public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
interface. 
This implementation is responsible to initiate a new process by calling 
the method ``fireProcessStartEventRequest`` of 
:public-api:`IProcessStartEventBeanRuntime </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBeanRuntime.html>`.
The common way to implement a Start Event Bean is to extend from 
:public-api:`AbstractProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/AbstractProcessStartEventBean.html>`.

If you use an Axon Ivy Cluster, you may mark your implementation with the
:public-api:`IMultiNodeCapable </ch/ivyteam/ivy/process/beans/IMultiNodeCapable.html>` interface. 
This will enable your Program Start not only on the master node, but on all available nodes.


Custom configuration
~~~~~~~~~~~~~~~~~~~~

Very likely your Program Start implementation will accept configuration parameters
to define the local environment. For instance a system specific file path to look for files
being produced by a legacy system. 

We help you with these configs by providing an accessor to statically configured
element configuration via :public-api:`getConfiguration() </ch/ivyteam/ivy/process/eventstart/AbstractProcessStartEventBean.html#getConfiguration()>`.


.. include:: _programEditor.rst


Example implementation
~~~~~~~~~~~~~~~~~~~~~~~~~

.. literalinclude:: includes/ErpInvoice.java
      :language: java
      :linenos:


.. |image0| image:: /_images/process-elements/program-start.png
.. |image2| image:: /_images/process-elements/button-new-bean-class.png
