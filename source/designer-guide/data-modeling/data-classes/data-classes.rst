.. _data-classes:

Data Classes
============

This chapter deals with |ivy| Data Classes. A Data Class generally holds the
data that flows through your business or User Dialog process. You can build
complex data structures in your Data Classes. Use composition to split up your
data if the amount of your data is getting large.

Types of Data Classes
---------------------

There are four kinds of Data Classes in |ivy|.

Global Data Classes
   The global Data Classes are located in the Data Class node in your project
   tree. They are accessible in your project and projects depending on it.

User Dialog Data Class
   Each User Dialog has its Data Class. This class holds the data that flows
   through your User Dialog process. In your User Dialog Data Class, you can
   define attributes with a type of a global Data Class. The User Dialog Data
   Class is visible only in the associated User Dialog Process.

Web Service (WS) Data Classes
   |ivy| generates a Web Service Data Class automatically when you create a Web
   Service configuration. The Web Service Data Class, like a global Data Class,
   is accessible in your project and projects depending on it. Use this Data
   Class to communicate with your Web Services.

Entity Classes
   :ref:`persistence-entity-classes` are like Global Data Classes but with
   additional information on where and how to store the data of a class and its
   attributes to a relational database.

.. _data-class-new-wizard:

New Data Class Wizard
---------------------

The New Data Class wizard lets you create a new global Data Class. Start the
wizard by selecting *File > New > Data Class*.

.. figure:: /_images/data-class/data-class-new-wizard.png
   :alt: New Data Class Wizard

   New Data Class Wizard

Features
^^^^^^^^

Project Name
   Choose the project the new Data Class should belong to.

Namespace
   Choose a namespace for your Data Class. The namespace lets you create a
   structure to organize your data. Use the dot character '.' to separate the
   folders. The namespace will be visible in the |ivy| project tree.

Data Class Name
   Enter the name of your Data Class. Do not use a Data Class Name twice in your
   project, it may get confusing if you do so.

.. _data-class-editor:

Data Class Editor
-----------------

Use this editor to add, delete, and edit your Data Class and its attributes.

.. figure:: /_images/dataclass-editor/dataclass-editor.png
   :alt: Data Class Editor

   Data Class Editor

.. note::
  If you are familiar with the Data Class editor from previous versions, you can
  still use it by selecting *Open With > Data Class Editor (Classic)* in the
  context menu of the Data Class.

Features
^^^^^^^^

When you have no attribute selected, you can view and edit the properties of the
data class.

Name / Description
  Name
    Shows the fully qualified name of the Data Class. To change the name,
    perform the "Rename" refactoring by selecting "Rename" in the context menu
    of the Data Class in your project tree.
  
  Description
    Use this field to document your Data Class.
  
Annotations
  Use annotations on your Data Class for advanced configuration. The annotations
  will be written as is into the generated Java file. Therefore, you need to use
  the fully qualified name of the annotation and provide all desired arguments.

Class type
  Change the type of your Data Class:
  
    - :ref:`Data <data-classes>`
    - :ref:`Business Data <business-data>`
    - :ref:`Entity <persistence-entity-classes>`

**Entity**

If your Data Class is an :ref:`Entity <persistence-entity-classes>`, additional
configuration properties are available.

Database Table
  Name
    The name of the database table of your Entity Class. If not specified, the
    name of your Entity Class is used. This value is used when the database
    table of your Entity Class gets generated.

