.. _migration-upgrade:

Upgrade
-------

#. :ref:`Stop <control-center>` the |ivy-engine|.
#. Either :ref:`convert the system database <upgrade-system-db>` with the :ref:`Engine Cockpit <engine-cockpit-systemdb>`
   or set the ``autoConvert`` property in the :ref:`ivy-yaml` to ``true``.
#. :ref:`Start <control-center>` the |ivy-engine|.
#. :ref:`Re-deploy <deployment>` all converted/migrated |axon-ivy| projects.
#. If the Engine is integrated with a reverse proxy (e.g. IIS or Apache), 
   it is best practice to check if the most recent Apache Tomcat Connector is installed.
   For more information refer to the :ref:`upgrade-tomcat-connect` page.
#. You may now delete the old |ivy-engine| installation directory, **unless** the
   following warning applies to your installation:

.. WARNING::
    Please note that the new, upgraded |ivy-engine| installation will still refer to
    the application file directories that were used by the old installation. As
    a consequence, you must never delete the directory of an old installation
    if it contains application file directories (you can check the file
    directory of an application in the :ref:`engine-cockpit`).
    If the application file directories of your installation are stored outside
    the |ivy-engine| installation directory, the deletion of the old
    |ivy-engine| installation will not cause any problems or side effects.

.. toctree::
   :hidden:
   :maxdepth: 1

   upgrade-systemdatabase
   upgrade-tomcat-connector

