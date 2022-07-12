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
  The newer character set ``utf8mb4`` is not supported. 
  The creation of the system database tables will fail if you use the ``utf8mb4`` 
  character set. The reason is that the InnoDB engine allows for 767 bytes of 
  index per column, i.e. 255 or 191 characters for ``utf8`` or ``utf8mb4``, 
  respectively, while Axon Ivy uses keys of up to 200 characters.
  

.. tip::
  If you experience bad query performance in Portal, then try to increase the
  setting ``innodb-buffer-pool-size`` in the :file:`my.cnf` configuration 
  file of the database. 
