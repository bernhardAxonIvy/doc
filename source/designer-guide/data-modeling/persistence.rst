.. _persistence:

Persistence
===========

This chapter introduces the :ref:`persistence-configuration-editor` and the
:ref:`persistence-api` of Axon Ivy. The persistence
framework is based on the `Java Persistence
API <http://en.wikipedia.org/wiki/Java_Persistence_API>`__, aka JPA) and
provides support for storing and loading business objects from and to a
database in an easy way.

In order to use automated persistence in your business or User Dialog
processes you need to define some :ref:`persistence-entity-classes`
first. An entity class is
similar to a data class (i.e. a business object) but holds additional
information that is necessary to map the class to a database table and
its attributes to database columns.

Once you have created entity classes, you need to define at least one
persistence unit configuration. A persistence unit is responsible for
managing all or a subset of your entity classes and defines the database
where those entities are stored. Once you have configured one or more
persistence units you can use them in your process steps with the
:ref:`persistence-api` to load/update entity objects
directly from the database or save/update them to the database.

.. _persistence-entity-classes:

Entity Classes
--------------

Entity Classes are like global :ref:`data-classes` but
with additional information where and how to store the data of a class
and its attributes to a relational database. An Entity Class is mapped
directly to a database table and the attributes of an Entity Class are
mapped directly to the fields of a database table. Therefore the
:ref:`database schema can be
generated <persistence-generate-database-schema>` directly out of
an Entity Class. It is possible to load, save, and update entity objects
with the :ref:`persistence-api`.

Entity Classes are created with the :ref:`persistence-entity-class-new-wizard`
and can be edited afterwards in the :ref:`persistence-entity-class-editor`.
Both of those
are similar to the wizard and editor for regular Data Classes, but allow
to specify additional settings, that are necessary for automated
persistence.




.. _persistence-entity-class-new-wizard:

New Entity Class Wizard
-----------------------

The New Entity Class wizard lets you create a new global Entity Class.

.. figure:: /_images/persistence/entity-class-new-wizard.png
   :alt: New Entity Class Wizard

   New Entity Class Wizard

Accessibility
^^^^^^^^^^^^^

File > New > Entity Class

Features
^^^^^^^^

Project Name
   Chose the name of the project the new Entity Class should belong to.

Namespace
   Chose a namespace for your Entity Class. The name space lets you
   create a structure to organize your data. Use the dot character '.'
   to separate the folders from each other. The namespace will be
   visible in the Axon Ivy project tree.

Entity Class Name
   Enter the name of your Entity Class. Do not use the same name twice
   in your project, it may get confusing if you do so.

Entity DB Table Name
   Enter the name of the database table name of your Entity Class. If
   empty the name of your Entity Class is used. This name is used if the
   database table of this Entity Class is generated.



.. _persistence-entity-class-editor:

Entity Class Editor
-------------------

The Axon Ivy Entity Class editor lets you configure the process data
objects of Axon Ivy similar to the :ref:`data-class-editor`.
The process data is the data that
"flows" through your processes. Additionally an Entity Class has
information where and how to store the data of a class and its
attributes to a relational database.

Use this editor to add new data fields to your Entity Class, to change
the type of a field or to document your Entity Class or Entity Class
Fields.

Accessibility
^^^^^^^^^^^^^

Axon Ivy Project Tree > double click on a Entity Class entry in the tree

New > Entity Class > then the editor opens if the class was created
successfully

Features
^^^^^^^^

Section Class Comment
~~~~~~~~~~~~~~~~~~~~~

Enter your text here to describe in prose what kind of data your Entity
Class represents.

Section Attributes
~~~~~~~~~~~~~~~~~~

Enter a list of attributes into the table. Use the |image0| icon to add
a new attribute or just click on the next empty cell in the "Name"
column of the table.

If you want to reorder your entries in the table, then you can use the
|image1| icons to do so. The order influences just the presentation and
has no logic implication.

Use the |image2| icon to toggle the value change breakpoint for the
currently selected attribute. The attribute icon |image3| shows that a
breakpoint is installed on a attribute. More information about value
change breakpoints can be found in chapter :ref:`Breakpoints <simulate-process-models-breakpoints>`.

Name
   Enter the name of your attribute. The name should not contain any
   special characters or spaces.

   .. tip::

      You may already specify the type of the attribute here by adding a
      colon ':' to the attribute name, followed by desired type (e.g.
      ``myDateAttribute:Date``). When only adding a colon to the name
      without a type, the data type selection dialog will appear.

      |image4|

Type
   Enter the type of the attribute (fully qualified) or press the
   |image5| to bring up the :ref:`data-type-browser`.

DB Field
   The name of the field in the database table of this attribute. If you
   generate the database from this Entity Class for this attribute the
   DB field name is used as database field.

Persistent
   Decide if the data should be saved in the database if you use the
   persistence API and if the data should be persistent between a task
   switch. If the data is not set to be persistent, then you loose all
   information if the execution of the process passes a task switch
   process element.

Length
   You can specify the length of the field in the database. This can
   only be specified if the type is a String, BigDecimal or BigInteger.
   The default length for string fields is 255 and for decimal fields
   19,2 on the database. Changes of the length has only an effect if the
   database schema is created new.

