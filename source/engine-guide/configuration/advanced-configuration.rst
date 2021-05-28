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
environments such as Docker. Be aware that :ref:`passwords of administrators <engine-administrators>` always should be hashed.

.. _configuration-business-calendar:

Business Calendar
-----------------

A business calendar defines the official business hours and business days.
These settings are used for business calendar calculations, e.g. what date will
it be in three business days.
See at :ref:`Designer Guide <business-calendar>`
and :public-api:`IBusinessCalendar </ch/ivyteam/ivy/application/calendar/IBusinessCalendar.html>`
for more information.

It is defined in the application's :ref:`app-yaml`. An application contains
at least one business calendar; if none is defined, a default calendar is
automatically generated.

Here is an example of a business calendar definition;
see :ref:`app-businesscalendar-yaml` for more detailed information.

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/app-businesscalendar.yaml
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

* Or at session level via the :public-api:`IvyPrimefacesThemeResolver </ch/ivyteam/ivy/jsf/primefaces/theme/IvyPrimefacesThemeResolver.html>`.



Overriding Configuration
------------------------

Configuration entries of YAML files can be overridden with environment variables
of the operating system. Configuration keys in YAML are hierarchic object trees
separated by :code:`:` characters. While the environment variable must be
written uppercase and separated by :code:`_` characters. You need also to prefix
the environment variable with :code:`IVY_`.

So to overwrite the :code:`SystemDb:Url` of the :ref:`ivy-yaml` file, the
environment variable :code:`IVY_SYSTEMDB_URL` must be set.


.. _advanced-config-env-overriding:

Application Environments Overriding
***********************************

You can override :ref:`app-yaml` configuration files by adding an additional
:file:`app.yaml` in a sub-directory :file:`_<environment>` in parallel to the
normal app.yaml. 

::

    <engine>/configuration/applications/<app>
    ├── app.yaml
    └── _<environment>
        └── app.yaml
    
