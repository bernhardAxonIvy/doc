.. _reverse-proxy-secure-path:

Path
====

We recommend to provide only your ivy applications trough the reverse proxy. The
|ivy-engine| makes it easy to do that, because all URLs of an application
comes at the root together. For example: If your application is named
:code:`demo-app`. Then you only need to allow access for the url
:code:`https://ivyengine/demo-app`. 

|

.. rubric:: Restrict system access

The |ivy-engine| itself provides administration functionally under the base
url :code:`system` e.g. :code:`https://ivyengine/system`. Do not allow or
explicit restrict the access to this url in your reverse proxy configuration.

|

.. rubric:: Well appreciated redirect

A redirect from the root url :code:`/` to your application home url will be much
appreciated by your end users. E.g. when a user is accessing
:code:`https://ivyengine/` then they should be redirected to
:code:`https://ivyengine/demo-app`.

|

.. rubric:: Examples

The configuration examples for :ref:`NGINX <reverse-proxy-nginx>` and for
:ref:`Apache http <reverse-proxy-apache>` follows all these recommendations. The
provided configuration script for :ref:`Microsoft IIS <reverse-proxy-iis>`
routes all traffic to the |ivy-engine|. We recommend to only route specific
applications by manually modifing the rules in :guilabel:`URL Rewrite`.


Block URLs on the |ivy-engine|
*********************************

Alternatively, URLs can also be blocked directly on the |ivy-engine| which
utilizes and underlying Apache Tomcat for serving HTTP requests. Open the
:ref:`web-xml` file in :file:`[engineDir]/configuration/` and add the following
configuration inside the :code:`<web-app>` tag to block system access: 

.. literalinclude:: blocking-url-web.xml
  :language: xml
  :linenos:

After changing the configuration restart the |ivy-engine|.
