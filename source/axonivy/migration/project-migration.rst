.. _migration-project:

Project Migration
-----------------

Project migration is only necessary if specifically mentioned in the
:ref:`migration-notes`.

If a migration is required, all deployed projects with process model versions
in state PREPARED, RELEASED, DEPRECATED and ARCHIVED must be converted.
Download and install the |ivy-designer| version matching your new |ivy-engine|
following the :ref:`installation instructions <designer-install>` and perform
the following steps for every process model version:

#. Import the version that is deployed on your |ivy-engine| from your source repository
   into into your |ivy-designer| workspace.
#. Migrate the project according the description in section :ref:`project-convert` of the
   |ivy-designer| Guide. Usually this is achieved by invoking the project conversion action
   on each project. Some manual adaptations may be necessary.
#. Test the migrated project in the |ivy-designer|.

All migrated projects must be re-deployed to the new, upgraded |ivy-engine| version
(see next section).
