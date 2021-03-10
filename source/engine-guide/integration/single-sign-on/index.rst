.. _single-sign-on:

Single Sign-on
==============

Single Sign-on (SSO) means that the user only has to log on once and is then
automatically authenticated to the connected services. This means that the user
does not have to authenticate himself each time and for each individual service
with username and password.

Axon Ivy Engine supports Single Sign-on. However, the configuration depends on
the given infrastructure. But the concept looks always the same. The user is
browsing the Axon Ivy Engine over and intermediate service - a :ref:`reverse
proxy server <reverse-proxy>`. The reverse proxy server is responsible to
authenticate the user and enhance the request with an identifier of the user.
The Axon Ivy Engine will automatically log on the user when the user is known in
the :ref:`security system <configuration-security-system>` of the Axon Ivy
Engine.


|

.. graphviz:: overview.dot
   :layout: neato

|


Therefore you need to configure your reverse proxy to set the identifier of
the authenticated user as HTTP header. For :ref:`Microsoft IIS <reverse-proxy-iis>`
as reverse proxy we provide an auto configuration script.

Next you need to enable SSO in :ref:`ivy-yaml`:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-sso.yaml
  :language: yaml
  :linenos:


.. warning::
    If you enable SSO you must ensure that the Axon Ivy Engine cannot be
    accessed directly. All traffic must be routed over the reverse proxy.
    Otherwise, an attacker could simple send a valid user name as header in a
    HTTP request and immediately has access bypassing the authentication!


You can integrate Axon Ivy Engine with every :ref:`Web Application Firewall
<web-application-firewall>` of your choice. And if nothing fits your needs than
you are able to implement your :ref:`own SSO solution <sso-custom-solution>`.

.. toctree::
    :maxdepth: 1
    :hidden:

    web-application-firewall/index
    custom-solution
