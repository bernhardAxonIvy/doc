.. _cluster-communication:

Communication
=============

Cluster nodes need to communicate with each other primarily to send cache
invalidation messages. Without this communication, the Axon Ivy Cluster cannot
function properly. To facilitate this, the Axon Ivy Engine uses the reliable
`JGroups library <http://jgroups.org/manual5>`_. You can fully customize the
communication settings by providing your own
:file:`[ivyEngine]/configuration/jgroups.xml` file.

Discovery
---------

First, a discovery mechanism is used to locate other nodes within the cluster.
By default, the Axon Ivy Engine uses UDP multicast over port :code:`45588` to
discover other nodes. The `discovery protocol
<http://jgroups.org/manual5/index.html#Discovery>`_ can be changed if UDP
multicast is not suitable for your environment. For example:

- `TCP/IP <http://jgroups.org/manual5/#TCPPING_Prot>`_-based discovery with
  TCPPING
- `DNS <http://jgroups.org/manual5/#_dns_ping>`_-based discovery, which is often
  suitable for cloud environments (DNS_PING)

Messaging
---------

After discovery, cluster nodes communicate with each other by sending
messages—by default using UDP multicast on port :code:`45588`. This is typically
the most efficient way to send messages in a local network. However, if your
environment does not support UDP multicast, you can change the `protocol
<http://jgroups.org/manual5/#_transport_protocols>`_.

TCP/IP
------

If UDP multicast is not suitable for your environment, you can switch to TCP/IP.
This is often necessary in cloud environments where multicast is not supported.
To configure TCP/IP, you can modify the :file:`jgroups.xml` file to use the `TCP
transport <http://jgroups.org/manual5/#TCP>`_ instead of multicast. Here is an
example configuration using DNS-based discovery with TCP/IP as protocol:

.. literalinclude:: jgroups-tcp-ip.xml
  :language: xml
  :linenos:
  :caption: jgroups.xml example of a TCP/IP based communication and DNS-based discovery mechanism

Troubleshooting
---------------

If cluster nodes cannot discover each other or you experience messaging issues,
you can enable specific :ref:`Loggers <logging>` to gain more insight into what
is happening.

.. literalinclude:: log4j2-troubleshooting.xml
  :language: xml
  :linenos:
  :caption: log4j2.xml configuration for troubleshooting cluster communication
