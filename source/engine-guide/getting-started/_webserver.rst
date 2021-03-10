.. Note::
  The Axon Ivy Engine internal web server provides connectors for the following
  protocols:

  * **HTTP** Protocol used by web browser to communicate with a web server. This protocol
    is not secure since the communication is not encrypted. Axon Ivy Engine uses
    port 8080 by default.
  * **HTTPS** Like HTTP but secure. It uses TLS to encrypt the communication between the
    web browser and server. Axon Ivy Engine uses port 8443 by default.
  * **AJP** This protocol is used to integrate Microsoft
    IIS or Apache httpd as :ref:`reverse proxy <reverse-proxy>` server. Axon Ivy
    Engine uses port 8009 by default. AJP is deprecated and will be removed in
    future versions of Axon Ivy Engine use HTTP or HTTPS to integrate a revesee
    proxy.

  Have a look at the :ref:`ivy.yaml <ivy-webserver-yaml>` to see what other parts of the
  webserver and its connectors can be adjusted for your needs.
