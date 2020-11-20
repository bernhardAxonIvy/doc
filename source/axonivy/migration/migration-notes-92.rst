.. _migrate-91-92:

Migrating from 9.1 to 9.2
=========================


Business Case Lifecycle
***********************

The lifecycle of the :ref:`business-case` has been simplified.
The first case is the business case and will stay the business case forever.
Additional cases will be sub cases of the business case.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Previously the first case (formerly initial case) was copied as soon
  as new cases were attached. The copy was then the business case.

  This change also means that the business case can now have tasks as direct
  children and not only sub cases as children.



Upgrade Log4j 1 to Log4j 2
**************************

Logs are written now with Log4j 2 which has
a new configuration format. If you made
any custom logging configuration you need
to adapt these changes to the new logging
configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  The legacy logging configuration file :file:`[engineDir]/configuration/log4jconfig.xml`
  is no longer in charge. You need to make all your custom logging configuration in
  :file:`[engineDir]/configuration/log4j2.xml`. Read more about customizing the :ref:`logging`.



SSL Client Configuration
************************

We made the life of Axon.ivy Engine administrators easier
due simplification of the SSL configuration.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  We removed :code:`SSL.Client.UseSystemTruststore` and :code:`SSL.Client.UseCustomTruststore` in the :ref:`ivy-yaml`.
  It's not possible to configure them anymore. The system trustore of the JVM and the custom
  truststore of ivy are always active now. If you don't trust a certificate
  remove them out of the specific truststore. 



Workflow Event Log API removed
******************************

The Workflow Event Log API has been deprecated in Axon.ivy 8.0
and has been removed now. It was never Public API, so most project should
not be affected.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  The API consists of the following methods, interfaces and enums:

    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.findEventLog(...)`
    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.createEventLog(...)`
    * :code:`ch.ivyteam.ivy.workflow.IWorkflowContext.createEventLogPropertyFilter(...)`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogDescription`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogProperty`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.EventLogStatus`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLog`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLogCase`
    * :code:`ch.ivyteam.ivy.workflow.eventlog.IEventLogTask`



Legacy jDTS driver for MS SQL Server dropped
********************************************

The legacy jDTS driver have been dropped. You need
to switch to the official Microsoft JDBC Driver for
the System Database and external databases if you
still have used the jDTS driver.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  **System Database**

  #. Go to :ref:`Engine Cockpit / System Database <engine-cockpit-systemdb>`
  #. Choose :guilabel:`Driver` **Microsoft SQL Server**
  #. Click :guilabel:`Check Connection`
  #. Click :guilabel:`Save`
  #. Restart Axon.ivy Engine

  **External Databases**
  
  #. Go to :ref:`Engine Cockpit / External Databases <engine-cockpit-external-database>`
  #. Edit all **External Databases** with :guilabel:`Driver` **net.sourceforge.jtds.jdbc.Driver**
  #. Choose **com.microsoft.sqlserver.jdbc.SQLServerDriver** as :guilabel:`Driver`
  #. Save configuration



Enabled JavaTime module for Rest Clients by default
***************************************************

The standard JSON serialization feature for Rest Clients is now aware of JavaTime objects,
such as ZonedDateTime, and will therefore optimize their JSON representation.
  
.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**
  
  E.g. ``java.time.ZonedDateTime`` will be serialized as a simple timestamp number, rathern than a complex object structure.

  This change should not have any side-effects on existing clients since java.time objects
  which did not have any special serializer features enabled could not be serialized in way that provides any
  value outside of the java world.
  
  However, if you face any issues with change java.time object serialization. You may disable
  the JavaTime module by setting the RestClient property ``JSON.Module.JavaTime=false``



Removed StartSignalEventElementQuery
************************************

There was an API to create a Query for StartSignalEventElements (StartSignalEventElementQuery), as the
StartElements are no longer part of the System Database, we removed this API. If you had this API in usage, 
please change to the simpler methods *all()*, *matches(pattern)* or *contains(part)*.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  Repalce usages of:
  
    * :code:`Ivy.wf().signals().receivers().createStartSignalQuery()`
    
  With one of:
  
    * :code:`Ivy.wf().signals().receivers().all()`
    * :code:`Ivy.wf().signals().receivers().matches(pattern)`
    * :code:`Ivy.wf().signals().receivers().contains(part)`
