.. _multi-tenancy-engines:

Multiple Engines
----------------

The absolutely simplest and safest way is to run a separate Axon Ivy Engine
installation per tenant or per customer. This brings the following advantages:

- **Security**: Per customer a completely own installation leads to the fact that
  each installation is already isolated on the level of the infrastructure. It
  is impossible for a customer to see data from another customer due to a
  programming error.

- **Scaling**: If you run an Axon Ivy Cluster installation and let all customers run
  on the cluster, you can of course add more and more nodes to the cluster to
  handle more load. However, the cluster solution is limited - at some point the
  cluster solution reaches its limit. This is due to the fact that adding a
  cluster with cluster communication overhead. At that point, more nodes would
  actually make the cluster slower.

- **Canary Deployments**: Introducing new features always carries risks. Instead of
  rolling out a new feature to all customers in one fell swoop, this way, only a
  portion of the customers can be provided the new version. If something goes
  wrong, only that portion is affected.

- **Stability**: If a customer's Axon Ivy Engine crashes, only that customer is
  affected. All other customers are not affected by such a crash.

These are the main reasons why multi-tenancy with isolated own Axon Ivy Engine
installation is the best way to do it. We recommend to use container
environments such as `Docker <https://www.docker.com/>`_, `Kubernetes
<https://kubernetes.io/>`_ or `OpenShift <https://openshift.io/>`_, which have
solved the provisioning cleanly and can remove a lot of administration overhead. 
Getting started with our Axon Ivy Engine Docker container :ref:`here <getting-started-docker>`.

|

.. graphviz:: multiple-engines.dot
  :layout: neato
  :align: center

|
