.. _configuration-security-system:

Workflow Users
==============

Workflow Users are kept in a so-called security system which can be defined in
:ref:`ivy-yaml`. Each application is bound to one security system. There are two
types of security systems. You need to define at application creation time in
which security system the application must live: 

* **Internal Security System**:
  Used to manage the users directly on the |ivy-engine|. There is only one
  Internal Security System, which is called Ivy Security System. No further
  settings are available for this Security System. This is also the default
  Security System for application which has no security system defined.
* **External Security System**:
  Used to synchronize users from a name and directory service such as Active
  Directory. In addition to the users in the External Security System,
  new users can also be manually added and managed as with an Ivy Security System.
  The following external users management systems are supported:

  .. toctree::
    :maxdepth: 1

    microsoft-active-directory
    novell-edirectory
 
