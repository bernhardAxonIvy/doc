Deploy an Axon Ivy project
------------------------------

Let's deploy an Axon Ivy project to the Axon Ivy Engine. First, navigate to the 
:file:`deploy` directory and download the demo application.

.. code:: bash

    cd /var/lib/axonivy-engine-9/deploy
    sudo -u ivy wget https://developer.axonivy.com/permalink/lib/9/demos.zip

.. Note::

    Here we deploy a new application by dropping a ZIP into it. However, it is
    also possible to deploy single packed projects (IAR) or unpacked projects.

You can monitor the deployment with::

    tail -f demos.zip.deploymentLog

As soon as the deployment is finished the zip file will be postfixed with
:file:`.deployed`. In case of an error the postfix is :file:`.notDeployed`. E.g.
:file:`demos.zip.deployed`.

.. Note::

    An Axon Ivy Engine can run multiple applications at the same time. 
    
    Security Systems manage their users, tasks and cases. One or more
    applications can use a security system. Therefore, cases and tasks of all
    applications in a security system are visible in all applications within
    that security system.
    
    Therefore, you can use separate security systems to build multitenancy or
    stages (DEV, Q&A, PROD) without installing one Axon Ivy Engine per tenant
    and/or stage.

Refresh the main page of the Axon Ivy Engine. You see a new application.
Congratulations - you have installed and configured your first Axon Ivy Engine
and also deployed your first Axon Ivy processes!
