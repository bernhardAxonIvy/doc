.. _systemdb-postgres:

PostgreSQL
----------

.. literalinclude:: ../../../../target/resources/includes/configuration/templates/ivy-systemdb-postgres.yaml
  :language: yaml
  :linenos:

If database will be created by the Axon Ivy Engine the encoding is set to ``UTF8``.

.. tips::
  If you experience bad query performance in Portal, then try to increase the
  setting ``work_mem`` in the :file:`postgresql.conf` configuration 
  file of the database.
 
In cloud environments like AWS or Azure, you need to ensure that the correct permissions are set for the pgstattuple extension.

