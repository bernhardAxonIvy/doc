Renderers Configuration
-----------------------

Renderer Configurations are used for specific content objects when they
are rendered, the result is then displayed on the client browser.


.. _smart-table-configuration-editor:

Smart Table Configuration Editor
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Smart Table Configuration editor is part of the :ref:`configuration-management`.
See :ref:`configuration-editor` for more information. A Smart
Table Configuration can be added by using the add configuration
function. The name is used in the :ref:`html-smart-table-content-editor` for choosing a
specific configuration.

.. figure:: /_images/designer-configuration/config-editor-smart-table.png
   :alt: Smart Table Editor

   Smart Table Editor

- :guilabel:`Table Settings`
  The HTML attributes settings for the table and the caption HTML
  elements.

- :guilabel:`Header Settings`
  The HTML attributes settings for the table header group (thead
  element), the header row (tr element) and the header cells (th
  elements).

- :guilabel:`Body Settings`
  The HTML attributes settings for the table header group (thead
  element), the header row (tr element) and the header cells (th
  elements).

- :guilabel:`Footer Settings`
  The HTML attributes settings for the table body group (tbody
  element), the body rows (tr elements) and the body cells (td
  elements). Here it is possible to define different configuration for
  the rows and cells depending if they are displayed on an even or odd
  row position. The cells can also be different if they are in a even
  or odd column, in the first or last column or if they are in the
  column which is actually sorted. The first and last column settings
  does override the even or odd columns settings and the sorted column
  setting does override all other settings.

- :guilabel:`Sort Settings`
  Enter the text which is displayed in the header if a column is
  sortable. Then ascending and descending values are shown. When a
  column actually is sorted then the sorted ascending or sorted
  descending values are shown.

- :guilabel:`Page Selector Settings`
  Enter the format of the page selector, where it is shown (default:
  bottom) and the values displayed for the first, previous, next and
  last page to show. For the format there are the following
  possibilities:

.. table:: Format Symbols
   :widths: 10 90

   +-----------------------------------+-----------------------------------+
   | Symbol                            | Description                       |
   +===================================+===================================+
   | {\|<}                             | Link to jump to the first page is |
   |                                   | shown with the value configured   |
   |                                   | with the setting "First page".    |
   +-----------------------------------+-----------------------------------+
   | {<}                               | Link to jump to the previous page |
   |                                   | is shown with the value           |
   |                                   | configured with the setting       |
   |                                   | "Previous page".                  |
   +-----------------------------------+-----------------------------------+
   | {123}                             | Links to jump to every page is    |
   |                                   | shown with the page number.       |
   +-----------------------------------+-----------------------------------+
   | {>}                               | Link to jump to the next page is  |
   |                                   | shown with the value configured   |
   |                                   | with the setting "Next page".     |
   +-----------------------------------+-----------------------------------+
   | {>|}                              | Link to jump to the last page is  |
   |                                   | shown with the value configured   |
   |                                   | with the setting "Last page".     |
   +-----------------------------------+-----------------------------------+
   | {n}                               | The number of the actual page is  |
   |                                   | displayed.                        |
   +-----------------------------------+-----------------------------------+
   | {m}                               | The number of the total amount of |
   |                                   | pages is displayed.               |
   +-----------------------------------+-----------------------------------+
   | {x}                               | The number of the first showed    |
   |                                   | row is displayed.                 |
   +-----------------------------------+-----------------------------------+
   | {y}                               | The number of the last showed row |
   |                                   | is displayed.                     |
   +-----------------------------------+-----------------------------------+
   | {z}                               | The number of the total rows in   |
   |                                   | the table source is displayed.    |
   +-----------------------------------+-----------------------------------+
