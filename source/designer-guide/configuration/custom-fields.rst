.. _custom-fields:

Custom Fields
=============

Use custom fields to dynamically add additonal information as key/value pairs on 
:ref:`Starts<process-element-tab-start-custom-fields>`, :ref:`Cases<process-element-tab-case-custom-fields>` 
and :ref:`Tasks <process-element-tab-task-custom-fields>`.
You can use them directly on the process elements without any additional configuration in this `custom-fields.yaml` file. 
However, we suggest that you provide additional information (meta information) 
for often used custom fields or custom fields that are visible to end users here.
The information you provide in this file is available on the content assistant in
the :guilabel:`Name` column of the custom fields table, in the Portal application 
or via the Public API.

Editor
------

The |ivy-designer| delivers a **Yaml-Editor** to edit the
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
  The type of the custom field. Can either be ``STRING``, ``TEXT``, ``NUMBER``, ``TIMESTAMP``.

- :guilabel:`Category`
  The category of the custom field. Can be used to categorize custom fields. 

- :guilabel:`Hidden`
  If hidden the custom field will not be displayed to end users. Use this for 
  technical custom fields to hide them from end users. Can either be ``true`` or ``false``.

You can add as many other attributes as you like. E.g., :guilabel:`Icon`.

Localize Label, Description and Category
----------------------------------------

For processes that support multiple languages the Label, Description and Category can be provided in multiple languages by using the :ref:`CMS<cms>`.

Simple add a content object with the path `/CustomFields/{kind}/{name}/Label`, 
`/CustomFields/{kind}/{name}/Description` or `/CustomFields/Categories/{category}` to the :ref:`CMS<cms>`. 
E.g., `/CustomFields/Tasks/branchOffice/Label`, `/CustomFields/Categories/hrm`

Access Custom Fields
--------------------

You can access custom fields over the following API:

* :public-api:`ITask.customFields() </ch/ivyteam/ivy/workflow/ITask.html#customFields()>`
* :public-api:`ICase.customFields() </ch/ivyteam/ivy/workflow/ICase.html#customFields()>`
* :public-api:`IWebStartable.customFields() </ch/ivyteam/ivy/workflow/start/IWebStartable.html#customFields()>`

.. code-block:: java
  
  String branchOffice = ivy.task.customFields().stringField("branchOffice").getOrDefault("Luzern")

If you want to access the additional information provided in this file, then use the following API:

* :public-api:`ICustomFieldMeta </ch/ivyteam/ivy/workflow/custom/field/ICustomFieldMeta.html>`
* :public-api:`ICustomField.meta() </ch/ivyteam/ivy/workflow/custom/field/ICustomField.html#meta()>`
* :public-api:`IStartCustomField.meta(String) </ch/ivyteam/ivy/workflow/start/IStartCustomFields.html#meta(java.lang.String)>`

.. code-block:: java

  String label = ivy.task.customFields().stringField("branchOffice").meta().label();
  
You can access additional attributes with:   

.. code-block:: java

  String icon = ivy.task.customFields().stringField("branchOffice").meta().attribute("Icon");
