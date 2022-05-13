.. _migration-wizard:

Migration Wizard
----------------

The Migration Wizard helps you to migrate crucial configurations from an old
|ivy-engine| to your new |ivy-engine| environment.

The Wizard is expected to be run from a downloaded and untouched |ivy-engine|.
Please consult the :ref:`migration` chapter for detailed instructions when to use
the wizard on your operating system.

**Start**

.. figure:: /_images/engine-cockpit/engine-cockpit-setup-intro.png

#. :ref:`Start <control-center>` a new, untouched |ivy-engine|.
#. Browse to the URI where the engine runs: e.g. http://localhost:8080 .
#. Choose ``Setup Wizard`` -> ``Migration Engine`` in your Browser.
   
**Usage**

.. figure:: /_images/engine-cockpit/engine-cockpit-migrate.png

#. Provide the old |ivy-engine| installation directory to the Migration Wizard.
#. Run the MigrationTasks.
#. The wizard will select the best migration scenario for you, and then ask for
   your consent.
#. Restart the |ivy-engine|.
