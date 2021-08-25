

.. _project-convert:

Converting Projects
--------------------

If the project format version changes with a new |axon-ivy| release, then
old projects will show an error marker, describing them as *out of date*
or having an invalid version. This can happen, when the technical format
for |axon-ivy| projects changes with a new |axon-ivy| release (e.g. the way
how some artifacts are stored may be changed, new artifacts may be
introduced, etc.). :

.. figure:: /_images/ivy-project/convert-wrong-version.png
   :alt: Wrong project version marker

   Wrong project version marker

If you inspect your project's properties, the main page will show you
the actual project version and inform you whether it is up to date or
not (see :ref:`project-preferences` below):

.. figure:: /_images/ivy-project/convert-project-version-before-conversion.png
   :alt: Project version before conversion

   Project version before conversion

.. figure:: /_images/ivy-project/convert-project-version-after-conversion.png
   :alt: Project version after conversion

   Project version after conversion

|axon-ivy| can convert your old projects automatically to the newest
project format for you. During this process, all existing artifacts will
be converted (if necessary) so as to work with the new |axon-ivy| version,
and any missing but required artifacts will be added.

To run the project conversion, select the project's node in the |axon-ivy|
project view and right click to bring up the context menu. Select
*Convert Project* to initiate the conversion. A log screen will appear
that documents the conversion process (this log is also saved in the
``logs/`` folder inside your project), and which will inform you about
whether the conversion was successful or not.

.. figure:: /_images/ivy-project/convert-invoking-conversion.png
   :alt: Invoking the project conversion

   Invoking the project conversion

.. warning::   

   It is absolutely recommended that you create a copy of your project
   before invoking the conversion. Alternatively you can have your
   project under version control. In this case, make sure that all your
   projects are checked in, before you invoke the conversion, so that
   you can easily roll back (revert) to the old version, if conversion
   should fail for some reason.

