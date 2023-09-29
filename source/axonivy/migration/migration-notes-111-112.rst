.. _migrate-111-112:

Migrating from 11.1 to 11.2
===========================

Upgrade to 11.2 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.


Application Path
----------------

|tag-ops-changed| 

In Axon Ivy 7.0 and earlier you were able to define the installation path of an application over
the Admin UI when creating an application. This path was stored in Axon Ivy System Database (`IWA_Application.FileDirectory`).
Since Axon Ivy 8.0 new applications will be stored under the configurable path `Data.AppDirectory` in :ref:`ivy.yaml <ivy-yaml>`
which points by default to `applications`.

We now have removed the legacy support for `IWA_Application.FilePath`. If some applications was created with Axon 7.0
or earlier, you need to move them manually at that place.


Documents Path
--------------

|tag-ops-deprecated| 

Documents will be stored now relative to the path `Data.Directory` configured in :ref:`ivy.yaml <ivy-yaml>`.
If you migrate from an older system, the Axon Ivy Engine will automatically configure the local document
storage and using the legacy path `UseLegacyPath`. In this case the documents will be read and write from the
same place:

.. code-block:: yaml
       
       SecuritySystems:
         default:
           DocumentStorage:
             Name: local
             Config:
               UseLegacyPath: false


This is just a note, after the migration there is nothing todo. Read more in chapter :ref:`Document Storage <document-storage>`.


WebPage activity
----------------

|tag-project-removed|

The WebPage activity process element is no longer supported. 

It will be automatically removed from existing processes where it has been present.

In most cases it can be replaced with normal :ref:`html-dialogs`.

AutoProcessStarterEventBean
---------------------------

|tag-project-deprecated|

The process start event bean :code:`ch.ivyteam.ivy.process.eventstart.beans.AutoProcessStarterEventBean` has been deprecated. Instead use the 
new :code:`ch.ivyteam.ivy.process.eventstart.beans.TimerBean`.  

------------

.. include:: _tagLegend.rst
