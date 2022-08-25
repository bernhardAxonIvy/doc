.. _multi-tenancy-engines:

Multiple Engines
----------------

The simplest and safest way is to run a separate Axon Ivy Engine installation
per tenant or per customer. Doing so brings the following advantages:

- **Security**: Per customer, a separate installation assures that tenants are
  isolated on the infrastructure level. It is impossible for a customer to see
  data from another customer due to programming errors or misconfigurations.

- **Scaling**: A separate Axon Ivy Engine per tenant is simple to maintain and scales
  very well. On the other hand, if you run an Axon Ivy Cluster installation and
  let all customers run on that cluster, you can of course add more and more
  nodes to the cluster to handle the additional load. However, the cluster
  solution is not scaling infinitely. Because adding more nodes induces more
  communication between the nodes, the network bandwidth available between the
  cluster nodes limits its growth potential. At that point, adding more nodes
  actually makes the cluster slower.

- **Canary Deployments**: Introducing new features always carries risks. Instead
  of rolling out a new feature to all customers in one fell swoop, only a
  portion of the customers are provided with the new version. If something goes
  wrong, only that portion is affected. With a separate Axon Ivy Engine per
  tenant, Canary Deployments are easy to implement.

- **Stability**: If a customer's Axon Ivy Engine crashes, only that customer is
  affected. All other customers are not affected by that crash.

These are the main reasons why multi-tenancy with isolated Axon Ivy Engine
installations is the best way to implement multi-tenancy. We recommend using
container environments such as `Docker <https://www.docker.com/>`_, `Kubernetes
<https://kubernetes.io/>`_ or `OpenShift <https://openshift.io/>`_, which have
solved the provisioning cleanly and keep administrative overhead to a minimum.

Get started with our Axon Ivy Engine Docker container :ref:`here
<getting-started-docker>`.

|

.. graphviz:: multiple-engines.dot
  :align: center

|
