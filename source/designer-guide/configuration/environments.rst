.. _configuration-environments:

Environments
============

Environments represent different runtime infrastructures. For example they can
be used for different software development stages ("development", "testing",
"production"). :ref:`variables`, :ref:`Databases <database-configuration>`,
:ref:`SOAP Web Services <webservice-clients-configuration>` and :ref:`Rest
Clients <rest-clients-configuration>` comes with environment support. Defining
an environment value in these features is always optional. For example: If you
have multiple environments and using Variables, you don't have to specify values
for all environments. If one is missing, it will fallback to the default value.

If you want to define a configuration e.g. rest client for a specific environment
then you need to create a new folder in your project for the given environment
e.g: :file:`[project]/config/_[env]` > :file:`[project]/config/_dev`. After that
you can copy the configuration file e.g. :file:`rest-clients.yaml` there. You can then
edit this with the given editor - by double clicking on the file.


Change environment for simulation
---------------------------------

It is possible to change the active environment for the simulation by
setting the environment in the preferences.

.. figure:: /_images/designer-configuration/environment-preferences.png
   :alt: Environment Preferences
   :align: center
   
   Environment Preferences


Change environment at runtime
-----------------------------

The active environment can be specified in :ref:`app-yaml`. If no environment is
active at all, the Default environment will be taken.
