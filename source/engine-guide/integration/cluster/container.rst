.. _cluster-container:

Container Image
===============

We strongly recommend operating an |ivy-engine| Cluster in a containerized 
environment like Docker or Kubernetes.

We recommend that you build your own container image that contains the |ivy-engine| 
together with your projects and configuration.

The building of the container image can be done automatically using a build server.

.. graphviz:: container.dot
   :layout: neato
   
The build server:   

1. Checks out all your projects, configuration and a Dockerfile (specifies how to build your container image)
   from a Git Repository.
2. Builds all your projects and bundles them in an application zip file.
3. Builds your container image by using the Dockerfile. 
   The base image ``axonivy/axonivy-engine`` image will be pulled from Docker Hub.
4. It stores your new image (``your-company/your-project``) in a Docker Registry.

Then, you can start your |ivy-engine| Cluster using your new container image (``your-company/your-project``).

A simple Dockerfile that bundles an |ivy-engine|, your projects and your configuration files in an own container image looks like this:

.. code-block:: Dockerfile

  # The base docker image 
  FROM axonivy/axonivy-engine:|version|
  
  # Add your own ivy.yaml configuration file 
  ADD --chown=ivy:ivy config/ivy.yaml /etc/axonivy-engine/ivy.yaml
  
  # Add your license file 
  ADD --chown=ivy:ivy config/myCompany.lic /etc/axonivy-engine/myCompany.lic
  
  # Add your projects bundled in an application zip file 
  ADD --chown=ivy:ivy application/target/application.zip /var/lib/axonivy-engine/deploy/application.zip

See also our example configurations on GitHub
for :link-url:`NGINX <docker-scaling-nginx>` and :link-url:`HAProxy <docker-scaling-haproxy>`
on how to setup an |ivy-engine| Cluster with docker-compose.