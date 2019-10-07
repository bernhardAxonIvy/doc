Users
=====

Users are kept in a so-called security system which can be defined in
:ref:`ivy-yaml`. Each application defines in :ref:`app-yaml` which security
system is used. There are two types of security systems: 

* **Internal Security System**:
  Used to manage the users directly on the |ivy-engine|. There is only one
  Internal Security System, which is called Ivy Security System. No further
  settings are available for this Security System. This is also the default
  Security System for application which has no security system defined.
* **External Security System**:
  Used to synchronize users from a name and directory service such as Active
  Directory. The example below shows a simple connection to an Active Directory.
  Have a look at the :ref:`ivy-securitysystem-yaml` for all supported name
  and directory services and further settings.

  .. literalinclude:: includes/ivy-securitysystem.yaml
    :language: yaml
    :linenos:

  .. literalinclude:: includes/ivy-securitysystem-app.yaml
    :language: yaml
    :linenos:
