.. _migrate-131-132:

Migrating from 13.1 to 13.2
===========================

Upgrade to 13.2 is only supported from an Axon Ivy Engine 10.0 and higher.
If you have an Axon Ivy Engine older than version 10.0 you need to first 
migrate to a version between 10.0 and 12.0.

Persistence API (Hibernate)
***************************

|tag-project-changed| 

We migrated the Persistence API from Java Persistence API (JPA) version 2.2 to 
`Jakarta Persistence API <https://jakarta.ee/specifications/persistence/3.2/>`_ version 3.2. 
The implementation of the API was migrated from `Hibernate <https://hibernate.org/orm/documentation/7.0/>`_ 5.6 to 7.0. 

The package of the new version has changed from :code:`javax.persistence` to :code:`jakarta.persistence`.
The code of Ivy projects needs to adapt to this change. 
Use :guilabel:`find and replace in files` in the Designer to migrate your project.

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


Schema header in ivy.yaml and app.yaml
**************************************

|tag-ops-changed|

If your :ref:`ivy-yaml` and :ref:`app-yaml` has no schema header specified, the
Axon Ivy Engine will now automatically assume that these files are in the latest
version and will no longer auto migrate them. We suggest that you always version
your file with a schema header.


------------

.. include:: _tagLegend.rst
