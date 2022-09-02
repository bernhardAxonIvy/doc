.. _azure-ad:

Azure Active Directory
======================

To integrate the |ivy-engine| with Azure Active Directory as an Identity
Provider, you first need to :ref:`create an application in Azure Active
Directory <azure-ad-app>`. From which you need at least the following settings:

- the :code:`TenantId` (Directory (tenant) ID)
- the :code:`ClientId` (Application ID) and
- the :code:`ClientSecret` (Secret Value).

It is sufficient to copy the following template and adjust the values. The
:ref:`Engine Cockpit <engine-cockpit-security-system-detail>` offers a detailed
configuration page to connect to Azure Active Directory.

**Template**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.azure/src/ch/ivyteam/ivy/security/identity/azure/config/ivy-identity-provider-azure-ad.yaml
  :language: yaml
  :linenos:

**Reference**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.azure/src/ch/ivyteam/ivy/security/identity/azure/config/azure-reference.yaml
  :language: yaml
  :linenos:

.. toctree::
    :maxdepth: 1
    :hidden:

    new-azure-app
