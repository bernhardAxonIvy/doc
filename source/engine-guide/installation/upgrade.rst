Upgrading
=========

If you upgrade to a new update release within the same Long Term Support (LTS)
or Leading Edge (LE) version (e.g. 7.0.3 to 7.0.4) then follow the steps in the
section `Preparation`_ and `Upgrade`_. A project migration and system database
conversion are normally not needed if not explicit communicated otherwise in the
Migration Notes. Therefore, you can skip section Project Migration and steps 2
and 4 in the section Upgrade.

.. WARNING::
    Upgrading from Xpert.ivy Server 3.x to |ivy-engine| 4.x and later is not
    supported.

Preparation
-----------

#. Install the new |ivy-engine| version to a new installation directory (See
   section :ref:`install_engine`).
#. Read the Migration Notes document of the new version.
#. If necessary (according to the Migration Notes), request a new licence (see
   section :ref:`installing-a-licence`).
#. Back up the system database and the application file directories of the old
   installation.
#. Copy the file :file:`serverconfig.xml` plus all YAML and properties files from the
   :file:`configuration` directory of the old installation directory to the
   :file:`configuration` directory of the new installation.
#. Unless a new licence is required you should also copy the old licence file to
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

.. WARNING::
    Before upgrading of an |ivy-engine| read the Migration Notes document of
    the new version carefully. This document will tell you exactly what has
    changed since the last version and will list any additional steps to be
    undertaken, which might not be described here.

Project Migration
-----------------

Project migration is only necessary if mentioned in the Migration Notes. If
migration is required, all projects deployed to process model versions in state
PREPARED, RELEASED, DEPRECATED and ARCHIVED must be converted. The following
steps are necessary for every process model version:

#. Import the version that is deployed on your |ivy-engine| from your source repository
   into into your Designer workspace.
#. Migrate the project according the Migration Notes of the Designer. Usually
   this is achieved by invoking the project conversion action on each project
   (see Designer Guide for more information). Some manual adaptions may be
   necessary.
#. Test the migrated project in the Designer.

All migrated projects must be redeployed to the new, upgraded |ivy-engine| version
(see next section).


Upgrade
-------

#. :ref:`Stop <control-center>` the |ivy-engine|.
#. Either convert the system database with the :ref:`Engine Cockpit <engine-cockpit-systemdb>`.
   Or set ``autoConvert`` property to true in the :ref:`ivy-yaml`.
#. :ref:`Start <control-center>` the |ivy-engine|.
#. :ref:`Redeploy <deployment>` all converted/migrated Axon.ivy projects.
#. You may now delete the old |ivy-engine| installation directory, **unless** the
   following warning applies to your installation:

.. WARNING::
    Please note that the new, upgraded |ivy-engine| installation will still refer to
    the application file directories that were used by the old installation. As
    a consequence, you must never delete the directory of an old installation,
    if it contains application file directories (you can check the file
    directory of an application in the :ref:`engine-cockpit`). 
    If the application file directories of your
    installation are stored elsewhere, then the deletion of the old |ivy-engine|
    installation will not cause any problems.