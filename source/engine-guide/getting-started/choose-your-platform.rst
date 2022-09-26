.. _choose-your-platform:

Choose your Platform
====================

At this point, you need to choose a server platform. The Axon Ivy Engine runs on
all modern runtime environments. If you already know what you want, simply click
on the corresponding link below. If not, read the short descriptions below and
select thereafter.

.. toctree::
   :maxdepth: 1

   docker/index
   debian/index
   linux/index
   windows/index


Docker Image
-------------

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
