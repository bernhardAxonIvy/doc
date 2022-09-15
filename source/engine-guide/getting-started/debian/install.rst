.. _install-debian:

Install the Engine (Debian)
---------------------------

Prepare the Installation (Debian)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Make sure that your server fulfills the hardware and software requirements of the |ivy-engine|.


Install the DEB package
~~~~~~~~~~~~~~~~~~~~~~~

There is a convenient DEB package available to install the Axon Ivy Engine. Use
the following bash script to download and install it:

.. code:: bash

    cd /tmp
    wget https://developer.axonivy.com/permalink/|version|/axonivy-engine.deb -O axonivy-engine.deb
    sudo apt install ./axonivy-engine.deb
    rm -f /tmp/axonivy-engine.deb

.. Note::
  The most important folders of the Axon Ivy Engine are:

  * :file:`/usr/lib/axonivy-engine-|major-version|/` is the root installation
    folder with symlinks to all locations which are relevant to the engine.

  * :file:`/etc/axonivy-engine-|major-version|/` contains the configuration
    files.
    
  * :file:`/var/lib/axonivy-engine-|major-version|/deploy` used to deploy Axon
    Ivy projects.
