.. _upgrade-tomcat-connect:

Upgrade Apache Tomcat Connector
===============================

The `Apache Tomcat Connector <https://tomcat.apache.org/connectors-doc/>`__
is used to integrate an IIS or Apache web server as reverse proxy for the
|ivy-engine|. This section describes how to update an Apache Tomcat Connector
that has already been installed as described in the :ref:`integration` chapter.
The term **integration directory** is defined in the :ref:`integration` chapter.

Apache
------

.. rubric:: Windows

#. Open the **integration directory**.
#. Verify if the most recent version of the Apache Tomcat Connector is there.
   The file is called *mod_jk.so*. For Windows we deliver stable versions of
   the Apache Tomcat Connector in the :file:`[engineDir]/misc/apache/`
   directories. Alternatively check the `official website <https://tomcat.apache.org/download-connectors.cgi>`__
   or the `Apache Lounge <https://www.apachelounge.com/download/>`__ and
   download the most recent version.
#. Verify all paths in :file:`[integration directory]/mod_jk.conf`.
#. Open the :file:`httpd.conf` file of the Apache installation. Verify that the
   path to :file:`mod_jk.conf` is correct.

.. rubric:: Linux

Use the system package manager (e.g. **apt**) to update the Apache Tomcat Connector (*libapache2-mod-jk*).


IIS
---

#. Open the **integration directory**.
#. Verify if the most recent version of the ISAPI redirector is there. We
   deliver stable versions of the ISAPI redirector in the :file:`[engineDir]/misc/iis/`
   directories. Alternatively check the `official website <https://tomcat.apache.org/download-connectors.cgi>`__
   and download the most recent version.
#. Open the Server Manager (*Start > Control Panel > Administrative Tools > Server Manager*).
   Navigate to the node *Server Manager > Roles > Web Server (IIS)* and select it.
#. Select the Web Site in the Connections pane, select the virtual directory
   *ivy* and open the extended settings dialog. Verify that the physical paths
   points to the actual **integration directory**.
#. Select the Web Site in the Connections pane and open the ISAPI Filters entry
   in the Feature View. Verify the path to the :file:`isap_redirect.dll` of the
   ISAPI Filter. It must point to the actual **integration directory**.
#. Check the ISAPI and CGI Restrictions of the IIS Server. There must already be
   an *allow* entry for the :file:`isap_redirect.dll`. This path must also point
   to the actual **integration directory**.
