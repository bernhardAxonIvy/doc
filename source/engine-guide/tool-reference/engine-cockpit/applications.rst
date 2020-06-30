.. _engine-cockpit-application:

Applications
------------

On the **applications** page you have a list of all workflow applications which are
running on the engine. 

You control the state of these applications with start, stop and lock actions.
Every application has its process models and process model versions. They can be
started and stopped too. You can add a new application by clicking on the
:guilabel:`Add` button. By clicking on a application, you switch to the
:ref:`engine-cockpit-application-detail` view or you could open the
:ref:`engine-cockpit-pmv-detail` view by navigate to the wished project and
click on that.

To deploy new versions of an app, you can click on the
:guilabel:`Deployment` button to open the **Deployment Dialog**. Have a look at
the :ref:`engine-cockpit-application-detail` view for more information.

.. figure:: /_images/engine-cockpit/engine-cockpit-applications.png


.. _engine-cockpit-application-detail:

Application detail
^^^^^^^^^^^^^^^^^^

The **application detail** page gives you similar information like the dashboard
but specific for the chosen application. In addition you can change the active
environment, start or stop the application. Furthermore, the :ref:`engine-cockpit-security-system` can 
be chosen in the security system panel. 

If you want to deploy an Axon.ivy project, click on the :guilabel:`Deployment`
button and select your :file:`.iar` or :file:`.zip` file. For the deployment you
can set additional deployment options. For more information have a look at
:ref:`deployment-options`. For the usage of this feature the
:ref:`api-reference-deployment` feature needs to be enabled
(:ref:`security-engine-optional-features`).

.. note:: 
    For CI/CD pipelines deployment visit the :ref:`deployment-deploying`
    chapter.

.. figure:: /_images/engine-cockpit/engine-cockpit-application-detail.png


.. _engine-cockpit-pmv-detail:

Pmv detail
^^^^^^^^^^

The detail page of the **process model version** shows you further information
about an individual project. This starts with the basic information, the
activity state and goes through all dependent projects and whether they could be
resolved.

.. figure:: /_images/engine-cockpit/engine-cockpit-pmv-detail.png

