.. _license:

License
=======

To run the Axon Ivy Engine in :ref:`production mode <production-mode>` you need a
license, which you can apply for via your Axon Ivy Partner, Axon Ivy Sales
Representative or directly via support@axonivy.com. A time-limited trial license
is provided for free upon request. You need to provide the edition, the number
of named users and concurrent users as well as the public URLs for each license.


.. _license-edition:

Edition
-------

There is a choice between **Standard Edition** and **Enterprise Edition**. If
you expect high loads or need increased reliability, then you should look into
the Enterprise Edition, which allows to run the Axon Ivy Engine in a
:ref:`cluster <cluster>`.


Named Users
-----------

The registered users within Axon Ivy Engine are called **named users**. These users
have an account in the Axon Ivy Engine and therefore can log in to the
Axon Ivy Engine. Because accounts are managed per application one user can have
multiple accounts on a single engine, one per application. Accounts in different
applications on the same engine or cluster that have the same user name are
counted as one named user.


Concurrent Users
----------------

The number of users that are concurrently working on the Axon Ivy Engine are known
as **concurrent users**. The Axon Ivy Engine controls the number of concurrent users as
follows:

* Every Session with no authenticated user is counted as one concurrent user.
* Multiple Sessions with the same authenticated user, are handled as follows:

   * the first 10 sessions are counted as one concurrent
     user.
   * every additional concurrent session of the same authendicated user is counted
     as one additional concurrent user.

* The system session is not counted as concurrent user.
* Sessions (non-System sessions) created to call WebService Processes or Event
  Bean Processes are created at the start of the process and are destroyed after
  the execution of the process. These sessions are counted as described above while
  existing (during the execution of the process).

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

  An administrator accesses the Axon Ivy Engine with an IP Address
  ``http://192.168.1.19``.
  
  In this case the license has to contain three public URLs:
  
  * ``axonivyprod``
  * ``www.customer.com``
  * ``192.168.1.19``

  Note: Access via ``localhost``, ``127.0.0.1`` and ``::1`` is always possible
  and is not included in the license.
