.. _cluster:

Cluster
=======

If you have a lot of load on your system or need increased resilience, then you
should consider running the |ivy-engine| in a Cluster (|ivy-engine| Enterprise Edition). 
A Cluster setup has two major advantages:

* **Performance and scalability**:
  An |ivy-engine| Enterprise Edition can serve more clients than the
  |ivy-engine| Standard Edition. If the number of your clients increases, you can
  add another Engine node to your |ivy-engine| Cluster.

* **High availability**:
  In an |ivy-engine| Enterprise Edition installation, a single node may crash
  without affecting the other nodes that are still serving clients. However, if you
  require high availability of your |ivy-engine| you also need to ensure that
  all other components the engine depends on (Load Balancer, Database
  Server, File Share) have a high availability.

Compared to a single node setup you will be confronted with a more **complex** system,
higher **hardware costs** and higher **licence fees** as you will need an
:ref:`enterprise-license`.

The diagram below shows how an |ivy-engine| Cluster setup looks like. A user accesses
the |ivy-engine| Cluster over a :ref:`load balancer <cluster-load-balancer>`
that routes the traffic to the :ref:`nodes <cluster-node>` of the cluster.
All cluster nodes share the same system database and Elasticsearch server.

|

.. graphviz:: overview.dot
   :layout: neato

|

**Runtime**

We recommend operating an |ivy-engine| Cluster in a containerized 
environment like Docker or Kubernetes. See our
:dev-url:`example configuration on GitHub </link/docker-scaling>`
on how to setup an |ivy-engine| Cluster with docker-compose.

|

**Restrictions**

1. Each node must use the same system database.
2. Each node must use the same external :ref:`Elasticsearch <elasticsearch>` server.
3. Each node must use the same service configurations.
4. Configurations cannot be changed during runtime unless the configuration 
   directory is shared among all nodes.
5. Deployment does not work during runtime unless the application directory 
   is shared among all nodes. If sharing is not possible use auto deployment
   during startup instead.
   
Most of the restrictions can be solved by using a containerized environment.

|

.. toctree::
    :maxdepth: 1
    :hidden:

    license
    node
    load-balancer
