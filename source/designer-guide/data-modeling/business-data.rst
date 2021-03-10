.. _business-data:

Business Data
=============

The Business Data feature allows to store and load business data in a
built-in repository without defining a schema. Compared to other
features like database steps and JPA no additional database, database
connection, schema or tables are needed

The business data structure can be defined by declaring normal data
classes. When storing a business data object all objects that are
referenced from the root object are stored as well. Loading a business
data object will recreate the whole object tree again. The data is
stored in a schemaless JSON based data format in the ivy standard System
database. This allows to add fields to data classes over time and still
be able to load old business data without migration.

Moreover, the business data feature allows to search the stored data by
defining field based filters.


Business Data Concept
---------------------

Basically the Business Data Store implements a document store. Beside
the stored value, the repository stores additional information about the
Business Data, like an identifier, a version and the creation / update
date.

A value data class can have fields of complex types, which allows to
create an object hierarchy or tree. The storage mechanism can handle
recursions and will respect objects of same instances. So if the same
instance of an object is referenced in a field and in a list - after
storing and loading the value - the loaded value will have the identical
structure, the field and the list entry will reference the same
instance.


Identity
~~~~~~~~

A Business Data value is identified by an identifier given by the
repository and its data class.

A unique id is generated if a Business Data value is stored the first
time. If there is a field of type ``String`` with the name ``id`` in the
Business Data class, the generated id will be stored into this field
too.

It is also possible to use your own id if you set the id to the Business
Data value before saving it for the first time.


.. _business-case-data:

Business Case Data
~~~~~~~~~~~~~~~~~~

The handling of identifiers of Business Data values is complex because
you have to manage the identifiers in the process data manually.
Therefore the Business Data Store can store data in the context of a
business case. You can activate this by annotating a data class with the
``@BusinessCaseData`` annotation. On the Data Class Editor simply check
the *BusinessCaseData* checkbox in the *Annotations* section. Now, all
values of the annotated data class are automatically associated with the
current business case. You can use the ``get`` method to load the value
associated with the current business case. If no value is associated it
simply returns a new object.

Migrate data classes
~~~~~~~~~~~~~~~~~~~~

It is allowed to add and remove fields in the value data class
hierarchy. New fields will be initialized with null, when old values get
loaded. Deleted fields will no longer be available. The information will
still be persisted until the value gets stored with the new information
- which will override the old information.

Optimistic locking
~~~~~~~~~~~~~~~~~~

Business Data supports optimistic locking. It is possible to check if
the current version is up to date and save only if this is the case. It
is possible to update a value partially so that multiple participants
can work on different parts of the same Business Data value. See the
*Concurrent Modification*
:ref:`WorkflowDemos projects <importing-demo-projects>` for a practical
example.


Business Data Usage
-------------------

The Business Data feature methods like ``get``, ``save``, ``find`` and
``delete`` are accessible under ``ivy.repo`` in IvyScript.

Associate value with the business case (BusinessCaseData context)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Annotate the main data class of the business case with the
``@BusinessCaseData`` annotation:

