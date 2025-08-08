.. _translation-service:

Translation Service
===================

Certain features require the integrated Translation Service of the Axon Ivy
Engine to be configured.

For example, translating Content Objects in the :ref:`CMS Editor <cms>` or
translating text fields when creating :ref:`Portal <portal-guide>` components.

The Translation Service can be configured in the :file:`ivy.yaml` per Security
System. To enable these features, the `DefaultInstance` must be defined, and the
config of the respective instance must be configured correctly.

The following example shows how to configure `DeepL <https://www.deepl.com/>`_
as the default Translation Service.

.. literalinclude:: ivy-translation-service.yaml
  :language: yaml
  :linenos:
