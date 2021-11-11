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
.. |image29| image:: /_images/cms/icon-document.png
