.. _cms-display-content:

Display Content
---------------

You can use content from cms wherever you want in your business processes. In
most Ivy Script editors there is a :ref:`smart button
<ivyscript-editor-smart-buttons>` available which generates the correct code for
you. To access the cms you can use the variable :public-api:`ivy.cms
</ch/ivyteam/ivy/cm/IContentManagementSystem.html>`.


Content
^^^^^^^

You can load the content with :code:`ivy.cms.co` and use it for example as a
label in your user dialog or as text in your mail. The language-specific value
is loaded according to the :ref:`content resolution principle
<cms-content-resolution>`.

**Example** :code:`ivy.cms.co("/labels/birthday")`


Link
^^^^

You usually want to embed content like images or documents as a link. For this
you can use :code:`ivy.cms.cr`.

**Example** :code:`ivy.cms.cr("/documents/instruction")`

The generated link then looks like this:
  
  ``/<appName>/cm/<processModelAndVersion>/<cmsPath>.<extension>?l=<locale>&v=<version>``

  e.g.

  ``/designer/cm/cms$1/documents/instruction.pdf?l=en&v=1641303359499``
