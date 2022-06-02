.. _migrate-93-94:

Migrating from 9.3 to 9.4
=========================

Primefaces 11
*************

|tag-project-changed| |tag-project-removed| |tag-project-deprecated|

We upgraded the Primefaces library from version 7 to version 11. 
Unfortunately, Primefaces made some breaking changes in its latest versions. 
This means that your user interfaces are most likely broken. 
To mitigate the migration pain we have build a migration wizard that fixes most of the breaking changes. 
See :ref:`primefaces-11-migration` for more information.
   
Old Themes removed
******************
 
Instead of modena, primefaces-ivy, all-themes themes use :ref:`freya-ivy <freya-themes>` or :ref:`serenity-ivy <serenity-themes>`. 
You may need to adjust your hand crafted CSS rules to the new theme.
   
User id and role id deprecated
******************************

:code:`IUser#getId()` and :code:`IRole#getId`` are obsolete and should not be used any further.
Always use :code:`getSecurityMemberId()`. For now, user id and role id are still fully
supported and are also unique. But these will be completely removed in upcoming
versions also from the database (:code:`IWA_User.UserId`` and :code:`IWA_Role.RoleId)`.

Standard mail notification process still support the parameter :code:`notificationUserId`
but you should already change to :code:`notificationSecurityMemberId``.


Elasticsearch 7.17
******************

Elasticsearch has been upgraded from 7.3 to 7.17.
If you use an external Elasticsearch server you need
to upgrade to version 7.17.


ivyScript validation is enabled by default
******************************************

|tag-project-changed| 

The :code:`ivy.script.validation.skip` compilation parameter of our Project Build Plugin is now set to :code:`false`.
This validates ivyScript code within ivy processes by default during compilation. So errors and warnings related to the ivyScript code will be reported.

Read more about the compilation parameters and their default values here:
https://axonivy.github.io/project-build-plugin/snapshot/9.4/compileProject-mojo.html#skipScriptValidation


Call & Wait element
***********************

|tag-project-removed|

The Call&Wait intermediate process element is no longer supported. 

It will be automatically removed from existing processes where it has been present.

In most cases the 'call' aspect implementation can be replaced with a normal 
:ref:`process-element-pi` which subsequently is connected 
to a :ref:`process-element-wait-program-intermediate-event` element 
that implements the 'wait' aspect.

------------

.. include:: _tagLegend.rst    
