.. _migrate-93-94:

Migrating from 9.3 to 9.4
=========================


ivyScript validation is enabled by default
************

|tag-project-changed| 

The :code:`ivy.script.validation.skip` compilation parameter of our Project Build Plugin is now set to :code:`false`.
This validates ivyScript code within ivy processes by default during compilation. So errors and warnings related to the ivyScript code will be reported.

Read more about the compilation parameters and their default values here:
https://axonivy.github.io/project-build-plugin/release/9.3/compileProject-mojo.html#skipScriptValidation
    
------------

.. include:: _tagLegend.rst    