Attributes
""""""""""

The attributes specify the Data Class contents. Select an attribute in the table
to view and edit its properties.

Name / Type / Comment
  Name
    The name of your attribute. The name must not contain any special characters
    or spaces.

  Type
    The type of your attribute. Press |data-type-browser-icon| to open the
    :ref:`data-type-browser`.

  Comment
    Use this field to document your attribute.

.. |data-type-browser-icon| image:: /_images/data-class/data-type-browser-icon.svg
   :alt: Data Type Browser Button
   :width: 16px
   :height: 16px

Properties
  Persistent
    Decide if the data should be persistent between task switches. If the data
    is not set to be persistent, then you lose all information if the execution
    of the process passes a task switch process element.

Annotations
  Use annotations on your attributes for advanced configuration. The annotations
  will be written as is into the generated Java file. Therefore, you need to use
  the fully qualified name of the annotation and provide all desired arguments.

**Entity**

If your Data Class is an :ref:`Entity <persistence-entity-classes>`, additional
configuration properties are available.

Database Field
  Name
    The name of the database table column of this attribute. This value is used
    when the database table of your Entity Class gets generated. Allowed
    characters are the letters A-Z, the digits 0-9, and the underscore ``_``.
  
  Length
    The length of the field in the database table. The following attribute types
    can have their length defined and have the specified default values:

    - ``String`` : 255
    - ``BigDecimal`` : 19,2
    - ``BigInteger`` : 19,2
    
    Changing the length has only an effect if the database schema is recreated.
  
  Properties
    - **ID**: Defines the primary key field of an entity. Every Entity Class
      must have exactly one primary key.
    - **Generated**: Defines if the primary key should be generated
      automatically.
    - **Not nullable**: Defines whether the field value can be ``NULL`` in the
      database.
    - **Unique**: Defines whether the field value must be unique across the
      database table column.
    - **Not updateable**: Defines whether the column is omitted in ``SQL
      UPDATE`` statements generated by the persistence provider.
    - **Not insertable**: Defines whether the column is omitted in ``SQL
      INSERT`` statements generated by the persistence provider.
    - **Version**: Defines the version field of an entity. This is used as the
      optimistic lock value and ensures integrity when performing the merge
      operation. The following attribute types can be used as version:

      - ``Short``
      - ``Integer``
      - ``Long``
      - ``java.sql.Timestamp``

Association
  Defines the association to another Entity Class. The association must be
  defined on both sides.

  Cardinality
    - **One-to-One**: Defines a one-to-one (1:1) association to another Entity
      Class. Only allowed if the attribute type is an Entity Class. The inverse
      association is another one-to-one association.
      
    - **Many-to-One**: Defines a many-to-one (n:1) association to another Entity
      Class. Only allowed if the attribute type is a ``List`` or ``Set`` of an
      Entity Class. The inverse association is a one-to-many association.
      
    - **One-to-Many**: Defines a one-to-many (1:n) association to another Entity
      Class. Only allowed if the attribute type in the other Entity Class is a
      ``List`` or ``Set`` of this Entity Class. This association type requires a
      mapped-by specification since it is the inverse of a Many-to-One
      association.
  
  Cascade
    Defines the cascadable operations that are propagated to the associated
    Entity. If checked, operations performed on this Entity will be applied
    automatically to the associated Entity.

    - **Persist**: See :ref:`Persist an Entity Object
      <persistence-api-persist>`.
    
    - **Merge**: See :ref:`Merge an Entity Object <persistence-api-merge>`.
    
    - **Remove**: See :ref:`Remove an Entity Object <persistence-api-remove>`.
    
    - **Refresh**: See :ref:`Refresh an Entity Object
      <persistence-api-refresh>`.
  
  Mapped by
    Defines the attribute that owns the relationship in the associated Entity.
    This value must be defined on the inverse (non-owning) side of the
    association.
  
  Remove orphans
    If enabled and an Entity that is the target of a relationship is removed
    from the relationship (either by removal from the collection or by setting
    the relationship to null), the orphaned Entity will be removed. If the
    orphaned Entity is a detached, new, or removed Entity, the semantics do not
    apply.
    
    If enabled and the remove operation is applied to the source Entity, the
    remove operation will be propagated as defined in the cascade section.
    
    The remove operation is applied at the time of the flush operation. The
    orphans removal functionality is intended for Entities that are privately
    "owned" by their parent Entity.
    
    **Example**:
    
    A 'Basket' Entity holds a list of 'Product' Entities. What happens if
    ``basket.getProducts().remove(..)`` is called?
    
    -  Remove orphans is enabled: The product is removed from the list of
       referenced products even if the Entity is reloaded or refreshed.
    
    -  Remove orphans is disabled: The product stays in the list of referenced
       products if the Entity is reloaded or refreshed.

Attribute Refactoring
^^^^^^^^^^^^^^^^^^^^^

The Data Class editor supports Data Class attribute refactoring.

Combine Attributes Refactoring
""""""""""""""""""""""""""""""

Over time, the number of attributes in a Data Class may become excessive. This
decreases the maintainability and reusability of your process logic. Therefore,
the editor allows you to combine multiple attributes from an existing Data Class
into a new Data Class. The combined attributes will be replaced with a delegate
attribute for the new Data Class.

If you have a Data Class that describes a person, you could combine the
attributes that belong to the address part into an extra address Data Class.

.. list-table::
  :width: 100%

  * - .. figure:: /_images/data-class/data-class-editor-extract-refactoring-original-structure.png
         :alt: Data Class before refactoring
         :scale: 75
      
         Data Class before refactoring

    - .. figure:: /_images/data-class/data-class-editor-extract-refactoring-modified-classes.png
         :alt: Data Class after refactoring
         :scale: 75
      
         Data Class after refactoring

**Start Refactoring**

Select the attributes to combine in the table, then press
|combine-attributes-icon| to open the refactoring wizard.

.. |combine-attributes-icon| image:: /_images/data-class/combine-attributes-icon.svg
   :alt: Combine Attributes Button
   :width: 16px
   :height: 16px

**Define the new Data Class**

The first refactoring wizard page lets you define the location and name of the
Data Class.

.. figure:: /_images/data-class/data-class-editor-extract-refactoring-wizard-page-1.png
   :alt: Wizard Page 1 - Define the new Data Class

   Wizard Page 1 - Define the new Data Class

**Review modifications**

The second page previews all changes that will be applied to your artifacts. You
can inspect some of the changes within the textual compare view on the lower
part of the page.

.. figure:: /_images/data-class/data-class-editor-extract-refactoring-wizard-page-2.png
   :alt: Wizard Page 2 - Review modifications

   Wizard Page 2 - Review modifications

The refactoring will modify all programmatic references to attributes.
Statements written in Java, IvyScript, JSP or El-Expressions may be changed by
this refactoring.
