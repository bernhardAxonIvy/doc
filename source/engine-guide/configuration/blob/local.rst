.. _blob-local:

Local
-----

The local blob storage stores the files in the local file system. The root path will be calculated out of `Data.FilesDirectory` from :ref:`ivy-yaml`
and you can override this settings per application in :ref:`app-yaml`.

**Template**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.blob.storage/src/ch/ivyteam/ivy/blob/storage/local/local-blob-storage-template.yaml
  :language: yaml
  :linenos:

**Reference**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.blob.storage/src/ch/ivyteam/ivy/blob/storage/local/local-blob-storage-reference.yaml
  :language: yaml
  :linenos:

.. note::
   Working with local files does only work with :ref:`cluster` if you share the same
   root directory for all cluster nodes. In case of cluster you should go with :ref:`blob-s3`.
