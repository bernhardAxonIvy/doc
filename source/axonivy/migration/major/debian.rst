.. _migration-upgrade-engine-major-deb:

Debian
==========

Our Debian packages contain a major version qualifier (e.g. ``axonivy-engine-8x``) and can therefore be installed independently.
So, you can proceed with your major version migration as follows:

#. Download the latest |ivy-engine| you want to migrate to. E.g. ``wget https://dev.axonivy.com/permalink/9.2/axonivy-engine.deb``.
#. Install the new version with apt ``sudo apt install axonivy-engine.deb``
#. Run the :ref:`migration-wizard` to migrate crucial configuration files to the
   new |ivy-engine|. You can start using the wizard by starting the new
   |ivy-engine|. Browse to the |ivy-engine| URI (e.g http://localhost:8080 ) and
   click on ``Setup Wizard`` > ``Migration Wizard``.
#. Migrate using the :ref:`migration-wizard`: 

   #. provide the location of your previous installation as input (e.g. ``/usr/lib/axonivy-engine-8x/``.
   #. run the migration tasks and answer the manual migration steps.

#. Apply the :ref:`migration-upgrade-engine-common` 
