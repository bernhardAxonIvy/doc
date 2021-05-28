.. _getting-started:

Getting Started
***************

Here you will learn how to install and configure an |ivy-engine| and
ultimately how to bring your process to life by deploying your Axon Ivy
projects. You will see that a minimal setup of an |ivy-engine| is
straightforward. Next to the |ivy-engine| itself you only need a browser of
your choice (e.g. Firefox) and a database management system (e.g. Postgres) for
storing the data of the |ivy-engine|.

|

.. graphviz:: overview.dot
   :layout: neato

|

But first you have to choose a platform. The |ivy-engine| runs on all modern
runtime environments:

* :ref:`Debian <getting-started-debian>` We provide a debian package for
  debian based Linux system like Ubuntu or Linux Mint. Next to great install 
  capabilities, this package offers great support for later upgrades of the
  |ivy-engine|.

* :ref:`Docker <getting-started-docker>` The |ivy-engine| is provided as a
  docker image. This allows you to run the |ivy-engine| in a simple
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

To run an |ivy-engine| in production, you must order a :ref:`license
<license>` for the |ivy-engine| and install the |ivy-engine| on a system
that fulfils the :ref:`system requirements <engine-system-requirements>`.

You should also be aware of all :ref:`integration <integration>` possibilities.
For example:

* We always highly recommend for security reasons the use of a reverse proxy.
* Users can be managed in an external user management system to minimize the
  administration effort.
* For high availability, performance and scalability the |ivy-engine| can be
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
