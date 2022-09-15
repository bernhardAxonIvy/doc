.. _getting-started:

Getting Started
***************

In this chapter, we help you to get up to speed with the |ivy-engine| with
minimal effort. For productive use, the resulting configuration has to be
updated later on; see :ref:`Non-Demo Setup <non-demo-setup>` below.

You will learn how to install and configure an Axon Ivy Engine and, ultimately,
how to bring your processes to life by deploying your Axon Ivy projects. As you
will see, a minimal setup of an Axon Ivy Engine is straightforward. Next to the
Axon Ivy Engine, you only need a browser of your choice (e.g., Firefox) and a
database management system (e.g., PostgreSQL) for storing the data of the Axon
Ivy Engine.

An Axon Ivy Engine ready for your applications these components:

.. graphviz:: overview.dot


Choose your Platform
====================

At this point, you need to choose a server platform. The Axon Ivy Engine runs on
all modern runtime environments:

Docker Image
----------------

We provide the Axon Ivy Engine as a Docker image. You can run the Axon Ivy
Engine in a simple docker-compose setup or in orchestration platforms like
Kubernetes or Openshift. This package provides optimal installation,
configuration, and upgrade support.

For details, refer to :ref:`getting-started-docker`


Debian 
-------

We provide a Debian package for Debian-based Linux systems like Ubuntu or
Linux Mint. Besides the install capabilities, this package offers excellent
support for later upgrades of the Axon Ivy Engine.

For details, refer to  :ref:`getting-started-debian` 

Linux
------

If you use a non-Debian-based Linux system, choose this option. Compared to
the Debian package, you will miss the install and upgrade capabilities.
Compared to Debian and Docker, more effort is required to install and
subsequently, upgrade the Axon Ivy Engine.

For details, refer to :ref:`getting-started-linux` 

Windows
-------

Windows is the operating system of choice in many places. Compared to Debian
and Docker, more effort is required to install and later on upgrade the
Axon Ivy Engine.

For details, refer to :ref:`getting-started-windows` 


.. _non-demo-setup:

.. rubric:: Non-Demo Setup

Out of the box, the Axon Ivy Engine runs in Demo mode without a license. 
In this mode, it uses an in-memory, non-persistent database.

To run an Axon Ivy Engine in non-Demo mode (i.e., for development, integration,
test/acceptance and production environments), you have to order a :ref:`license
<license>` for the Axon Ivy Engine and install the Axon Ivy Engine on a system
that fulfills the :ref:`system requirements <engine-system-requirements>`.

Have a look at the :ref:`integration <integration>` capabilities of the Axon Ivy Engine!
For example:

* For security reasons, we highly recommend employing a :ref:`reverse proxy <reverse-proxy>`.

* You can synchronize your users from an :ref:`external Identity Provider
  <identity-provider>` like Active Directory or Azure AD to minimize and
  centralize the administration effort.

* For high availability, performance and scalability, you can :ref:`cluster <cluster>` the Axon
  Ivy Engine and use a separate :ref:`Elasticsearch server or cluster <elasticsearch>`.

.. toctree::
   :maxdepth: 1
   :hidden:

   docker/index
   debian/index
   linux/index
   windows/index
   license
   system-requirements
