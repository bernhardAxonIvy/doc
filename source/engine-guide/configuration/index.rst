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


.. rubric:: Configure your engine

.. toctree::
   :maxdepth: 1

   system-database/index
   administrators
   users/index
   email
   advanced-configuration
   docker-container
   file-reference
