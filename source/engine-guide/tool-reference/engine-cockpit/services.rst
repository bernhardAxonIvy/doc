Services
--------



Email
^^^^^

In the **Email** section you can change the default email notification settings
for each application. 

.. figure:: /_images/engine-cockpit/engine-cockpit-email.png


External Databases
^^^^^^^^^^^^^^^^^^

The **external databases** view displays an overview of your configured
external databases within your projects. You can switch the application
by clicking on the tabs at the top of the view. If you want to display a different
environment, you can change it at the top right. To get more information about a
database click on an entry to view its
:ref:`engine-cockpit-external-database-detail` page.

.. note::
    If you want to add a new external database configuration, please refer
    to :ref:`database-configuration`.

.. figure:: /_images/engine-cockpit/engine-cockpit-external-databases.png


.. _engine-cockpit-external-database-detail:

External Database Detail
""""""""""""""""""""""""

In the **External Database Detail** view you see all configurations of
the selected external database. You can test if the configuration works and a
connection to this database can be established by clicking on the
:guilabel:`Arrow` button. You can change most connection values in this view.
If you click on the :guilabel:`Reset` button the database configuration will be
reset to the original values. In this view you can also see information about the
last 200 executed *SQL* queries and its used connections too.

.. note:: 
    Not every value can be modified here yet. But you can override them in the
    :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-external-database-detail.png


Web Services
^^^^^^^^^^^^

The **Web Services** page lists all defined web services for each application.
You can switch the application by clicking on the tabs at the top of the view. You
can also change environment in the drop-down box at the top of the view. To see
detailed information about a web service click on an entry to view its
:ref:`engine-cockpit-webservice-detail` page.

.. note::
    If you want to add a new web service, please refer to
    :ref:`Designer Guide
    <webservice-clients-configuration>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-webservice.png


.. _engine-cockpit-webservice-detail:

Web Service Detail
""""""""""""""""""

This view displays all configuration values of a web service. You can change
the credentials or the endpoint settings. You can also reset them to their original
values by clicking on the :guilabel:`Reset` button.

To test if an endpoint is accessible press on the :guilabel:`Arrow` button next to it.
Please be aware that only *HttpBasic* authentication is supported and the request is an
empty *POST* message.

.. note:: 
    If you wish to change a value that is not editable in this editor you can
    do so by modifying the :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-webservice-detail.png


Rest Clients
^^^^^^^^^^^^

The **Rest Clients** view gives an overview over all rest clients  for each application.
You can switch the application by clicking on the tabs at the top of the view. You
can also change environment in the drop-down box at the top of the view. To see
detailed information about a web service click on an entry to view its
:ref:`engine-cockpit-rest-client-detail` page.

.. note::
    If you want to add a new rest client, please refer to
    :ref:`Designer Guide <rest-clients-configuration>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-rest-clients.png


.. _engine-cockpit-rest-client-detail:

Rest Client Detail
""""""""""""""""""

The **Rest Client Detail** page shows all configuration values of a rest service.
Some of these values can be modified directly in this editor. You can reset your
changes by clicking on the :guilabel:`Reset` button. If you want to test your
configuration settings, click on the :guilabel:`Arrow` button. This will start a
*HEAD* request with defined authentication credentials.

.. note:: 
    If you wish to change a value that is not editable in this editor you can
    do so by modifying the :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-rest-client-detail.png


Search Engine
^^^^^^^^^^^^^

You can use the **Search Engine** view to display information about your running
Elastic Search instance. The information panel shows some configurations and
allows you to directly get to the
:ref:`engine-cockpit-system-configuration` page by clicking on the
:guilabel:`cog` button. To run queries against your Search Engine, click on the
:guilabel:`bug` button.

The **Indices** panel lists all indices from the Search Engine. You can trigger a
*reindex* command or run a document specific query command.

.. figure:: /_images/engine-cockpit/engine-cockpit-search-engine.png

