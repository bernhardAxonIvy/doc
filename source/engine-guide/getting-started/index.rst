.. _getting-started:

Getting Started
***************

Here you will learn how to install and configure an Axon.ivy Engine and
ultimately how to bring your process to life by deploying your Axon.ivy
projects. You will see that a minimal setup of an Axon.ivy Engine is
straightforward. Next to the Axon.ivy Engine itself you only need a browser of
your choice (e.g. Firefox) and a database management system (e.g. Postgres) for
storing the data of the Axon.ivy Engine.

|

.. graphviz:: overview.dot
   :layout: neato

|

But first you have to choose a platform. The Axon.ivy Engine runs on all modern
runtime environments:

* :ref:`Debian <getting-started-debian>` We provide a debian package for
  debian based Linux system like Ubuntu or Linux Mint. Next to great install 
  capabilities, this package offers great support for later upgrades of the
  Axon.ivy Engine.

* :ref:`Docker <getting-started-docker>` The Axon.ivy Engine is provided as a
  docker image. This allows you to run the Axon.ivy Engine in a simple
  docker-compose setup or in container orchestration platforms like Kubernetes
  or Openshift. This package provides maximum installation, configuration and
  upgrade support.

* :ref:`Windows <getting-started-windows>` Windows is set as the operating
  system in many places. Compared to the Debian and Docker, more effort is
  required for installation and subsequent upgrades.

* :ref:`Linux <getting-started-linux>` If you are on a Linux system which is not
  Debian based then you will need to choose this one. Compared to the Debian
  package you will miss the great install and upgrade capabilities, which will
  need more work by you.


.. rubric:: Productive Setup

To run an Axon.ivy Engine in production, you must order a :ref:`licence
<licence>` for the Axon.ivy Engine and install the Axon.ivy Engine on a system
that fulfils the :ref:`system requirements <engine-system-requirements>`.

You should also be aware of all :ref:`integration <integration>` possibilities.
For example:

* We always highly recommend for security reasons the use of a reverse proxy.
* Users can be managed in an externel user management system to minimise the
  administration effort.
* For high availaibilty, performance and scalabilty the Axon.ivy Engine can be
  clustered.

.. toctree::
   :maxdepth: 1
   :hidden:

   windows/index
   debian/index
   linux/index
   docker/index
   license
   system-requirements
