.. _migrate-80-91:

Migrating from 8.0 to 9.1
=========================

Be aware of
-----------

License
*******

|tag-ops-changed|

You need to request a new license for Axon Ivy Engine 9.1.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  We have simplified the license check for :ref:`public urls <license>` compared to 8.0
  and do not check for ports and paths (context) anymore. When requesting a
  new 9.1 license, you only need to specify the DNS names/Hostnames or IP
  addresses through which the Axon Ivy Engine can be accessed.


Engine default base path changed
********************************

|tag-ops-changed| |tag-ops-wizard|

We changed the default value of the :ref:`WebServer.IvyContextName
<ivy-webserver-yaml>` from :code:`"ivy"` to :code:`""`. This means the default
engine URL has changed (from :code:`http://localhost:8080/ivy/`) to
:code:`http://localhost:8080/`.

If you have a :ref:`Reverse Proxy <reverse-proxy>` configured, you have to manually define
the ``WebServer.IvyContextName`` with the old value ``ivy``. Otherwise the AJP
uri workers will not find a valid path.


URL changes
***********

|tag-ops-changed|

The paths in the URL have changed. The name of the application is now at the top.

.. container:: admonition note toggle

  .. container:: admonition-title header
  
     **Details**

  .. container:: detail

    Setting up a classic frontend server is now much easier, because you can now define routes on app level.
    If you have a :ref:`Reverse Proxy <reverse-proxy>` configured and you block some URLs for security reasons, you need to adjust them.

    Here are some examples:

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


Web integration tests simplified
**********************************

|tag-project-changed|

Selenium based integration test do no longer require huge manually crafted maven build pom.xml definitions. 
Existing ``pom.xml`` files for test projects must be manually simplified.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  We introduced an new lifecycle called `iar-integration-test <http://axonivy.github.io/project-build-plugin/release/9.1/lifecycle.html>`_ that basically binds all the plugin executions which are required to have a running in memory engine with your workflow app deployed.

  Here's how you make use of these simplified stack in the ``pom.xml`` of a test project:

  #. change the packaging from type ``iar`` to ``iar-integration-test``
  #. remove manually bound executions of the goals ``start-test-engine`` and ``stop-test-engine``
  #. consider removing bound deployment executions (goal ``deploy-to-engine`` or ``deploy-iar``). The new plugin lifecycle automatically takes all your IAR dependencies and deploys them.
  #. remove unittest jvm argLine configurations that propagate the start engine URL (``test.engine.url``) and test application hint (``test.engine.app``).
  #. verify that your web tests stick to a naming pattern which complies with the `maven-failsafe-plugin includes <https://maven.apache.org/surefire/maven-failsafe-plugin/integration-test-mojo.html#includes>`_. If not, rename the unit tests to end with ``IT`` (e.g. WebTestCustomerOnboardingIT.java)
  #. run the maven build to verify your changes.

  A `sample conversion <https://github.com/axonivy/project-build-examples/commit/f8c66777cdcbb469c0b6830b485b0427931963d5>`_ can be reviewed on Github. Another way to get a valid example is to use the new ``Axon Ivy Test Project`` wizard of the Axon Ivy Designer, select ``IvyWebTest`` as testing flavour and examine the created ``pom.xml`` in the newly created test project.
  

Global deploy.options.yaml removed
**********************************

|tag-ops-removed|

The :file:`deploy.options.yaml` in the deployment directory can no longer be used to influence deployments.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  We think that it made deployments unnecessary hard to track and that administrators are better off with 
  the :ref:`deployment options <deployment-options>` packed as part of the application ZIP or specific  YAML per artifact.


Static JSF pages moved to webContent/view
*****************************************

|tag-project-changed|

The location of static JSF pages in your Axon Ivy Project have been changed to :file:`webContent/view`
in order to improve security. 

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  In 8.0 (pre 8.0.4) the static pages were located directly inside the
  :file:`webContent` folder. From 9.1 (8.0.4) on these pages are no longer accessible.
  You need to move the static JSF pages to the new folder in your Axon Ivy Project.
  Please refer to the chapter :ref:`static-jsf-pages` for more information.


context.xml and web.xml moved to configuration folder
*****************************************************

|tag-ops-changed| |tag-ops-wizard|

