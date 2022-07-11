.. _persistence-configuration-editor:

Persistence Configuration Editor
--------------------------------

The Persistence Configuration Editor lets you configure the persistence
units you use in your project and the extending projects.

Usually you only need a single persistence unit that manages all of your
project's entity data classes. In this case you can simply create a new
persistence unit, associate it with a data source (i.e. data base) and
you're done. All of the project's entity classes will then automatically
be managed by this unit.

However, if you wish to do so, you can divide your entity data classes
into subsets and manage each subset through an individual persistence
unit. In this case you need to specify multiple persistence units and
then define an explicit list of managed entity classes for each unit.

.. warning::

   Although it is theoretically possible to have the same entity class
   managed by two or more persistence units, you should be aware of the
   consequences. Once you have generated/attached an object of a
   specific class through a specific persistence unit, you must ensure
   that it is managed uniquely by that unit afterwards.

   Example: Assume that you have two different objects of the same
   entity class, e.g. ``Person``, generated through different
   persistence units, e.g. ``employee`` through ``employee_unit`` and
   ``customer`` through ``customer_unit``. In this case you must
   absolutely avoid to mix persistence units and objects. For the above
   example, handing over ``employee`` to ``customer_unit`` (or
   ``customer`` to ``employee_unit``) will consequently result in
   errors.

.. figure:: /_images/persistence/persistence-configuration-editor-single-unit.png
   :alt: Persistence Configuration Editor (single persistence unit)

   Persistence Configuration Editor (single persistence unit)

.. figure:: /_images/persistence/persistence-configuration-editor-multiple-unit.png
   :alt: Persistence Configuration Editor (multiple persistence units)

   Persistence Configuration Editor (multiple persistence units)

**New**
   Add a new persistence unit configuration

**Remove**
   Remove the selected persistence unit(s)

**Generate Schema**
   Generates the database schema out of the entity classes who belong to
   the selected persistence unit. See :ref:`persistence-generate-database-schema`
   for details.

Accessibility
^^^^^^^^^^^^^

*Axon Ivy Project Tree > double click on the Persistence label.*

Features
^^^^^^^^

Data source
   Here you have to choose a database configuration which will be the
   data source of this persistence unit. Means all the data are loaded
   and stored within this database. Go to the :ref:`database-configuration-editor`
   to configure available data sources.

   There is also an ``IvySystemDatabase`` data source which points to the
   current System Database. Normally you would prefer your own database
   to split valuable customer data from the system data.

Description
   You can give your persistence unit any description here.

Managed Classes
   Specify the list of classes to be managed in this persistence unit.
   If 'Exclude unlisted classes' is checked, only the entity classes
   which are defined in the list are included in the persistence unit.
   Otherwise all entity classes of the project are included
   automatically plus the entity classes defined in the list.

Properties
   Specify some properties for the persistence unit. You do not have to
   specify something here except you now what you are doing.
   