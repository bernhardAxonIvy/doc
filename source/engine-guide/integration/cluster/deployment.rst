.. _cluster-deployment:

Deployment
==========

Deployments during runtime are not supported by the |ivy-engine| Cluster and do
not not work. Use the :ref:`deployment directory <deployment-deploying>` instead
to deploy your projects during |ivy-engine| Cluster node startup.

.. note::
   Only during the startup of the master cluster node, information 
   from the Ivy projects is deployed to the system database. 
   On slave cluster nodes startup projects files are only copied to the 
   correct location without updating the system database.
   E.g., new roles that are added in an Ivy project are only created in the 
   system database on startup of the master cluster node, not on slave node startup.    

We recommend that you add your projects directly into the deploy folder 
of a :ref:`container image <cluster-container>`.  