.. _migration-preperation:

Preparation
-----------

#. Install the new |ivy-engine| version to a new installation directory (See
   section :ref:`install_engine`).
#. If necessary (according to the Migration Notes), request a new license (see
   section :ref:`installing-a-licence`).
#. Back up the system database and the application file directories of the old
   installation.
#. Copy the file :file:`serverconfig.xml` plus all YAML and properties files from the
   :file:`configuration` directory of the old installation directory to the
   :file:`configuration` directory of the new installation.
#. Unless a new license is required you should also copy the old license file to
   the new installation.
#. If you have modified any other configuration files located in the
   :file:`configuration`, :file:`elasticsearch/config`,
   :file:`webapps/ivy/WEB-INF` or :file:`webapps/ivy/META-INF` directories of
   the old installation then apply the changes also in the corresponding files in the new
   installation, if required. To see what has been changed, we recommend the
   usage of some diff tool to compare the individual config files of old and new
   installation.
#. If you have installed additional extension plugins into the :file:`dropins`
   directory then copy them to the :file:`dropins` directory of the new
   installation directory if they are compatible with the new |ivy-engine|
   version. For those which are not compatible try to get new compatible
   versions and install them.
