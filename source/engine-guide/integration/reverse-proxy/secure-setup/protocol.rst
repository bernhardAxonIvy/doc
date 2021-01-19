.. _reverse-proxy-secure-https:

HTTPS
=====

It is strongly recommended to protect the connection to the server with HTTPS,
especially when transferring sensitive data (like passwords). HTTPS connections
should be configured on the reverse proxy. Only current TLS/SSL settings and
only up-to-date systems should be used. Consult the manual of your reverse proxy
server for a secure HTTPS setup.

If not explicitily required than we recommend to terminate the SSL traffic on
your reverse proxy and let the reverse proxy communicate with the Axon.ivy Engine
over plain HTTP. 

* The **setup is less complicated**, because you don't have to configure SSL
  on the Axon.ivy Engine.
* **Performance** will be increased, because the Axon.ivy Engine does not need
  to encrypt and decrypt data.

.. rubric:: Remarks

* Current browsers mark login forms with password fields over HTTP as
  insecure.
* Enable the secure flag in the :ref:`web-xml` on session cookies when using
  HTTPS.
* Enable HTTP Strict Transport Security (HSTS) (with the httpHeaderSecurity
  filter in the :ref:`web-xml` or in the configuration of the reverse proxy server).
