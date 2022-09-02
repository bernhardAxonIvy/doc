.. _configuration-security-system:

Workflow Users
==============

Workflow Users are managed in so-called security systems that you can define in
:ref:`ivy-yaml`.

Security Systems
================

On every |ivy-engine|, at least one security system is defined.

Each application is bound to one security system. Each security 
system is bound to one or more applications. 

You need to define at application creation time which security system 
the application will be bound to. 

There are two classes of security systems:

* **Internal Security System**:
  Used to manage its workflow users directly on the |ivy-engine|. 
  There is only one type of Internal Security System, which is called the 
  Ivy Security System. The only setting available is its name.
  
  By default, the Ivy Security System :code:`default` is running on every engine.
  You cannot change this security system in any way.

  You can add other Ivy Security Systems if so desired. 
  You can define only the name of an Ivy Security System.

* **External Security System**:
  Used to synchronize users from an Identity Provider such as Active
  Directory. In addition to the users from the Identity Provider,
  users can also be added and managed manually like in the Ivy Security System.

  We support the following Identity Providers by default:

  - :ref:`azure-ad`
  - :ref:`microsoft-ad`
  - :ref:`novell-edirectory`
