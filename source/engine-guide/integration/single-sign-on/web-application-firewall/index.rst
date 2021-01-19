.. _web-application-firewall:

Web Application Firewall
========================

A web application firewall (WAF) or web shield is a firewall which protects web
applications against attacks over the HTTP protocol. Combined with an Identity
and Access Management (IAM) System it also protects against unauthorized access
and supports Single Sign-on (SSO).

Most WAF or IAM systems allow to configure a way how the user name of the
identified user is transmitted to the web applications. With Axon.ivy Engine a
typical system landscape will look like this:

|

.. graphviz:: overview.dot
   :layout: neato

|

The only available access point must be the WAF. Any traffic has to be routed
over it. The WAF tries to protect the web application behind it (e.g. Axon.ivy
Engine) from attacks. The WAF uses the IAM to identify users and to protect
certain resources from unauthorized access. The IAM itself may use a directory
server like Microsoft Active Directory to know users. The WAF can be configured
to provide the name of the identified user either as HTTP header or HTTP cookie
to the web application (Axon.ivy Engine).

On the other side Axon.ivy Engine provides a Valve that reads the user name from
a HTTP header. If Axon.ivy Engine knows the user it automatically authenticates
the user to the current Axon.ivy Engine session. This works best if Axon.ivy
Engine also uses a directory server like Microsoft Active Directory to
synchronize users. The Valve that reads the user name from a HTTP header is
disabled by default. To enable it, open the file :ref:`context-xml` in the
:file:`[engineDir]/configuration` directory and uncomment the following
line:

.. code-block:: xml

    <Valve className="ch.ivyteam.ivy.webserver.security.SingleSignOnValve" userNameHeader="user"/>

The attribute :code:`userNameHeader` can be used to configure the HTTP header
that should be read.

.. warning::
    If you activate this Valve you must ensure that the Axon.ivy Engine cannot
    be accessed directly. All traffic must be routed over the WAF. Otherwise, an
    attacker could simple send a valid user name as header in a HTTP request and
    immediately has access bypassing the authentication!
