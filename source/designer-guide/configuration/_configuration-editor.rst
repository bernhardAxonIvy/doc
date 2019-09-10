.. _configuration-editor:

Configuration Editor
--------------------

The configuration editor is used to add/edit/delete configurations in
the hierarchically organized *configuration database* of a project.

|image0|

The configuration editor consists of different parts that are described
separately below:

-  Configuration Tree
-  Configuration Editor Area (with header showing type/name of currently
   selected configuration)
-  Multi-Language Selector (not for all configuration types) This part
   is only visible if you have enabled the multi-language feature in the
   :ref:`workspace-preferences-deprecation`.

Generally, configurations are selected from the tree on the left hand
side of the editor and edited in the details area on the right hand
side. Modification of the configuration tree is performed with various
actions that are available from the tree's context menu.


Configuration Tree
------------------

|image1|

The configuration tree shows the currently defined configurations inside
a hierarchically organized tree. *Configurations* (|image2|) are
associated with a *configuration class* or *configuration type*
(|image3|) which in turn are logically grouped in a hierarchical folder
structure (|image4|).

Only configuration nodes can be edited in the tree, the structure of the
configuration database (i.e. the folders and types) is given by the
system and cannot be changed.

The following operations are available from the context menu of the
various configuration tree nodes:

|image5| Add configuration
   Adds a new configuration below the selected *configuration class*
   node.

|image6| Rename
   Renames the currently selected configuration.

   .. warning::

      Renaming of a configuration does not update the objects that
      currently use the configuration with the old name. I.e. objects or
      scripts that used the old configuration name may not produce the
      expected outcome anymore, because the specified configuration does
      no longer exist. Typically this leads to the fallback of using the
      *default* configuration of the respective *configuration class*.

|image7| Delete
   Deletes the currently selected configuration node.

   .. warning::

      Deleting configurations may lead to the same effects as *renaming*
      them. See warning above for a description of the possible
      consequences.

|image8| Copy
   Copies the selected configuration into a new configuration with a
   name prompted from the user.

   .. note::

      Please note that you don't have to *paste* the new configuration,
      it will be pasted automatically next to the selected *source*
      configuration, because a configuration is always associated with
      *exactly* one configuration class. It is not possible to copy a
      configuration of type *A* to a type *B*.

|image9| Refresh
   Refreshes the configurations below the selected node.


Configuration Editor Area
-------------------------

The editor area shows a different editor depending on the *configuration
type* (also called *configuration class*) of the currently selected
configuration. The individual editors are described in
:ref:`configuration-types`.

The title bar of the editor area shows the type (i.e. the *configuration
class*) and the name of the currently selected configuration as
``<ConfigClassName>/<ConfigurationName>``.


.. _configuration-editor-multi-language-selector:

Multi language Configuration Selector
-------------------------------------

Enable the multi selection configuration by setting the flag in the
:ref:`workspace-preferences-deprecation`.

|image10|

Some configurations can be defined in multiple languages because they
contain language specific settings. The *validation* configurations may
have to validate input differently if it is entered in another language.

.. tip::

   Use CMS references for the error message property in order to support
   multiple languages.

The *language selector* is shown only for configurations that support
multiple language values per configuration. Use it to select the
language of the configuration that you want to edit.

Features:

|image11| Add new language value
   Adds a value in a new language to the currently selected
   configuration. The contents of the last shown value are copied as
   initial content to the new configuration value.

|image12| Delete language value
   Clicking on this button removes the currently shown value from the
   set of values for this configuration. Only works if more than one
   language value are defined.

.. |image0| image:: /_images/designer-configuration/config-editor.png
.. |image1| image:: /_images/designer-configuration/config-editor-tree.png
.. |image2| image:: /_images/designer-configuration/button-configuration.png
.. |image3| image:: /_images/designer-configuration/button-configuration-class.png
.. |image4| image:: /_images/designer-configuration/button-folder.png
.. |image5| image:: /_images/designer-configuration/button-add-configuration.png
.. |image6| image:: /_images/designer-configuration/button-rename.png
.. |image7| image:: /_images/designer-configuration/button-delete.png
.. |image8| image:: /_images/designer-configuration/button-copy.png
.. |image9| image:: /_images/designer-configuration/button-refresh.png
.. |image10| image:: /_images/designer-configuration/config-multilanguage-selector.png
.. |image11| image:: /_images/designer-configuration/button-new-language.png
.. |image12| image:: /_images/designer-configuration/button-delete-language.png
