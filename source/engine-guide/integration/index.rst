.. _integration:

Integration
************

A minimal setup of a productive |ivy-engine| environment only requires the
|ivy-engine| itself and a database management system to hold the system
database. But to increase security, performance and reliability, other services
must be additionally installed and integrated.

|

.. graphviz:: overview.dot
   :layout: neato

|


* :ref:`reverse-proxy`:
  To increase security users should always access the |ivy-engine| over an
  reverse proxy like NGINX, Apache HTTP, Microsoft IIS or any other reverse
  proxy product.
* :ref:`User Management <configuration-security-system>`:
  Users can be imported from an external user management system like
  Microsoft Active Directory or Novell eDirectory.
* :ref:`Cluster <cluster>`:
  For scalability, to increase performance and provide high availability its
  possible to run the |ivy-engine| in a cluster.
* :ref:`Elasticsearch <elasticsearch>`:
  An Elasticsearch server is bundled with the |ivy-engine|.
  For high traffic systems it may make sense to install the Elasticsearch
  Server on a dedicated node.
* :ref:`systemdb`:
  The |ivy-engine| needs a database management system to store its workflow data.
  The database in which the engine stores the data is called system database.


.. toctree::
    :maxdepth: 1
    :hidden:

    reverse-proxy/index
    single-sign-on/index
    cluster/index
    elasticsearch/index
