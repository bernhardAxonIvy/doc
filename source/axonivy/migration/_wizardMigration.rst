Migration:

#. Use the :ref:`migration-wizard` to migrate crucial configuration files to the new Axon.ivy Engine. You can start using the wizard by starting the new Axon.ivy Engine. Browse to the Axon.ivy Engine URI (e.g http://localhost:8080 ) and click on ``Setup Wizard`` > ``Migration Wizard``.
#. You may have customized files from in the old installation directory, which must be copied manually to the new installation directory. The files to copy depend on your setup:

   #. **Applications**: application installation files that contain your deployed projects/PMVs. If you configured to let applications live within a sub-path of the Axon.ivy Engine, copy them to the new installation directory. To avoid this step in the future, it's best practice to deploy application files to a static directory outside the Axon.ivy Engine installastion directory. You can check the file directory of an application in the :ref:`engine-cockpit`.
   #. **Webapps**: the ``webapps/ivy`` directory may contains customized error-pages or libraries. If you have done customizations in the webapps, copy the changes files manually to the new installation directory.
