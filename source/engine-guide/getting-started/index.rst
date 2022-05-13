.. _getting-started:

Getting Started
***************

Here you will learn how to install and configure an |ivy-engine| and
ultimately how to bring your process to life by deploying your |axon-ivy|
projects. As you will see, a minimal setup of an |ivy-engine| is
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
  debian based Linux systems like Ubuntu or Linux Mint. Besider the install 
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

* :ref:`Linux <getting-started-linux>` If you are on a non-Debian based Linux 
  system, choose this option. Compared to the Debian package you will miss 
  the great install and upgrade capabilities. This will require more work by you.


.. rubric:: Non-Demo Setup

Out of the box, the |ivy-engine| runs in Demo mode without a license. 
In this mode, it uses an in-memory, non-persistent database.

To run an |ivy-engine| in non-Demo mode, you have to order a :ref:`license
<license>` for the |ivy-engine| and install the |ivy-engine| on a system
that fulfills the :ref:`system requirements <engine-system-requirements>`.

Please be aware of the :ref:`integration <integration>` possibilities.
For example:

* For security reasons, we highly recommend the use of a reverse proxy server.
* You can synchronize your users from an external user management system to minimize the
  administration effort.
* For high availability, performance and scalability, you can cluster the |ivy-engine|.

.. toctree::
   :maxdepth: 1
   :hidden:

   windows/index
   debian/index
   linux/index
   docker/index
   license
   system-requirements
