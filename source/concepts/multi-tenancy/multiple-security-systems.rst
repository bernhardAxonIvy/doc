.. _multi-tenancy-security-systems:

Multiple Security Systems
-------------------------

You can run multiple tenants on the same Axon Ivy Engine by creating a security
system per Tenant. This can make sense for smaller applications. Then you can
create a security system per customer and deploy the application per customer. A
security system is isolated from other security systems, this also applies to
the workflow context. A process or task lives in a workflow context, which can
be equated with the security context. It is not possible for a user to view data
from another security context.

|

.. graphviz:: multiple-security-systems.dot
  :layout: neato
  :align: center

|
