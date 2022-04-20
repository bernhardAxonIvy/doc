.. _reverse-proxy-nginx:

NGINX
=====

This is how to configure NGINX as a reverse proxy in front of the |ivy-engine|:

* All HTTP traffic is redirected to HTTPS
* Only the application `demo-portal` is available via the reverse proxy
* NGINX communicates via HTTP with the |ivy-engine|

.. literalinclude:: proxy.conf
    :language: nginx
