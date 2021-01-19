.. Note::
  The Axon.ivy Engine internal web server provides connectors for the following
  protocols:

  * **HTTP** Protocol used by web browser to communicate with a web server. This protocol
    is not secure since the communication is not encrypted. Axon.ivy Engine uses
    port 8080 by default.
  * **HTTPS** Like HTTP but secure. It uses TLS to encrypt the communication between the
    web browser and server. Axon.ivy Engine uses port 8443 by default.
  * **AJP** This protocol is used to communicate with a Microsoft IIS or Apache httpd
    front-end server. AJP means Apache Jakarta Protocol. Axon.ivy Engine uses
    port 8009 by default.

  Have a look at the :ref:`ivy.yaml <ivy-webserver-yaml>` to see what other parts of the
  webserver and its connectors can be adjusted for your needs.
