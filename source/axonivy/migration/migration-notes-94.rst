.. _migrate-93-94:

Migrating from 9.3 to 9.4
=========================

Primefaces 11
*************

|tag-project-changed| |tag-project-removed| |tag-project-deprecated| |tag-project-auto-convert|

We upgraded the Primefaces library from version 7 to version 11. Unfortunately,
Primefaces made some breaking changes in its latest versions. Therefore, your
user interfaces are most likely broken. To mitigate the migration pain, we have
built a :ref:`project converter <project-convert-wizard>` that fixes most
breaking changes. See :ref:`primefaces-11-migration` for more information.

.. toctree::
   :maxdepth: 1

   migration-notes-pf11
   
Old Themes removed
******************
 
Instead of modena, primefaces-ivy, or all-themes, use :ref:`freya-ivy
<freya-themes>` or :ref:`serenity-ivy <serenity-themes>`. You may need to adjust
your hand-crafted CSS rules to the new theme.



Multi Application Security System
*********************************

|tag-ops-wizard|

The big barriers were broken in. Users and roles are no longer attached to a
single application, but can be shared across multiple applications in a security
system. Now, different applications can be developed and installed with their
own release cycles, and the end user only ever receives one task list for all
applications. This enables independent feature-driven development.

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    Most engine installations will only have the predefined security context
    `default`. By default, new applications end up in this context. 
    There are two use cases for multiple security contexts on one engine:

    - you want to isolate applications against each other - each application has its own security context.
    - you implement multi-tenancy by having one security system per tenant.

    For both use cases, we suggest using multiple engines in order to make accidental security breaches impossible.

    During migration, however, the status quo is maintained. The migrated
    applications are placed in an isolated security system with the name of the
    application. It is no longer possible to change the security system at runtime,
    this must always be done when the application is created.

    Refer to :ref:`Application Lifecycle <application-lifecycle>` for further details.

    - **Users** are no longer attached to the application, but to the Security
      System. This means that the user is unique over several applications.
    - **Roles** are still defined in projects. The roles are deployed over a
      security system. Now the roles must not only be unique in the application, 
      but in the security system.
    - **Business Data** has not been scoped. Now, it is scoped to the security system.
    - **Standard process** default pages are now automatically
      determined at runtime. You don't have to define them anymore. If there are
      multiple implementations of a default process, one is simply selected. But you
      can fix this by setting this setting anyway.
    - **EmailNotification Settings** are no longer part of
      the application configuration. They are part of the security system and can be
      found there.


User id and role id deprecated
------------------------------

:code:`IUser#getId()` and :code:`IRole#getId`` are obsolete and should not be used any further.
Always use :code:`getSecurityMemberId()`. For now, user id and role id are still fully
supported and are also unique. But these will be completely removed in upcoming
versions also from the database (:code:`IWA_User.UserId`` and :code:`IWA_Role.RoleId)`.

Standard mail notification process still support the parameter :code:`notificationUserId`
but you should already change to :code:`notificationSecurityMemberId``.


Language
********

|tag-ops-wizard|

New there is global language concept. The content language as well as the formatting language can be
defined per security system in :ref:`ivy-securitysystem-yaml`, which are considered as default
languages. Users can overwrite these two language settings in their user profiles.

The existing :code:`EMailNotification.Language` is automatically migrated to :code:`Language.Content`
in :ref:`ivy-securitysystem-yaml`.

Read more here: :ref:`configuration-language` and :ref:`cms-content-resolution`.



Elasticsearch 7.17
******************

Elasticsearch has been upgraded from 7.3 to 7.17.
If you use an external Elasticsearch server you need
to upgrade to version 7.17.


IvyScript Validation is Enabled by Default
******************************************

|tag-project-changed| 

The :code:`ivy.script.validation.skip` compilation parameter of our Project Build Plugin is now set to :code:`false`.
This validates IvyScript code within Ivy processes by default during compilation. So errors and warnings related to the IvyScript code will be reported.

Read more about the compilation parameters and their default values here:
https://axonivy.github.io/project-build-plugin/snapshot/9.4/compileProject-mojo.html#skipScriptValidation



Programmable element Editor
*****************************

|tag-project-changed|

We changed the UI technology to build custom inscription editors. Therefore, existing programmable elements,
built with AWT, show deprecation warnings.

Affected elements are: :ref:`Program Start Event <process-element-program-start>`, 
:ref:`Program Interface (PI) Activity <process-element-pi>` and 
:ref:`Wait Intermediate Event <process-element-wait-program-intermediate-event>`

.. container:: admonition note toggle

  .. container:: admonition-title header

     **Details**

  .. container:: detail 

    To make your custom editors compliant, change your internal Editor implementation to extend from 
    :public-api:`UiEditorExtension
    </ch/ivyteam/ivy/process/extension/ui/UiEditorExtension.html>`. And create widgets using the new 
    :public-api:`ExtensionUiBuilder
    </ch/ivyteam/ivy/process/extension/ui/ExtensionUiBuilder.html>`.

    Here are some valid examples:

      .. code:: java

        ui.label("seconds to wait").create()
        scriptEditor = ui.scriptField().requiredType(Integer.class).create();
        textArea = ui.textField().multiline().create();




Call & Wait element
***********************

|tag-project-removed|

The Call&Wait intermediate process element is no longer supported. 

It will be automatically removed from existing processes where it has been present.

In most cases the 'call' aspect implementation can be replaced with a normal 
:ref:`process-element-pi` which subsequently is connected 
to a :ref:`process-element-wait-program-intermediate-event` element 
that implements the 'wait' aspect.

TLS 1.0 and TLS 1.1 disabled
****************************

|tag-ops-changed|

We disabled TLS 1.0 and 1.1 by default because they are out-dated and should no longer be used.
This can break communication links with legacy databases or other external services that still use the old TLS protocol.
Have a look at our `community blog post <https://community.axonivy.com/d/140-tls-10-and-tls-11-disabled-by-default-with-java-11011>`_
if you experience such problems to find out how to enable those protocols again.

------------

.. include:: _tagLegend.rst    
