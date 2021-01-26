.. _reverse-proxy-iis:

Microsoft IIS
=============

To use Microsoft IIS as reverse proxy in front of Axon.ivy Engine download and
execute the powershell script :download:`iis-proxy-setup.ps1`. Right click
on the file and click :guilabel:`Run with PowerShell`.

This script will guide you to setup IIS as reverse proxy for the Axon.ivy
Engine. It is splitted in four parts:

* **IIS Setup** will install all required features as the IIS itself, URL
  Rewrite and Application Request Routing (ARR) modules. Furthermore it will
  enable the reverse proxy capabilites. The most important configuration entries
  in the IIS are the :guilabel:`Authentication` and :guilabel:`URL Rewrite`.

  .. figure:: /_images/iis/iis-overview.png

* **Rewrite Rule** configures the rule for url rewriting. This will
  add an new rule :code:`ivy-route-all` to the :guilabel:`Default Website`. This
  will route all traffic to the Axon.ivy Engine which runs on the same host at
  :code:`http://localhost:8080`. You may adjust this rule according to your
  needs when your Axon.ivy Engine runs on a different host. We also recommend to
  :ref:`limit the access <reverse-proxy-secure-path>` to specific applications
  by only route the application which is needed by your users. You can do that
  by changing the pattern of the rule to :code:`YOUR-APP.*` e.g.
  :code:`demo-portal.*`.

  .. figure:: /_images/iis/iis-url-rewrite.png

* **Setup SSO** will configure :ref:`Single Sign-on <single-sign-on>`. This will
  enable Windows Authentication and will add a HTTP request header :code:`user`
  with the current user to the request wich will be forwared to the Axon.ivy
  Engine. You will also need to :ref:`activate Single Sign-on <single-sign-on>`
  on the Axon.ivy Engine.

  .. figure:: /_images/iis/iis-authentication-windows.png

* **Basic Authentication** needs to be activated if the Axon.ivy Engine
  populates REST Services for the Axon.ivy Mobile App or when deployed
  Axon.ivy projects provides REST services.

  .. figure:: /_images/iis/iis-authentication-basic.png
