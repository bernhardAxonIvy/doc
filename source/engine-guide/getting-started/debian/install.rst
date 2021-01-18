Install the Engine
------------------

There is a convenient DEB package available to install the Axon.ivy Engine. You
can download and install it with the following bash script:

.. code:: bash

    cd /tmp
    wget https://developer.axonivy.com/permalink/8.0/axonivy-engine.deb -O axonivy-engine.deb
    sudo dpkg -i axonivy-engine.deb
    rm -f /tmp/axonivy-engine.deb

.. Note::
  The most important folders of the Axon.ivy Engine are:

  * :file:`/usr/lib/axonivy-engine-8/` is the root installation folder with
    symlinks to all locations which are relevant to the engine.
  * :file:`/etc/axonivy-engine-8/` folder which contains the configuration
    files.
  * :file:`/var/lib/axonivy-engine-8/deploy` folder which is used to deploy
    Axon.ivy projects.
