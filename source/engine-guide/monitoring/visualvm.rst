.. _visualvm:

VisualVM
========

We recommend to use VisualVM to monitor Axon.ivy Engine processes. VisualVM
allows you to monitor the memory and CPU usage of the Axon.ivy Engine process.
It can be used to analyze problems in your Axon.ivy projects like memory leaks
or thread dead locks.

.. figure:: images/visualvm.png

VisualVM can connect to all Java processes running on the same host and with the
same user. In addition you can use JMX (See section :ref:`Java Management
Extension <jmx>` for more information) to connect VisualVM to processes that run
with another user (e.g. as Windows Service) or on remote machines.

VisualVM is available from https://visualvm.github.io/ or as :code:`jvisualvm`
in the :file:`bin` directory of a Oracle JDK (Java Development Kit).


Axon.ivy Plugin for VisualVM
----------------------------

In the delivery of Axon.ivy we provide a dedicated plugin for VisualVM that
allows you to monitor some of the technical aspects of an Axon.ivy Engine or
Designer. For example you can observe the current transactions on the System
Database, whether you violate the licence or how many requests are running at an
Axon.ivy Engine at any given time. And in the same tool you can still observe
the heap or CPU usage or create thread dumps.

.. Note::
    VisualVM is a tool to observe the current state of the monitored engine. It
    is not intended for long-time observation, recording or even alarming. If
    you want to do that, make use of the :ref:`JMX extensions <jmx>` of
    Axon.ivy. in combination with tools like Nagios or IBM Tivoli.

The plugin itself should be mostly self explanatory. It consists of multiple
tabs for the different aspects. Most of the tabs contain a number of charts that
always have a similar structure:

.. figure:: images/visualvm-plugin.png


Installation
^^^^^^^^^^^^

#. Make sure that you have an installation of VisualVM. If you use a standalone
   version of VisualVM, please make sure that you use at least version 1.3.7.
#. Run VisualVM (in JDK go to the :file:`bin` folder and start
   :code:`jvisualvm`)
#. Go to the Tools/Plugins menu
#. Change to Downloaded tab and click on the Add Plugins... button
#. In the file chooser that appears, navigate to the subfolder
   :file:`[engineDir]/misc/visualvm` installation directory and choose the
   :file:`visualvm-plugin.nbm`.
#. Follow the instructions in the installation wizard.
#. Choose the option to restart VisualVM at the end of the installation wizard.
