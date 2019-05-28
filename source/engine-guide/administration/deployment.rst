.. _deployment:

Deployment
==========

Bring your processes to life by deploying them on an |ivy-engine|. Deployment
simply means to install an Axon.ivy project on an |ivy-engine|. Proceed as
follows to deploy a project.

#. Get a :ref:`prepared <deployment-prepare>` ivy project from your developer.
#. :ref:`Deploy <deployment-deploying>` the project by e.g. simply dropping the 
   file in the deployment directory.
#. :ref:`Check the result <deployment-check-results>` of the deployment on the
   server info page.



.. _deployment-prepare:

Prepare
-------

Before deployment, the Axon.ivy project must be available as ivy-archive (IAR)
or packed as a zip-archive (ZIP). It is also possible to pack multiple Axon.ivy
projects in one single zip-archive. All project dependencies must be resolved,
either already installed in the application or part of the deployment. 

We recommend to build a zip-archive, which contains all projects of an
application.

.. figure:: images/full-application-zip.png
    :align: center

    Sample full application zip-archive

You are able to :ref:`configure the application <deployment-configure-app>`
within a full application zip-archive. Also, proper :ref:`versioning
<deployment-versioning>` is important. 



.. _deployment-deploying:

Deploying
---------
 
Our file based deployment mechanism makes the deployment very easy, just by
dropping the file in the :ref:`deployment directory <ivy-yaml>`, the deployment
will be started immediately if the |ivy-engine| is running. Otherwise, the
deployment is executed when the engine is starting. 

  There are subdirectories in the deployment directory for each application. The
  project can be copied to the corresponding subdirectory. It is also possible
  to create a subdirectory manually. In this case a new application will be
  created. Alternatively, the project can also be placed in the deployment
  directory itself. It is then deployed into the application with the same name
  as the filename.

We strongly recommend to **automate the deployment** in a CI/CD pipeline. For
this purpose we offer a :ref:`REST API <api-reference-deployment>` which is
accessible via HTTP/HTTPS. If you don't have the possibility to connect to the
|ivy-engine| in this way you can use the file based deployment mechanism
(e.g. via SSH) as described above. For both scenarios you can use well-known
command line tools like :code:`curl` or :code:`scp` to build such an automated
pipeline. Our :ref:`deployment-maven-plugin` support both types. If you
are not interested in automation, you can also use the :ref:`User
Interface<engine-cockpit-application-detail>`.

Additionally, the deployment behavior can be influenced with :ref:`deployment
options <deployment-options>`.



.. _deployment-check-results:

Check the results
-----------------

Go to the server info page, which is by default http://localhost:8080/ivy. You
should see now your new processes available. If you think there is missing
something you better check the deployment logs.

The engine cockpit provides direct feedback on the user interface, the REST API
by the HTTP response and the deployment directory creates new files in the same
directory where you have dropped the deployment file:

+------------------+------------------------------------------------------------------------+
| File suffix      | Description                                                            |
+==================+========================================================================+
| .deployed        | Last deployed file to the engine in case of a successful deployment    |
+------------------+------------------------------------------------------------------------+
| .notDeployed     | Last not deployed file to the engine in case of error while deployment |
+------------------+------------------------------------------------------------------------+
| .deploymentLog   | Contains the log output which is written during the deployment         |
+------------------+------------------------------------------------------------------------+
| .deploymentError | Contains the error cause and is only written when the deployment fails |
+------------------+------------------------------------------------------------------------+



Advanced Deployment
-------------------

To fully automate your CI/CD pipeline, you may want to further :ref:`configure
your target application <deployment-configure-app>` of your deployment and also
influence the :ref:`deployment behavior <deployment-options>`.


.. _deployment-configure-app:

Configure Application
^^^^^^^^^^^^^^^^^^^^^

If you are deploying a full application zip-archive you can optionally add an
:ref:`app-yaml` in the root of your zip-archive, which contains the
configuration of the application. 

.. literalinclude:: includes/sample-app.yaml
  :language: yaml
  :linenos:


.. _deployment-versioning:

Versioning
^^^^^^^^^^

It is highly recommended that you increase the version of your project each time
you want to deploy a new version of your project on the engine. This ensures
that you will not break currently running cases, and you have the possibility to
go back to the previous version if the new version does not work as expected.

Even though overwriting an already deployed process model version with running
cases is possible. It is at your own risk and should only be done if you are
aware of the possible consequences and ready to accept them.


.. _deployment-options:

Deployment Options
^^^^^^^^^^^^^^^^^^

With deployment options you can influence the deployment behavior: 

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/deploy/sample.deploy.options.yaml
  :language: yaml
  :linenos:

