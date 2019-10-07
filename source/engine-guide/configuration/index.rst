.. _configuration:

Configuration
*************

The |ivy-engine| is configured by files. They are located in the
:file:`/configuration` directory of the engine. The :ref:`ivy-yaml`
file contains the most important entries that define the
environment and runtime behaviour of the |ivy-engine|.

.. literalinclude:: includes/ivy-full.yaml
  :language: yaml
  :linenos:


.. rubric:: Craft you own configuration

To craft your own configuration you would typically copy values from our
**reference** files, located under :file:`[engineDir]/configuration/reference` or
see te :ref:`configuration-file-reference` and adjust them according to your needs. 
Alternative, you can also copy and modify whole **templates**,
which are provided under :file:`[enginDir]/configuration/templates`.
Of course, most settings can also be adjusted in our :ref:`engine-cockpit`.


.. toctree::
   :maxdepth: 2
   :hidden:

   system-database
   users
   email
   

.. toctree::
   :maxdepth: 2
   :hidden:

   advanced-configuration


.. toctree::
   :maxdepth: 2
   :hidden:

   docker-container

.. toctree::
   :maxdepth: 2
   :hidden:

   file-reference
