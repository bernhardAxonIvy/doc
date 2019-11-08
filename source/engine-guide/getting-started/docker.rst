.. _getting-started-docker:

Docker
======

We provide an image for demo and testing purpose on `Docker Hub
<https://hub.docker.com/r/axonivy/axonivy-engine/>`_. A container of this image
can be easily started with the following command:

.. code-block:: bash

  docker run -p 8080:8080 axonivy/axonivy-engine

After startup, the engine is available at http://localhost:8080. On `GitHub
<https://github.com/ivy-samples/docker-samples>`_ you can find many examples for
using our docker image.

.. WARNING::
  Since the container should always be updated with the latest security patches,
  we recommend that you build your own image for production systems.

If you need to build an own image, take a closer look at the following
:file:`Dockerfile`:

.. literalinclude:: ../../../../development/ch.ivyteam.ivy.build.maven/job/docker.image/src/main/docker/Dockerfile
  :language: dockerfile
  :linenos:

The following snippet shows the :file:`docker-entrypoint.sh`: 

.. literalinclude:: ../../../../development/ch.ivyteam.ivy.build.maven/job/docker.image/src/main/docker/docker-entrypoint.sh
  :language: bash
  :linenos:
