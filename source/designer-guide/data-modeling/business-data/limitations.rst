Business Data Limitations
-------------------------

Size
   The Business Data store is not designed for storing huge binary
   objects like PDFs.

Persistence
   :ref:`business-case-data` can only be applied if the case is persistent (i.e.
   has at least one task).

Types
   The Ivy scripting types ``XML``, and ``Tree`` are not serializable.

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
   powerful search capabilities but we also have to deal with their
   limitations.

   Do not use ``Map``\ s with random or generated keys in your data
   structure. This will lead in a explosion of Elasticsearch mappings.

   Prevent cyclic references and back references from lists to the
   parent object. This can lead to huge json while expanding these data
   structures.
