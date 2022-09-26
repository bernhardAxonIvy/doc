.. _migration-wizard:

Migration Wizard
----------------

The Migration Wizard helps you to migrate crucial configurations from an old
Axon Ivy Engine to your new Axon Ivy Engine environment.

The Wizard is expected to be run from a downloaded and untouched Axon Ivy Engine.
Please consult the :ref:`migration` chapter for detailed instructions when to use
the wizard on your operating system.

**Start**

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-intro.png

#. :ref:`Start <control-center>` a new, untouched Axon Ivy Engine.
#. Browse to the URI where the engine runs: e.g. http://localhost:8080 .
#. Choose ``Setup Wizard`` -> ``Migrate Engine`` in your Browser.
   
**Usage**

.. figure:: /_images/engine-cockpit/engine-cockpit-migrate.png

#. Provide the old Axon Ivy Engine installation directory to the Migration Wizard.
#. Run the MigrationTasks.
#. The wizard will select the best migration scenario for you, and then ask for
   your consent.
#. Wait until the Migration Wizard has completed.
#. Restart the Axon Ivy Engine.
