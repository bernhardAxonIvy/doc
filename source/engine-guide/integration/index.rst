.. _integration:

Integration
************

We recommend to run Axon.ivy Engine behind a web front-end server like Apache
httpd, Microsoft IIS. In those cases the web front-end server receives all
requests from the clients and forwards them to the Axon.ivy Engine which handles
them. This allows to integrate the processes and applications that you are
running on an Axon.ivy Engine into a company or web portal. Some web front-end
server provide Single Sign On (SSO) functionality. The front-end server then is
responsible to identify the user (either automatically or by login). After that
the user is able to operate on all web sites that are integrated into the web
front-end server.

.. image:: images/web-frontend-server.png


.. _integration-directory:

.. rubric:: Integration Directory

All necessary files that you need to integrate an Axon.ivy Engine into a Web
Server can be found in the following directories inside the Axon.ivy Engine
installation directory:

* Apache HTTP Server for Windows (x64): :file:`[engine-dir]/misc/apache/`
* IIS for Windows (x64): :file:`[engine-dir]/misc/iis/`

The directory that matches the platform and webserver where you plan to
integrate the Axon.ivy Engine will be called integration directory in this
chapter.

The integration binaries for Linux are not delivered with the Axon.ivy Engine as
it is best practice to use the Tomcat Connector binaries that are provided by
the Linux distribution. Have a look :ref:`apache-linux-example-config`.


.. _integration-external-base-url:

.. rubric:: External base URL

Once Axon.ivy is served to clients via a front-end webserver, you must make the
front-end webserver known as shown in the :ref:`ivy-webserver-yaml`. Axon.ivy
will use this configuration to create absolute links that are accessible to
clients (e.g. for links in :ref:`task mails <standard-process-email>`).

.. literalinclude:: includes/sample-ivy.webserver.yaml
    :language: yaml


.. rubric:: Services

The Axon.ivy Engine can be integrated with a lot of different services.

.. toctree::
    :maxdepth: 1

    apache-httpd
    microsoft-iis
    axonivy-cluster
    web-application-firewall
