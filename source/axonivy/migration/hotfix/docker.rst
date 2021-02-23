.. _migration-upgrade-engine-hotfix-docker:

Docker
==========

It's good practice to keep your docker-engine save and sound, by frequently switching
to the latest available docker-images. We recommend to rely upon specific tags (e.g. ``8.0.6``)
so that you know that absolutely no magic can happen when you role out into production. 

To update your engine to the latest version you are just required to switch your image 
version declaration to the latest hotfix in your release train 
(e.g. from  ``axonivy/axonivy-engine:8.0.6`` to ``axonivy/axonivy-engine:8.0.13``).
Then you can pull the new images, run integration tests and roll the update out into production.

The command to pull the latest images may differ to the approach you are using to run docker. 
Here's a Docker-Compose example that pulls the new |ivy-engine| hotfix version:

.. code:: bash

    docker-compose pull
    docker-compose up
