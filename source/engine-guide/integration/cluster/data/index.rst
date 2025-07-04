.. _cluster-data:

Data
====

All cluster nodes must have access to a shared data directory. This directory
contains data such as case attachments and application CMS content. You need to
ensure that this directory is accessible to all nodes in the cluster. By
default, the data directory is located at :file:`[engineDir]/data`, but you can
change its location using the :code:`Data.Directory` setting in the
:ref:`ivy.yaml <ivy-yaml>` file.

.. note::
  For case documents, you can also configure an S3 bucket as described in
  :ref:`documents-s3`. In this setup, all cluster nodes must have access to
  the same S3 instance.
