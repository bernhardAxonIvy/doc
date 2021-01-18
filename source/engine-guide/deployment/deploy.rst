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
this purpose we offer a :ref:`REST API<deployment-rest-api>` which is
accessible via HTTP/HTTPS. If you don't have the possibility to connect to the
|ivy-engine| in this way you can use the file based deployment mechanism (e.g.
via SSH) as described above. For both scenarios you can use well-known command
line tools like :code:`curl` or :code:`scp` to build such an automated pipeline.
If you have Maven available in your environment, you can use our
:ref:`deployment-maven-plugin`, which supports both deployment types. If you are
not interested in automation, you can also use the :ref:`User
Interface<engine-cockpit-application-detail>`.

Additionally, the deployment behavior can be influenced with :ref:`deployment
options <deployment-options>`.
