Web Application Firewall
========================

A web application firewall (WAF) or web shield is a firewall which protects web
applications against attacks over the HTTP protocol. Combined with an Identity
and Access Management (IAM) System it also protects against unauthorized access
and supports single sign on (SSO).


Single Sign On
--------------

Most WAF or IAM systems allow to configure a way how the user name of the
identified user is transmitted to the web applications. With Axon.ivy Engine a
typical system landscape will look like this:

.. figure:: /_images/engine-integration/waf-iam-integration.png

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
:file:`[engineDir]/webapps/ivy/META-INF` directory and uncomment the following
line:

.. literalinclude:: includes/sample-valve-context.xml

The attribute :code:`userNameHeader` can be used to configure the HTTP header
that should be read.

.. warning::
    If you activate this Valve you must ensure that the Axon.ivy Engine cannot
    be accessed directly. All traffic must be routed over the WAF. Otherwise, an
    attacker could simple send a valid user name as header in a HTTP request and
    immediately has access bypassing the authentication!

Instead of sending the plain user name in a HTTP header there are multiple other
ways and technologies (SAML token, Kerberos, etc.) how the WAF can transmit the
current user identity to the web applications. You can support this cases by
registering your own Valve in the :ref:`context-xml` file. Your value reads the
current user identity from the request and puts a user principal object with the
user name to it. Axon.ivy Engine will check if a user principal is set on a
request and automatically searches the user and authenticates it. The code of
your valve can look like this:

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.webserver/src/ch/ivyteam/ivy/webserver/security/SingleSignOnValve.java
    :language: java
