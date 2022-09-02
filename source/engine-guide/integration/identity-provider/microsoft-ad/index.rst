.. _microsoft-ad:

Microsoft Active Directory
==========================

The |ivy-engine| connects to the traditional Microsoft Active Directory via LDAP. In most cases,
it is sufficient to copy the template below and adjust the values.
However, there are many detailed settings that you can find in the reference. The
:ref:`Engine Cockpit <engine-cockpit-security-system-detail>`
offers a detailed configuration page to connect Microsoft Active Directory.


**Template**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.jndi/src/ch/ivyteam/ivy/security/identity/jndi/ads/ivy-identity-provider-microsoft-ad.yaml
  :language: yaml
  :linenos:


**Reference**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.jndi/src/ch/ivyteam/ivy/security/identity/jndi/ads/microsoft-ad-reference.yaml
  :language: yaml
  :linenos:
