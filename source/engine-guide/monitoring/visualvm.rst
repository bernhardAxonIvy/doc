.. _visualvm:

VisualVM
========

We recommend to use VisualVM to monitor an |ivy-engine|. VisualVM
allows to monitor the memory and CPU usage of an |ivy-engine| process.
It can also be used to analyze problems in your |axon-ivy| projects, like memory leaks
or thread dead locks.

.. figure:: /_images/visualvm/visualvm.png

VisualVM can connect to all Java processes running on the same host and with the
same user. In addition, you can use JMX (See section :ref:`Java Management
Extension <jmx>` for more information) to connect VisualVM to processes that run
under another user (e.g. as Windows Service) or on remote machines.

VisualVM is available for download on GitHub: https://visualvm.github.io/.


|axon-ivy| VisualVM Plugin
--------------------------

In the :dev-url:`Axon.ivy Market </market/visualvm-plugin>` we provide a
dedicated plugin for VisualVM that
allows to monitor some of the technical aspects of an |ivy-engine|.
For example, you can observe the current transactions on the System
Database, whether you violate the licence or how many requests are running on an
|ivy-engine| at any given time. And in the same tool you can still observe
the heap or CPU usage or create thread dumps.

.. Note::
    VisualVM is a tool to observe the current state of a monitored engine. It
    is not intended for long-time monitoring, recording or to trigger alarm events.
    If you want to do that, use the |axon-ivy| :ref:`JMX extensions <jmx>`
    in combination with tools like Nagios or IBM Tivoli.

The plugin is consisting of multiple tabs for different aspects.
Most of the tabs contain charts structured similar to this:

.. figure:: /_images/visualvm/visualvm-plugin.png

