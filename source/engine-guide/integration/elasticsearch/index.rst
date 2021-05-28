.. _elasticsearch:

Elasticsearch
=============

Axon Ivy Engine is using Elasticsearch for full-text searches. Elasticsearch
itself is bundled with Axon Ivy Engine and will be started on demand.

|

.. graphviz:: overview.dot
   :layout: neato

|

For system with high traffic you are able to run an external Elasticsearch
server. Therefore download and install Elasticsearch according to the docs of
`Elasticsearch <https://www.elastic.co>`__.

Now you need to tell the Axon Ivy Engine in :ref:`ivy-yaml` that the external
Elasticsearch server must come into charge:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-external-elasticsearch.yaml
  :language: yaml
  :linenos:
