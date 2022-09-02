.. _novell-edirectory:

Novell eDirectory
=================

The |ivy-engine| connects to the Novell eDirectory via LDAP. In most cases,
it is sufficient to copy the template below and adjust the values. 
However, there are many detailed settings that you can find in the reference. The
:ref:`Engine Cockpit <engine-cockpit-security-system-detail>`
offers a detailed configuration page to connect Novell eDirectory.


**Template**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.jndi/src/ch/ivyteam/ivy/security/identity/jndi/nds/novell-edirectory-template.yaml
  :language: yaml
  :linenos:

**Reference**

.. literalinclude:: ../../../../../../workspace/ch.ivyteam.ivy.security.identity.jndi/src/ch/ivyteam/ivy/security/identity/jndi/nds/novell-edirectory-reference.yaml
  :language: yaml
  :linenos:
