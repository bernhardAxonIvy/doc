API Reference
=============

This is the API reference to get information about a running Axon.ivy engine and to control it remotely.
This API is by default accessible under http://localhost:8080/ivy.


.. _api-reference-deployment:

Deployment
----------

.. http:post::  /api/system/apps/(applicationName)

    Deploy a project :file:`.iar` or multiple projects :file:`.zip` in an application
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

        14:14:51.708 Info: Start deploying project(s) of file 'quick-start-tutorial-7.3.0-20190523.032440-430.iar' to application 'demo-portal'.

        14:14:51.710 Info: Using DeploymentOptions[overwriteConfiguration=false,cleanupConfiguration=DISABLED,deployTestUsers=AUTO,targetVersion=AUTO,targetState=ACTIVE_AND_RELEASED,targetFileFormat=AUTO]
		
        14:14:51.728 Info: Skipping deployment. All projects have the same hash. Synchronize project directories only.
        14:14:51.728 Info: Synchronize project directory ...
        14:14:51.729 Info: - Create backup of old deployed project to 'demo-portal/QuickStartTutorial/PMV 2 Backup 2019-05-28 14-14-51.zip'...
        14:14:51.729 Info: - Cleaning target archive ...
        14:14:51.729 Info: - Copying new project to demo-portal/QuickStartTutorial/2.zip ...
        14:14:51.730 Info: Successful synchronized.
		
        14:14:51.730 Info: Project(s) of file 'quick-start-tutorial-7.3.0-20190523.032440-430.iar' successful deployed to application 'demo-portal' in 22 ms.

    :param applicationName: name of the target application
    
    :form fileToDeploy: file to deploy
    :form deploymentOptions: deployment options as string in json or yaml format

    :reqheader Basic Authentication: a valid administrator with username:password is needed
    :reqheader X-Requested-By: CSRF protection

    :statuscode 200: deployment successfully 
