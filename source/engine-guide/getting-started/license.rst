.. _license:

License
=======

To run the Axon Ivy Engine in :ref:`production mode <production-mode>` you need a
license, which you can apply for via your Axon Ivy Partner, Axon Ivy Sales
Representative or directly via support@axonivy.com. A time-limited trial license
is provided for free upon request. You need to provide 

- the edition
- the number of named users 
- the number of concurrent users
- the public URLs 

for each license. Details for these inputs are detailed below.


.. _license-edition:

Edition
-------

You can choose between **Standard Edition** and **Enterprise Edition**. If you expect
high loads or need increased reliability, you should look into the Enterprise
Edition. It allows running the Axon Ivy Engine in a :ref:`cluster <cluster>`.


Named Users
-----------

Registered users within Axon Ivy Engine are called **named users**. These users
have an account in the Axon Ivy Engine and thus can log in to the Axon Ivy
Engine. User accounts are managed per security system. One user can have
multiple accounts on a single Axon Ivy Engine, at most one per security system.
Accounts in different security systems on the Axon Ivy Engine with the
same user name count as one named user.

For users on a cluster, the above is valid, too.


Concurrent Users
----------------

The number of users concurrently working on the Axon Ivy Engine is known as
**concurrent users**. The Axon Ivy Engine controls the number of concurrent
users as follows:

* Every Session with no authenticated user is counted as one concurrent user.
* Multiple Sessions with the same authenticated user are handled as follows:

   * the first 10 sessions are counted as one concurrent user.
   * every additional concurrent session of the same authenticated user is counted
     as one additional concurrent user.

* The system session is not counted as a concurrent user.
* Sessions (non-System sessions) created to call WebService Processes or Event
  Bean Processes are created at the start of the process and are destroyed after
  the execution of the process. These sessions are counted as described above while
  they exist, i.e. during process execution.

The following table illustrates this:

+--------------------+-------------------+
| Sessions per user  | Concurrent Users  |
+====================+===================+
| 0..10              | 1                 |
+--------------------+-------------------+
| 11                 | 2                 |
+--------------------+-------------------+
| 12                 | 3                 |
+--------------------+-------------------+
| 27                 | 18                |
+--------------------+-------------------+


Public URLs
-----------

Public URLs are the links that end users will use to access your Axon Ivy Engine.

.. admonition:: Example
  
  Let's assume your Axon Ivy Engine is installed on a machine with the DNS name
  ``axonivyprod``. Users access the Axon Ivy Engine in two different ways:
  
  * Intranet users use ``http://axonivyprod:8080`` to access it. 
  * Internet users use ``https://www.customer.com`` to access it through a reverse proxy.
  * Administrators access the Axon Ivy Engine with an IP Address ``http://192.168.1.19``.
  
  In this case, the license has to contain three public URLs:
  
  * ``axonivyprod``
  * ``www.customer.com``
  * ``192.168.1.19``

  Note: Access via ``localhost``, ``127.0.0.1`` and ``::1`` is always possible
  and is not included in the license.
