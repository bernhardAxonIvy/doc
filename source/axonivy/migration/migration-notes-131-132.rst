.. _migrate-131-132:

Migrating from 13.1 to 13.2
===========================

Upgrade to 13.2 is only supported from an Axon Ivy Engine 10.0 and higher.
If you have an Axon Ivy Engine older than version 10.0 you need to first 
migrate to a version between 10.0 and 12.0.


HttpHeaderSecurityFilter and RemoteIpFilter in web.xml
******************************************************

|tag-ops-deprecated|

We now allow to define the :ref:`reverse-proxy` HTTP Headers and security
response :ref:`security-http-headers` via the :ref:`ivy-yaml`. Even if it is
still possible to define this things via the :ref:`web-xml` you should no longer
do that, otherwise the header maybe appear twice. So you should remove the following 
configurations and make the adjustments in the :ref:`ivy-yaml`:

- :code:`org.apache.catalina.filters.HttpHeaderSecurityFilter` → :code:`WebServer.HttpHeaders`
- :code:`org.apache.catalina.filters.RemoteIpFilter` → :code:`ReverseProxy.HttpHeaders`



------------

.. include:: _tagLegend.rst
