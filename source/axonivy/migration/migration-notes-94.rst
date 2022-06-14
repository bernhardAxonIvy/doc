.. _migrate-93-94:

Migrating from 9.3 to 9.4
=========================

Primefaces 11
*************

|tag-project-changed| |tag-project-removed| |tag-project-deprecated|

We upgraded the Primefaces library from version 7 to version 11. 
Unfortunately, Primefaces made some breaking changes in its latest versions. 
This means that your user interfaces are most likely broken. 
To mitigate the migration pain we have built a :ref:`project converter <project-convert-wizard>`
that fixes most of the breaking changes. 
See :ref:`primefaces-11-migration` for more information.
   
Old Themes removed
******************
 
Instead of modena, primefaces-ivy, all-themes themes use :ref:`freya-ivy <freya-themes>` or :ref:`serenity-ivy <serenity-themes>`. 
You may need to adjust your hand crafted CSS rules to the new theme.



Multi Application Security System
*********************************

|tag-ops-wizard|

The big barriers were broken in. Users and roles are no longer attached to a
single application, but can be shared across multiple applications in a security
system. Now, different applications can be developed and installed with their
own release cycles, and the end user only ever receives one task list for all
applications. This enables independent feature-driven development.

Most engine installations will only have the predefined security context
`default`. By default, new applications end up in this context. The use of
multiple security contexts is basically only if you want to completely isolate
certain applications from other applications, but then we recommend installing a
second engine. The second use case would be for multi-tenancy - one security
system per tenant.

During migration, however, the status quo is maintained. The migrated
applications are placed in an isolated security system with the name of the
application. It is no longer possible to change the security system at runtime,
this must always be done when the application is created.

More information about the concept can be found :ref:`here <application-lifecycle>`.

- **Users** are no longer attached to the application, but to the Security
  System. The user is so unique over several apppliactions.
- **Roles** are still defined in projects. The roles are deployed in a
  security system. Now the roles must not only be unique over the application, but
  over the security system.
- **Business Data** was not scoped. These are now scoped to the security system.
- **Standard process** default pages are now automatically
  determined at runtime. You don't have to define them anymore. If there are
  multiple implementations of a default process, one is simply selected. But you
  can fix this by setting this setting anyway.
- **EmailNotification Settings** are no longer part of
  the appliatkon configuration. They are part of the security system and can be
  found there.


User id and role id deprecated
------------------------------

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
