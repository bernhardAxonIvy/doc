Terms
=====

This chapter explains how an Axon Ivy Designer Project can be deployed
to an Axon Ivy Engine. Before deploying an Axon Ivy project it is
important to understand some major concepts and terms of the Axon Ivy Engine.
The following chapter introduces these concepts and terms.

.. _application:

Application
-----------

::

    Application "Webshop" (Roles, Users, Databases)
    ├── ProcessModel "Shop"
    │   └── ProcessModelVersion 1
    │   └── ProcessModelVersion 2
    └── ProcessModel "BackEnd"
        └── ProcessModelVersion 1

On the Axon Ivy Engine, applications can be configured. An application
spans up an environment in which process models exist.

.. _process-model:

Process Model
-------------

::

    Application "Webshop"
    ├── ProcessModel "Shop" (Project "Shop")
    │   └── ProcessModelVersion 1
    │   └── ProcessModelVersion 2
    └── ProcessModel "BackEnd"
        └── ProcessModelVersion 1

Within an application multiple process models can be configured. A
process model on the Engine corresponds to an Axon Ivy project on the
Designer. The difference is that a process model may hold multiple
different versions of the same Axon Ivy project. A process model version
- as its name suggests - is a version of an Axon Ivy project. In fact
this version represents the state of an Axon Ivy project at the time it
was deployed on the Engine.

.. _process-model-version:

Process Model Version
---------------------

::

    Application "Webshop"
    ├── ProcessModel "Shop"
    │   └── ProcessModelVersion 1 (Project "Shop", V1, 12 cases)
    │   └── ProcessModelVersion 2 (Project "Shop", V2, 304 cases)
    └── ProcessModel "BackEnd"
        └── ProcessModelVersion 1

A process model can have multiple versions called process model
versions. These versions allow to change an Axon Ivy project without
worrying about the compatibility of currently running cases on the
Engine. How does this work? When an Axon Ivy project has been finished
or reached a milestone, it is going to be deployed as the first process
model version. Users can use this project, they start processes. Some of
the processes may last long time (weeks, months, or even years). While
these processes (e.g., cases) are running, the project may be enhanced
and might have now incompatible changes to the first version. Now the
changed project can not be deployed to the first version but to a new
configured version. Consequently old cases must not be stopped, they
will be still executed within the first process model version. Meanwhile
new cases are started from the new deployed version.

A process model version has a release state. The release state of a
process model version is responsible how the version is used by the
system. The most important release state is the state **RELEASED**.
Within a process model only one version can be in this state. All
processes that are started in a process model are started in the
released process model version! A complete list of release state can be
found in the following list:

.. table:: Release states of process model versions on Axon Ivy Engine
   :widths: 20 80

   +-----------------------------------+------------------------------------------+
   | Name                              | Description                              |
   +===================================+==========================================+
   | **PREPARED**                      | The process model version has            |
   |                                   | been created and the project may         |
   |                                   | already have been deployed.              |
   |                                   | However, the process model               |
   |                                   | version is not yet used.                 |
   +-----------------------------------+------------------------------------------+
   | **RELEASED**                      | The process model version is the         |
   |                                   | currently released version. This         |
   |                                   | means that all new processes are         |
   |                                   | started in this version.                 |
   |                                   | :ref:`process-element-program-start`     |
   |                                   | and :ref:`process-kind-webservice`       |
   |                                   | are only active for process model        |
   |                                   | versions in this state.                  |
   +-----------------------------------+------------------------------------------+
   | **DEPRECATED**                    | The process model version has            |
   |                                   | previously been in state                 |
   |                                   | RELEASED, but then another               |
   |                                   | version was released. Therefore,         |
   |                                   | this version is now not in               |
   |                                   | RELEASED state but in DEPRECATED         |
   |                                   | state. All cases that were               |
   |                                   | started in this process model            |
   |                                   | version will continue to run in          |
   |                                   | this version. As soon as all             |
   |                                   | cases of this version have been          |
   |                                   | ended, the state will change to          |
   |                                   | ARCHIVED automatically.                  |
   +-----------------------------------+------------------------------------------+
   | **ARCHIVED**                      | The process model version has            |
   |                                   | previously been in state                 |
   |                                   | RELEASED, but then another               |
   |                                   | version was released, and running        |
   |                                   | cases has been finished in this          |
   |                                   | process model. Consequently, this        |
   |                                   | version is now not in RELEASED           |
   |                                   | state anymore but has been               |
   |                                   | ARCHIVED. Actually the engine            |
   |                                   | administrator can change a               |
   |                                   | process model version from state         |
   |                                   | ARCHIVED back to state RELEASED          |
   |                                   | if necessary.                            |
   +-----------------------------------+------------------------------------------+
   | **DELETED**                       | The process model version has            |
   |                                   | been deleted. All project data           |
   |                                   | belonging to this version has            |
   |                                   | been deleted.                            |
   +-----------------------------------+------------------------------------------+

The following diagram shows all release states and state changes that
are possible:

.. figure:: /_images/deployment/release-states.png

Configuration Example
---------------------

