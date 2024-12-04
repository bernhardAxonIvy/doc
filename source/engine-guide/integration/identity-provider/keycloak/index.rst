.. _keycloak:

Keycloak
========

The |ivy-engine| supports Keycloak as identity provider. In most cases, it is
sufficient to copy the template below and adjust the values. However, there are
many detailed settings that you can find in the reference. The :ref:`Engine
Cockpit <engine-cockpit-security-system-detail>` offers a detailed configuration
page to connect Keycloak.

**Template**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.keycloak/src/ch/ivyteam/ivy/security/identity/keycloak/config/ivy-identity-provider-keycloak.yaml
  :language: yaml
  :linenos:


**Reference**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.keycloak/src/ch/ivyteam/ivy/security/identity/keycloak/config/keycloak-reference.yaml
  :language: yaml
  :linenos:
