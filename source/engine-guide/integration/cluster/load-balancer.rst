.. _cluster-load-balancer:

Load Balancer
=============

Axon.ivy Engine Cluster works with **sticky sessions**. This
means that the load balancer must forward all requests from a session to the
same cluster node. Of course if a cluster node is no longer available then the
request can be sent to another cluster node. Note, that this will cause that the
user gets a new session and he loses his current work.

As described above the load balancer must ensure that all requests from the same
user session is forwarded to the same cluster node. This can be done by
configuring the load balancer so that all requests sent by one client IP address
is always forwarded to the same cluster node (IP based stickiness). Another
possible configuration is to use the Axon.ivy Session Id to provide session
stickiness. The session id is provided by Axon.ivy Engine Enterprise Edition as
HTTP session cookie with the name :code:`JSESSIONID`.
