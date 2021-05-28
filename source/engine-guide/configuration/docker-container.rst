Docker Containers
=================

Container technology empowers you to pull up reproducible, documented and
complete isolated infrastructures. Axon Ivy fully supports container
environments such as `Docker <https://www.docker.com/>`_, `Kubernetes
<https://kubernetes.io/>`_ or `OpenShift <https://openshift.io/>`_. You can
easily customize the configuration of an Axon Ivy Engine by using system
environment variables or by providing configuration files like the
:ref:`ivy-yaml` file. 

The following example will override the url of the system database configuration
using environment variables:

.. code-block:: bash

  docker run -e "IVY_SYSTEMDB_URL=jdbc:mysql://db:3306/AxonIvySystemDatabase" ...

Instead of using environment variables, you can simply provide an
:ref:`ivy-yaml` file. 

.. literalinclude:: includes/ivy-docker.yaml
    :language: yaml
    :linenos:

And let's run the container with this configuration

.. code-block:: bash

  docker run -v $(pwd)/ivy.yaml:/etc/axonivy-engine/ivy.yaml ... 
  
.. tip::
  On Windows use :code:`%cd%/ivy.yaml` instead of :code:`$(pwd)/ivy.yaml`  

For further docker examples have a look at our
:dev-url:`docker-samples </link/docker-samples>` GitHub repository. 


.. _configuration_containers_license:

License
*******

You can provide the license either by:

* Packaging it as part of your docker image in the :file:`configuration` folder:

  .. code-block:: dockerfile
  
     ADD licence.lic /etc/axonivy-engine/licence.lic

* Mapping it into the :file:`configuration` folder:
   
  .. code-block:: bash

     docker run -v $(pwd)/licence.lic:/etc/axonivy-engine/licence.lic ... 

* Provide it as environment variable ``IVY_LICENCE``:

  Linux:

  .. code-block:: bash

     export IVY_LICENCE=$(<licence.lic>)
     docker run -e IVY_LICENCE=$IVY_LICENCE ... 

  Windows Powershell:

  .. code-block:: bash

     set IVY_LICENCE=[string](Get-Content -Path <licence.lic> -raw)
     docker run -e IVY_LICENCE=$IVY_LICENCE ... 

* Mapping it as docker secret into file ``/run/secrets/ivy.Licence``


.. _configuration_containers_secrets:

Secrets
*******

You can use Docker Secrets to store passwords. Simply create a file in
:file:`/run/secrets` which has the same name as the configuration entry. For
example, to provide :code:`SystemDb:Password` as secret file you need to create
the file :file:`/run/secrets/ivy.SystemDb.Password`
