.. _axonivy-cluster:

Axon.ivy Cluster
================

Axon.ivy Engine Enterprise Edition (Cluster) works with sticky sessions. This
means that the load balancer must forward all requests from a session to the
same cluster node. Of course if a cluster node is no longer available then the
request can be sent to another cluster node. Note, that this will cause that the
user gets a new session and he loses his current work.


Load Balancing with Tomcat connector (IIS, Apache)
--------------------------------------------------

The Tomcat connector can be configured to act as a load balancer for multiple
Axon.ivy Engine Enterprise Edition nodes. The load balancer and the cluster
nodes can be configured in the :file:`workers.properties` file that is located
in the :ref:`integration directory <integration-directory>`. An example load
balancer configuration can be found in the file
:file:`cluster_loadbancer_workers.properties`. In this file one worker is
configured called AxonIvyEngine that is a load balance worker (type=lb). The
property **balance_workers** of the AxonIvyEngine worker defines the workers
between which the load balance worker will balance the load. Here one worker per
each Axon.ivy Engine Node should be configured. In the example file three
workers are configured **AxonIvyEngineNode1**, **AxonIvyEngineNode2** and
**AxonIvyEngineNode3**.

The node workers are similar to a normal standalone worker. You can use the
attributes **hostname** and **port** as explained above. Additionally they have
two extra attributes called **lbfactor** and **route**. With the **lbfactor**
attribute you can influence how the load balancer distributes the load to the
workers. The higher the **lbfactor** of a worker relative to the other workers
is the more load the worker gets.

The **route** attribute is necessary for realizing sticky sessions. An Axon.ivy
Engine Enterprise Edition will only work correctly, if the load balancer sends
all request of the same http session to the same node (sticky sessions). To
support this requirement, each Axon.ivy Engine Enterprise Edition node will add
a special identifier called jvm route to the http session identifier. The jvm
route identifier is calculated from the *host name* and the *local cluster node
identifier*. The **route** attribute configured on a node worker must be equal
with the jvm route of the node:

.. code-block:: properties
    
    worker.AxonIvyEngineNode1.route=<JVM route identifier of Node 1>
    worker.AxonIvyEngineNode2.route=<JVM route identifier of Node 2>

The JVM route identifier of a cluster node can be found on the cluster node
detail page for an Axon.ivy Cluster Node. This information can be retrieved as
follows:

#. Using a web browser, navigate to the main page of an Axon.ivy Engine
   installation.
#. Select the Cluster link in the page header.
#. In the appearing list of cluster nodes press the name of a cluster node to
   see it's details.

.. figure:: /_images/ivy-cluster/ivy-cluster-node-detail.png

More technical details about load balancing and sticky sessions can be found on
the `Apache Tomcat web site <http://tomcat.apache.org/>`_.


Example
^^^^^^^

Let's assume that we have an Axon.ivy Engine Enterprise Edition with two Cluster
Nodes. Node 1 is installed on host **ivynode1** and the AJP port is configured
to 8009. Node 2 is installed on host **ivynode2** and the AJP port is configured
to 8010. **ivynode1** is a new machine with a lot of power. **ivynode2** is an
old machine and we want that **ivynode1** is working twice as hard as
**ivynode2**. The jvm route of the nodes are **ivynode1.soreco.ch** and
**ivynode2.soreco.ch**.

The :file:`workers.properties` file must then look like this:

.. literalinclude:: includes/sample-ivy-cluster-worker.properties
    :language: properties



Load Balancing with other Load Balancer Products
------------------------------------------------

As described above the load balancer must ensure that all requests from the same
user session is forwarded to the same cluster node. This can be done by
configuring the load balancer so that all requests sent by one client IP address
is always forwarded to the same cluster node (IP based stickiness). Another
possible configuration is to use the Axon.ivy Session Id to provide session
stickiness. The session id is provided by Axon.ivy Engine Enterprise Edition as
HTTP session cookie with the name :code:`JSESSIONID`.
