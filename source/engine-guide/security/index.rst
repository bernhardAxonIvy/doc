.. _security:

Security
********

This chapter describes how to run an Axon.ivy Engine in a secure way. This is
important when providing an ivy engine in a secure intranet environment and
especially when making an engine accessible over the internet. Some parts might
be done by the IT Operation provider:

1. Run the Axon.ivy Engine behind a fully patched **front-end server** (like
   IIS, nginx) with restricted accessibility (paths, ports, users, etc.).
2. Only allow access to the URLs of your application / **block access** to
   system URLs.
3. **Disable direct access** to the Axon.ivy Engine.
4. Run the Axon.ivy Engine with a **dedicated system user** and **database users
   with limited access rights**.
5. Run the **latest Axon.ivy Engine** major version with all updates marked as
   security relevant.
6. Only serve users over **HTTPS** (configured on the front-end server
   (IIS/nginx).
7. **Document** and **automate** the server setup.
8. Ensure that the provider performs **daily backups** (database, relevant
   engine folders).

.. figure:: /_images/engine-installation/secure-engine-setup.png
   :alt: Deployment sample with combined front-end server and ivy engine
   :align: center

   Deployment sample with combined front-end server and ivy engine


Front-end Server
================

A front-end server is a server over which a user accesses the Axon.ivy Engine.
There are roughly three types of front-end servers:

* Web servers (e.g. Microsoft IIS, nginx, Apache HTTP Server)
* Web Application Firewalls (WAF)
* Custom cloud provider reverse proxies (often nginx based)


Port Configuration
------------------

**Aim**
    Only allow communication with the Axon.ivy Engine through the front-end
    server. Don’t allow direct access to the Axon.ivy Engine ports (e.g. 8080,
    8443, 8009) from the outside. Requests should always be perfomed through a
    front-end server (e.g. IIS). It’s best to open up only the ports in the
    firewall that are really needed (most of the times (HTTP (80) and/or HTTPS
    (443). It's best to automate these port tests for continuous security.

**Test**
    Check if you can reach the ivy Engine over port 8080 (the port defined in
    the config).

**Expected outcome**
    The Engine should not be reachable.

.. Tip::
    When using Ubuntu Linux as a server make sure to enable and configure the
    firewall (ufw) as it's not enabled by default.


Additional Security Headers
---------------------------

Following additional security headers are recommended.

+---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Header                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
+===========================+=============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================+
| Strict-Transport-Security | Set this header if the Engine should only be accessed over HTTPS (strongly recommended). For more information, see: `Strict-Transport-Security <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security>`_. Can be adjusted on the embedded Tomcat with the pre-configured `Http Header Security Filter <https://tomcat.apache.org/tomcat-9.0-doc/config/filter.html#HTTP_Header_Security_Filter>`_ in the :ref:`web-xml`                                       |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Content-Security-Policy   | Set this header if you want to reduce the risk of having an exploitable Cross-site scripting (XSS) vulnerability. With a Content-Security-Policy you can define from which locations external resources can be loaded and if scripts embedded in HTML can be executed. For more information, see: `Content Security Policy (CSP) <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP>`_. Check https://answers.axonivy.com/questions/2982 to see a CSP example with the embedded Tomcat. |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Referrer-Policy           | Set this header if you want to control how or if the referrer is disclosed to other sites. For more information, see: `Referrer-Policy <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy>`_                                                                                                                                                                                                                                                                        |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Path Configuration
------------------

**Aim**
    Only allow paths from the front-end server to the Axon.ivy Engine that are
    required by your ivy projects to work correctly.

**Test**
    Check if you can reach http(s)://<front-end-server>/ivy/error (and all other
    blocked URLs). Also check if you can access your process that should be
    available to end users. Note that the ivy servlet is not necessarily running
    under /ivy/. It is best to automate these tests for continuous security.

**Expected Outcome**
    Forbidden paths should not be reachable (HTTP Status: 4xx). The process
    should be reachable for end users.

**Example for a JSF-based Application**
    Filter following URL parts:

    +------------------+--------------------------------------------------+
    | URL Part         | Used for                                         |
    +==================+==================================================+
    | /ivy/error       | Displaying and administering Errors              |
    +------------------+--------------------------------------------------+
    | /ivy/pro/System  | System apps (Admin UI)                           |
    +------------------+--------------------------------------------------+
    | /ivy/pagearchive | Page Archive                                     |
    +------------------+--------------------------------------------------+
    | /ivy/api/        | Workflow API, REST APIs                          |
    +------------------+--------------------------------------------------+
    | /ivy/wf/         | Server Workflow UI                               |
    +------------------+--------------------------------------------------+
    | /ivy/info        | Process overview page                            |
    +------------------+--------------------------------------------------+


Block URLs in IIS
^^^^^^^^^^^^^^^^^

Unfortunately, IIS does not seem to have support for white listing URLs, so we
have to use a black list approach using request filtering, in which we block URL
segments.

.. Warning::
    When using the request filter on IIS the URL parts are generally not
    allowed. A filter */ivy/error* means that */ivy/bla/ivy/error/test* is also
    not allowed (because it is a part of the URL).

.. figure:: /_images/iis/iis-request-filter.png
   :alt: IIS Request Filter Config
   :align: center

   IIS Request Filter Config

After changing the configuration restart IIS and check that the URLs are not
accessible anymore.


Block URLs in nginx
^^^^^^^^^^^^^^^^^^^

In the nginx server configuration, URLs can be blocked like this (repeat for the
other URLs).

.. code-block:: nginx

    location /ivy/pro/System {
        deny all;
        return 403;
    }

After changing the configuration restart nginx and check that the URLs are not
accessible anymore.


Block URLs on the ivy Engine / Tomcat
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Alternatively, URLs can also be blocked directly on the ivy Engine which
utilizes and underlying Apache Tomcat for serving HTTP requests. Open the
:ref:`web-xml` file in :file:`[engineDir]/webapps/ivy/WEB-INF/` in a text
editor and add the following configuration inside the :code:`<web-app>` tag (!)
to block system processes: 

.. literalinclude:: includes/blocking-url-web.xml
  :language: xml
  :linenos:

After changing the configuration restart the ivy Engine and check that the URLs
are not accessible anymore.

.. Tip::
    If the URLs are still accessible after blocking them in the web.xml make
    sure that you didn't include the servlet path (/ivy) in the URL pattern. 


HTTPS
=====

It is strongly recommended to protect the connection to the server with HTTPS,
especially when transferring sensitive data (like passwords). HTTPS connections
should be configured on the front-end server. Only current TLS/SSL settings
(e.g. no SSLv3 or TLSv1.0) and only up-to-date systems (e.g. no OpenSSL with
Heartbleed) should be used. Consult the manual of your front-end server for a
secure HTTPS setup.

.. rubric:: Remarks

* Current browsers mark login forms with password fields over HTTP as
  insecure.
* Enable the secure flag in the :ref:`web-xml` on session cookies when using
  HTTPS.
* Enable HTTP Strict Transport Security (HSTS) (with the httpHeaderSecurity
  filter in the :ref:`web-xml` or in the configuration of the front-end server).


Axon.ivy Engine
===============

Disable not required features
-----------------------------

If certain features of the Engine are not required by the deployed projects,
those features should be disabled.


.. _security-engine-optional-features:

Optional features
^^^^^^^^^^^^^^^^^

The following features can be disabled if they are not used by the deployed
projects:

.. literalinclude:: includes/webserver-disabled-features.yaml
  :language: yaml
  :linenos:


Security Features
^^^^^^^^^^^^^^^^^

The following features impact the security and have a good default (depending on
what's better for security) and should not be changed. These feature flags are
set in the :ref:`ivy-yaml` and :ref:`ivy-webserver-yaml`.

* ``Errors.ShowDetailsToEndUsers`` should always be set to ``false``, so that no
  exception details are shown to end users.
* ``REST.Servlet.CSRF.Protection`` should always be set to ``true``, so that
  the REST APIs require a Cross-Site Request Forgery (CSRF) token by default.
* ``Session.RenewIdOnLogin`` should always be set to ``true``, so that
  the session id is renewed after Login.


Only grant ivy permissions where required
-----------------------------------------

Only grant ivy permissions where the users or roles require them. Especially
don’t grant all permissions to everybody. Favor role-based permissions over
user-based ones.


Security issues in the Axon.ivy Engine
--------------------------------------

If a security issue was found in the Axon.ivy Engine or Designer it is visible
in the release notes, annotated with an exclamation mark (!):

**!** Critical
    We strongly recommend to install this hotfix because it fixes a critical
    security issue!

**\*** Recommended
    We recommend to install this hotfix because it fixes a stability issue.

**+** Suggested/Optional
    We only recommend to install this hotfix if you are running into the
    described issue.

Update the engine if your engine version is affected by an issue and it cannot
be mitigated by a workaround.
