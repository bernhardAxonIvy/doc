.. _migrate-80-91:

Migrating from 8.0 to 9.1
=========================


License
-------

You need to request a new license for Axon.ivy Engine 9.1.
We have simplified the license check for :ref:`public urls <installing-a-licence>` and won't
check anymore for ports and paths (context). You only need to specify
the DNS names/Hostnames or IP addresses through which the Axon.ivy Engine
can be accessed.


VisualVM Plugin in the Axon.ivy Market
--------------------------------------

The Axon.ivy Visual VM plugin is now available in the :dev-url:`Axon.ivy Market </market/visualvm-plugin>`
and not bundled anymore with the Axon.ivy Engine in the directory :file:`[engineDir]/misc/visualvm/`.


Changes to the database
-----------------------

We have introduced a new table IWA_SecurityMember that contains entries for all users and roles. We also
removed most of the foreign key references to the tables IWA_User and IWA_Role and replaced them with
references to IWA_SecurityMember. Entries in table IWA_SecurityMember will not be deleted even if a
corresponding user or role is deleted.

During migration all users and roles that could not be mapped to existing entries (e.g. because they were
deleted from the database) but still have an entry in a Name column, will be added to the IWA_SecurityMembers
table, to ensure referential integrity.
Migration to the new database schema is done automatically, but note that the following database definitions
have changed:

- In view **IWA_TaskQuery** the naming of the activator columns has slightly changed, to match the Java
  API method naming:

  - ActivatorName and ActivatorDisplayName change to OriginalActivatorName and OriginalActivatorDisplayName
  - CurrentActivatorName and CurrentDisplayName change to ActivatorName and ActivatorDisplayName

- Column **IWA_WorkflowEvent.UserId** now references IWA_SecurityMember.SecurityMemberId and changes to
  a VARCHAR(210) value.


Using HttpAsyncClient for CXF web service calls
-----------------------------------------------

We switched the default connection implementation of CXF web service calls from
:code:`HttpURLConnection` to :code:`org.apache.http.nio.client.HttpAsyncClient`.
The :code:`HttpAsyncClient` has improved performance and provides better support for NTML authentication.

There are no known issues with :code:`HttpAsyncClient`, but if you still want to use
:code:`HttpURLConnection` you can set the property :code:`use.async.http.conduit` to :code:`false` on the
web service client configuration.


Engine default base path changed
--------------------------------

We changed the default value of the :ref:`WebServer.IvyContextName
<ivy-webserver-yaml>` from :code:`"ivy"` to :code:`""`. This means the default
engine URL has changed (from :code:`http://localhost:8080/ivy/`) to
:code:`http://localhost:8080/`. 


Every Ivy application is now a tomcat webapp
--------------------------------------------

With the new engine every ivy application will be its own tomcat webapp. This
means some URL paths will change. If you have a :ref:`front-end-server`
configured and you block some URLs for security reasons, you need to adjust them.
Here some examples:

+------------------------------------+------------------------------------+
| Old URL                            | New URL                            |
+====================================+====================================+
| /<servlet>/**<appName>**/<pmv>/... | /**<appName>**/<servlet>/<pmv>/... |
+------------------------------------+------------------------------------+
| /pro/myApp/myPmv/...               | /myApp/pro/myPmv/...               |
+------------------------------------+------------------------------------+
| /api/myApp/myPmv/...               | /myApp/api/myPmv/...               |
+------------------------------------+------------------------------------+
| /wf/myApp/myPmv/...                | /myApp/wf/myPmv/...                |
+------------------------------------+------------------------------------+


Global deploy.options.yaml removed
----------------------------------

The `deploy.options.yaml` in the deployment directory can no longer be used to influence deployments.
We think that it made deployments unnecessary hard to track and that users are better of with 
the deploy.options packed as part of the application ZIP or specific yaml per artifact. :ref:`deployment-options` 


Static JSF pages moved to webContent/view
-----------------------------------------

The location of static JSF pages has been changed to :file:`webContent/view` to
improve security. With 8.0 (pre 8.0.4) the static pages were located directly inside the
:file:`webContent` folder. From 9.1 (8.0.4) and later, these pages are no longer
accessible. Please refer to the chapter :ref:`static-jsf-pages` for more
information.


Daily Jobs are only executed at configured time
-----------------------------------------------

Daily jobs like sending task summary emails or synchronizing users
were executed once a day. If the Axon.ivy Engine was not running
at the configured time the job was executed on the next start of
the Axon.ivy Engine.

Then you may be confronted with heavy workloads
which makes the Axon.ivy Engine unusable for other tasks.
Therefore the daily jobs are now only executed at the configured time
if the Axon.ivy Engine is not running at this time the job will not
be executed.


Special handling for Informix as external third-party database
--------------------------------------------------------------

Informix is a database management system and can be integrated with Axon.ivy like any other database system.
We have removed special handlings for Informix as these should no longer be necessary.
If you are using Informix and have any problems, please contact us.


Subversion Client Subclipse unplugged from Designer
---------------------------------------------------

Subversion Client Subclipse is removed but can be easily installed with the Eclipse Marketplace in Designer.
Go to :menuselection:`Help --> Eclipse Marketplace` and search for Subclipse and install it.


The context.xml and web.xml are moved to configuration folder
-------------------------------------------------------------

The :ref:`context-xml` and :ref:`web-xml` are now in the global :file:`/configuration/` folder.
Before they where located under :file:`webapps/ivy/META-INF/context.xml` and :file:`webapps/ivy/WEB-INF/web.xml`.
If you had modified them you have to apply these changes to the files at the new location.


New security system config Membership.UserMemberOfLookupAllowed
---------------------------------------------------------------

There is a new security system config `Membership.UserMemberOfLookupAllowed` which is `true` per default.
Means normally you don't have to do anything. Only if your active directory or eDirectory does not allow to read the 
memberOf property of a user (groups of a user), then you have to set this config property to `false`.
The config property `Membership.UseUserMemberOfForUserRoleMembership` was removed.
