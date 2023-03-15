.. _migrate-100-111:

Migrating from 10.0 to 11.1
===========================

Upgrade to 11.1 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.

License
*******

|tag-ops-changed|

You need to request a new license for |ivy-engine| 11.1.


|ivy| Environments
*****************************

|ivy| Environments have been removed, finally. We detailed the reason for this in our 
`blog post <https://community.axonivy.com/d/142-environments-will-disappear-in-the-long-term>`_.

|ivy| environments have been used for **staging** and in some rare cases for **multi-tenancy**. If you have
used them for staging, the initial use case, then you shouldn't face any issues.
Make sure that the :code:`Default` configuration is correct for each of your staging environments.
If you have used it for multi-tenancy, then you need to manually migrate each tenant to either its own
|ivy-engine| or its own |ivy| Application. Read more about this topic in :ref:`multi-tenancy`.

It has been possible to set the environment on application, session, and case level. All
of these APIs and configurations have been removed completely. Using Environments, you have been able to define
specific configuration sets for:

- :ref:`variables`
- :ref:`rest-clients-configuration`
- :ref:`webservice-clients-configuration`
- :ref:`database-configuration`
- :ref:`business-calendar`

You have been able to define the cache on the environment level using the :ref:`process-element-tab-data-cache`.
This will be migrated automatically to the application level.

For :ref:`unit-testing`, you have been able to set the current environment on the :code:`AppFixture`. 
This has been removed, too. Now, use the :code:`AppFixture#config`` API to define the exact configuration which you 
like to override in your test case.

|ivy| Files have the environment name in their path. The existing files all stay at their current path. 
All new files will be saved in the :code:`Default` environment. 
Later on, we intend to redesign the path of files completely to remove the environment dependency.


MsSQL Server Database
*********************

|tag-ops-changed|

The JDBC driver for MsSQL server database has been upgraded and now connects to the database with SSL by default.
To change the behavior back to non SSL as in previous versions set the connection property ``encrypt`` to ``false``.
Because this is the new default behavior of the driver, both System Database and External Database configurations are affected by this change.


AJP Reverse Proxy Integration
*****************************

|tag-ops-changed|

The AJP integration for :ref:`reverse-proxy` has finally been removed. You need to migrate
to URL Rewrite if you still have used AJP.


Mobile Workflow REST API
************************

|tag-ops-changed|

We no longer use the term *mobile* for the :ref:`Workflow REST API <workflow-api>`. Therefore we renamed the configuration property
in :ref:`ivy.yaml <ivy-webserver-yaml>` from :code:`REST.Servlet.MobileWorkflow.API` to :code:`REST.Servlet.API` and this REST API is now
by default enabled.


URL changes
***********

We now give more weight to the security context and manage all resources under the security context.
All URLs receive the name of the security context as a prefix, e.g. `/{securityContext}/{myApp}/*`.

By default, the `default` security context is made available under root: `/{myApp}/*`

The core REST endpoints now run directly under the security context and no longer under the application,
for example `/{myApp}/workflow/tasks` has been changed to `/{securityContext}/workflow/tasks`.

You need to check your routing settings in the reverse proxy configuration if you only allow certain paths.


