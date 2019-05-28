.. _deployment:

Deployment
==========

Bring your processes to life by deploying them on an |ivy-engine|. Deployment
simply means to install an Axon.ivy project on an |ivy-engine|. We give you
multiple ways to bring your projects on our Engine:

#. **Engine Cockpit:** Do you like UIs? Checkout our 
   :ref:`UI Deployment<engine-cockpit-application-detail>` approach. 
#. **Directory:** Our file based deployment mechanism makes the deployment very 
   easy, just by dropping the file at the right place. 
#. **Automated Deployment:** If you work with automated pipelines you may 
   want have a look about our :ref:`possibilities<deployment-automated>`.

For every deployment way you have the following steps:

#. Get a :ref:`prepared <deployment-prepare>` ivy project from your developer.
#. :ref:`Deploy <deployment-deploying>` the project by e.g. simply dropping the file
   in the deployment directory.
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
<deployment-versioning>` is important during deployment. 



.. _deployment-deploying:

Deploying
---------

If you don't want use the directory way or you have no access to the filesystem
of you |ivy-engine| you may have a look at the other :ref:`deployment ways<deployment>`

Drop the file in the :ref:`deployment directory <ivy-yaml>`, the deployment will
be started immediately if the Axon.ivy Engine is running. Otherwise, the
deployment is executed when the engine is starting. 

There are subdirectories in the deployment directory for each application. The
project can be copied to the corresponding subdirectory. It is also possible to
create a subdirectory manually. In this case a new application will be created.
Alternatively, the project can also be placed in the deployment directory
itself. It is then deployed into the application with the same name as the
filename. 

If you want to influence the deployment behavior, you can do this with
:ref:`deployment options <deployment-options>`.



.. _deployment-check-results:

Check the results
-----------------

Go to the server info page, which is by default http://localhost:8080/ivy. You
should see now your new processes available. If you think there is missing
something you better check the deployment logs, which can be found in the same
directory where you have dropped the deployment file. 

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

.. note::
    If you deployed your project over :ref:`the UI
    <engine-cockpit-application-detail>` or a :ref:`deployment-automated` step,
    you reach the :file:`deploymentLog` or the :file:`deploymentError` as
    response of your request.


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

.. note::
    Deployment Options can also be set on :ref:`the UI <engine-cockpit-application-detail>` or add as part of
    your :ref:`deployment-automated` step.


.. _deployment-automated:

Automated Deployment
--------------------

If a CI/CD pipeline is in use you may consider to setup an automated deployment.
With the :ref:`file based deployment <deployment-deploying>` we already provide
you a simple way to do so. For example you can use a SCP command on Linux or UNC
paths on Windows. But there are other ways too, which we don't want to hide from
you. If your project already lives in a maven environment you can use our
:ref:`deployment-maven-plugin` or you push you project over the
:ref:`deployment-rest` API.


.. _deployment-rest:

REST Deployment
^^^^^^^^^^^^^^^

It can bee that there is no direct way to access the filesystem of you server.
For this approach the server provides a REST api. This is accessible by default
under http://localhost:8080/ivy. 

.. http:post::  /api/system/apps/(applicationName)

    Deploy a project .iar or multiple projects .zip under the application
    (applicationName)

    **Example request**:

    .. sourcecode:: bash

        curl -X POST \
          http://localhost:8080/ivy/api/system/apps/test \
          -u admin:admin \
          -H 'X-Requested-By: curl' \
          -F fileToDeploy=@/home/user/Documents/Test.iar \
          -F 'deploymentOptions={"deployTestUsers":"FALSE","configuration":{"overwrite":false,"cleanup":"DISABLED"},"target":{"version":"AUTO","state":"ACTIVE_AND_RELEASED","fileFormat":"AUTO"}}' 

        curl -X POST \
          http://localhost:8080/ivy/api/system/apps/test \
          -u admin:admin \
          -H 'X-Requested-By: curl' \
          -F fileToDeploy=@/home/user/Documents/Test.iar \
          -F "deploymentOptions=$(cat deploy.options.yaml)"

    **Example response**:

    .. sourcecode:: txt

        deployment log

    :param applicationName: name of the target application
    
    :form fileToDeploy: file to deploy
    :form deploymentOptions: deployment options as String in json or yaml format

    :reqheader Basic Authentication: a valid system user with username:password is needed
    :reqheader X-Requested-By: CSRF protection

    :statuscode 200: deployment successfully 
    :statuscode 401: no or wrong authentication, system user is needed 
    :statuscode 404: rest service not found, maybe disabled?
    :statuscode 500: server error



.. note::
    If you don't use this api, you may consider to disable it by security
    reasons (:ref:`security-engine-optional-features`).


.. _deployment-maven-plugin:

Maven Plugin
^^^^^^^^^^^^

The Maven `project-build-plugin
<http://axonivy.github.io/project-build-plugin/>`_ makes automated continuous
deployment to an |ivy-engine| possible. The Maven plugin can deploy files in two
ways, Directory or HTTP, while the Directory mode is the default.

The Directory deployment itself uses the :ref:`file based deployment
<deployment-deploying>` capability of the |ivy-engine|. This means that the
deployment folder must be available on the same machine on which the build is
executed. You may use Windows-Shares or SMB-Configurations.

On the other hand the HTTP deployment is based on the :ref:`deployment-rest`
service of the |ivy-engine|. This means, that this service has to be enabled on
the target engine. For the deployment you need the credentials of a
administrator.

.. note::
    An Axon.ivy project can be deployed by invoking Maven with the
    :code:`deploy-to-engine` goal of the project-build-plugin. To customize the
    deployment parameters, consult the goal documentation.


.. _deployment-maven-plugin-command-line:

Command line deployment
"""""""""""""""""""""""

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
""""""""""""""""""""

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

