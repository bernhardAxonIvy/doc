.. _migrate-91-92:

Migrating from 9.1 to 9.2
=========================


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
