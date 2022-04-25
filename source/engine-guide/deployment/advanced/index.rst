Advanced Deployment
===================

To fully automate your CI/CD pipeline, you may want to further :ref:`configure
your target application <deployment-configure-app>` of your deployment and also
influence the :ref:`deployment behavior <deployment-options>`.


.. _deployment-configure-app:

Application Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^

If you are deploying a full application zip-archive you can optionally add an
:ref:`app-yaml` in a dedicated :file:`config` folder of your zip-archive, 
which contains the configuration of the application.

.. literalinclude:: sample-app.yaml
  :language: yaml
  :linenos:

This file should always contain configurations which are the same for all
installations of the application or serve as good defaults like configuration of 
the :code:`StandardProcess`.

**Priority** 

The :file:`app.yaml` will be deployed into the :file:`config` folder of the
application itself and serves as additional configuration for the application,
but with a lower priority than the regular :ref:`<APPNAME>/app.yaml <app-yaml>` 
(e.g. :file:`myApp/app.yaml`) in the :file:`configuration` directory.

Overriding Variables
+++++++++++++++++++++

The :file:`app.yaml` file can override :ref:`variables` declared in projects.

If these variables are values of type file (e.g :code:`[file: json]`), then
these files values can also be overriden by adding them to the :file:`app.zip` 
under :file:`<app.zip>/config/variables/myVariableName.json` as shown below.

::

    app.zip
    ├── config
    │   |──variables
    |   |  └─ userSettings.json
    │   └── app.yaml
    ├── base.iar
    ├── solution.iar
    └── customer.iar


.. _deployment-versioning:

Versioning
^^^^^^^^^^

It is highly recommended that you increase the version of your project each time
you want to deploy a new version of your project on the engine. This ensures
that you will not break currently running cases, and you have the possibility to
go back to the previous version if the new version does not work as expected.

Even though overwriting an already deployed process model version with running
cases is possible. It is at your own risk and should only be done if you are
aware of the possible consequences and ready to accept them.


.. _deployment-options:

Deployment Options
^^^^^^^^^^^^^^^^^^

With deployment options you can influence the deployment behavior: 

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/deploy/sample.deploy.options.yaml
  :language: yaml
  :linenos:

See the
:project-build-plugin-doc:`|axon-ivy| Project Build Plugin deploy documentation <deploy-to-engine-mojo.html>`
for more information about the deployment properties.


There are multiple locations where you can put your options file:

    #. **Deployment specific options file** - If you want to provide options for a single
       deployment simply create a file that has the same prefix as the file you want to
       deploy with a suffix of :file:`.options.yaml`. E.g. if the file you want to deploy
       is :file:`myProject.iar` then create an options file that is called
       :file:`myProject.iar.options.yaml`. Note, that after the deployment the
       :file:`myProject.iar.options.yaml` file will be removed automatically.
    #. **Inside the file that you are deploying** - Put a :file:`deploy.options.yaml`
       file inside your project directory, :file:`\*.iar` or :file:`\*.zip` that you want to deploy.

A specific deployment options file will take precedence over options packed in the deployable file.
