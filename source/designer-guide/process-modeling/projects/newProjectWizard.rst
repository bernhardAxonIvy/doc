

.. _project-new-wizard:

New Project Wizard
-------------------

The *New |axon-ivy| Project wizard* lets you create a new |axon-ivy|
project.

On the first page you must specify the settings that are required for
the new project. After filling those in, you may already press *finish*
to create the new project.

The following pages are optional and you do not have to complete
them. However, they allow you to specify information with regard to
deployment or create a first process without further navigation steps.

Accessibility
~~~~~~~~~~~~~

File -> New -> Axon Ivy Project


Features
~~~~~~~~

.. figure:: /_images/ivy-project/new-project-wizard-1.png
   :alt: New Project Wizard: First Page

   New Project Wizard: First Page

This page lets you define the minimally required settings for a new
project.

Project name
   Chose a name that describes the contents or the purpose of your
   project. You are not allowed to use any special characters or spaces.

Group ID
   Identifies your project uniquely across all projects. It has to
   follow the package name rules, what means that has to be at least as
   a domain name you control, and you can create as many subgroups as
   you want. e.g. ``com.acme.ria``.

Project ID
   You can choose whatever name you want with lowercase letters and no
   strange symbols, e.g. ``users`` or ``user-manager``.

   During deployment to the engine the concatenated Group ID + Project
   ID will act as unique identifier of the project, once it is deployed.

Default namespace
   Define the default namespace for your project. This namespace will be
   used as standard namespace for new |axon-ivy| artifacts. It is also the
   namespace into which the project's default data class (``Data``) will
   be generated.

.. figure:: /_images/ivy-project/new-project-wizard-2.png
   :alt: New Project Wizard: Second Page

   New Project Wizard: Second Page

The second page is optional. It allows you to specify any project from
the workspace as a required project.

Required Projects
   Check the projects that the new project should be depend upon. The
   selected projects will automatically be required with the version
   that they currently have in the workspace. The maximum version will
   be left empty.

   You can always reconfigure the required projects at a later point of
   time in the :ref:`project-deployment-descriptor`.

.. figure:: /_images/ivy-project/new-project-wizard-3.png
   :alt: New Project Wizard: Third Page

   New Project Wizard: Third Page

The third page is optional. It allows you to define information about
the implementor and the purpose of the new project. This information has
documentation value only.

You can always specify and change this information at a later point of
time in the :ref:`project-deployment-descriptor`.

Provider
   Define the company or individual that develops and maintains this
   project.

Description
   Describe the purpose of the project's contents or what the
   application is, that it implements.


