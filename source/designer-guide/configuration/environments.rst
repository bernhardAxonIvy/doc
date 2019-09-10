.. _configuration-environments:

Environments
============

Environments represent different runtime infrastructures. There are two
use cases for environments:

-  **Staging**: Software goes through a software development cycle and
   is often tested on different environments before it is deployed on
   the productive environment. Typical environments in this case are
   "development", "testing" and "production".

-  **Multi-Tenancy**: If software must meet the multi-tenancy
   requirement, environments can be used for the individual tenants. In
   this case the environments would be named after the customer, for
   example "customer1", "customerX" and "customerZ".

:ref:`global-variables`,
:ref:`Databases <database-configuration>`,
:ref:`SOAP Web Services <webservice-clients-configuration>` and
:ref:`Rest Clients <rest-clients-configuration>`
comes with environment support.
Defining an environment value in these features is always optional. For example:
If you have multiple environments and using Global Variables, you don't
have to specify values for all environments. If one is missing, it will
fallback to the default value.

Editor
------

The environment editor is part of the :ref:`configuration-management`.
By using the add configuration
function a new environment will be added. The name of the environment is
the name of the configuration. If you delete or rename an environment,
all associated values will be removed. For example, environment specific
values in Global Variables are deleted.

.. figure:: /_images/designer-configuration/environment-configuration.png
   :alt: Environment Configuration
   :align: center
   
   Environment Configuration

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

The active environment can be specified in app.yaml. If no environment
is active at all, the default environment will be taken.

To fulfill the requirements of multi-tenancy you may need to use the
following api. The active environment can be set on case, session or
application. If the environment is set on multiple levels, the level
with the smallest scope is taken.

.. table:: Scopes

   +--------------------+-----------------------------------------------------------------+
   | Scope              | API                                                             |
   +====================+=================================================================+
   | Case               | ``ivy.case.setActiveEnvironment(String name)``                  |
   +--------------------+-----------------------------------------------------------------+
   | Session            | ``ivy.session.setActiveEnvironment(String name)``               |
   +--------------------+-----------------------------------------------------------------+
   | Application        | ``ivy.wf.getApplication().setActiveEnvironment(String name)``   |
   +--------------------+-----------------------------------------------------------------+

