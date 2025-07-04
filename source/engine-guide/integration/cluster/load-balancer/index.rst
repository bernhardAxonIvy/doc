.. _cluster-load-balancer:

Load Balancer
=============

Axon Ivy Engine Clusters rely on **sticky sessions**, meaning the load balancer
must route all requests from a given session to the same cluster node. If a
cluster node becomes unavailable, requests will be redirected to another node.
In this case, the user will receive a new session and may lose any unsaved work
from the previous session. Sticky sessions can be configured as follows:

- Configure your load balancer to manage sticky sessions using its own dedicated
  cookie.
- Alternatively, set the load balancer to forward all requests from the same
  client IP address to the same cluster node (IP-based stickiness).
- Use the Axon Ivy Session ID for session stickiness. The Axon Ivy Engine
  Enterprise Edition provides this as an HTTP session cookie named
  :code:`IVYSESSIONID`.

Often, :ref:`Reverse Proxies <reverse-proxy>` can be configured to act as load
balancers.
