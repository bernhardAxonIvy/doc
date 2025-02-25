.. _identity-provider:

Identity Provider
=================

The |ivy-engine| allows you to connect external Identity Providers (IdPs) 
to automatically create, maintain, and deactivate your workflow users.
|ivy-engine| never removes or deletes users, it just deactivates them.

|ivy-engine| currently offers interfaces for three different IdPs:

.. toctree::
    :maxdepth: 1

    keycloak/index
    microsoft-entra-id/index
    microsoft-ad/index
    novell-edirectory/index

If an IdP supports daily user synchronization (which all standard
IdPs do), you can make the following settings for all of your IdPs:

.. _ivy-identity-provider-yaml:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.security/src/ch/ivyteam/ivy/security/synch/config/user-synch-reference.yaml
  :language: yaml
  :linenos:
