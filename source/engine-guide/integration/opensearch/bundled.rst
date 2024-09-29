.. _opensearch-bundled:

Bundled OpenSearch
------------------

The bundled OpenSearch server works out-of-the-box. No further configurations
are usually required. However, you may want to further tune the bundled
OpenSearch server, for which you can go to the OpenSearch installation
folder :code:`[ivyEngine]/opensearch`. The :code:`config` and :code:`logs`
are in the corresponding folder of the Elasticseach installation folder.

We have reduced the amount of assigned memory for OpenSearch. These settings
can be changed in :code:`config/jvm.options`. In addition, we also have fine-tuned
the watermark setting, a self-protection mechanism for a disk overflow, in
:code:`config/opensearch.yml`.
