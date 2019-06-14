.. _configuration:

Configuration
*************

The |ivy-engine| is configured by files. They are located in the
:file:`/configuration` directory of the engine.


Files
=====

The :ref:`ivy-yaml` file contains the most important entries that define the
environment and runtime behaviour of the |ivy-engine|.

.. literalinclude:: includes/ivy-full.yaml
  :language: yaml
  :linenos:


.. rubric:: Craft you own configuration

To craft your own configuration you would typically copy values from our
template files, located under :file:`[engineDir]/configuration/defaults` or the
:ref:`configuration-file-reference` and adjust them according to your needs. The
template files outline valid configuration attributes and document possible
values. They are constantly improved by us, and are not designed to store your
actual configuration.


.. _config-systemdb:

System Database
===============

An untouched |ivy-engine| runs in demo mode. In consequence workflow data is
never stored, but kept in a memory database. To run a productive engine an
external system database must be connected, where workflow data will be stored.

To define the database of the |ivy-engine|, the :code:`SystemDb` entries must be
set.

.. literalinclude:: includes/ivy-systemdb.yaml
  :language: yaml
  :linenos:

To run the |ivy-engine| with a System Database a license is required. See
:ref:`installing-a-licence`.

The schema of the Axon.ivy System Database must exist on the referenced database
system. The :ref:`engine-config-ui` and :ref:`engine-config-cli` simplify the
creation of the SystemDb connection.


Users
=====

Users are kept in a so-called security system which can be defined in
:ref:`ivy-yaml`. Each application defines in :ref:`app-yaml` which security
system is used. There are two types of security systems: 

* **Internal Security System**:
  Used to manage the users directly on the |ivy-engine|. There is only one
  Internal Security System, which is called Ivy Security System. No further
  settings are available for this Security System. This is also the default
  Security System for application which has no security system defined.
* **External Security System**:
  Used to synchronize users from a name and directory service such as Active
  Directory. The example below shows a simple connection to an Active Directory.
  Have a look at the :ref:`ivy-securitysystem-yaml` for all supported name
  and directory services and further settings.

  .. literalinclude:: includes/ivy-securitysystem.yaml
    :language: yaml
    :linenos:

  .. literalinclude:: includes/ivy-securitysystem-app.yaml
    :language: yaml
    :linenos:


.. _config-email:

Email
=====

The Axon.ivy engine sends emails for different purposes:

* Emails that are sent within a process via the mail step.
* New task assignment and daily task summaries to users.
* License expiration reminders to the administrators.

For this you have to configure an email server in :ref:`ivy-yaml`: 

.. literalinclude:: includes/ivy-email.yaml
  :language: yaml
  :linenos:

You can configure task email notification settings for new task assignments and
daily task summaries at application level in :ref:`app-yaml`: 

.. literalinclude:: includes/ivy-email-app.yaml
  :language: yaml
  :linenos:

Users are able to customize their notification settings in a workflow ui like
the Portal. The content of the task email notifications can be customized by
providing :ref:`standard-processes`.



Advanced Configuration
======================

Passwords
---------

You may want to encrypt sensitive data like a password in your configuration
files. To do this you can enclose any value with ``"${encrypt:}"``. The
|ivy-engine| will automatically encrypt and replace that value in file, when the
configuration will be loaded. The system database password can be encrypted as
follows: 

.. literalinclude:: includes/ivy-password.yaml
    :language: yaml
    :linenos:

There is a smooth :ref:`configuration_containers_secrets` integration, which is very useful in container
environments such as Docker. 


Business Calendar
-----------------

A business calendar defines the official business hours and business days.
These settings are used for business calendar calculations, e.g. what date will
it be in three business days.
See at :designer-guide:`Designer Guide </ivy.concepts.html>`
and :public-api:`IBusinessCalendar </ch/ivyteam/ivy/application/calendar/IBusinessCalendar.html>`
for more information.

It is defined in the application's :ref:`app-yaml`. An application contains
at least one business calendar; if none is defined, a default calendar is
automatically generated.

Here is an example of a business calendar definition;
see :ref:`app-businesscalendar-yaml` for more detailed information.

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/examples/app-businesscalendar.yaml
  :language: yaml
  :linenos:


Html Theme
----------

The look and feel of Html Dialogs is defined by its theme. You can change the
appearance of any dialog on several scopes:

* Globally for all Html Dialogs via :ref:`web-xml`. 
* For a single application in the :ref:`app-yaml`.

.. literalinclude:: includes/ivy-primefaces-app.yaml
  :language: yaml
  :linenos:

* Or at session level via the :public-api:`IvyPrimefacesThemeResolver
  </ch/ivyteam/ivy/jsf/primefaces/theme/IvyPrimefacesThemeResolver.html>`.



Overriding Configuration
========================

.. rubric:: Environment variables

Configuration entries of YAML files can be overridden with environment variables
of the operating system. Configuration keys in YAML are hierarchic object trees
separated by :code:`:` characters. While the environment variable must be
written uppercase and separated by :code:`_` characters. You need also to prefix
the environment variable with :code:`IVY_`.

So to overwrite the :code:`SystemDb:Url` of the :ref:`ivy-yaml` file, the
environment variable :code:`IVY_SYSTEMDB_URL` must be set.



Docker Containers
=================

Container technology empowers you to pull up reproducible, documented and
complete isolated infrastructures. Axon.ivy fully supports container
environments such as `Docker <https://www.docker.com/>`_, `Kubernetes
<https://kubernetes.io/>`_ or `OpenShift <https://openshift.io/>`_. You can
easily customize the configuration of an Axon.ivy engine by using system
environment variables or by providing configuration files like the
:ref:`ivy-yaml` file. 

The following example will override the url of the system database configuration
using environment variables:

.. code-block:: bash

  docker run -e "IVY_SYSTEMDB_URL=jdbc:mysql://db:3306/AxonIvySystemDatabase" ...

Instead of using environment variables, you can simply provide an
:ref:`ivy-yaml` file. 

.. literalinclude:: includes/ivy-docker.yaml
    :language: yaml
    :linenos:

And let's run the container with this configuration

.. code-block:: bash

  docker run -v ivy.yaml:/etc/axonivy-engine/ivy.yaml ... 

For further docker examples have a look at our `docker-samples
<https://github.com/ivy-samples/docker-samples>`_ GitHub repository. 


.. _configuration_containers_secrets:
.. rubric:: Secrets

You can use Docker Secrets to store passwords. Simply create a file in
:file:`/run/secrets` which has the same name as the configuration entry. For
example, to provide :code:`SystemDb:Password` as secret file you need to create
the file :file:`/run/secrets/ivy.SystemDb.Password`


.. _configuration-file-reference:

Configuration File Reference
============================

.. toctree::
   :maxdepth: 1

   files/ivy-yaml
   files/ivy-webserver-yaml
   files/ivy-securitysystem-yaml
   files/app-yaml
   files/app-businesscalendar-yaml
   files/log4jconfig-xml
   files/ivy-cache-properties
   files/web-xml
   files/context-xml
