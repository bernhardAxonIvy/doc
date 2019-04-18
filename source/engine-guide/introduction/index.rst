Introduction
**************

What is |axon-ivy|
==================

|axon-ivy| is a Digital Business Platform that simplifies and automates the
interaction of humans with their digital systems. The platform is typically in
charge of the most precious business cases where companies produce value. Here
is how we do it:

**Visualize**
    Our platform allows you to **document business processes fast and
    intuitive**. A shared view on users, roles, departments and technical
    systems that are involved in a business process improves your work. HR
    recruitment profiles become clearer, bottle necks become obvious, ideas for
    effective improvements arise by anyone who is involved in the process.

**Automate**
    Documented processes are good. But what you really want is to **drive your
    highly valuable processes automatically**. Often the daily work of employees
    is interrupted by searching and filtering data from various tools and by
    feeding this data into other technical systems. Even tough value is produced
    in a well-known business case, there is a lack of a clear interface which
    guides the involved users through the process. Highly valuable data is often
    divided and stored in various dedicated technical systems. With |axon-ivy|
    you can drive your process automatically. People, data and technical systems
    can easily be orchestrated by our platform. An initial application that
    leads users through the process can be generated without the need to hire a
    software engineer. People can contribute to the process by using their
    favourite device such as a smartphone or workstation.

**Improve**
    The digitalization of your company can **evolve over time**, we favour small
    predictable improvements over big bang solutions. The |ivy-platform| allows
    you to start simple and fast with your existing environment. You may start
    with just task notifications that are sent to users that should contribute
    to a running process. And eventually the platform becomes your single
    interface for all your business interactions. You will be able to measure
    KPIs based on the highly valuable data that is produced during the execution
    of your business processes. Based on these insights, you can advance your
    business constantly and effectively. The cost of business transformations
    become reasonable and predictable.

The |ivy-platform| consists on the one hand of the **Axon.ivy Designer** which
enables the drawing, simulation and implementation of automated business
processes. The other part is the application server **Axon.ivy Engine** that
executes your business cases and provides a shared interface for process users.


Why |axon-ivy|?
===============

|axon-ivy| is exciting for everyone that partakes on your digital transformation
journey.

* **Business**:
  We enable you to start your personal digital transformation journey and make
  new business opportunities possible. You are still the captain of your ship,
  start with simple automations and transform essential parts of your business
  when you gain trust and confidence.

* **Business Analysts**:
  It has never been easier to document processes fast and intuitive. The process
  simulation allows you to verify that you have a shared view how processes
  should be executed. Setup a simple structure for the data of a processes and
  you even get a simple executable application with generated front ends that
  are meaningful. No software engineer is required to create an already powerful
  application from scratch.

* **Developers**:
  Develop your application on a rich stack of Java frameworks that withstood the
  test of time. We minimize your technology evaluation effort by giving you a
  set of libraries and an IDE that match perfectly together. This allows you to
  quickly jump into projects and deliver value. While you always have the
  ability to break out of our predefined tooling and use advanced features of
  Tomcat, JPA, JSF, JAX-RS or whatever you require.

* **Operations**:
  We deliver packages for popular platforms (Linux, Windows). No big change, we
  orchestrate your existing systems. We support many DB vendors (Oracle,
  Microsoft SQL Server, MySQL, PostgreSQL) Effective monitoring and logging
  interfaces are provided to give you a safety that the application is healthy
  and accessible.


About this guide
================

You are now reading |ivy-engine| documentation. In case you want to know more
on:

* :dev-url:`Download </download>` the **latest** |axon-ivy| version.
* Read the Readme.html in the installation directory for the **system
  requirements**.
* Start with the :ref:`getting-started` chapter to quickly run an |ivy-engine|.
* Explore **demo projects** in the |ivy-designer| and deploy them to the
  |ivy-engine|.
* Read the designer guide to know how to **model, simulate and implement**
  digital businss process.
* Go trough the :ref:`migration-notes` to **upgrade** an existing |ivy-engine|.

