.. _systemdb-postgres:

PostgreSQL
----------

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-postgres.yaml
  :language: yaml
  :linenos:

If database will be created by the |ivy-engine| the encoding is set to ``UTF8``.

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``work_mem`` in the :file:`postgresql.conf` configuration 
  file of the database.
