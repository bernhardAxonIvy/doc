.. _process-element-program-start:

Program Start
=============

|image0| The *Program Start* element is located in the *Event & Gateway*
drawer of the process editor palette.

Element Details
---------------

The program start element allows to start a process by a trigger from
embedded external Java code. This opens a possibility to integrate an
|axon-ivy| application into other applications and systems. The program
start element will instantiate a Java class that must implement the
:public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
interface. The Java class can then start the
process by calling the method ``fireProcessStartEventRequest`` on the
|axon-ivy| runtime engine
:public-api:`IProcessStartEventBeanRuntime </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBeanRuntime.html>`.
The common
way to implement a Start Event Bean is to extend the abstract base class
:public-api:`AbstractProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/AbstractProcessStartEventBean.html>`.
The interface also includes an inner
editor class to parameterize the bean. You will find the documentation of
the interfaces and abstract class in the Java Doc of the |axon-ivy| Public
API.


.. note::

   An |ivy-engine| Enterprise Edition consists of multiple engine
   instances (nodes) that are running on different machines.
   
   Normally
   process start event beans are instantiated on every node but only
   started on the master node. This guarantees that for each *Program
   Start* process element only one bean is running, no matter what the
   total number of nodes in the Engine Enterprise Edition is.
   
   However, if
   you need your process start event bean to be started on all cluster
   nodes, you may instruct the engine to do so. Just have your bean class
   implement the (empty) marker interface 
   :public-api:`IMultiNodeCapable </ch/ivyteam/ivy/process/beans/IMultiNodeCapable.html>` and the
   above restriction will no longer apply.
   
   Please be aware of the fact that
   having multiple running instances of the same bean may lead to race
   conditions.


Inscription
-----------

.. include:: _tab-name.rst

Tab Start
~~~~~~~~~

On this tab you define the Java class to execute.

.. figure:: /_images/process-elements/program-start-tab-start.png
   :alt: Start tab

   Start tab

Java Class to execute
   Full qualified name of the Java class that implements the
   :public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
   interface. Use the :ref:`new-bean-class-wizard` (|image2|)
   to create a new Java
   source file with an example implementation of the bean class.

Responsible role
   Defines the role that is required to be able to start a process. The
   bean will set up an authorized session that calls the
   ``fireProcessStartEventRequest()`` from the ``eventRuntime`` to
   trigger a process.
   
.. include:: _tab-editor.rst

.. |image0| image:: /_images/process-elements/program-start.png
.. |image2| image:: /_images/process-elements/button-new-bean-class.png
