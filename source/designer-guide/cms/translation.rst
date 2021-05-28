CMS Translation
===============

The CMS is usually used for internationalization or regionalization of
content. Often the necessary translations are not done by the Ivy
developers but by dedicated persons within the organization or even by
external persons e.g. professional translators. To simplify the exchange
of the CSM content you can export the CMS into a Excel file and import
it again after the translation. As long as you can import Excel files
you can use your favorite translation tool for the actual translations.

.. _cms-export:

Export from CMS
---------------

Click :guilabel:`Export...` from the |axon-ivy| project tree view or from the
:guilabel:`File` menu. Then choose *CMS* from the category *|axon-ivy|*.

.. figure:: /_images/cms/cms-export.png

Choose which CMS you want to export and where in the file system it should be
stored. After you started the export, you can open the exported file
directly from the confirmation dialog.

The exported file contains one column for the name, one for the URI and
one for each language of the CMS. Only *String* and *Text* types are
exported.

.. _cms-import:

Import into CMS
---------------

Click :guilabel:`Import...` from the |axon-ivy| project tree view or from the
:guilabel:`File` menu. Then choose *CMS* from the category *|axon-ivy|*.

.. figure:: /_images/cms/cms-import.png

Choose in
which project you want to import and where in the file system the import
file comes from. After the import you will see a dialog that shows you
the stats of the import like how many Content Objects were updated.

In the import file, the *URI* column is used as ID. If a Content Object
with the same URI is found, then the content in the language columns in
the Excel file is put in the corresponding value of the Content Object.

.. note::

   The import can only update already existing objects or values but not
   create anything new. So, if you add a column for a new language or
   you add a new row in the Excel file with a new URI, then the CMS
   import will omit this data.
