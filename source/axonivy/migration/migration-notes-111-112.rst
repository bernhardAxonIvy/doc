.. _migrate-111-112:

Migrating from 11.1 to 11.2
===========================

Upgrade to 11.2 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.


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
