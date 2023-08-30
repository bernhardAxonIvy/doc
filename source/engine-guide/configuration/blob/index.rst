Blob
====

Files, such as case documents, neesd to be stored persistently.
The |ivy-engine| can store such files, also called Blobs (Binary Large Object),
in different locations depending on the configuration.

The following Blob Storages are bundled as part of the Axon Ivy Engine:

.. toctree::
   :maxdepth: 1

   local
   s3

By default, the files are stored in the :ref:`local file system <blob-local>`. The setting can be changed
per security system.

.. literalinclude:: ivy-blob-storage.yaml
  :language: yaml
  :linenos:
