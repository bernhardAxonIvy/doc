.. _deployment-terms:

Terms
=====

When Axon Ivy projects are deployed to an Axon Ivy Engine, they become part of
the Process Orchestration Platform. These units must be managed and are only
individual parts of a larger whole. The following section explains how these
elements fit together.

Security System
---------------

Users, roles and permissions are managed in a security system. :ref:`Users
<configuration-security-system>` can be managed manually or made available via
an identity provider. The role definitions are read from the project during
deployment and the corresponding structures are adapted. In addition, new roles
can also be added and deleted at runtime.

By default, every Axon Ivy Engine comes with the :code:`default`` security system. This
is sufficient in the vast majority of cases. An additional security system is
only required if you want to set up a test environment on the same engine or
operate :ref:`multi-tenancy <multi-tenancy>`. Security systems completely sealed off from other
security systems. Security systems can consist of several applications.

::

    Security System "default"
    │
    Security System "test"

.. _application:

Application
-----------

An application is part of a security system. Axon Ivy projects live in an
application. Ideally, applications are cut feature-driven with different release
cycles. In our example, the HR processes are independent of the financial
processes. Furthermore, applications have sovereignty over the configuration, such as variables,
rest clients, web service clients and databases.

::

    Security System "default"
    ├── Application "Finance"
    ├── Application "HR"
    Security System "test"
    └── Application "Finance"


.. _process-model:

Process Model
-------------

A process model (PM) is part of an application, which ultimately represents an
Axon Ivy project. Nevertheless, it is only a virtual construct, as it is
possible to run several versions of an Axon Ivy project at the same time on an
Axon Ivy Engine, we refer to this as a Process Model Version (PMV).

::

    Security System "default"
    ├── Application "Finance"
    │   └── Process Model "Invoices"
    ├── Application "HR"
    │   └── Process Model "Vacation"
    │   └── Process Model "Expenses"
    Security System "test"
    └── Application "Finance"
        └── Process Model "Invoices"


.. _process-model-version:

Process Model Version
---------------------

A process model can contain several versions of an Axon Ivy project - Process
Model Version. This makes it possible to make breaking changes to projects
without disturbing the old running cases. The disadvantage of multiple versions
is that you also have to maintain multiple versions, for example a bugfix may
have to be applied to each version. Tasks and cases are assigned to a process
model version.

::

    Security System "default"
    ├── Application "Finance"
    │   └── Process Model "Invoices"
    |       └── ProcessModelVersion 1 (Project "Invoices", V1, 12 cases)
    |       └── ProcessModelVersion 2 (Project "Invoices", V2, 104 cases)
    ├── Application "HR"
    │   └── Process Model "Vacation"
    |   |   └── ProcessModelVersion 1 (Project "Vacation", V1, 4 cases)
    │   └── Process Model "Expenses"
    |       └── ProcessModelVersion 1 (Project "Expenses", V1, 16 cases)
    Security System "test"
    └── Application "Finance"
        └── Process Model "Invoices"
            └── ProcessModelVersion 1 (Project "Invoices", V1, 0 cases)
            └── ProcessModelVersion 1 (Project "Invoices", V2, 4 cases)


A process model version has a release state. The release state of a
process model version is responsible how the version is used by the
system. The most important release state is the state :code:`RELEASED`.
Within a process model only one version can be in this state. All
processes that are started in a process model are started in the
released process model version. A complete list of release state can be
found in the following list:

.. rubric:: Release States

* **PREPARED**: The process model version has been created and the project may
  already have been deployed. However, the process model version is not yet
  used.
* **RELEASED**: The process model version is the currently released version.
  This means that all new processes are started in this version. Program Start,
  Web Service Process and Rest Endpoints are only active for process model
  versions in this state. Only one process model version of a process model can
  be in state :code:`RELEASED`. If a process model version get's released, then
  the current released process model version gets :code:`DEPRECATED` or
  :code:`ARCHIVED`.
* **DEPRECATED**: The process model version has previously been in state
  :code:`RELEASED`, but then another version was released. Therefore, this
  version is now not in :code:`RELEASED` state but in :code:`DEPRECATED` state.
  All cases that were started in this process model version will continue to run
  in this version. As soon as all cases of this version have been ended, the
  state will change to :code:`ARCHIVED` automatically.
* **ARCHIVED**: The process model version has previously been in state
  :code:`RELEASED`, but then another version was released, and running cases has
  been finished in this process model. Consequently, this version is now not in
  :code:`RELEASED` state anymore but has been :code:`ARCHIVED`. Actually the
  engine administrator can change a process model version from state
  :code:`ARCHIVED` back to state :code:`RELEASED` if necessary.
* **DELETED**: The process model version has been deleted. All project data
  belonging to this version has been deleted.

.. rubric:: Release State Transitions
 
.. graphviz:: pmv-release-states.dot
