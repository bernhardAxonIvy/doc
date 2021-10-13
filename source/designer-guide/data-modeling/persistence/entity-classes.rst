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
