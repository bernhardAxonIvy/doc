.. _application-lifecycle:

Application Lifecycle
*********************

In |ivy|, a project consists of one or more related processes. Applications
consist of one or more projects. If you structure your |ivy| projects well
into several applications, you benefit from processes being technically isolated
and having independent release cycles. Understanding the application lifecycle
helps developers and administrators to implement projects faster.

Imagine a process developer who digitizes business processes with the |ivy|
Designer in an |ivy| project. At some point, he deploys his resulting
processes onto an |ivy-engine| and brings them to life. At that time, he has
to package his projects into an application. For deployment, it is suitable to
package a complete application from one or more projects that belong together
and then deploy the resulting application. A simple example:

|

*Lynn is a low coder and is digitizing business processes for the HR
department. She has just finished her first process so that employees can
report expenses. She has packaged this process into the report-expense
project and is packaging this project into an application called HR.*

|

.. graphviz:: hr-app.dot
  :align: center

|

*John is a software developer and develops business processes for the finance
department. He has already successfully implemented several processes with
|ivy|. To structure the processes well, he has packaged them into different
|ivy| projects and packages them into the finance application.*

|

.. graphviz:: finance-app.dot
  :align: center

|

*John and Lynn are independent in their work both from a business point of view
- requirements and change requests from their departments (HR and Finance), as
well as from a technical point of view. They can develop in a decoupled manner
and install their applications on the same |ivy-engine| whenever they want.*

|

Thus, applications containing processes are deployed on an |ivy-engine|. The
process users log in and can start the processes and are assigned to work on
tasks. It is essential to understand how users are managed on an |ivy|
Engine. The users are part of a security system. Each |ivy-engine| always
comes with the `default` security system. Adding more security systems only
makes sense in a :ref:`multi tenancy <multi-tenancy>` use case. Users, their
roles, and permissions are part of the security system. When you create an
application, you have to define which security system this application lives in.
By default, a new application is put into the `default` security system.

|

*Now Gunther comes into play. Gunther runs the |ivy-engine| for the DevOps
Lynn and John. The process users are synchronized from the company Active
Directory. Process users only have one unified process start list and task list
covering all applications.*

|

.. graphviz:: engine.dot
  :align: center

Applications are used by developers to package related processes and
enable independent release cycles of different processes. This promotes
feature-driven development. The process users do not realize that the individual
processes are part of different applications. They only have a unified process start
list and one task list. The structure of the projects can also change at any time.

Read :ref:`deployment` If you want to learn how you can craft your own
applications and deploy them on an |ivy-engine|.