::

   @BusinessCaseData
   public class BusinessCaseDossier
   {
   ...

Get (load or create), modify and save a dossier value in the context of
the current business case:

::

   BusinessCaseDossier dossier = ivy.repo.get(BusinessCaseDossier.class);
   dossier.getPerson().setLastName("Polo");
   ivy.repo.save(dossier);

Note, that the method ``get`` either loads the dossier if there is
already a dossier associated with the current business case or creates a
new dossier.

Store (without BusinessCaseData context)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create and save:

::

   Dossier dossier = ...
   out.businessDataId = ivy.repo.save(dossier).getId();

..

.. tip::

   It is recommended to only store the id of the business value in the
   process data. After a task switch you must load the business data
   value from the repo with the stored id. This is required, because the
   business data repo does not keep the reference to the instance on the
   task switch.

Load (without BusinessCaseData context)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Load, modify and save:

::

   Dossier storedDossier = ivy.repo.find(in.businessDataId, Dossier.class);
   storedDossier.getPerson().setLastName("Polo");
   ivy.repo.save(storedDossier);

Search
~~~~~~

The search capabilities of the Business Data Store are based on
`Elasticsearch <https://www.elastic.co/products/elasticsearch>`__ and
therefore fast and powerful.

There is a fluent API to search stored business data. The API supports
filtering, ordering and limiting of the results:

::

   List<Dossier> result = ivy.repo.search(Dossier.class)
          .allFields().containsAnyWords("Polo Columbus")
          .execute()
          .getAll();

Also `fuzzy
search <https://www.elastic.co/guide/en/elasticsearch/guide/current/fuzziness.html>`__
and search engine like `query
strings <https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-simple-query-string-query.html>`__
are supported:

::

   List<Dossier> result = repo.search(Dossier.class)
          .score()
          .allTextFields()
          .query("Baldwin~1 -Alec")
          .execute()
          .getAll();

..

.. warning::

   By default the search result is limited to 10 entries. Use the method
   ``limit`` if you want to get more than 10 entries.

Store with own Id
~~~~~~~~~~~~~~~~~

Create and save with own Id:

::

   Dossier dossier = ...
   String yourId = ... // generate your own id, be sure it is unique!
   dosser.id = yourId; // set your id to the Business Data value
   ivy.repo.save(dossier);

   ivy.repo.find(yourId, Dossier.class) // get your Business Data value 

..

.. warning::

   Be aware that the id can not be changed later and the maximum length
   of the identifier is 100 characters.

Samples
~~~~~~~

The :ref:`WorkflowDemos sample project <importing-demo-projects>`
of the Axon Ivy Designer contains examples on how to use the Business Data Store.

See Public API of ``BusinessDataRepository`` for more code samples.


Business Data Limitations
-------------------------

Size
   The Business Data store is not designed for storing huge binary
   objects like PDFs.

Types
   The ivy scripting types ``XML``, and ``Tree`` are not serializable.

   Collection types like an ``ArrayList`` can be stored in a field, but
   not as root object. Always use a simple DataClass or plain old Java
   objects as root object to store and load in the repository.

   Public API objects like ``IUser``, ``ITask`` or similar should not be
   stored into the Business Data repository. As workaround it's better
   to store the id of a Task or User and reload it via this identifier.

   The type of a stored field should never be changed (E.g. from
   ``Number`` to ``String``). The already stored data deserialization
   could fail and more likely Business Data with the new type can no
   longer be found via the search API as the search index is `strongly
   typed <https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping.html>`__.

Project Dependencies
   When using the same Business Data value type in multiple projects 'a'
   and 'b' it is best to define the data classes for the business data
   in an own project 'base'. Then define a dependency from projects 'a'
   and 'b' to project 'base'.

   .. warning::

      If you use an object of a type that is defined in project 'a'
      inside the business data value (e.g. add it to a list) then the
      business data value cannot be loaded in project 'b'. This is
      because project 'b' is not dependent to project 'a' and therefore
      cannot load objects of classes that are defined in project 'a'.

Elasticsearch
   The business data will be duplicated to Elasticsearch. This offers us
   powerfull search capabilities but we also have to deal with their
   limitations.

   Do not use ``Map``\ s with random or generated keys in your data
   structure. This will lead in a explosion of Elasticsaerch mappings.

   Prevent cyclic references and back references from lists to the
   parent object. This can lead to huge json while expanding these data
   structures.


Customization
-------------

The BusinessData store serializes Java objects to schemaless JSON by
using `Jackson <https://github.com/FasterXML/jackson>`__. Ivy
DataClasses are predestinated to be serialized with Jackson. However,
Jackson is able to store and load any Java object hierarchy. The
following customizations could help to store your special plain old Java
objects, which may not be serialized by default.

.. warning::

   Jackson is not only used for BusinessData serialization, but also to
   provide and consume :ref:`integration-rest`. If you customize
   the serialization of Jackson, it will very likely also affect the
   serialization of Java objects which are used as input or return
   parameter of any REST service. If a serialization behaviour must only
   be applied for the BusinessData serialization, declare it as :ref:`business-data-own-module`.

Custom constructor
~~~~~~~~~~~~~~~~~~

The deserializer expects an empty default constructor to recreate a Java
object. If you have a non default constructor (with parameters) or a
factory method to create instances of your object, Jackson annotations
are required so that the deserializer knows how to recreate the object.

For a sample see:
https://github.com/FasterXML/jackson-databind/#annotations-using-custom-constructor

Field without get/setter
~~~~~~~~~~~~~~~~~~~~~~~~

The ObjectMapper will only store fields as JSON which are public
accessible, either by getter methods or its field visibility. The
recreation of such field will fail if no setter is public accessible.
Via annotations either the serialization of this field can be avoided or
the recreation can be enabled.

**Avoid the serialization of a field:**

::

   public class MyCar{
       private List<Wheel> wheels;

       @JsonIgnore
       public List<Wheel> getWheels(){
           return wheels;
       }
   }

**Enable recreation of a setterless field:**

::

   public class MyCar{
       @JsonProperty
       private List<Wheel> wheels;

       public List<Wheel> getWheels(){
           return wheels;
       }
   }

.. _business-data-own-module:

Own module
~~~~~~~~~~

If simple annotations do not solve a serialization task, it's possible
to write a completely custom serializer and deserializer for Jackson. To
do so implement a class that extends
``com.fasterxml.jackson.databind.module.SimpleModule`` and add your
customization code into it. Register the class via SPI: create a file
``META-INF/services/com.fasterxml.jackson.databind.Module`` and store
the qualified name of your module implementation in this file.

However, if you need to serialize instances of a popular library there
could already be a Jackson module available that handles its
serialization. See
https://github.com/FasterXML/jackson#third-party-datatype-modules

If a module is already public available, simply add its JAR to the
classpath of your project.
