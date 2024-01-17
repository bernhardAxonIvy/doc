.. _configuration-security-system:

Workflow Users
==============

Workflow Users are managed in so-called security systems that you can define in
:ref:`ivy-yaml`. The :code:`default` security system is pre-configured on every
|ivy-engine|. For each security system you can define an Identity Provider. We
distinguish between the following Identity Providers:

* **Internal Identity Provider**:
  Used to manage its workflow users directly on the |ivy-engine|. Only the
  :code:`Ivy Security System` is an internal Identity Provider which has no
  further settings and is configured by default. No futher configurations are need
  if you want to go with this.

* **External Identity Provider**:
  Used to synchronize users from an external Identity Provider such as Active
  Directory. In addition to the users from the Identity Provider, users can also
  be added and managed manually like in the :code:`Ivy Security System`.

  We support the following Identity Providers by default:

  - :ref:`microsoft-entra-id`
  - :ref:`microsoft-ad`
  - :ref:`novell-edirectory`


Read more about the :ref:`lifecycle of an application <application-lifecycle>`
if you are interested how applications and security system works together. 
Having multiple security systems on the same engine is only a use case for
:ref:`multi-tenancy`.
