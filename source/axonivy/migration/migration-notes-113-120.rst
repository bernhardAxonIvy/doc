.. _migrate-113-114:

Migrating from 11.3 to 12.0
===========================

Upgrade to 12.0 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.

License
*******

|tag-ops-changed|

You need to request a new license for |ivy-engine| 12.0.


.. _java21-migration:

Java 21
-------

|tag-project-changed| |tag-project-auto-convert| |tag-ops-changed|

We updated Java to version 21:

- Convert your Axon Ivy projects to the latest version to use the new Java 21 features. 
- You may have to update third-party libraries that do not yet support Java 21 to newer versions.
- Use Java 21 to run your Maven project builds.
- Use an `Adoptium / Eclipse Temurin JDK or JRE <https://adoptium.net/temurin/releases?version=17>`_ to run Axon Ivy on Linux or macOS.


OpenSearch
----------

|tag-ops-changed|

We switch from Elasticsearch to OpenSearch. If you have used an external Elasticsearch
server you need to switch to OpenSearch.

All configuration keys in `ivy.yaml` starting with `Elasticsearch` starts now with `SearchEngine`.
When migrating the Axon Ivy Engine this will be automatically done.


Docker Image
------------

|tag-ops-changed|

The file paths of the Axon Ivy Engine Docker image has changed. The Axon Ivy Engine
is now installed in the root directory :file:`/ivy` and no longer under :file:`/usr/lib/axonivy-engine`.
Also all symlinks like :file:`/etc/axonivy-engine` are no longer provided. The full `changelog <https://github.com/axonivy/docker-image/blob/master/CHANGELOG.md>`_ of
the docker image is available here.


Axon Ivy Designer for Mac
-------------------------

The Axon Ivy Designer for Mac is in beta. The reason for this is the integrated
SWT browser as part of Eclipse, which only works sparsely.


System Database
---------------

The support for the following versions for database management systems as system database
has been dropped:

- PostgreSQL 13 and lower
- MariaDb 10.10 and lower
- MSSQL 2017 and lower
- MySQL 8.3 and lower


Windows Server
--------------

Support for Windows Server 2012 and 2016 was dropped.


Debian Package
--------------

A debian package for the Axon Ivy Engine will no longer be provided.
We recommend to use the Axon Ivy Docker Image.

Maven 3.9
---------

|tag-project-changed| 

The `project-build-plugin <https://axonivy.github.io/project-build-plugin>`__
now requires Maven 3.9 to build Axon Ivy Projects. You need to install Maven 3.9
on your :ref:`CI/CD environment <continuous-integration>` and also on your
machine, if you execute Maven builds locally. Maven can be installed according
to these `instructions <https://maven.apache.org/install.html>`__.


.. _variables-migration:

Variables
-------------

|tag-project-changed| |tag-project-auto-convert| 

We are no longer supporting dots in the keys of :file:`variables.yaml`. All keys
containing dots will be migrated to corresponding mappings.

For example:

.. code-block:: yaml
      
  Variables:
    connector.user: user
    connector.password: password

will be migrated to:

.. code-block:: yaml
      
  Variables:
    connector:
      user: user
      password: password

In rare cases, conflicts can occur during migration. In that case, a comment is
added to the :file:`variables.yaml` with the lines that would result in such a
conflict. These need to be fixed manually.

For example:

.. code-block:: yaml
      
  Variables:
    connector.user: user
    connector.user.password: password

will be migrated to:

.. code-block:: yaml
      
  Variables:
    connector:
      user: user
      # FIXME: user.password: password



SSO Migration
-------------

|tag-ops-changed| |tag-ops-wizard|   


Now we support a separate Single Sign-On (SSO) for each security context. With
this change, the default SSO no longer exists at the :file:`ivy.yaml` root level
and will be moved to each security context individually.

For example:

.. code-block:: yaml
      
  SSO:
    Enabled: true
    UserHeader: X-Forwarded-User
  SecuritySystems:
    Name1:
      UrlPath: abc1

will be migrated to:

.. code-block:: yaml
      
  SecuritySystems:
    default:
      SSO:
        Enabled: true
        UserHeader: X-Forwarded-User
    Name1:
      UrlPath: abc1
      SSO:
        Enabled: true
        UserHeader: X-Forwarded-User



-------------------
.. include:: _tagLegend.rst
