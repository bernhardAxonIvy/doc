.. _cluster-deployment:

Deployment
==========

Deployment during runtime is not supported with |ivy-engine| cluster and does not work. 
Use the :ref:`deployment directory <deployment-deploying>` instead 
to deploy your projects during |ivy-engine| Cluster node startup.

.. note::
   Note, that only during startup of the master cluster node information 
   from the ivy projects are deployed to the system database. 
   On slave cluster nodes startup projects files are only copied to the 
   correct location without updating the system database.
   E.g., new roles that are added in an ivy project are only created in the 
   system database on master cluster node startup. Not on slave node startup.    

We recommend that you add your projects directly into the deploy folder 
of a :ref:`container image <cluster-container>`.  