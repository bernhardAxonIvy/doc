.. _cluster-load-balancer:

Load Balancer
=============

Axon Ivy Engine Cluster works with **sticky sessions**. This
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
