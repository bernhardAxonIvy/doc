.. _security:

Security
********

This chapter describes how to run an Axon Ivy Engine in a secure way. This is
important when providing an ivy engine in a secure intranet environment and
especially when making an engine accessible over the internet. Some parts might
be done by the IT Operation provider:

#. Run the Axon Ivy Engine behind a fully patched :ref:`reverse proxy server <reverse-proxy>` (like
   NGINX, Apache http or IIS).
#. :ref:`Disable direct access <reverse-proxy-secure-port>` to the Axon Ivy Engine.
#. Only allow access to the URLs of your application and :ref:`block all other access <reverse-proxy-secure-path>`.
#. Run the Axon Ivy Engine with a **dedicated system user** and **database users with limited access rights**.
#. Run the **latest Axon Ivy Engine** major version with all updates marked as
   :ref:`security relevant <engine-security-issues>`.
#. Only serve users over :ref:`HTTPS <reverse-proxy-secure-https>` (configured on the reverse proxy).
#. **Document** and **automate** the server setup.
#. Ensure that the provider performs **daily backups** (database, relevant
   engine folders).

|

.. graphviz:: overview.dot
   :layout: neato

|


Read more about other security tweaks which can be applied to an Axon Ivy Engine:

.. toctree::
   :maxdepth: 1

   axonivy-engine/features
   axonivy-engine/permissions
   axonivy-engine/security-issues
   http-headers
   csrf-attack-prevention
