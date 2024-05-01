.. _migration-upgrade-engine-hotfix-deb:

Debian
==========

The Debian package of the |ivy-engine| is built to allow hotfix installations with minimal effort.
Just download and install the latest available package over your existing installation. 
This can be done manually or even automated with the snippet below:

.. code:: bash

    release=10.0
    wget https://dev.axonivy.com/permalink/${release}/axonivy-engine.deb
    sudo apt install ./axonivy-engine.deb

