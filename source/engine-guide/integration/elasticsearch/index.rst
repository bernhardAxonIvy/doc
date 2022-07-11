.. _elasticsearch:

Elasticsearch
=============

Axon Ivy Engine is using Elasticsearch for full-text searches in business data.
Elasticsearch itself is bundled with Axon Ivy Engine and will be started on demand.

|

.. graphviz:: overview.dot
   :layout: neato

|

For systems with high load,  you may run an external Elasticsearch server or
cluster. To do so, download and install Elasticsearch according to the docs of
`Elasticsearch <https://www.elastic.co>`__. 

Note: Only use the Elasticseach release delivered with your Axon Ivy Engine as
there have been several breaking changes in Elasticsearch releases.

Now you need to tell the Axon Ivy Engine in :ref:`ivy-yaml` that an external
Elasticsearch server has to be used:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-external-elasticsearch.yaml
  :language: yaml
  :linenos:
