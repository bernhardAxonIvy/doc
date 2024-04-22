.. _migrate-112-113:

Migrating from 11.2 to 11.3
===========================

Upgrade to 11.3 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.

.. _primefaces13:
Primefaces 13
-------------

|tag-project-changed| |tag-project-auto-convert| 

We have update the `Primefaces JSF <https://www.primefaces.org/>`_ library from version 11 to version 13. For details have a look at 
the `Primefaces Migration Notes <https://primefaces.github.io/primefaces/13_0_0/#/../migrationguide/migrationguide>`_

Primefaces 13 Project Conversion
********************************

There is a new :ref:`Project Conversion<project-convert-wizard>` available that updates projects from Primefaces 11 to 13. 
The following is automatically converted:

- Rename ``p:repeat`` to ``ui:repeat`` because ``p:repeat`` was removed
- Style classes from `PrimeFlex <https://primeflex.org/>`_ 2 to `PrimeFlex <https://primeflex.org/>`_ 3
- Stylesheet primeflex-2.min.css to primeflex-3.min.css
- Add missing attributes ``layout="tabular"`` and ``columns="0"`` for component ``p:panelGrid``
- Method ``contentLength`` of class ``DefaultStreamedContent.Builder`` takes a Long argument instead of an Integer argument
- Convert value of attribute ``height`` of tag ``p:textEditor`` from type Integer to String (e.g., ``200`` to ``200px``)    

Chart
*****

The component ``p:chart`` was removed. You have to manually migrate to `Chart.js <https://primefaces.github.io/primefaces/13_0_0/#/components/charts>`_.

Miscellaneous
*************

Beyond what is documented in the Primefaces Migration Notes we faced the following additional problems when we migrated projects:

- ``p:selectItems`` with a ``value`` attribute of type ``List<SelectItem>`` and attributes ``var="filter"`` and ``itemLabel=#{filter}`` displays wrong labels. 
  You can remove the attributes ``itemLabels`` and also ``itemValue`` as the ``SelectItem`` object already defines the label and value of the items.
- ``p:commandButton`` with an ``ajax="false"`` attribute sometimes does not work in ``p:confirmDialog``. 
  You can remove the ``ajax`` attribute since AJAX should work now in ``p:confirmDialog``.  
- ``p:inputNumber`` with an ``value`` attribute of type ``java.lang.Number`` no longer accepts fraction digits per default. 
  You have to explicitly  specify the attribute ``decimalPlaces`` to make the field accept it.
- ``actionListener`` attributes are ignored inside a ``p:tab`` inside a ``p:tabView`` that has a ``value`` attribute with a data model.
  You have to explicitly specify the attribute ``process`` on the widget with the ``actionListener`` attribute. 


Removal of system database Conversion
-------------------------------------

|tag-ops-changed| 

It is no longer possible to convert only the system database. Engine migrations
must now always be carried out via the Engine :ref:`Migration Wizard
<migration-wizard>`.

Therefore, the button to convert the system database from the Engine Cockpit was
removed. Furthermore, the :ref:`Engine Config CLI <engine-config-cli>` command
to convert the system database is gone. As a replacement, you can trigger the
Engine Migration command :code:`migrate-engine`.

In addition, the :code:`autoConvert` configuration from :ref:`ivy-yaml`` no
longer works. An engine migration must be carried out manually via the
:ref:`Migration Wizard <migration-wizard>` or :ref:`Engine Config CLI
<engine-config-cli>` tool.


Legacy app.yaml in application zip
----------------------------------

|tag-ops-changed| 

With Axon Ivy 10.0 it is not only possible to deploy an `app.yaml` with an application zip, but
an entire configuration folder called `config`. In this case the `app.yaml` should be placed in
the `config` sub folder as part of the application zip. With Axon Ivy 10.0 we still support
the old location of the app.yaml (with a warning message in the log), but with Axon Ivy 11.3
this is no longer possible. The `app.yaml` must now be placed in the `config` sub-folder of the
application zip.


Data.WorkDirectory no longer configurable in ivy.yaml
-----------------------------------------------------

|tag-ops-changed| 

The `Data.WorkDirectory` is the temporary directory which Axon Ivy will use to create
files. :code:`Data.WorkDirectory` can no longer be configured in
:file:`ivy.yaml`. You need to configure it in :file:`jvm.options` as
:code:`ivy.Data.WorkDirectory`. Or as operation system environment variable
:code:`IVY_DATA_WORKDIRECTORY`.

------------

.. include:: _tagLegend.rst
