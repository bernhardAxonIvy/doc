.. _deployment-configure-app:

Application Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^

If you are deploying an application zip you can optionally add an
:ref:`app-yaml` in a dedicated :file:`config` folder of your zip-archive, 
which contains the configuration of the application.

.. literalinclude:: sample-app.yaml
  :language: yaml
  :linenos:

::

    app.zip
    ├── config
    │   └── app.yaml
    ├── hr.iar
    └── finance.iar


.. rubric:: Priority

The :file:`app.yaml` will be deployed into the :file:`config` folder of the
application itself (:file:`applications` directory) and serves as additional
configuration for the application, but with a lower priority than the regular
:ref:`<appName>/app.yaml <app-yaml>` (e.g., :file:`myApp/app.yaml`) in the
:file:`configuration` directory.


.. rubric:: Overriding Variables

The :file:`app.yaml` file can override :ref:`variables` declared in projects.
If these variables are values of type file (e.g :code:`[file: json]`), then
these files values can also be overriden by adding them to the :file:`app.zip` 
in :file:`<app.zip>/config/variables/myVariableName.json` as shown below.

::

    app.zip
    ├── config
    │   |──variables
    |   |  └─ userSettings.json
    │   └── app.yaml
    ├── finance.iar
    └── hr.iar

