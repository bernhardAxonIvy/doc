.. _custom-fields-config:

Custom Fields
=============

In the file :file:`<project>/config/custom-fields.yaml`, you can provide additional information (meta information) for :ref:`custom fields <custom-fields>`. 

The information you provide here is used and displayed on the content assistant in
the :guilabel:`Name` column of the custom fields table, in the :ref:`developer workflow UI <dev-workflow-ui>`, 
in the :ref:`Portal application <portal-guide>` or via the Public API.

Editor
------

The Axon Ivy Designer delivers a **Yaml-Editor** to edit the
:file:`<project>/config/custom-fields.yaml` file, where you can maintain additional 
information about your custom fields.

.. literalinclude:: includes/custom-fields.yaml
   :language: yaml
   :linenos: 

- :guilabel:`Label`
  The label that is displayed on user interfaces instead of the custom field name.

- :guilabel:`Description`
  The description that is displayed on user interfaces for the custom field.

- :guilabel:`Type`
  The type of the custom field. Can be either ``STRING``, ``TEXT``, ``NUMBER`` or ``TIMESTAMP``.

- :guilabel:`Category`
  The category of the custom field. Can be used to categorize custom fields. 

- :guilabel:`Hidden`
  If hidden, the custom field will not be displayed to end users. Use this for 
  technical custom fields to hide them from end users. Can be either ``true`` or ``false``.

You can add as many other attributes as you like. E.g., :guilabel:`Icon`.

.. _custom-fields-locale:

Localize Label, Description and Category
----------------------------------------

For processes that support multiple languages the Label, Description and Category can be provided in multiple languages by using the :ref:`CMS<cms>`.

Simply add a content object with the path ``/CustomFields/{kind}/{name}/Label``, 
``/CustomFields/{kind}/{name}/Description`` or ``/CustomFields/Categories/{category}`` to the :ref:`CMS<cms>`. 
E.g., ``/CustomFields/Tasks/branchOffice/Label``, ``/CustomFields/Categories/hrm``


