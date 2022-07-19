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

You provide a listener for the external event by implementing a Java
class that implements the
:public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
interface.
The Wait Program Intermediate Event Element instantiates the Java class
and can then trigger the intermediate event by calling the method
``fireProcessIntermediateEventEx`` on the Axon Ivy runtime engine
:public-api:`IProcessIntermediateEventBeanRuntime </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBeanRuntime.html>`.
The common way to implement an
Intermediate Event bean is to extend the abstract base class
:public-api:`AbstractProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/AbstractProcessIntermediateEventBean.html>`.
The interface also includes an
inner editor class to parametrize the bean. You will find the
documentation of the interface and the abstract class in the Java Doc of
the Axon Ivy Public API.

.. note::

   An Axon Ivy Engine Enterprise Edition consists of multiple engine
   instances (nodes) that are running on different machines.
   
   Usually, process intermediate event beans are instantiated on every node
   but only started on the master node. This guarantees that for each
   *Intermediate Event* process element, only one bean is running, no matter
   what the total number of nodes is in the Axon Ivy cluster.
   
   However, if you need your intermediate event bean to be started on all
   cluster nodes, you may instruct the server to do so. Just have your bean
   class implement the (empty) marker interface
   :public-api:`IMultiNodeCapable </ch/ivyteam/ivy/process/beans/IMultiNodeCapable.html>` and
   the above restriction will no longer apply.
   
   Please be aware that having multiple running instances of
   the same bean may lead to race conditions.

Inscription
-----------

.. include:: _tab-name.rst

Event Tab
~~~~~~~~~

On this tab you define the Java class that the IntermediateEvent should
instantiate, the identifier of the event to wait for and the timeout
behavior.

|image2|

Java Class to execute
   Fully qualified name of the Java class that implements the
   :public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
   interface. Use the :ref:`new-bean-class-wizard` (|image3|) to create a new Java
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

.. include:: _tab-editor.rst

.. include:: _tab-task-call-wait.rst

.. include:: _tab-output.rst

.. note::

   For each incoming connection you have a separate ``inX`` object
   available which carries the data of the Xth input. Hover with the
   mouse over the incoming connections of the element to learn which
   input connection corresponds to which variable.

.. |image0| image:: /_images/process-elements/wait-program-intermediate-event.png
.. |image2| image:: /_images/process-elements/wait-program-intermediate-event-tab-event.png
.. |image3| image:: /_images/process-elements/button-new-bean-class.png
