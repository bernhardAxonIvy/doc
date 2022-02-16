.. _migrate-93-94:

Migrating from 9.3 to 9.4
=========================

User id and role id deprecated
******************************

:code:`IUser#getId()` and :code:`IRole#getId`` are obsolete and should not be used any further.
Always use :code:`getSecurityMemberId()`. For now, user id and role id are still fully
supported and are also unique. But these will be completely removed in upcoming
versions also from the database (:code:`IWA_User.UserId`` and :code:`IWA_Role.RoleId)`.

Standard mail notification process still support the parameter :code:`notificationUserId`
but you should already change to :code:`notificationSecurityMemberId``.


ivyScript validation is enabled by default
******************************************

|tag-project-changed| 

The :code:`ivy.script.validation.skip` compilation parameter of our Project Build Plugin is now set to :code:`false`.
This validates ivyScript code within ivy processes by default during compilation. So errors and warnings related to the ivyScript code will be reported.

Read more about the compilation parameters and their default values here:
https://axonivy.github.io/project-build-plugin/snapshot/9.4/compileProject-mojo.html#skipScriptValidation
    
------------

.. include:: _tagLegend.rst    
