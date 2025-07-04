.. _cluster-configuration:

Configuration
=============

The configuration of each individual cluster node is the same as for the
Standard Axon Ivy Engine and largely depends on how you deploy the engine within
your environment. Functional aspects—such as access to the system database—must
be configured identically across all cluster nodes to ensure consistency.
However, performance-related settings, like connection pools for REST clients,
can be customized per node if some nodes have more CPU or memory resources
available than others.

.. _cluster-configuration-changes:

Changes
-------

If you make configuration changes on one cluster node—for example, using the
:ref:`Engine Cockpit <engine-cockpit>` - the other nodes in the cluster will be
notified and will attempt to reload the updated configuration. However, proper
reloading on the other nodes only works if all nodes share the same
configuration sources (e.g., configuration files).

Cluster Name
------------

To run multiple clusters within the same network, each cluster must be assigned
a unique name. This prevents interference between clusters. You can set the
cluster name in the :ref:`ivy.yaml <ivy-yaml>` configuration file.


Node Name
---------

The :ref:`Engine Cockpit <engine-cockpit-cluster>` includes a view that displays
all running nodes in the cluster. By default, node names are auto-generated, but
you can customize them in the :ref:`ivy.yaml <ivy-yaml>` configuration file.
