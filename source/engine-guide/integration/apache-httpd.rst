Apache httpd
============

An Apache HTTP Server 2.x can be configured as web frontend of an Axon.ivy
Engine. The communication between the Apache HTTP Server and the Tomcat from
Axon.ivy is possible by using the `Apache Tomcat Connector
<http://tomcat.apache.org/connectors-doc/index.html>`_.


Windows configuration
---------------------

#. If your Apache HTTP Server is not running on the same host as the Axon.ivy
   Engine then the integration directory content must be copied to the host
   where your Apache HTTP Server is running. Copy the mod_jk binaries and the
   sample configuration files from the directory that matches your OS in
   :file:`[engine-dir]/misc/apache` to the Apache host under :file:`C:/Program
   Files/ivy`. All next steps have to be done on the host where the Apache HTTP
   Server is running on.
#. Include the copied jk_module configuration in the
   :file:`[[apache-dir]]/conf/httpd.conf`. Add the following lines to do so:
   
   .. code-block:: apache

        # Axon.ivy Engine Integration
        Include C:/Program Files/ivy/mod_jk.conf

#. Replace all <path> strings in the file :file:`C:/Program
   Files/ivy/mod_jk.conf` so that the file reflects your local paths:

   .. code-block:: apache

        # Load mod_jk module
        LoadModule    jk_module  c:/program files/ivy/mod_jk-1.2.42-httpd-2.4.so
        # Where to find workers.properties
        JkWorkersFile c:/program files/ivy/workers.properties
        # Where to put jk shared memory
        JkShmFile     c:/program files/ivy/mod_jk.shm
        # Where to put jk logs
        JkLogFile     c:/program files/ivy/mod_jk.log
        # Set the jk log level [debug/error/info]
        JkLogLevel    info
        # Select the timestamp log format
        JkLogStampFormat "[%a %b %d %H:%M:%S %Y] "

        # Mount the uri "/ivy/*" to the worker AxonIvyEngine.
        JkMount  /ivy/* AxonIvyEngine

#. If you have configured virtual hosts in your apache configuration you have to
   map the URI **/ivy/\*** in all virtual host you want to integrate Axon.ivy
   Engine into. This can be done by copying the following line from the
   :file:`mod_jk.conf` file to the appropriate virtual host definitions:

   .. code-block:: apache

        JkMount /ivy/* AxonIvyEngine
   
   Copy this to the appropriate virtual host definitions, e.g.:
   
   .. literalinclude:: includes/sample-httpd-vitualhost.xml
        :language: apache

#. Define the hostname and port, where the Axon.ivy Engine is running. Adjust
   the content of the file :file:`C:/Program Files/ivy/worker.properties` to do
   so.

   .. literalinclude:: includes/sample-ivy-worker.properties
        :language: properties

#. Update the :ref:`external base URL <integration-external-base-url>` as shown
   in the :ref:`ivy-webserver-yaml`
#. Restart the Apache HTTP Server and the Axon.ivy overview page should be
   accessible under http://apacheHostName/ivy


.. _apache-linux-example-config:

Linux configuration
-------------------

Within this example an Apache HTTP Server is configured so that it can connect
to the Tomcat of an Axon.ivy Engine. The configuration step descriptions are
generic and can be used under any Linux distribution. But the concrete examples
assume that an Ubuntu distribution is installed as Operating System.


#. Install the latest Tomcat Connector (mod_JK) by console.
   
   .. code-block:: bash

        sudo apt install apache2 libapache2-mod-jk

#. Enable the new module

   .. code-block:: bash

        sudo a2enmod jk

#. Update the :file:`worker.properties` file according to the examples in the
   :file:`[engine-dir]/misc/apache/`. The following example content would
   connect to an Axon.ivy Engine on the host **ivyserver** under the default AJP
   port 8009. Modify the file :file:`/etc/libapache2-mod-jk/worker.properties`
   as follows.

   .. literalinclude:: includes/sample-ivy-worker.properties
        :language: properties

#. Mount the Axon.ivy Engine in the virtual host definition of the Apache HTTP
   Server. The context URI must match the context of the Axon.ivy Engine. Change
   the file :file:`/etc/apache2/sites-available/default` as shown in this
   snippet.

   .. literalinclude:: includes/sample-httpd-jkmount.xml
        :language: apache     

   .. tip::
        If the Apache HTTP Server is used as Load Balancer for a clustered
        Axon.ivy Engine installation, the JK Status Manager can be used to
        display debugging informations. The Manager is accessible when it is
        mounted in the virtual host definition configuration.

        .. literalinclude:: includes/sample-httpd-jkmanager.xml
            :language: apache

#. Update the :ref:`external base URL <integration-external-base-url>` as shown
   in the :ref:`ivy-webserver-yaml`
#. Restart the Apache HTTP Server and the Axon.ivy overview page should be
   accessible under http://apacheHostName/ivy


Change context URI /ivy/
------------------------

You might like to make the Axon.ivy engine accessible under a custom context URI
other than **/ivy**. 

#. Change the context name of Axon.ivy as shown in the :ref:`ivy-webserver-yaml`

   .. code-block:: yaml
    
        # sample ivy.yaml that configures a different context:
        # so Axon.ivy will be accessible trough http://localhost/workflow
        WebServer.IvyContextName: workflow

#. Change the context name of the Apache httpd server by changing the last line
   of the :file:`mod_jk.conf` configuration file: 

   .. code-block:: apache

        #JkMount  /ivy/* AxonIvyEngine 
        JkMount  /workflow/* AxonIvyEngine

#. If you have a virtual host configuration, the :code:`JkMount` command with
   the new context URI must also be applied to the virtual host definition: 

   .. literalinclude:: includes/sample-httpd-jkmount-contexturi.xml
        :language: apache
