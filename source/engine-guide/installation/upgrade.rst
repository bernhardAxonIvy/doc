Upgrading
=========

If you upgrade to a new update release within the same Long Term Support (LTS) or Leading Edge (LE)
version (e.g. 7.0.3 to 7.0.4) then follow the steps in the section `Preparation`_ and `Upgrade`_.
A project migration and system database conversion are normally not needed if not explicit communicated
otherwise in the Migration Notes. Therefore, you can skip section Project Migration and steps 2 and 4 in the section Upgrade.

.. WARNING::
    Upgrading from Xpert.ivy Server 3.x to Axon.ivy Engine 5.x and later is not supported.

Preparation
-----------

#. Install the new Axon.ivy Engine version to a new installation directory (See section Install Axon.ivy Engine).
#. Read the Migration Notes document of the new version.
#. If necessary (according to the Migration Notes), request a new licence (see section Installing a Licence).
#. Back up the system database and the application file directories of the old installation.
#. Copy the file serverconfig.xml plus all YAML and properties files from the configuration directory of the old
   installation directory to the configuration directory of the new installation.
#. Unless a new licence is required you should also copy the old licence file to the new installation.
#. Modifications on any other configuration files located in the configuration, elasticsearch/config,
   webapps/ivy/WEB-INF or webapps/ivy/META-INF directories of the old installation may be ported over to the
   corresponding files in the new installation, if required. To see what has been changed, we recommend the usage
   of some diff tool to compare the individual config files of old and new installation.
#. If you have installed additional extension plugins into the dropins directory then copy them to the dropins
   directory of the new installation directory if they are compatible with the new |ivy-engine| version.
   For those which are not compatible try to get new compatible versions and install them.

.. WARNING::
    Before upgrading of an Axon.ivy Engine read the Migration Notes document of the new version carefully.
    This document will tell you exactly what has changed since the last version and will list any additional
    steps to be undertaken, which might not be described here.

Project Migration
-----------------

Project migration is only necessary if mentioned in the Migration Notes. If migration is required, all projects deployed
to process model versions in state PREPARED, RELEASED, DEPRECATED and ARCHIVED must be converted.
The following steps are necessary for every process model version:

#. Copy the project from the process model version file directory on the engine to a local directory on your developer machine.
#. Import the project into your Designer workspace.
#. Migrate the project according the Migration Notes of the Designer. Usually this is achieved by invoking the project
   conversion action on each project (see Designer Guide for more information). Some manual adaptions may be necessary.
#. Test the migrated project in the Designer.

All migrated projects must be redeployed to the new, upgraded engine version (see next section).


Upgrade
-------

#. Stop the |ivy-engine|.
#. Either convert the system database with the “Engine Configuration UI” (See “System Database”).
   Or set autoConvert property to true in the “ivy.yaml” of the configuration directory.
#. Start the |ivy-engine|.
#. Redeploy all converted/migrated Axon.ivy projects using the Axon.ivy Engine Administration (see section Deploying a Project).
#. You may now delete the old engine installation directory, unless the following warning applies to your installation:

.. WARNING::
    Please note that the new, upgraded engine installation will still refer to the application file directories that were
    used by the old installation.
    As a consequence, you must never delete the directory of an old installation, if it contains application file directories (you can check
    the file directory by displaying the application information inside the Axon.ivy Engine Administration). If the application file
    directories of your installation are stored elsewhere, then the deletion of the old engine installation will not cause any problems.