.. Note::
  The |ivy-engine| internal web server provides connectors for the following
  protocols:

  * **HTTP** Protocol is used by web browsers to communicate with a web server. This protocol
    is not secure since the communication is not encrypted. |ivy-engine| uses
    port 8080 for HTTP by default.
  * **HTTPS** Like HTTP, but secure. It uses TLS to encrypt the communication between the
    web browser and server. |ivy-engine| uses port 8443 for HTTPS by default.
  * **AJP** This protocol is used to integrate Microsoft IIS or Apache HTTP Server as
    a :ref:`reverse proxy <reverse-proxy>` server. |ivy-engine| uses port 8009
    for AJP by default. AJP is deprecated and will be removed in future versions
    of the |ivy-engine|. Use HTTP or HTTPS to integrate a reverse proxy in a
    future proof way.

  Have a look at the :ref:`ivy.yaml <ivy-webserver-yaml>` to see what other parts of the
  webserver and its connectors can be adjusted to your needs.
