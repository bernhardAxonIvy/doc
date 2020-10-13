System
------


.. _engine-cockpit-system-admins:

Administrators
^^^^^^^^^^^^^^

The **Administrators** page allows you to manage users with administrator
privileges. Any changes are stored to the :ref:`ivy-yaml` file. 

You need to specify an email address for administrators as they are used to
send notifications of critical events to, e.g. licence violations.

.. note::
    Changes to administrators will only take effect after you restart the
    engine.

.. figure:: /_images/engine-cockpit/engine-cockpit-system-admins.png


.. _engine-cockpit-systemdb:

System Database
^^^^^^^^^^^^^^^

In the **System Database** page you to manage system database configuration.
Any changes are stored in the :ref:`ivy-yaml` file. 

Please refer to the :ref:`Setup Wizard <setup-wizard-systemdb>` documentation
on how to configure your engine's system database.

.. warning::
    Before you save your configurations, be sure you can connect to the
    database. Otherwise you may have problems when restarting the engine.

.. note::
    Changes to system database will only take effect after you restarting the
    engine.

.. figure:: /_images/engine-cockpit/engine-cockpit-system-database.png


.. _engine-cockpit-licence:

Licence
^^^^^^^

In the **Licence** view you can upload or renew a licence. If you have a valid
licence you see a table with all information about it. On the right side you
have a live overview of your active sessions with the ability to kill sessions.

.. tip::
    **Anonymous or System Sessions** do not appear in the session table but
    they are counted as normal **Sessions or Licenced Sessions**.

.. figure:: /_images/engine-cockpit/engine-cockpit-licence.png


.. _engine-cockpit-system-configuration:

System Configuration
^^^^^^^^^^^^^^^^^^^^

The **System Configuration** page displays an overview over all your engine's
configuration settings. Configurations in grey represent default values. If you
click on the :guilabel:`New` button, you can add a new configuration setting.
If you want to edit an existing configuration, click on the
:guilabel:`Pencil` button. Clicking the button :guilabel:`More` button allows you
to reset a configuration setting or view the complete configuration file.

.. warning::
    Application configurations are not shown on this view. You can see application
    configuration settings in the :ref:`engine-cockpit-application-detail` page.

.. note::
    For more information about the configuration, please refer to the
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
