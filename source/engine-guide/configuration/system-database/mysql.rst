.. _systemdb-mysql:

MySQL
-----

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-systemdb-mysql.yaml
  :language: yaml
  :linenos:

We only support storage engine **InnoDB**. If database will be created by the
Axon Ivy Engine the charset is set to ``utf8`` and collation is set to
``utf8_unicode_ci``.

.. warning::
  The newer charset ``utf8mb4`` is not supported. 
  The creation of the system database tables will fail if you use ``utf8mb4`` charset.

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``innodb-buffer-pool-size`` in the :file:`my.cnf` configuration 
  file of the database. 