The :ref:`context-xml` and :ref:`web-xml` files are now in the global :file:`/configuration/` folder.
If you modified them you need to apply these changes to the files in the new location.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  Prior to 9.1 they were located under :file:`webapps/ivy/META-INF/context.xml` and :file:`webapps/ivy/WEB-INF/web.xml`.


New security system config Membership.UserMemberOfLookupAllowed
***************************************************************

|tag-ops-changed|

We introduced a new security system configuration property :code:`Membership.UserMemberOfLookupAllowed`,
with :code:`true` as its default value. If your active directory or eDirectory does not allow to read the
:code:`memberOf` property of a user (groups of a user), you need to set this configuration property to :code:`false`.
With the introduction of this new property we removed the property :code:`Membership.UseUserMemberOfForUserRoleMembership`.





Good to know
------------


VisualVM Plugin in the Axon Ivy Market
****************************************

|tag-ops-changed|

The Axon Ivy Visual VM plugin to monitor your Axon Ivy Engine is now available in the :dev-url:`Axon Ivy Market </market/visualvm-plugin>`.
It is not bundled with the Axon Ivy Engine in the directory :file:`[engineDir]/misc/visualvm/` anymore.


Subversion Client unplugged from Axon Ivy Designer
***************************************************

|tag-project-changed|

We removed the Subversion client Subclipse from the Axon Ivy Designer. It can still
be easily installed through the Eclipse Marketplace in the  Designer.
Go to :menuselection:`Help --> Eclipse Marketplace`, search for **Subclipse** and install it.


Daily Jobs are only executed at configured time
***********************************************

|tag-ops-changed|

Daily jobs are now executed only at the configured time, even
if the Axon Ivy Engine was not running at the last execution time.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Daily jobs like sending **task summary emails** or **synchronizing users**
  are executed once a day. Prior to 9.1, if the Axon Ivy Engine was not running
  at the configured time, the daily jobs were executed on the next start of
  the Axon Ivy Engine. This lead sometimes to a heavy workload on start-up,
  making the Axon Ivy Engine unusable for other tasks.

  We changed this behavior in order to make the Axon Ivy Engine responsive straight after start-up.


Special handling for Informix as external third-party database
**************************************************************

|tag-project-removed|

Informix is a database management system and can be integrated with Axon Ivy like any other database system.
We have removed any special handling for Informix as this is no longer necessary.
If you are using Informix and have any problems, please contact us.





More changes
------------


Changes to the Axon Ivy System Database
*****************************************

|tag-ops-changed|

We have introduced a new table :code:`IWA_SecurityMember` that contains entries for all users and roles.
Migration to the new database schema is done automatically.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
 
  We also
  removed most of the foreign key references to the tables :code:`IWA_User` and :code:`IWA_Role` and replaced them with
  references to :code:`IWA_SecurityMember`. Entries in table :code:`IWA_SecurityMember` will not be deleted even if a
  corresponding user or role is deleted.

  During migration all users and roles that could not be mapped to existing entries (e.g. because they were
  deleted from the database) but still have an entry in a :code:`Name` column, will be added to the :code:`IWA_SecurityMembers`
  table, to ensure referential integrity. All security members added this way will be in state :code:`disabled`.

  Note that the following database definitions have changed:

  - In view :code:`IWA_TaskQuery` the naming of the activator columns has slightly changed, to match the Java
    API methods naming:

    - :code:`ActivatorName` and :code:`ActivatorDisplayName` change to :code:`OriginalActivatorName` and :code:`OriginalActivatorDisplayName`
    - :code:`CurrentActivatorName` and :code:`CurrentDisplayName` change to :code:`ActivatorName` and :code:`ActivatorDisplayName`

  - Column :code:`IWA_WorkflowEvent.UserId` now references :code:`IWA_SecurityMember.SecurityMemberId` and changes to
    a :code:`VARCHAR(210)` value.


Using HttpAsyncClient for CXF web service calls
***********************************************

|tag-project-changed|

We switched the default connection implementation of CXF web service calls from
:code:`HttpURLConnection` to :code:`org.apache.http.nio.client.HttpAsyncClient`.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  The :code:`HttpAsyncClient` has improved performance and provides better support for NTML authentication.

  There are no known issues with :code:`HttpAsyncClient`, but if you still want to use
  :code:`HttpURLConnection` you can set the property :code:`use.async.http.conduit` to :code:`false` on the
  web service client configuration.


.. include:: _tagLegend.rst
