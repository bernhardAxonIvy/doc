.. _elasticsearch:

Elasticsearch
=============

|ivy-engine| is using Elasticsearch for full-text searches in business data.
Elasticsearch itself is bundled with |ivy-engine| and will be started on demand.

|

.. graphviz:: overview.dot
   :layout: neato

|

For systems with high load,  you may run an external Elasticsearch server or
cluster. To do so, download and install Elasticsearch according to the docs of
`Elasticsearch <https://www.elastic.co>`__. 

Note: Only use the Elasticseach release delivered with your |ivy-engine| as
there have been several breaking changes in Elasticsearch releases.

Now you need to tell the |ivy-engine| in :ref:`ivy-yaml` that an external
Elasticsearch server has to be used:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-external-elasticsearch.yaml
  :language: yaml
  :linenos:
