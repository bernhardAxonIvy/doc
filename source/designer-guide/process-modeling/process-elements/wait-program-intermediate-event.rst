.. _process-element-wait-program-intermediate-event:

Wait Program Intermediate Event
===============================

|image0| The *Wait Program Intermediate Event* element is located in the
*Event & Gateway* drawer of the process editor palette.


Element Details
---------------

This element is one of Axon Ivy facilities to integrate custom-made
software, legacy systems, proprietary applications or any other external
system through an Axon Ivy Java interface. At an Intermediate Event
element the process execution is interrupted and waits for an external
event to occur. Technically spoken the current task will be ended and a
new system task is created that waits for the intermediate event. If the
intermediate event is fired the new task and therefore the process after
the intermediate event will be executed.


Inscription
-----------

.. include:: _tab-name.rst

Event Tab
~~~~~~~~~

On this tab you define the Java class that the IntermediateEvent should
instantiate, the identifier of the event and the timeout behavior.

|image2|

Java Class
   Fully qualified name of the Java class that implements the
   :public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
   interface. Use the :ref:`new-bean-class-wizard` |image3| to create a new Java
   source file with an example implementation of the bean class.

Event ID
   Because multiple cases (process instances) can wait on the same
   intermediate event you must specify which event belongs to which
   waiting case. Here you specify the identifier of the event the
   current case should wait for.

   .. warning::

      The event identifier as a String must be unique. Do not use a
      static string like ``"myID"``. A good practice is to integrate the
      case identifier (``ivy.case.getIdentifier()``) into the event id.

Timeout
   Here you can specify a time (Duration) how long the current case
   should wait for an intermediate event and what should happen if no
   event has been received after this time. You can optionally start an
   exception process, delete the waiting task or continue the waiting
   task without receiving an intermediate event.


Editor Tab
~~~~~~~~~~

The custom editor UI provided by the implementation of 
:public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/extension/IProcessIntermediateEventBean.html>`
to configure its execution.

.. figure:: /_images/process-elements/waitIntermediateEvent_editorTab.png
   :alt: Editor Tab

   A custom editor example


.. include:: _tab-task-call-wait.rst

.. include:: _tab-output.rst



Implementation
---------------

To initiate a custom bean implementation for your third party system, 
you start most conveniently by using the :ref:`New Class <new-bean-class-wizard>` |image3| 
button on the Event Tab.
The wizard will create a minimal sample implementation that works already. 
You can then adjust it to your needs.


API reference
~~~~~~~~~~~~~~~~~~~~

The Intermediate Event consumes a Java class that implements the
:public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
interface. 
This implementation is responsible to continue the process by calling 
the method ``fireProcessIntermediateEventEx`` of 
:public-api:`IProcessIntermediateEventBeanRuntime </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBeanRuntime.html>`.
The common way to implement an Intermediate Event Bean is to extend from 
:public-api:`AbstractProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/AbstractProcessIntermediateEventBean.html>`.

If you use an Axon Ivy Cluster, you may mark your implementation with the
:public-api:`IMultiNodeCapable </ch/ivyteam/ivy/process/beans/IMultiNodeCapable.html>` interface. 
This will enable your Intermediate Event not only on the master node, but on all available nodes.


Custom configuration
~~~~~~~~~~~~~~~~~~~~

Very likely your Intermediate Event implementation will accept configuration parameters
to define the local environment. For instance a system specific file path to look for files
being produced by a legacy system. 

We help you with these configs by providing an accessor to statically configured
element configuration via :public-api:`getConfiguration() </ch/ivyteam/ivy/process/intermediateevent/AbstractProcessIntermediateEventBean.html#getConfiguration()>`.


.. include:: _programEditor.rst


Example implementation
~~~~~~~~~~~~~~~~~~~~~~~~~

.. literalinclude:: includes/ErpInvoice.java
      :language: java
      :linenos:



.. |image0| image:: /_images/process-elements/wait-program-intermediate-event.png
.. |image2| image:: /_images/process-elements/waitIntermediateEvent_eventTab.png
.. |image3| image:: /_images/process-elements/button-new-bean-class.png
