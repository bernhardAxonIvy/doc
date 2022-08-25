.. _application-lifecycle:

Application Lifecycle
*********************

If you structure Axon Ivy projects well in several applications, you benefit
from technically isolated projects and independent release cycles. Understanding
the application lifecycle can help developers and administrators to be faster in
implementing projects.

Imagine a process developer who digitizes business processes with the Axon Ivy
Designer in an Axon Ivy Project. At some point, the projects are installed on an
Axon Ivy Engine and brought to life. In that time, the projects must be packaged
into an application. For installation, it is suitable for a developer to package
a complete application from one or more projects that belong together and then
install it completely. A simple example:

|

*Lynn is a low coder and is digitizing business processes for the HR
department. He has just finished his first process so that employees can
report expenses. He has packaged this process into the report-expense
project and is packaging this project into an application called HR.*

|

.. graphviz:: hr-app.dot
  :align: center

|

*John is a software developer and develops business processes for the finance
department. He has already successfully implemented several processes with Axon
Ivy. To structure the processes well, he has packaged them into different Axon
Ivy Projects and packages them into the finance application.*

|

.. graphviz:: finance-app.dot
  :align: center

|

*John and Lynn are independent in their work both from a business point of view -
requirements and change requests from their departments (HR and Finance). And
with Axon Ivy, they are also independent of each other from a technical point of
view. They can develop in a decoupled manner and install their applications on
the same Axon Ivy Engine whenever they want.*

|

Thus, applications containing projects are installed on an Axon Ivy Engine. The
process users log in and can start the processes and are assigned to work on tasks. It
is important to understand how users are managed on an Axon Ivy Engine. The
users are part of a security system. Each Axon Ivy Engine always comes with the
`default` security system. Adding more security systems only makes sense in a
:ref:`multi tenancy <multi-tenancy>` use case. Users, their roles, and permissions are part of
the security system. When creating an application, it has together be defined in which
security system the application lives. By default, a new application always goes
directly into the `default` security system.

|

*Now Gunther comes into play. Gunther runs the Axon Ivy Engine for the DevOps
Lynn and John. The process users are synchronized through the company Active
Directory. Process users only have one unified process start list and task list
covering all applications.*

|

.. graphviz:: engine.dot
  :align: center

Applications are used by developers to package related processes together and
enable independent release cycles of different projects. This promotes
feature-driven development. The process users do not feel that the individual
processes from different applications, they only have a unified process start
list and a task list. The structure of the projects can also change at any time.

Read :ref:`deployment` If you want to learn how you can craft your own
application and deploy them on an Axon Ivy Engine.
