.. _upgrade-system-db:

System Database Conversion
==========================

It is highly recommended that you back up your system database before the conversion.


Setup Wizard / Engine Cockpit
-----------------------------

**Step 1**

Start the Axon.ivy Engine and open the :ref:`setup-wizard`. Switch to the
**System Database** page. A message will be shown that the current database is outdated.

**Step 2**

To automatically convert your old system database, click the **Migrate Database**
button. A dialog appears asking for confirmation.

Confirm the dialog and the system database will be converted automatically. The
next attempt to connect to the now converted database will succeed.


Auto Convert Property
---------------------

Instead of using the Engine Configuration Tool to convert the system database
you can also set the ``autoConvert`` property in the :ref:`ivy-yaml` to ``true``
in the configuration directory. Then the system database will be converted
automatically on the next engine start.


Notes
-----

Depending on the conversion steps and your database system it may be necessary
to cut all connections to the system database to avoid problems. If you have
problems with the conversion, please disconnect all other database management
tools, clients or other tools that has a connection to the system database and
try again.
