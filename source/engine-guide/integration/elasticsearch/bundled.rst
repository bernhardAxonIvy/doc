.. _elasticsearch-bundled:

Bundled Elasticsearch
---------------------

The bundled Elasticsearch server works out-of-the-box. No further configurations
are usually required. However, you may want to further tune the bundled
Elasticsearch server, for which you can go to the Elasticsearch installation
folder :code:`[ivyEngine]/elasticsearch`. The :code:`config` and :code:`logs`
are in the corresponding folder of the Elasticseach installation folder.

We have reduced the amount of assigned memory for Elasticsearch. These settings
can be changed in :code:`config/jvm.options`. In addition, we also have fine-tuned
the watermark setting, a self-protection mechanism for a disk overflow, in
:code:`config/elasticsearch.yml`.
