.. _security:

Security
********

This chapter describes how to run an |ivy-engine| in a safe way. This is
important whether you provide an Ivy engine in a secure intranet environment or
you make your engine accessible via the internet. Some parts need to be
implemented by your IT Operations provider:

#. Run the |ivy-engine| behind a fully patched :ref:`reverse proxy server <reverse-proxy>` (like
   NGINX, Apache HTTP Server or IIS).
#. :ref:`Disable direct access <reverse-proxy-secure-port>` to the |ivy-engine|.
#. Only allow access to the URLs of your application and :ref:`block all other access <reverse-proxy-secure-path>`.
#. Run the |ivy-engine| with a **dedicated system user** and **database users with limited access rights**.
#. Run the **latest |ivy-engine|** major version with all updates marked as
   :ref:`security relevant <engine-security-issues>`.
#. Only serve users via :ref:`HTTPS <reverse-proxy-secure-https>` (configured on the reverse proxy).
#. **Document** and **automate** the server setup.
#. Ensure that the provider performs **daily backups** (database, relevant
   engine folders) which can also be restored...

|

.. graphviz:: overview.dot
   :layout: neato

|


Read more about other security tweaks which you can apply to your |ivy-engine|:

.. toctree::
   :maxdepth: 1

   axonivy-engine/features
   axonivy-engine/permissions
   axonivy-engine/security-issues
   http-headers
   csrf-attack-prevention
