.. _migrate-120-131:

Migrating from 12.0 to 13.1
===========================

Upgrade to 13.1 is only supported from an |ivy-engine| 10.0 and higher.
If you have an |ivy-engine| older than version 10.0 you need first to migrate to a newer version.

License
*******

|tag-ops-changed|

You need to request a new license for |ivy-engine| 13.1.


Removal of Server Control Center for Windows
********************************************

|tag-ops-changed|

The Server Control Center for Windows has been removed. Prefer using Docker for
Windows to run the Axon Ivy Engine. If you still want to run the Axon Ivy Engine
on Windows without Docker, you can use :ref:`AxonIvyEngineService.exe
<engine-service>` to register the Axon Ivy Engine as a Windows Service.

------------

.. include:: _tagLegend.rst
