.. _identity-provider:

Identity Provider
=================

The |ivy-engine| allows you to connect external Identity Providers (IDPs) 
to automatically create, maintain, and deactivate your workflow users.
|ivy-engine| never removes or deletes users, it just deactivates them.

|ivy-engine| currently offers interfaces for three different IDPs:

.. toctree::
    :maxdepth: 1

    azure-ad/index
    microsoft-ad/index
    novell-edirectory/index

If an IDP supports daily user synchronization (which all standard
IDPs do), you can make the following settings for all of your IDPs:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.security/src/ch/ivyteam/ivy/security/identity/core/identity-provider-reference.yaml
  :language: yaml
  :linenos:
