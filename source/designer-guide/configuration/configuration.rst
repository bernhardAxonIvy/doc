.. _configuration-management:

Configuration Management
========================

|axon-ivy| allows for individual configuration of many of its features,
specifically for the following:

-  :ref:`configuration-environments`
-  :ref:`variables`
-  :ref:`Output Format <configuration-types>`

The specifics of the above described :ref:`configuration-types` are
explained in more detail in a separate section.

A configuration is always associated with a *type* (the type of object
that it configures) and with an *unique name*. When applying a
configuration to an object, only the name of the configuration must be
given, because the type is defined by the object being configured.

By consistently defining and using the *logically named* configurations
instead of setting properties individually on each configurable object
you can later easily change or redefine the looks and behavior of the
application in a single place.

All configurations can be created, edited and deleted using the
:ref:`configuration-editor`.

.. tip::

   In |axon-ivy|, each project has its own *configuration database*.

   Lookup of any configurations is performed by an *(type, configuration
   name)* request. If the look-up of such a configuration fails for the
   current project then the configuration databases of the required
   projects are searched with the same query recursively. With this
   mechanism, configurations can effectively be shared among projects.

   Since the current project is always asked first for a specific
   configuration, you can easily *overwrite* configurations that come
   from a required project, simply by redefining them locally (on the
   same type with the same name).


.. warning::

   When creating a new project with the `New Project
   Wizard <#ivy.wizards.newproject>`__ you will be asked if default
   configuration content should be created for the new project. You
   should always *disable* this option if you're creating a project that
   will be dependent on other projects. If you don't disable it then all
   of the default configurations that are defined in the base project
   will be redefined automatically in the new project (and thereby
   *shadow* the inherited configurations), which may lead to unexpected
   behavior of the application.

   |create-new-project-with-configs-image|

   If you unintentionally forgot to disable the option in the wizard you
   can still manually delete all configurations that have been created
   in the *content database* using the `Configuration
   Editor <#ivy.editors.configuration>`__ at a later point of time.

.. |create-new-project-with-configs-image| image:: /_images/designer-configuration/create-new-proejct-with-config.png



.. include:: _configuration-editor.rst
.. include:: _configuration-renderers.rst
.. include:: _configuration-types.rst
