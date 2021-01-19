.. _reverse-proxy-nginx:

NGINX
=====

This is how the configuration for NGINX as reverse proxy in front of Axon.ivy Engine can look like:

* All HTTP traffic is redirected to HTTPS
* Only the application `demo-portal` is available over the reverse proxy
* NGINX communicates over HTTP with the Axon.ivy Engine

.. literalinclude:: proxy.conf
    :language: nginx
