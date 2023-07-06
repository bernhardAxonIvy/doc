.. _deployment-deploying:

Deploying
---------
 
Our file based deployment mechanism makes the deployment very easy: As soon as
you drop a file in the :ref:`deployment directory <ivy-yaml>`, the deployment is
started immediately if the Axon Ivy Engine is running. Otherwise, the deployment
is executed after the engine has started. 

  There are sub-directories in the deployment directory for each application.
  The project can be copied to the corresponding sub-directory. You can also
  create a sub-directory manually. In this case, a new application will be
  created. Alternatively, the project can also be placed in the deployment
  directory itself. It is then deployed into the application with the same name
  as the filename.

We strongly recommend to **automate the deployment** in a CI/CD pipeline. For
this purpose, we offer a :ref:`REST API<deployment-rest-api>` which is
accessible via HTTP/HTTPS. If you can't connect to the Axon Ivy Engine that way,
use the file based deployment mechanism (e.g., via SSH) as described above. For
both scenarios, you can use command-line tools like :code:`curl` or :code:`scp`
to build such an automated pipeline. If you have Maven available in your
environment, use our :ref:`deployment-maven-plugin`, which supports both
deployment types. If you want to deploy manually, you can use the :ref:`User
Interface<engine-cockpit-application-detail>`.

Additionally, the deployment behavior can be influenced with :ref:`deployment
options <deployment-options>`.
