.. _cms-content-object-types:

Content Object Types
====================

There are various types of content that can be stored in a CMS. Every
Content Object does have a specific content **type**. Content Object
Values inherit that type from their Content Object. The types are used
to access the content in the correct way (e.g. to set the MIME type in
HTTP requests) but as well to provide specific editors for the
manipulation of the values.

.. table:: Content Object Types
   :widths: 10 20 40 30

   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | Symbol          | Type Name       | Purpose                                                   | Edited with ...                                                                            |
   +=================+=================+===========================================================+============================================================================================+
   | |image15|       | Folder          | For structural                                            |                                                                                            |
   |                 |                 | purposes only,                                            |                                                                                            |
   |                 |                 | folders are                                               |                                                                                            |
   |                 |                 | container for                                             |                                                                                            |
   |                 |                 | other Content                                             |                                                                                            |
   |                 |                 | Objects.                                                  |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image16|       | String          | Short texts                                               | :ref:`cms-string-editor`                                                                   |
   |                 |                 | (single line),                                            |                                                                                            |
   |                 |                 | e.g. labels,                                              |                                                                                            |
   |                 |                 | names,                                                    |                                                                                            |
   |                 |                 | descriptions,                                             |                                                                                            |
   |                 |                 | tool tips.                                                |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image17|       | Text            | Longer and/or                                             | :ref:`cms-text-editor`                                                                     |
   |                 |                 | formatted texts                                           |                                                                                            |
   |                 |                 | with multiple                                             |                                                                                            |
   |                 |                 | lines or even                                             |                                                                                            |
   |                 |                 | multiple                                                  |                                                                                            |
   |                 |                 | paragraphs.                                               |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image18|       | Image           | An image of                                               | :ref:`cms-image-editor`                                                                    |
   |                 |                 | arbitrary size.                                           |                                                                                            |
   |                 |                 | *GIF Image*,                                              |                                                                                            |
   |                 |                 | *PNG Image*,                                              |                                                                                            |
   |                 |                 | *JPG Image*                                               |                                                                                            |
   |                 |                 | types are                                                 |                                                                                            |
   |                 |                 | supported.                                                |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image19|       | Source          | Scripts of any                                            | :ref:`cms-source-editor`                                                                   |
   |                 |                 | form, e.g.                                                |                                                                                            |
   |                 |                 | *javascript* or                                           |                                                                                            |
   |                 |                 | *jsp snippets*.                                           |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image20|       | Page            | Container                                                 | :ref:`cms-html-page-editor`                                                                |
   |                 |                 | object for                                                |                                                                                            |
   |                 |                 | *HTML Page*                                               |                                                                                            |
   |                 |                 | content. This                                             |                                                                                            |
   |                 |                 | is used in :ref:`process-element-web-page`                |                                                                                            |
   |                 |                 | process elements.                                         |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image21|       | CSS             | Cascaded Style                                            | :ref:`cms-css-editor`                                                                      |
   |                 |                 | Sheet                                                     |                                                                                            |
   |                 |                 | definitions                                               |                                                                                            |
   |                 |                 |                                                           |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image22|       | Layout          | JSP HTML layout                                           | :ref:`cms-layout-editor`                                                                   |
   |                 |                 | with included                                             |                                                                                            |
   |                 |                 | Content                                                   |                                                                                            |
   |                 |                 | Objects.                                                  |                                                                                            |
   |                 |                 | Typically                                                 |                                                                                            |
   |                 |                 | created and                                               |                                                                                            |
   |                 |                 | used as part of                                           |                                                                                            |
   |                 |                 | a *Page*                                                  |                                                                                            |
   |                 |                 | object.                                                   |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image15|       | Panel           | Panels are the                                            | :ref:`cms-html-panel-editor`                                                               |
   |                 |                 | content parts                                             |                                                                                            |
   |                 |                 | for *Page*                                                |                                                                                            |
   |                 |                 | objects and are                                           |                                                                                            |
   |                 |                 | defined with                                              |                                                                                            |
   |                 |                 | *Layout*                                                  |                                                                                            |
   |                 |                 | objects.                                                  |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image24|       | JSP             | Alternative to                                            | :ref:`cms-jsp-editor`                                                                      |
   |                 |                 | the *Page*                                                |                                                                                            |
   |                 |                 | object. Uses                                              |                                                                                            |
   |                 |                 | pure JSP for                                              |                                                                                            |
   |                 |                 | layouting.                                                |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image25|       | Table           | Allows to place                                           | :ref:`cms-html-table-editor`                                                               |
   |                 |                 | content and                                               |                                                                                            |
   |                 |                 | Content Objects                                           |                                                                                            |
   |                 |                 | into a HTML                                               |                                                                                            |
   |                 |                 | table.                                                    |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image26|       | Link            | Generates a                                               | :ref:`cms-html-link-editor`                                                                |
   |                 |                 | HTML link or                                              |                                                                                            |
   |                 |                 | form.                                                     |                                                                                            |
   |                 |                 |                                                           |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image25|       | Result Table    | Generates                                                 | :ref:`cms-result-table-editor`                                                             |
   |                 |                 | dynamic tabular                                           |                                                                                            |
   |                 |                 | HTML content                                              |                                                                                            |
   |                 |                 | from process                                              |                                                                                            |
   |                 |                 | data.                                                     |                                                                                            |   
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |image29|       | Document        | Any document                                              | :ref:`cms-document-editor`                                                                 |
   |                 |                 | (the most                                                 |                                                                                            |
   |                 |                 | common document                                           |                                                                                            |
   |                 |                 | formats are                                               |                                                                                            |
   |                 |                 | supported such                                            |                                                                                            |
   |                 |                 | as PDF, DOC,                                              |                                                                                            |
   |                 |                 | XLS, MP3 ...)                                             |                                                                                            |
   +-----------------+-----------------+-----------------------------------------------------------+--------------------------------------------------------------------------------------------+



.. |image15| image:: /_images/cms/icon-folder.png
.. |image16| image:: /_images/cms/icon-string.png
.. |image17| image:: /_images/cms/icon-text.png
.. |image18| image:: /_images/cms/icon-image.png
.. |image19| image:: /_images/cms/icon-source.png
.. |image20| image:: /_images/cms/icon-page.png
.. |image21| image:: /_images/cms/icon-css.png
.. |image22| image:: /_images/cms/icon-layout.png
.. |image24| image:: /_images/cms/icon-jsp.png
.. |image25| image:: /_images/cms/icon-result-table.png
.. |image26| image:: /_images/cms/icon-link.png
.. |image29| image:: /_images/cms/icon-document.png
