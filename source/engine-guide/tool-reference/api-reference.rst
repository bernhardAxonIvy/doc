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

        deployment log

    :param applicationName: name of the target application
    
    :form fileToDeploy: file to deploy
    :form deploymentOptions: deployment options as string in json or yaml format

    :reqheader Basic Authentication: a valid administrator with username:password is needed
    :reqheader X-Requested-By: CSRF protection

    :statuscode 200: deployment successfully 
