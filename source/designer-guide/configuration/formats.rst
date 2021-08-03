.. _configuration-formats:

Formats
-------

Format configurations define how values of a specific type will be
rendered when output to the user. Formats can be defined for all the
*base types* of *IvyScript*, i.e. ``Boolean``, ``Date``, ``DateTime``,
``Time``, ``Number``, and ``String``. All non-null values of those types
may be output as *formatted strings* by calling the
``format("<format name>")`` within any script.

Examples:

::

   panel.label.text = in.selectedDate.format("long");
   out.invoice.customerNumber = wsData.customer.format("customer_id");

Editor
~~~~~~

The format configuration editor allows to specify various ways of
formatting for the different IvyScript base type values. The formatting
options (described below) vary from type to type; not all options are
available on all types.

.. tip::

   Format configurations are always *language dependent*. Just watch the
   *Preview* editor area after each selection or option that you enable
   for an understanding what the effects are for each language.

- :guilabel:`Format Type`
  Select a predefined kind of formatting. The selected format kind may
  be further specified in the editor areas *Option*, *Format Pattern*
  and *Format Script* (depending on which kind that was selected).

- :guilabel:`Option`
  This editor area is only available for some of the *Number* format
  kinds. The number of digits for the integer and/or fraction part may
  be selected (*-1* stands for *as many as needed*). If you select
  *grouping* then a group character will be inserted to group the
  integer digits of the formatted number.

- :guilabel:`Format Pattern`
  This group is only available if you have selected the *PATTERN*
  format from the *Format Type list*.

  If *Pattern* is selected as format then this combo box allows for a
  selection from a number of predefined patterns. Use *Script* if you'd
  like to specify your own pattern format.

- :guilabel:`Format Script`
  This group is only available if you have selected the *SCRIPT* format
  from the *Format Type list*.

  Specify your own format with a script. The *value* variable will
  contain the value to be formatted. If you want to specify different
  patterns for different languages you should use the
  configuration-editor-multi-language-selector to create
  multiple configurations for various languages.

- :guilabel:`Preview`
  Shows an instant preview of the configured formatting applied to a
  default value.
