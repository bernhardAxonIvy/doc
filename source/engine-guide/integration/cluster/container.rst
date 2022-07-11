.. _cluster-container:

Container Image
===============

We strongly recommend operating an Axon Ivy Engine Cluster in a containerized 
environment like Docker or Kubernetes.

We recommend that you build your own container image that contains the Axon Ivy Engine 
and includes your projects and configuration.

You can build the container image automatically by using a build server.

.. graphviz:: container.dot
   :layout: neato
   
The build server:   

1. Checks out all your projects, configurations and a Dockerfile which specifies
   how to build your container image from a Git repository.
2. Builds all your projects and bundles them in an application zip file.
3. Builds your container image as defined by the Dockerfile. 
   It pulls the base image ``axonivy/axonivy-engine`` image from Docker Hub.
4. It stores your new image (``your-company/your-project``) in a `Docker
   Registry <https://hub.docker.com/_/registry>`_.

Then, you can start your Axon Ivy Engine Cluster using your new container image
(``your-company/your-project``).

A simple Dockerfile that bundles the Axon Ivy Engine, your projects and your
configuration files in its own container image looks as follows:

.. code-block:: Dockerfile

  # The base docker image 
  FROM axonivy/axonivy-engine:|version|
  
  # Add your own ivy.yaml configuration file 
  ADD --chown=ivy:ivy config/ivy.yaml /etc/axonivy-engine/ivy.yaml
  
  # Add your license file 
  ADD --chown=ivy:ivy config/myCompany.lic /etc/axonivy-engine/myCompany.lic
  
  # Add your projects bundled in an application zip file 
  ADD --chown=ivy:ivy application/target/application.zip /var/lib/axonivy-engine/deploy/application.zip
  
  # Create a files directory that can be mounted to a docker volume 
  # to be shared between cluster nodes
  RUN mkdir -p /var/lib/axonivy-engine/files && chown -R ivy /var/lib/axonivy-engine/files

Examples
--------

Please refer to our :link-url:`project-build-examples <build-examples-docker>`.
It shows you how to use Maven to build your own container image that contains your
Axon Ivy Engine and your application zip file.

Additionally, refer to our example configurations on GitHub for 
:link-url:`NGINX <docker-scaling-nginx>` and :link-url:`HAProxy <docker-scaling-haproxy>` to
learn how to setup a Axon Ivy Engine Cluster with docker-compose.