See the `Axon.ivy Project Build Plugin deploy documentation
<https://axonivy.github.io/project-build-plugin/release/deploy-to-engine-mojo.html>`_
for more information about the deployment properties.


There are three distinct locations where you can put your options file:

    #. **Deployment specific options file** - If you want to provide options for a single
       deployment simply create a file that has the same prefix as the file you want to
       deploy with a suffix of :file:`.options.yaml`. E.g. if the file you want to deploy
       is :file:`myProject.iar` then create an options file that is called
       :file:`myProject.iar.options.yaml`. Note, that after the deployment the
       :file:`myProject.iar.options.yaml` file will be removed automatically.
    #. **Global options file** - Create a file called :file:`deploy.options.yaml` in the
       deployment directory of an application. This global options file control all
       deployments inside the application.
    #. **Inside the file that you are deploying** - Put a :file:`deploy.options.yaml`
       file inside your project directory, :file:`\*.iar` or :file:`\*.zip` that you want to deploy.

If there are multiple options files available, then only the options file with
the highest location priority is considered, other options files will be
ignored. 



.. _deployment-maven-plugin:

Maven Plugin
------------

The Maven `project-build-plugin
<http://axonivy.github.io/project-build-plugin/>`_ makes automated continuous
deployment to an |ivy-engine| possible. The Maven plugin can deploy files in two
ways, Deployment Directory or REST, while the Deplyoment Directory mode is the default.

The Directory deployment itself uses the :ref:`file based deployment
<deployment-deploying>` capability of the |ivy-engine|. This means that the
deployment folder must be available on the same machine on which the build is
executed. You may use Windows-Shares or SMB-Configurations.

On the other hand the HTTP deployment is based on the :ref:`api-reference-deployment`
service of the |ivy-engine|. This means, that this service has to be enabled on
the target engine. For the deployment you need the credentials of a
administrator.

.. note::
    An Axon.ivy project can be deployed by invoking Maven with the
    :code:`deploy-to-engine` goal of the project-build-plugin. To customize the
    deployment parameters, consult the goal documentation.


.. _deployment-maven-plugin-command-line:

Command line deployment
^^^^^^^^^^^^^^^^^^^^^^^

The :code:`deploy-to-engine` goal can be execute on the command line. The
following two examples deploys the project :file:`myProject.iar` to the
application **portal** of the Engine located under :file:`c:/axonivy/engine` in
the first example. The second runs in the **HTTP** mode and deploys the project
to the engine under :file:`http://localhost:8080/ivy`. The engine in this
example has no licence installed and runs with the demo mode, so the default
admin credentials will be used by the maven plugin.

.. code-block:: bash

    mvn com.axonivy.ivy.ci:project-build-plugin:7.4.0-SNAPSHOT:deploy-to-engine \
      -Divy.deploy.file=myProject.iar \
      -Divy.deploy.engine.dir=c:/axonviy/engine \
      -Divy.deploy.engine.app=portal

    mvn com.axonivy.ivy.ci:project-build-plugin:7.4.0-SNAPSHOT:deploy-to-engine \
      -Divy.deploy.file=myProject.iar \
      -Divy.deploy.method=HTTP \
      -Divy.deploy.engine.url=http://localhost:8080/ivy \
      -Divy.deploy.engine.app=portal


.. _deployment-maven-plugin-build:

Build goal execution
^^^^^^^^^^^^^^^^^^^^

To deploy an ivy-archive (IAR) during it's maven build `lifecycle
<https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html>`_
configured an execution which binds the :code:`deploy-to-engine` goal to a phase
in the projects :file:`pom.xml`.

The first following POM snippet deploys the current project to the application
**portal** of the |ivy-engine| under :file:`c:/axonivy/engine`.

.. literalinclude:: includes/deployment-maven-build.xml
  :language: xml
  :linenos:
  :name: pom

The second example deploys the current project to the application **portal** to
an |ivy-engine| which is accessible on :file:`http://localhost:8080/ivy`. This
engine has an valid licence with an administrator defined. So a server entry in
your maven :file:`settings.xml` is needed for the credentials. This entry will be mapped
to the :code:`deployServerId`, in this case :file:`serverId`.

.. literalinclude:: includes/http-deployment-maven-build.xml
  :language: xml
  :linenos:
  :name: pom.xml

.. literalinclude:: includes/http-deployment-settings.xml
  :language: xml
  :linenos:
  :name: settings.xml

Further examples are documented on GitHub in the `project-build-examples
<https://github.com/axonivy/project-build-examples>`_ repository.
