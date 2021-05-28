.. _license:

License
=======

To run the Axon Ivy Engine in :ref:`production mode <production-mode>` you need
a license, which you can apply for via your Axon Ivy Partner, Axon Ivy Sales or
directly via support@axonivy.com. A time-limited license is provided whereby the
edition, the number of named users, the number of concurrent sessions and the
public URLs are licensed.


.. _license-edition:

Edition
-------

There is a choice between **Standard Edition** and **Enterprise Edition**. If
you expect high load or need increased reliability, then you should look into
the Enterprise Edition, which allows to run the Axon Ivy Engine in a
:ref:`cluster <cluster>`.


Named Users
-----------

The number of registered users within Axon Ivy are called **named users**. This
means all users that have an account in Axon Ivy and therefore can login to
Axon Ivy. Because accounts are managed per application one user can have
multiple accounts. One per application. However, accounts in different
applications that have the same user name are counted as one named user.


Concurrent Sessions
-------------------

The number of users that are currently working with Axon Ivy are known as
**concurrent sessions**. Axon Ivy controls the number of sessions as follows:

- Sessions where no user is authenticated are counted as one concurrent users.
- Sessions where the same user is authenticated are counted as on concurrent
  user. Unless the user is authenticated in more than 10 sessions in this case
  every session more than 10 is counted as one additional concurrent user.
- The system session is not counted as concurrent user.
- Sessions (no system session) created to call WebService Processes or Event
  Bean Processes are created at the start of the process and are destroyed after
  the execution of the process. This sessions are counted as described above while
  existing (during the execution of the process).

The following table shows the number of sessions of an authenticated user and
the number of concurrent sessions that are counted.

+-----------------------+--------------------------+
| Session per user      | Concurrent Sessions      |
+=======================+==========================+
| 0..10                 | 1                        |
+-----------------------+--------------------------+
| 11                    | 2                        |
+-----------------------+--------------------------+
| 12                    | 3                        |
+-----------------------+--------------------------+
| 27                    | 18                       |
+-----------------------+--------------------------+


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
  
  In this case the license must contain three public URLs:
  
  * ``axonivyprod``
  * ``www.customer.com``
  * ``192.168.1.19``

  Remark: Access via ``localhost``, ``127.0.0.1`` and ``::1`` is always possible
  and needs not to be provided in the license.
