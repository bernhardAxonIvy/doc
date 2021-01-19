Deploy an Axon.ivy project
--------------------------

Let's deploy an Axon.ivy project to the Axon.ivy Engine. First we
go in the :file:`deploy` directory and download the demo application.

.. code:: bash

    cd /var/lib/axonivy-engine-9/deploy
    sudo -u ivy wget https://developer.axonivy.com/permalink/lib/9/demos.zip

.. Note::

    Here we deploy a new application by dropping a ZIP into it. However it is
    also possible to deploy single packed (IAR) projects or unpacked projects.

You can monitor the deployment with::

    tail -f demos.zip.deploymentLog

As soon as the deployment is finished the zip-file will be postfixed with
:file:`.deployed`. In case of an error the postfix is :file:`.notDeployed`. E.g.
:file:`demos.zip.deployed`.

.. Note::

    An Axon.ivy Engine can manage multiple applications. Each application has
    its own user and task management. A user of one application can only work in
    that application and not in another application. A task of one application
    will never be visible in another application. Therefore, applications can be
    used to build multi tenancy or stages (DEV, Q&A, PROD) without to install
    multiple Axon.ivy Engines.

Refresh the main page of the Axon.ivy Engine. There is now a new application.
Congratulations you have installed and configured your first Axon.ivy Engine and
also deployed your first Axon.ivy processes.
