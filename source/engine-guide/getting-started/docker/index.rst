.. _getting-started-docker:

Docker
======

We provide the |ivy-engine| as docker image on `Docker Hub
<https://hub.docker.com/r/axonivy/axonivy-engine/>`_. A container of this image
can be easily started with the following command:

.. code-block:: bash

  docker run -p 8080:8080 axonivy/axonivy-engine

After startup, the engine is available at http://localhost:8080. On `GitHub
<https://github.com/ivy-samples/docker-samples>`_ you can find many examples for
using our docker image.

Have a look at our `Dockerfile <https://github.com/axonivy/docker-image>`_
to see how we build the docker image for the |ivy-engine|
if you want to build your own docker image for example with another base image.
