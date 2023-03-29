.. _elasticsearch-external:

External Elasticsearch
----------------------

For systems with high load or when running |ivy| in a :ref:`cluster <cluster>`,
you may need to run an external Elasticsearch instance. To do so, download and
install Elasticsearch according to the docs of `Elasticsearch
<https://www.elastic.co>`__. 

We only support one version of Elasticsearch which is defined in :ref:`system
requirements <engine-system-requirements>`.

To integrate the |ivy-engine| with an external Elasticsearch instance you need
configure the :ref:`ivy-yaml`.

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-external-elasticsearch.yaml
  :language: yaml
  :linenos:
