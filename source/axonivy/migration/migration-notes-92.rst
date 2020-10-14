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
  :public-api:`BusinessCase#getTasks</ch/ivyteam/ivy/workflow/businesscase/IBusinessCase.html#getTasks()>`
  and
  :public-api:`IBusinessCase#getActiveTasks</ch/ivyteam/ivy/workflow/businesscase/IBusinessCase.html#getActiveTasks()>`
  have been adapted in this way, which only return the direct tasks of the business case and not all tasks
  of all sub cases as well.



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
