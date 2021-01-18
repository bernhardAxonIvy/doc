Apache httpd
============

This is how the configuration for Apache httpd as reverse proxy in front of
Axon.ivy Engine can look like:

* All HTTP traffic is redirected to HTTPS
* Only the application `demo-portal` is available over the reverse proxy
* Apache httpd communicates over HTTP with the Axon.ivy Engine

.. literalinclude:: vhosts.conf
    :language: apache

