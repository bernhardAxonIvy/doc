.. _reverse-proxy-secure-port:

Port
----

It is very important that the communication between the reverse proxy and the
Axon.ivy Engine is **exclusive** or restricted for administrators - especially
when :ref:`Single Sign-on <single-sign-on>` is activated. This means no one else
should be able to communicate directly with the Axon.ivy Engine over ports e.g.
8080, 8443 ror 8009 from the outside. How to configure this properly depends on
the setup.


Same host
^^^^^^^^^

If the reverse proxy and the Axon.ivy Engine runs on the same host. 

|

.. graphviz:: same-host.dot
   :layout: neato

|

Then you just need to bind the connector - protocol between the reverse proxy
and the Axon.ivy Engine - to localhost. For example when using HTTP then you
need to bind the HTTP connector to localhost (same for HTTPS). This ensures that
the Axon.ivy Engine can only be accessed via localhost.

.. code-block:: yaml

    # example to bind the HTTP connector to localhost
    Connector:
      HTTP:
        Address: localhost


Different Host
^^^^^^^^^^^^^^

If the reverse proxy and the Axon.ivy Engine runs on two different hosts.

|

.. graphviz:: different-host.dot
   :layout: neato

|

You can do this with one of the following approaches:

#. Configure your network so that only the reverse proxy
   can communicate with the Axon.ivy Engine.
#. Setup a firewall rule on the Axon.ivy Engine host,
   which blocks all requests from another IP address other than the reverse
   proxy.
