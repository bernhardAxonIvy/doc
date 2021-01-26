.. _single-sign-on:

Single Sign-on
==============

Single Sign-on (SSO) means that the user only has to log on once and is then
automatically authenticated to the connected services. This means that the user
does not have to authenticate himself each time and for each individual service
with username and password.

Axon.ivy Engine supports Single Sign-on. However, the configuration depends on
the given infrastructure. The concept looks always the same. The user is
browsing the Axon.ivy Engine over and intermediate service - a :ref:`reverse
proxy server <reverse-proxy>`. The reverse proxy server is responsible to
authenticate the user and enhance the request with an identifier of the user.
The Axon.ivy Engine will automatically log on the user.


|

.. graphviz:: overview.dot
   :layout: neato

|

We provide auto configuration scripts to configure :ref:`Single Sign-on with
Microsoft IIS <reverse-proxy-iis>` as reverse proxy. You can integrate Axon.ivy
Engine with every :ref:`Web Application Firewall <web-application-firewall>`.
And if nothing fits your needs than you are able to implement your :ref:`own SSO
solution <sso-custom-solution>`.

.. toctree::
    :maxdepth: 1
    :hidden:

    web-application-firewall/index
    custom-solution
