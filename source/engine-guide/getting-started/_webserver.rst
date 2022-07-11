.. Note::
  The Axon Ivy Engine internal web server provides connectors for the following
  protocols:

  * The **HTTP** Protocol is used by web browsers to communicate with a web
    server. This protocol is not secure since the communication is not
    encrypted. Axon Ivy Engine uses port 8080 for HTTP by default.

  * **HTTPS** Like HTTP, but secure. It uses TLS to encrypt the communication
    between the web browser and server. Axon Ivy Engine uses port 8443 for HTTPS
    by default.

  Have a look at the :ref:`ivy.yaml <ivy-webserver-yaml>` to see what other
  parts of the webserver and its connectors can be adjusted to your needs.