All above mentioned documentations are brief and tend to describe only necessary
functionality. We highly encourage reading these documentations to speed up your
development, to get to know new features or to eliminate potential problems.


Installation Environment
========================

The following diagram shows the installation environment of an |ivy-engine|:

.. figure:: images/overview.png
   :alt: |ivy-engine| Installation
   :align: center

   |ivy-engine| Installation

The |ivy-engine| needs a system database to store its configuration, users,
roles and assigned permissions and the states, cases, tasks from the deployed
applications. Next, it needs file directories where the deployed projects are
stored. The |ivy-engine| integrates a Tomcat servlet engine that is responsible
to receive HTTP or HTTPS requests from client applications and to send back
appropriate responses (similar to a web server). The client applications are Web
Applications that run in a web browser, which communicate over HTTP or HTTPS
directly with the servlet engine. In a productive environment, normally a
Microsoft Internet Information Server (IIS), Apache Web Server, NGINX reverse
proxy or a web application firewall (WAF) often combined with an identity and
access management (IAM) system is put in front of the |ivy-engine| The front-end
servers are then responsible to forward the requests to the |ivy-engine| Servlet
Container. Also, the users are imported from an external security system like a
Microsoft Active Directory or Novell eDirectory. Axon.ivy applications can
integrate with third party external systems like databases, web services or
application servers. |ivy-engine| also integrates an Elasticsearch server.
Instead using the integrated Elasticsearch server also an external Elasticsearch
server can be used.


Engine Edition
==============

We distinguish between the `Standard Edition`_ and the `Enterprise Edition`_.


Standard Edition
-----------------------------

The |ivy-engine| Standard Edition is installed on a single machine. A DBMS that
can hold the Axon.ivy system database is the only special infrastructure it
needs. The deployed projects can be stored on a local harddisk on same machine
that the |ivy-engine| Standard Edition is running on.

.. figure:: images/standalone-setup.png
   :alt: |ivy-engine| Standard Edition
   :align: center

   |ivy-engine| Standard Edition


Enterprise Edition
-------------------------------

The |ivy-engine| Enterprise Edition is a cluster of multiple |ivy-engine|
instances. It is built on a load balancer that receives requests from the
clients and forwards them to multiple |ivy-engine| nodes typically running on
different machines. The different nodes of an |ivy-engine| Enterprise Edition
all share the same system database which is normally stored on a dedicated
database. The deployed projects are stored on a file system that can be accessed
by all nodes.

.. figure:: images/cluster-setup.png
   :alt: |ivy-engine| Enterprise Edition
   :align: center

   |ivy-engine| Enterprise Edition

|ivy-engine| Nodes are typically installed on multiple server machines, but it
is also possible to install more than one |ivy-engine| Node on a single server
machine. The load balancer can be realized either by a hardware load balancer or
by an IIS or Apache web server that distributes the incoming requests to the
installed |ivy-engine| Nodes.


What engine edition do I need?
------------------------------

The Enterprise Edition has two major advantages compared to the Standard Edition:

* **Performance and scalability**:
  An |ivy-engine| Enterprise Edition can serve more clients than the
  |ivy-engine| Standard Edition. If your number of clients increases, you can
  add another Engine node to your |ivy-engine| cluster. If you have a lot of
  sessions it may even be better to have two |ivy-engine| nodes on the same
  server machine instead of having a single Standard Edition. Because each
  session needs memory on the engine and Axon.ivy can handle two processes with
  medium memory footprints (i.e. Engine nodes) faster than one process with a
  large memory footprint (i.e. Standard Edition).

* **High availability**:
  In an |ivy-engine| Enterprise Edition installation, a single node may crash
  without affecting the other nodes, which still serve clients. However, if you
  require high availability of your |ivy-engine| you also need to ensure that
  all other components the engine is depending on (Load Balancer, Database
  Server, File Share) have a high availability.

There are some disadvantages of the Enterprise Edition compared to the Standard
Edition like more **complexity** of the system, higher **hardware costs** and
higher **licence fees**.