The following table shows an example of how applications, process models
and process model versions on an Axon Ivy Engine can be configured.

.. table:: Configuration Example
   :widths: 15 15 15 55

   +-----------------+-----------------+-----------------+-----------------+
   | Application     | Process Model   | Process Model   | Description     |
   |                 |                 | Version         |                 |
   +=================+=================+=================+=================+
   | Company1        |                 |                 | Application for |
   |                 |                 |                 | company1. All   |
   |                 |                 |                 | users of the    |
   |                 |                 |                 | company are     |
   |                 |                 |                 | automatically   |
   |                 |                 |                 | imported to     |
   |                 |                 |                 | this            |
   |                 |                 |                 | application     |
   |                 |                 |                 | from the        |
   |                 |                 |                 | company's       |
   |                 |                 |                 | active          |
   |                 |                 |                 | directory       |
   |                 |                 |                 | server.         |
   +-----------------+-----------------+-----------------+-----------------+
   |                 | HRM             |                 | Human Resource  |
   |                 |                 |                 | Management      |
   |                 |                 |                 | process model.  |
   |                 |                 |                 | Corresponds to  |
   |                 |                 |                 | the Axon Ivy    |
   |                 |                 |                 | project called  |
   |                 |                 |                 | "HRM".          |
   +-----------------+-----------------+-----------------+-----------------+
   |                 |                 | V1              | The first       |
   |                 |                 |                 | version of the  |
   |                 |                 |                 | HRM project was |
   |                 |                 |                 | released in     |
   |                 |                 |                 | February 2008.  |
   |                 |                 |                 | This version is |
   |                 |                 |                 | deprecated.     |
   |                 |                 |                 | There are still |
   |                 |                 |                 | cases running   |
   |                 |                 |                 | in this version |
   +-----------------+-----------------+-----------------+-----------------+
   |                 |                 | V2              | The second      |
   |                 |                 |                 | version of the  |
   |                 |                 |                 | HRM project was |
   |                 |                 |                 | released in     |
   |                 |                 |                 | April 2008.     |
   |                 |                 |                 | This version is |
   |                 |                 |                 | released. All   |
   |                 |                 |                 | new processes   |
   |                 |                 |                 | are started in  |
   |                 |                 |                 | this version.   |
   +-----------------+-----------------+-----------------+-----------------+
   |                 |                 | V3              | The third       |
   |                 |                 |                 | version of the  |
   |                 |                 |                 | HRM project was |
   |                 |                 |                 | created in      |
   |                 |                 |                 | January 2009.   |
   |                 |                 |                 | This version is |
   |                 |                 |                 | prepared, but   |
   |                 |                 |                 | not used        |
   |                 |                 |                 | productive. It  |
   |                 |                 |                 | will be         |
   |                 |                 |                 | released on the |
   |                 |                 |                 | first of        |
   |                 |                 |                 | September 2009. |
   +-----------------+-----------------+-----------------+-----------------+
   |                 | Finance         |                 | Finance process |
   |                 |                 |                 | model.          |
   |                 |                 |                 | Corresponds to  |
   |                 |                 |                 | the Axon Ivy    |
   |                 |                 |                 | project         |
   |                 |                 |                 | Finance.        |
   +-----------------+-----------------+-----------------+-----------------+
   |                 |                 | V1              | The first       |
   |                 |                 |                 | version of the  |
   |                 |                 |                 | Finance project |
   |                 |                 |                 | was released in |
   |                 |                 |                 | August 2007.    |
   |                 |                 |                 | This version is |
   |                 |                 |                 | released. All   |
   |                 |                 |                 | new process are |
   |                 |                 |                 | started in this |
   |                 |                 |                 | version.        |
   +-----------------+-----------------+-----------------+-----------------+
   | Company2        |                 |                 | Application for |
   |                 |                 |                 | company2. The   |
   |                 |                 |                 | users of the    |
   |                 |                 |                 | company are     |
   |                 |                 |                 | managed by the  |
   |                 |                 |                 | Axon Ivy        |
   |                 |                 |                 | Engine.         |
   +-----------------+-----------------+-----------------+-----------------+
   |                 | HRM             |                 | Human Resource  |
   |                 |                 |                 | Management      |
   |                 |                 |                 | process model.  |
   |                 |                 |                 | Corresponds to  |
   |                 |                 |                 | the Axon Ivy    |
   |                 |                 |                 | project called  |
   |                 |                 |                 | "HRM".          |
   +-----------------+-----------------+-----------------+-----------------+
   |                 |                 | V1              | The first       |
   |                 |                 |                 | version of the  |
   |                 |                 |                 | HRM project was |
   |                 |                 |                 | released in     |
   |                 |                 |                 | April 2008.     |
   |                 |                 |                 | This version is |
   |                 |                 |                 | released, so    |
   |                 |                 |                 | that all HRM    |
   |                 |                 |                 | processes of    |
   |                 |                 |                 | company2 run    |
   |                 |                 |                 | and are started |
   |                 |                 |                 | in this         |
   |                 |                 |                 | version.        |
   +-----------------+-----------------+-----------------+-----------------+
