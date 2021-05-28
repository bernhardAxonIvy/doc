.. _process-element-call-and-wait:

Call & Wait
===========

|image0| The *Call & Wait Intermediate Event* element is located in the
*Event & Gateway* drawer of the process editor palette.

Element Details
---------------

This element is one of Axon Ivy facilities to integrate custom-made
software, legacy systems, proprietary applications or any other external
system through an Axon Ivy Java interface. The Call & Wait element is
splitted into a Call part and a Wait part. The Call part is similar to
the :ref:`process-element-pi` process
element. It can be used to call (send request) an external system.
Whereas the Wait part is similar to the :ref:`process-element-wait-program-intermediate-event`
element and can be used to wait for the response from the external system. For the process
designer the use of a Call & Wait element is easier compared to the use
of a Program Interface followed by an Intermediate Event because he only
has to configure one Java class and does not have to care about event
identifiers.

The *Call part* of the element will instantiate a Java class that must
implement the interface :public-api:`IUserAsynchronousProcessExtension </ch/ivyteam/ivy/process/extension/IUserAsynchronousProcessExtension.html>`
and will
call the method ``performRequest`` each time a process comes to the Call
& Wait element. The common way to implement a Call bean is to extend the
abstract base class :public-api:`AbstractUserAsynchronousProcessExtension </ch/ivyteam/ivy/process/extension/impl/AbstractUserAsynchronousProcessExtension.html>`.

The *Wait part* of the element will interrupt the process execution and
waits for an external event to occur. Technically spoken the current
task will be ended and a new system task is created that waits for the
event. If the event is fired the new task and therefore the process
after the *Call & Wait* element will be executed.

You provide a listener for the external event by implementing a public
static inner Java class of the Call part with the name
``IntermediateEvent`` that implements the
:public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
interface. The Call & Wait element
instantiates the ``IntermediateEvent`` Java class. It can then trigger
the event by calling the method ``fireProcessIntermediateEventEx`` on
the Axon Ivy runtime engine :public-api:`IProcessIntermediateEventBeanRuntime </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBeanRuntime.html>`.
The common way to implement a Wait (Intermediate Event) bean is to
extend the abstract base class
:public-api:`AbstractProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/AbstractProcessIntermediateEventBean.html>`.

The interface also includes an inner editor class to parameterize the
beans. The editor provides one configuration which is set on both beans
the Call and the Wait bean. You will find the documentation of the
interface and the abstract class in the Java Doc of the Axon Ivy Public
API.


.. note::

   An |ivy-engine| Enterprise Edition consists of multiple server
   instances (nodes) that are running on different machines.
   
   As described above Call & Wait consists of two parts:
   
   - The *Call part* will be
     instantiated on all nodes, and it will do its job wherever it resides.
     After a *call part* a new task will be created in a waiting status
   - Normally the *Wait part* works only on the master node. When it fires
     (when the external event arrives) the task state will change. Such a
     task can be executed on every node.
     
   This is the standard behavior in
   order to eliminate racing conditions in normal *Call & Wait* situations.

   Described behavior is regarded as correct and it should cover most of
   the use cases. In case you understood the behavior and still you need
   the *Wait part* of your *Call & Wait* bean to run on all closer nodes,
   you may instruct the engine to do so. Just have your bean class
   implement the (empty) marker interface :public-api:`IMultiNodeCapable </ch/ivyteam/ivy/process/beans/IMultiNodeCapable.html>` and the
   above restriction will no longer apply.

   Please be aware of the fact that
   having multiple running instances of the same bean may lead to race
   conditions!


Inscription
-----------

.. include:: _tab-name.rst

Call Tab
~~~~~~~~

On this tab you set the Java class which implements the interface
:public-api:`IUserAsynchronousProcessExtension </ch/ivyteam/ivy/process/extension/IUserAsynchronousProcessExtension.html>`
and defines a public static inner
class called ``IntermediateEvent`` that implements the interface
:public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`.
This class is called when the Call &
Wait step is executed. Furthermore, you can define exception handlers to
react on errors such as not reachable systems, insufficient privileges
and many more.

.. figure:: /_images/process-elements/call-and-wait-tab-call.png
   :alt: Call tab

   Call tab

Java Class to Execute
   The fully qualified name of the Call & Wait Java class implementing
   :public-api:`IUserAsynchronousProcessExtension </ch/ivyteam/ivy/process/extension/IUserAsynchronousProcessExtension.html>`
   and a public static inner class
   called ``IntermediateEvent`` that implements the interface
   :public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`.
   Use the :ref:`new-bean-class-wizard` (|image2|) to create a new Java
   source file with an example implementation of the bean class.

   .. tip::

      You can add a graphical configuration editor for the Java call
      (i.e. setting the parameter values) on the Call & Wait inscription
      mask. See section Tab Editor for more details.

Program Error
   Occurs whenever an exception is thrown during the execution of the
   class. The error can be handled by a catching :ref:`process-element-error-start`.

Timeout
   Sets a timeout for the return of the call to the Call part Java
   class.

Timeout Error
   Occurs when the timeout is reached. The error can be handled by a
   catching :ref:`process-element-error-start`.


Wait Tab
~~~~~~~~

On this tab you define the timeout behavior during the Wait part of the
element.

.. figure:: /_images/process-elements/call-and-wait-tab-wait.png
   :alt: Wait tab

   Wait tab

Timeout
   Here you can specify a time (Duration) how long the current case
   should wait for an intermediate event and what should happen if no
   event was received after this time. You can optionally start an
   exception process, delete the waiting task or continue the waiting
   task without receiving an intermediate event.


.. include:: _tab-editor.rst

.. include:: _tab-task-call-wait.rst


Output Tab
~~~~~~~~~~

On this tab you can configure the output of the element (i.e. the data
that leaves the element). You can use the variable result that holds
additional information about the event received by the Wait part Java
class.

See :ref:`process-element-tab-output` for a more
detailed description.

.. note::

   For each incoming connection you have a separate ``inX`` object
   available which carries the data of the Xth input. Hover with the
   mouse over the incoming connections of the element to learn which
   input connection corresponds to which variable.

.. |image0| image:: /_images/process-elements/call-and-wait.png
.. |image2| image:: /_images/process-elements/button-new-bean-class.png