Properties
   id
      Specifies the primary key field of an entity. Every Entity Class
      must have exactly one primary key.

   generated
      Specifies if the primary key should be generated automatically.

   not nullable
      Whether the database column is not nullable.

   unique
      Whether the field should be a unique key in the database.

   not updateable
      Whether the column is not included in SQL UPDATE statements
      generated by the persistence provider.

   not insertable
      Whether the column is not included in SQL INSERT statements
      generated by the persistence provider.

   version
      Specifies the version field of an entity that serves as its
      optimistic lock value. The version is used to ensure integrity
      when performing the merge operation.

Association
   Defines the association to another Entity Class. The actual
   configuration is done in the embedded Association Editor.

Comment
   Describe the means of your attribute here.

.. _ivy.editors.entityclass.association:

Association Editor
~~~~~~~~~~~~~~~~~~

Defines the association to another Entity Class and are only allowed to
them and not other types of classes.

|image6|

Association
^^^^^^^^^^^

ONE_TO_ONE
   Defines a one to one (1:1 on the database) association to another
   Entity Class. Can only be used if the type of the attribute is an
   Entity Class.

MANY_TO_ONE
   Defines a many to one (n:1 on the database) association to another
   Entity Class. Can only be used if the type of the attribute is a List
   or Set of an Entity Class. The inverse association of a MANY_TO_ONE
   is a ONE_TO_MANY association.

ONE_TO_MANY
   Defines a one to many (1:n on the database) association to another
   Entity Class. Can only be used if the type of the attribute is a List
   or Set of an Entity Class. This type of association needs always a
   mapped by specification, because this is always the inverse side of
   an MANY_TO_ONE association.

Cascade
^^^^^^^

Defines the cascadable operations which are propagated to the associated
Entity. E.g. if persist is enabled then the associated object will be
persisted automatically if an instance of this class is persisted.

persist
   If enabled the associated object is persisted automatically if an
   instance of the class is persisted. See :ref:`persist
   operation <persistence-api-persist>`.

merge
   If enabled the associated object is merged automatically if an
   instance of the class is merged. See :ref:`merge
   operation <persistence-api-merge>`.

remove
   If enabled the associated object is removed automatically if an
   instance of the class is removed. See :ref:`remove
   operation <persistence-api-remove>`.

refresh
   If enabled the associated object is refreshed automatically if an
   instance of the class is refreshed. See :ref:`refresh
   operation <persistence-api-refresh>`.

Mapped by
^^^^^^^^^

The field that owns the relationship on the specified type which must be
an Entity Class. This element is only specified on the inverse
(non-owning) side of the association. Mapped by can only be used for
ONE_TO_ONE and ONE_TO_MANY associations. The inverse side of the
association must be also the inverse association (ONE_TO_ONE inverse
ONE_TO_ONE, ONE_TO_MANY inverse MANY_TO_ONE)

Orphans
^^^^^^^

If orphans remove is enabled and an entity that is the target of the
relationship is removed from the relationship (either by removal from
the collection or by setting the relationship to null), the remove
operation will be applied to the entity being orphaned. If the entity
being orphaned is a detached, new,or removed entity, the semantics do
not apply.

If orphan remove is enabled and the remove operation is applied to the
source entity, the remove operation will be propagated as defined in the
cascade section.

The remove operation is applied at the time of the flush operation. The
orphans removal functionality is intended for entities that are
privately "owned" by their parent entity.

**Example**:

A 'Basket' entity holds a list of 'Product' entities. What happens if
``basket.getProducts().remove(..)`` is called?

-  orphan remove enabled: the product is removed from the list of
   referenced products even if the entity is reloaded or refreshed.

-  orphan remove disabled: the product stays in the list of referenced
   products if the entity is reloaded or refreshed.

.. |image0| image:: /_images/persistence/button-add.png
.. |image1| image:: /_images/persistence/button-order.png
.. |image2| image:: /_images/persistence/button-toggle-breakpoint.png
.. |image3| image:: /_images/persistence/button-attribute-with-breakpoint.png
.. |image4| image:: /_images/data-class/data-class-editor-enter-type.png
.. |image5| image:: /_images/data-class/button-type.png
.. |image6| image:: /_images/persistence/persistence-association-editor.png





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



.. _persistence-generate-database-schema:

Generate database schema from persistence unit
----------------------------------------------

Generation options (Step 1)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

On the first wizard page you can specify the environment and the type of
the schema generation.

.. figure:: /_images/persistence/generate-database-schema-options.png
   :alt: Database schema generation option

   Database schema generation option

**Data source**
   For the schema generation the data source of the persistence unit is
   used.

**Environment**
   Specify the environment on which you like to generate the database
   schema.

**Type**
   Specify the type of the schema generation. You can choose between
   update and create.

   -  update: Does update the current available schema on the database.

      .. warning::

         The update does not refactor any changed table names, field
         names or field types. If a table or field does not exist in the
         database a new one is created even if the same table or field
         with another name exists.

   -  create: Does drop the current schema on the database and create a
      new one.

      .. warning::

         This option does delete all data which is stored in the
         database.

Generation preview (Step 2)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The second wizard page shows a preview what will be executed on the
database.

.. figure:: /_images/persistence/generate-database-schema-preview.png
   :alt: Database schema generation preview

   Database schema generation preview

Accessibility
^^^^^^^^^^^^^

*Axon Ivy Project Tree > double click on the Persistence label > Select
a persistence unit > Generate Schema.*


.. include:: _persistence-api.rst
