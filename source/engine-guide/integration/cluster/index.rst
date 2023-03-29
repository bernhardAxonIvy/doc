.. _cluster:

Cluster
=======

If you have a high load on your system or need increased resilience, consider
running the Axon Ivy Engine in a Cluster (Axon Ivy Engine Enterprise Edition). A
Cluster setup has two major advantages:

* **Performance and scalability**: 
  An Axon Ivy Engine Enterprise Edition can
  serve more clients than Axon Ivy Engine Standard Edition. If the number of
  your clients increases, you can add another Engine node to your Axon Ivy
  Engine Cluster.

* **High availability**: In an Axon Ivy Engine Enterprise Edition installation,
  a single node may crash without affecting the other nodes that are still
  serving clients. However, if you require high availability of your Axon Ivy
  Engine, you also need to ensure that all other components the engine depends
  on (Load Balancer, Reverse Proxy/Web Application Firewall, Database Server,
  File Share, Elasticsearch server) provide high availability.

Compared to a single node setup, you will be confronted with a more **complex** system,
higher **hardware costs** and higher **license fees** as you will need an
:ref:`enterprise-license`.

The diagram below shows an Axon Ivy Engine Cluster setup. A user accesses
the Axon Ivy Engine Cluster via a :ref:`load balancer <cluster-load-balancer>`
that routes the traffic to the :ref:`nodes <cluster-configuration>` of the cluster.
All cluster nodes share the same system database and Elasticsearch server.

.. graphviz:: overview.dot

**Runtime**

We strongly recommend operating an Axon Ivy Engine Cluster in a containerized
environment like Docker, Kubernetes or OpenShift. Build and run your
:ref:`container image <cluster-container>` containing all your projects and
configurations.

See our example configurations on GitHub for :link-url:`nginx
<docker-scaling-nginx>` and :link-url:`HAProxy <docker-scaling-haproxy>` on how
to set up an Axon Ivy Engine Cluster with docker-compose.
  

**Restrictions**

The following restrictions have to be considered when running Axon Ivy Engine Cluster:

1. Each node has to use the same system database.
2. Each node has to use the same external :ref:`Elasticsearch <elasticsearch-external>`
   instance.
3. Each node has to use the same service configurations.
4. :ref:`Configuration changes <cluster-configuration-changes>` are only applied
   to the local cluster node where the change is done. 
5. :ref:`Deployment <cluster-deployment>` during runtime is not supported and
   does not work.
     
You can solve most of the restrictions by using a containerized environment with
your own :ref:`container image <cluster-container>`.

.. toctree::
    :maxdepth: 1
    :hidden:

    configuration
    deployment
    license
    load-balancer
    container
