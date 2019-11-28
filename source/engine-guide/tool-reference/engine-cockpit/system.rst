System
------


.. _engine-cockpit-system-admins:

Administrators
^^^^^^^^^^^^^^

The **administrators** page gives you the possibility to manage the users which
have administrator privileges. Your changes will be written directly to the
:ref:`ivy-yaml` file. 

Defining an email address for the administrators is mandatory. Notifications
of critical events, such as license violations, are sent to administrator email
addresses.

.. warning::
    Be sure you have always one administrator configured. Otherwise, you can not
    longer access the :ref:`engine-cockpit` or :ref:`setup-wizard`!

.. note::
    Changes to administrators will only take charge after you restart your the
    engine.

.. figure:: /_images/engine-cockpit/engine-cockpit-system-admins.png


.. _engine-cockpit-systemdb:

System Database
^^^^^^^^^^^^^^^

For a successful configuration please consider the documentation on the
:ref:`Setup Wizard <setup-wizard-systemdb>`.

.. warning::
    Before you save your configurations, be sure you can connect to the
    database. Otherwise, you may have problems on your startup.

.. note::
    Changes to system database will only take charge after you restart your the
    engine.

.. figure:: /_images/engine-cockpit/engine-cockpit-system-database.png


.. _engine-cockpit-system-configuration:

System Configuration
^^^^^^^^^^^^^^^^^^^^

On the **system configuration** page you will have an overview about all your
configurations defined in your running engine. Configurations which are grey,
are default values. If you click on the :guilabel:`New` button, you can add new
configurations. If you want to edit an existing configuration, click on the
:guilabel:`Pencil` button. If you click on the button :guilabel:`More`, you have
the possibility to reset a configuration or view the configuration file.

.. warning::
    Application configurations are not shown on this view. You can see defined
    application configurations on the :ref:`engine-cockpit-application-detail` view.

.. note::
    For more information about the configuration, please have a look at the
    :ref:`configuration` section. 

.. figure:: /_images/engine-cockpit/engine-cockpit-system-config.png


.. _engine-cockpit-cluster:

Cluster
^^^^^^^

If your engine runs with an :ref:`enterprise-edition` licence, your are able to
define :ref:`axonivy-cluster`. In addition your engine cockpit will provide a
**Cluster** navigation menuitem. This will give you an overview of your
running nodes and a detail view dialog if you click on one node.

.. figure:: /_images/engine-cockpit/engine-cockpit-cluster.png
