.. _persistence:

Persistence
===========

This chapter introduces the :ref:`persistence-configuration-editor` and the
:ref:`persistence-api` of |axon-ivy|. The persistence
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


.. toctree::
  :maxdepth: 1

  entity-classes
  new-entity-class-wizard
  entity-class-editor
  persistence-configuration-editor
  generate-database-schema
  persistence-api
  