.. _cluster:

Cluster
=======

If you have a lot of load on your system or need increased resilience, then you
should consider running the Axon Ivy Engine in a Cluster (Axon Ivy Engine Enterprise Edition). 
This has two has two major advantages:

* **Performance and scalability**:
  An Axon Ivy Engine Enterprise Edition can serve more clients than the
  Axon Ivy Engine Standard Edition. If your number of clients increases, you can
  add another Engine node to your Axon Ivy Engine Cluster.

* **High availability**:
  In an Axon Ivy Engine Enterprise Edition installation, a single node may crash
  without affecting the other nodes, which still serve clients. However, if you
  require high availability of your Axon Ivy Engine you also need to ensure that
  all other components the engine is depending on (Load Balancer, Database
  Server, File Share) have a high availability.

Compared to a single node setup you will be confronted with a more **complex** system,
higher **hardware costs** and higher **licence fees**. And therfore you need an
:ref:`enterprise-license`.

This is how an Axon Ivy Engine Cluster setup looks like. The user will access the
Axon Ivy Engine Cluster over a :ref:`load balancer <cluster-load-balancer>`
which will route the traffic to the :ref:`nodes <cluster-node>` of the cluster.
All cluster nodes shares the same system database.

|

.. graphviz:: overview.dot
   :layout: neato

|

.. toctree::
    :maxdepth: 1
    :hidden:

    license
    node
    load-balancer
