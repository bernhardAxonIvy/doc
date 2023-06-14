.. _reverse-proxy-iis:

Microsoft IIS
=============

To use Microsoft IIS as reverse proxy in front of |ivy-engine| download and
execute the powershell script :download:`iis-proxy-setup.ps1`. Right click
on the file and click :guilabel:`Run with PowerShell`. You need to run this
script as :guilabel:`Administrator`.

The first time, when you execute this script, you may be asked for a
:guilabel:`Execution Policy Change` so that this script can be executed. You
need to answer this question with :guilabel:`[A] Yes to All`.

This script will guide you to set up IIS as reverse proxy for the |ivy-engine|.
It is divided into several parts:

* **IIS Setup** will install all required features including IIS itself, URL
  Rewrite and Application Request Routing (ARR) modules. Furthermore, it will
  enable the reverse proxy capabilities and set :guilabel:`preserveHostHeader`
  to :code:`true`. The most important configuration entries in IIS are the
  :guilabel:`Authentication` and :guilabel:`URL Rewrite` modules.

  .. figure:: /_images/iis/iis-overview.png

* **Rewrite Rule** configures the rule for URL rewriting. It will add a new rule
  :code:`ivy-route-all` to the :guilabel:`Default Website`. This will route all
  traffic to the |ivy-engine| which runs on the same host at
  :code:`http://localhost:8080`. You may adjust this rule according to your
  needs when your |ivy-engine| runs on a different host, and/or on a different
  port. We recommend to :ref:`limit the access <reverse-proxy-secure-path>` to
  specific applications by only routing the application which is used by your
  users. You can do that by changing the pattern of the rule to
  :code:`YOUR-APP.*` e.g. :code:`demo-portal.*`.

  .. figure:: /_images/iis/iis-url-rewrite.png

  There are features of Axon Ivy which requires WebSocket. Therefore we automatically
  install the WebSocket feature. IIS-ARR is not able to negotiate WebSocket compression,
  therefore we need to always set the HTTP Header :code:`SEC_WEBSOCKET_EXTENSIONS` to empty.
  By adding :code:`HTTP_SEC_WEBSOCKET_EXTENSIONS` to :guilabel:`IIS Server Variable` and
  setting :code:`HTTP_SEC_WEBSOCKET_EXTENSIONS` on the :code:`ivy-route-all` rewrite rule to empty.


* **Terminate SSL on IIS** is that IIS serves the |ivy-engine| over HTTPS
  but the connection between IIS and |ivy-engine| is HTTP. We highly recommend
  to :ref:`setup your IIS this way <reverse-proxy-terminate-ssl>`. This will
  create a new :guilabel:`IIS Server Variable` called :code:`HTTP_X-Forwarded-Proto` and
  will be set to :code:`https` on the :code:`ivy-route-all` rewrite rule.
  This will send the HTTP Header :code:`X-Forwarded-Proto` from IIS to the |ivy-engine|
  which is needed, that the |ivy-engine| can generate correct URLs.

  .. figure:: /_images/iis/iis-terminate-ssl-server-variable.png

  .. figure:: /_images/iis/iis-terminate-ssl-port.png

* **Setup SSO** will configure :ref:`Single Sign-on <single-sign-on>`. This will
  enable Windows Authentication and will add a HTTP request header
  :code:`X-Forwarded-User` with the current user to the request which will be
  forwarded to the |ivy-engine|. You will also need to :ref:`activate Single
  Sign-on <single-sign-on>` on the |ivy-engine|. Furthermore this will also
  enable Basic Authentication which is required for REST clients like the
  Axon Ivy Mobile App to call the protected REST Services provided by the
  |ivy-engine|. If you don't need this you can manually disable it.

  **Attention:** If you enable SSO, you need to ensure :ref:`exclusive access <single-sign-on>`
  to the |ivy-engine| only over the IIS.

  .. figure:: /_images/iis/iis-authentication.png

* **Serve with HTTPS** is not covered by this script. This needs to be done manually.
  First of all you need to install a SSL certificate. This can be done on server level
  in section :guilabel:`Server Certificate`. Import your SSL certificate there or you
  can generate a self-signed certificate to try out HTTPS.

  .. figure:: /_images/iis/iis-https-certificate.png

  After this step go to :guilabel:`Default Website`, open :guilabel:`Handler Mappings`
  and add :code:`https` as a new binding. There you can choose now your SSL certificate.
  I highly recommend to remove the :code:`http` binding. So that your |ivy-engine|
  only can be served over HTTPS via IIS.

  .. figure:: /_images/iis/iis-https-binding.png
