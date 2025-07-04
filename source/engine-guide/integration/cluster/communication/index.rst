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
discover other nodes.

If UDP multicast is not feasible in your environment, you can change the
discovery mechanism by following the JGroups documentation on `Discovery
<http://jgroups.org/manual5/index.html#Discovery>`_. For example, you can use:

- `TCP/IP <http://jgroups.org/manual5/#TCPPING_Prot>`_-based discovery with TCPPING
- `DNS <http://jgroups.org/manual5/#_dns_ping>`_-based discovery, which is often suitable for cloud environments (DNS_PING)

.. literalinclude:: jgroups-dns.xml
  :language: xml
  :linenos:
  :caption: jgroups.xml example of a DNS-based discovery mechanism

Messaging
---------

After discovery, cluster nodes communicate with each other by sending
messages—by default using UDP multicast on port :code:`45588`. You can change
the transport mechanism to `TCP <http://jgroups.org/manual5/#TCP>`_ or any
other transport supported by JGroups. Keep in mind that alternatives to UDP
typically introduce higher latency.


Troubleshooting
---------------

If cluster nodes cannot discover each other or you experience messaging issues,
you can enable specific :ref:`Loggers <logging>` to gain more insight into what
is happening.

.. literalinclude:: log4j2-troubleshooting.xml
  :language: xml
  :linenos:
  :caption: log4j2.xml configuration for troubleshooting cluster communication
