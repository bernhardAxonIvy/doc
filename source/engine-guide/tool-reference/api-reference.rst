API Reference
=============

The REST API allows you to get information about a running Axon.ivy engine and
to control it remotely, which is by default accessible at
http://localhost:8080/ivy/api.

.. note:: 

  All modifier requests such as :code:`POST`, :code:`PUT` and :code:`DELETE` are
  `CSRF <https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)>`_
  protected. For this reason, the HTTP header field :code:`X-Requested-By` must
  be set with any value for each request.


.. _api-reference-deployment:

Deployment
----------

.. http:post:: /system/apps/(applicationName)

    Deploy a project :file:`.iar` or multiple projects :file:`.zip` in an
    application.

    **Example request**:

    .. sourcecode:: bash

        curl -X POST \
          http://localhost:8080/ivy/api/system/apps/test \
          -u admin:admin \
          -H 'X-Requested-By: curl' \
          -F fileToDeploy=@/home/user/Documents/Test.zip \
          -F deploymentOptions=@deploy.options.yaml

    **Example response**:

    .. sourcecode:: text

        14:14:51.708 Info: Start deploying project(s) of file 'Test.iar' to application 'test'.

        14:14:51.710 Info: Using DeploymentOptions[overwriteConfiguration=false,cleanupConfiguration=DISABLED,deployTestUsers=FALSE,targetVersion=AUTO,targetState=ACTIVE_AND_RELEASED,targetFileFormat=AUTO]
		
        14:14:51.728 Info: Synchronize project directory ...
        14:14:51.729 Info: - Cleaning target archive ...
        14:14:51.729 Info: - Copying new project to test/Test/1.zip ...
        14:14:51.730 Info: Successful synchronized.
		
        14:14:51.730 Info: Project(s) of file 'test.iar' successful deployed to application 'test' in 22 ms.

    :param applicationName: name of the target application
    
    :form fileToDeploy: project :file:`.iar` or multiple projects :file:`.zip`
    :form deploymentOptions: :ref:`deployment options <deployment-options>` as yaml file
    :form deployTestUsers: :ref:`deploy test users <deployment-options>` if no deploymentOptions
    :form deployConfigOverwrite: :ref:`overwrite configuration <deployment-options>` if no deploymentOptions
    :form deployConfigCleanup: :ref:`cleanup configuration <deployment-options>` if no deploymentOptions
    :form deployTargetVersion: :ref:`target version <deployment-options>` if no deploymentOptions
    :form deployTargetState: :ref:`target state <deployment-options>` if no deploymentOptions
    :form deployTargetFileFormat: :ref:`target file format <deployment-options>` if no deploymentOptions

    :reqheader Basic Authentication: administrator user
    :reqheader X-Requested-By: CSRF protection

    :statuscode 200: deployment successfully 
