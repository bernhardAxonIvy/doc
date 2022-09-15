Start the Engine (Debian)
-------------------------

After the installation has completed, the engine is automatically started as a systemd
service. You can check its status with 

:code:`systemctl status axonivy-engine-|major-version|`

The output of the service status contains the URL of the Axon Ivy Engine main
page.

.. figure:: /_images/engine-getting-started/systemctl-status-axonivy-engine.png

Copy this URL. On your client machine, open a web browser and navigate to that
URL. This will display the Axon Ivy Engine main page.
