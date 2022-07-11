.. _deployment-prepare:

Prepare
-------

Before deployment, the Axon Ivy project must be available as ivy-archive (IAR)
or packed as a zip-archive (ZIP). It is also possible to pack multiple Axon Ivy
projects in one single zip-archive. All project dependencies must be resolved,
either already installed in the application or part of the deployment. 

We recommend to build a zip-archive, which contains all projects of an
application.

::

    app.zip
    ├── config
    │   └── app.yaml
    ├── base.iar
    ├── solution.iar
    └── customer.iar

You are able to :ref:`configure the application <deployment-configure-app>`
within a full application zip-archive. Also, proper :ref:`versioning
<deployment-versioning>` is important.
