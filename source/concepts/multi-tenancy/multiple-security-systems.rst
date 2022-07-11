.. _multi-tenancy-security-systems:

Multiple Security Systems
-------------------------

You can run multiple tenants on the same Axon Ivy Engine by creating a security
system per Tenant. This can make sense for smaller applications. Then you can
create a security system per customer and deploy the application per customer. A
security system is isolated from other security systems. This also applies to
the workflow context. A process or task lives in a workflow context, which can
be equated with the security context. A user cannot view data from another
security context.

Scaling up and down can be really hard with this approach. 

The disadvantage of this solution is that programming errors can lead to
unwanted access to data of other tenants. 

This cannot happen with the :ref:`multi-engine <multi-tenancy-engines>`
solution. 

|

.. graphviz:: multiple-security-systems.dot
  :layout: neato
  :align: center

|
