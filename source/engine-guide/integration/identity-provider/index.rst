.. _identity-provider:

Identity Provider
=================

The |ivy-engine| allows you to connect external Identity Providers (IDPs) 
to automatically create, maintain, and deactivate your workflow users.
|ivy-engine| never removes or deletes users, it just deactivates them.

|ivy-engine| currently offers interfaces for three different IDPs:

.. toctree::
    :maxdepth: 1

    keycloak/index
    microsoft-entra-id/index
    microsoft-ad/index
    novell-edirectory/index

If an IDP supports daily user synchronization (which all standard
IDPs do), you can make the following settings for all of your IDPs:

.. _ivy-identity-provider-yaml:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.security/src/ch/ivyteam/ivy/security/synch/config/user-synch-reference.yaml
  :language: yaml
  :linenos:
