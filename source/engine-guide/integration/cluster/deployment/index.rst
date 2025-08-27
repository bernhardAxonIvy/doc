.. _cluster-deployment:

Deployment
==========

Axon Ivy Engine Enterprise Editions support all available :ref:`deployment
methods <deployment-deploying>`. However, the application directory must be
shared. In container environments, when using the official Axon Ivy Docker
image, you need to provide a persistent volume for the application directory,
which is by default located at :code:`/ivy/applications`.

Container Image
---------------

You can also create your own container image based on the official Axon Ivy
Engine image. To do so, include your Axon Ivy Application along with all
required Process Model Versions (including old versions too) for runtime in the
deployment directory :code:`/ivy/deploy`. In this setup, there is no need to
share the application directory across nodes.

.. code:: bash

    FROM axonivy/axonivy-engine:12.0
    ADD --chown=ivy:0 app.zip /ivy/deploy/app.zip

A CI/CD pipeline can look like this:

.. graphviz:: container.dot

1. The build server is cloning the Axon Ivy Projects from a SCM system like
   GitHub.
2. The build server is building the Axon Ivy Projects and creating an
   application zip.
3. The build server is creating a Docker image based on the official Axon Ivy
   Engine Image.
4. The build server is publishing the image to an internal or external image registry.
5. The container orchestration platform (e.g., Kubernetes) is deploying the new
   image to the cluster.
