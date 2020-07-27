.. _configuration-security-system:

Users
=====

.. _engine-administrators:

Administrators
--------------

Administrators can configure, monitor and manage the |ivy-engine|.
At least one administrator must be configured in :ref:`ivy-yaml`.


.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/ivy-administrator.yaml
  :language: yaml
  :linenos:


It is highly recommended to hash passwords of administrators by enclosing the
password in cleartext with :code:`"${hash:` and :code:`}"` like
:code:`"${hash:1234}"` for password :code:`1234`. Hashed passwords
can not be decrypted anymore.
The |ivy-engine| will automatically hash and replace the password in file,
when the configuration will be loaded


Workflow Users
--------------

Workflow Users are kept in a so-called security system which can be defined in
:ref:`ivy-yaml`. Each application defines in :ref:`app-yaml` which security
system is used. There are two types of security systems: 

* **Internal Security System**:
  Used to manage the users directly on the |ivy-engine|. There is only one
  Internal Security System, which is called Ivy Security System. No further
  settings are available for this Security System. This is also the default
  Security System for application which has no security system defined.
* **External Security System**:
  Used to synchronize users from a name and directory service such as Active
  Directory. In addition to the users in the External Security System,
  new users can also be manually added and managed as with an Ivy Security System.
  The example below shows a simple connection to an Active Directory.
  Have a look at the :ref:`ivy-securitysystem-yaml` for all supported name
  and directory services and further settings.

  .. literalinclude:: includes/ivy-securitysystem.yaml
    :language: yaml
    :linenos:

  .. literalinclude:: includes/ivy-securitysystem-app.yaml
    :language: yaml
    :linenos:
