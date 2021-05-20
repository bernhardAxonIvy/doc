.. _cluster-load-balancer:

Load Balancer
=============

|ivy-engine| Clusters work with **sticky sessions**. This
means that the load balancer must forward all requests from a session to the
same cluster node. Of course if a cluster node is no longer available then the
request can be sent to another cluster node. Note that this will cause the
user to receive a new session, therefore losing his current work.

As described above, the load balancer must ensure that all requests from the same
user session is forwarded to the same cluster node. This can be done by
configuring the load balancer in such a way that all requests sent from one client IP address
is always forwarded to the same cluster node (IP based stickiness). Another
possible configuration is to use the Axon Ivy Session Id to provide session
stickiness. The session id is provided by |ivy-engine| Enterprise Edition as a
HTTP session cookie with the name :code:`JSESSIONID`.

Often :ref:`Reverse Proxies <reverse-proxy>` can be configured as load balancers.

HAProxy
-------

HAProxy is a free, fast and reliable solution offering high availability, load
balancing, and proxying for TCP and HTTP-based applications. It is very easy to
setup and also offers a Docker image that only needs minimal configuration.

We provide an :dev-url:`sample on GitHub </link/docker-scaling>` how to setup an
|ivy-engine| Cluster using HAProxy as the load balancer within docker-compose.
