Services
--------



Email
^^^^^

In the **email** section you can change the default email notification settings
for each application. 

.. figure:: /_images/engine-cockpit/engine-cockpit-email.png


External Databases
^^^^^^^^^^^^^^^^^^

The **external databases** view gives you an overview over your configured
external databases inside your project. You can switch to the desired
application over the tabs at the top. If you want to show a different
environment, you can change it at the top right. To get more information over a
database click on one to go to the
:ref:`engine-cockpit-external-database-detail` view.

.. note::
    If you want to add a new external database configuration, please have a look
    at :ref:`database-configuration`.

.. figure:: /_images/engine-cockpit/engine-cockpit-external-databases.png


.. _engine-cockpit-external-database-detail:

External Database Detail
""""""""""""""""""""""""

In the **external database detail** view, you can see all configurations from
the selected external database. You can test if the configuration works and a
connection to this database can be established, when you click on the
:guilabel:`Arrow` button. You can change the most important information directly
here too. If you click on the :guilabel:`Reset` button the database will be
reset to the original setting. In this view you can see information about the
last 200 executed *SQL* queries and used connections too.

.. note:: 
    Not every value can be modified here yet. But you can override them in the
    :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-external-database-detail.png


Web Services
^^^^^^^^^^^^

The **web services** page lists all defined web services. Change the application
or environment at the top to get your desired services. For a detailed view of
the service click on one entry to switch to the
:ref:`engine-cockpit-webservice-detail` view.

.. note::
    If you want to add a new web service, please have a look at
    :ref:`Designer Guide
    <webservice-clients-configuration>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-webservice.png


.. _engine-cockpit-webservice-detail:

Web Service Detail
""""""""""""""""""

On this view all configurations from a web service will be shown. You can change
the credentials or the endpoints here. Or you can reset them to their original
setting by clicking on the :guilabel:`Reset` button. To test if an endpoint is
accessible press on the :guilabel:`Arrow` button next to it. Please be aware
that only *HttpBasic* authentication will be supported and the request is an empty
*POST* message, which means depending on implementation of the web service the
status code can be different.

.. note:: 
    If you wish to change a value which is not supported by this editor you can
    do so by modify the :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-webservice-detail.png


Rest Clients
^^^^^^^^^^^^

The **rest clients** view gives you an overview over all rest clients which are
configured on this system. You can change the application or environment at the
top. Click on one rest client to get all configurations on the
:ref:`engine-cockpit-rest-client-detail` page.

.. note::
    If you want to add a new rest client, please have a look at
    :ref:`Designer Guide <rest-clients-configuration>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-rest-clients.png


.. _engine-cockpit-rest-client-detail:

Rest Client Detail
""""""""""""""""""

On the **rest client detail** page all configurations for this service are
shown. Some of those configurations can be modified directly here in this
editor. You can reset your changes by clicking on the :guilabel:`Reset`
button. If you want to test your configuration, click on the :guilabel:`Arrow`
button. This will start a *HEAD* request with the given authentication
credentials.

.. note:: 
    If you wish to change a value which is not supported by this editor you can
    do so by modify the :ref:`app-yaml` file.

.. figure:: /_images/engine-cockpit/engine-cockpit-rest-client-detail.png


Search Engine
^^^^^^^^^^^^^

You can use the **search engine** view, to get an overview of your running
Elastic Search instance. The information panel shows you some configurations and
gives you the possibility to jump quickly to the
:ref:`engine-cockpit-system-configuration` view by clicking on the
:guilabel:`cog` button. If you click on the :guilabel:`bug` button a new dialog
opens, where you can run some queries against your Search Engine.

The indices panel list all indices from the Search Engine. You can trigger a
*reindex* here or run a document specific query command.

.. figure:: /_images/engine-cockpit/engine-cockpit-search-engine.png

