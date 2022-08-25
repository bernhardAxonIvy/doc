.. _getting-started:

Getting Started
***************

Here you will learn how to install and configure an Axon Ivy Engine and
ultimately how to bring your processes to life by deploying your Axon Ivy
projects. As you will see, a minimal setup of an Axon Ivy Engine is
straightforward. Next to the Axon Ivy Engine, you only need a browser of your
choice (e.g. Firefox) and a database management system (e.g. PostgreSQL) for
storing the data of the Axon Ivy Engine.


.. graphviz:: overview.dot


At this point, you need to choose a platform. The Axon Ivy Engine runs on all modern
runtime environments:

* :ref:`Debian <getting-started-debian>` 

  We provide a Debian package for Debian-based Linux systems like Ubuntu or
  Linux Mint. Besides the install capabilities, this package offers great
  support for later upgrades of the Axon Ivy Engine.

* :ref:`Docker <getting-started-docker>`

  The Axon Ivy Engine is provided as a
  docker image. You can run the Axon Ivy Engine in a simple docker-compose setup
  or in container orchestration platforms like Kubernetes or Openshift. This
  package provides optimal installation, configuration and upgrade support.

* :ref:`Linux <getting-started-linux>` 

  If you are on a non-Debian-based Linux
  system, choose this option. Compared to the Debian package, you will miss the
  install and upgrade capabilities. Compared to Debian and Docker, more effort
  is required to install and subsequently upgrade the Axon Ivy Engine.

* :ref:`Windows <getting-started-windows>` 

  Windows is the operating system
  of choice in many places. Compared to Debian and Docker, more effort is
  required to install and subsequently upgrade the Axon Ivy Engine.

.. rubric:: Non-Demo Setup

Out of the box, the Axon Ivy Engine runs in Demo mode without a license. 
In this mode, it uses an in-memory, non-persistent database.

To run an Axon Ivy Engine in non-Demo mode (i.e. for integration,
test/acceptance and production environments), you have to order a :ref:`license
<license>` for the Axon Ivy Engine and install the Axon Ivy Engine on a system
that fulfills the :ref:`system requirements <engine-system-requirements>`.

Please be aware of the :ref:`integration <integration>` possibilities.
For example:

* For security reasons, we highly recommend to use a reverse proxy.
* You can synchronize your users from an external user management system to minimize the
  administration effort.
* For high availability, performance and scalability, you can cluster the Axon Ivy Engine.

.. toctree::
   :maxdepth: 1
   :hidden:

   debian/index
   docker/index
   linux/index
   windows/index
   license
   system-requirements
