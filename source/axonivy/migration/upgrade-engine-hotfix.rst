.. _migration-upgrade-engine-hotfix:


Hotfix Upgrade
---------------

It's important to keep your productive |ivy-engine| stable and up to date. 
Otherwise you risk to be vulnerable to known **security leaks** and users
may face inconveniences due to known and addressed **bug fixes**. In addition,
**performance issues** may be solved and make using the |ivy-engine|
more fun on a daily basis.

This chapter focuses on hotfix migration in the same release train (e.g. from ``8.0.6`` to ``8.0.13``). 
If you want to jump from a major version to another (e.g. form ``8.0`` to ``10.0``) please 
consult the :ref:`migration-upgrade-engine-major` chapter.

The way to migrate to the latest hotfix highly dependes on the hosting 
environment, so please jump right to the execution environment you are
using:

Migration comparison:

+----------+---------+------------+------------------+---------+
|          | Windows | Any Linux  | Debian / Ubuntu  | Docker  |
+----------+---------+------------+------------------+---------+
| Effort   | Medium  | Medium     | Minimal          | Minimal |
+----------+---------+------------+------------------+---------+


.. _migration-upgrade-engine-hotfix-deb:

Debian
==========

The Debian package of the |ivy-engine| is built to allow hotfix installations with minimal effort.
Just download and install the latest available package over your existing installation. 
This can be done manually or even automated with the snippet below:

.. code:: bash

    release=8.0
    wget https://dev.axonivy.com/permalink/${release}/axonivy-engine.deb
    sudo apt install ./axonivy-engine.deb


.. _migration-upgrade-engine-hotfix-docker:

Docker
==========

It's good practice to keep your docker-engine save and sound, by frequently switching
to the latest available docker-images. We recommend to rely upon specific tags (e.g. ``8.0.6``)
so that you know that absolutely no magic can happen when you role out into production. 

To update your engine to the latest version you are just required to switch your image 
version declaration to the latest hotfix in your release train 
(e.g. from  ``axonivy/axonivy-engine:8.0.6`` to ``axonivy/axonivy-engine:8.0.13``).
Then you can pull the new images, run integration tests and roll the update out into production.

The command to pull the latest images may differ to the approach you are using to run docker. 
Here's a Docker-Compose example that pulls the new |ivy-engine| hotfix version:

.. code:: bash

    docker-compose pull
    docker-compose up


.. _migration-upgrade-engine-hotfix-win:

Windows
==========

This section describes the hotfix procedure for engines running on Windows without Docker.

Prepartion:

#. Download the latest |ivy-engine| hotfix version that matches your release train :dev-url:`/download`
#. :ref:`Stop <control-center>` the running |ivy-engine| instance.
#. Rename the directory of the previously installed |ivy-engine| : e.g. from ``C:\tools\ivy\engine-8`` to ``C:\tools\ivy\engine-8_backup805``
#. Unpack the hotfix version of the |ivy-engine| into the directory where the previous instance was running : e.g. to ``C:\tools\ivy\engine-8``.

.. include:: _hotfixWizard.rst


.. _migration-upgrade-engine-hotfix-lin:

Linux (generic)
====================

This section describes the hotfix procedure for all Linux distributions that are not built upon Debian and it's apt package mecheanism.

Prepartion:

#. Download the latest |ivy-engine| hotfix version that matches your release train :dev-url:`/download`
#. Stop the running |ivy-engine| instance.
#. Rename the directory of the previously installed |ivy-engine| : e.g. from ``opt/ivy/engine-8`` to ``opt/ivy/engine-8_backup805``
#. Unpack the hotfix version of the |ivy-engine| into the directory where the previous instance was running : e.g. to ``opt/ivy/engine-8``.

.. include:: _hotfixWizard.rst


