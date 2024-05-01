Migration:

#. Copy all configuration files from the old intallation to the new installation.
#. You may have customized files in the old installation directory. Those
   have to be copied manually to the new installation directory. The files to
   copy depend on your setup:

   #. **Applications**: application installation files that contain your
      deployed projects/PMVs. If you configured to let applications live within
      a sub-path of the |ivy-engine|, copy them to the new installation
      directory. To avoid this step in the future, it's best practice to deploy
      application files to a static directory outside the |ivy-engine|
      installation directory. You can check the file directory of an application
      in the :ref:`engine-cockpit`.
   #. **Webapps**: the ``webapps/ivy`` directory may contain customized
      error-pages or libraries. If you have done customizations in the webapps,
      copy the changed files manually to the new installation directory.
