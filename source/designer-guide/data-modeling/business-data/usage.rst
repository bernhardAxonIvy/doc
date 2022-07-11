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

.. warning::
  :ref:`business-case-data` can only be applied if the case is persistent (i.e.
  has at least one task)
  

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
