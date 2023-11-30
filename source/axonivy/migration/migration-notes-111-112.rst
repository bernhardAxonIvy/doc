.. _migrate-111-112:

Migrating from 11.1 to 11.2
===========================

Upgrade to 11.2 is only supported from an |ivy-engine| 8.0 and higher.
If you have an |ivy-engine| older than version 8.0 you need first to migrate to a newer version.


Mail Notifications
------------------

|tag-ops-changed| 

The notification concept has been completely revised and standardized so that notifications can be sent via different channels.
:ref:`Read more about this here <notification>`. Here are the most important changes:

- Mail notifications can no longer be customized via custom mail standard processes. There is a templating concept for this.
- There is still a notification for a new task assignment. There is no longer a daily task summary mail.
- In addition to the mail channel, there is also a web and Microsoft Teams channel.
- If a user has manually enabled new task notification mails, this setting will be automatically migrated.


Application Path
----------------

|tag-ops-changed| 

With Axon Ivy 7.0 and earlier you were able to define the installation path of an application. 
The Admin UI allowed this input on the wizard to create a new application. 
This path was stored in the Axon Ivy System Database (`IWA_Application.FileDirectory`).
Since Axon Ivy 8.0, new applications will be stored under the configurable path `Data.AppDirectory` in :ref:`ivy.yaml <ivy-yaml>`
which points by default to `applications`.

We now have removed the legacy support for `IWA_Application.FilePath`. If some applications were created with Axon 7.0
or earlier, you need to move them manually to the `Data.AppDirectory` location.



WebPage activity
----------------

|tag-project-removed|

The WebPage activity process element is no longer supported. 

It will be automatically removed from existing processes where it has been present.

In most cases it can be replaced with normal :ref:`html-dialogs`.


Programed elements
---------------------------

|tag-project-deprecated|

**Streamlined config access**

Editable Program Start, Intermediate Wait and Program Activity bean implementors have to adjust code in order to keep the Editor inscription functional.

Namely we have deprecated the methods to read and write configuration within the Editor implementation.
It is no longer the Editor implementors responsibility, to maintain the element configuration values.
Therefore implementors can remove overwritten methods to read and write configurations, 
but must instead link their UI widgets, to the configuration field by passing its name as input.
You can adapt this change from our `Example Migration <https://github.com/axonivy-market/kafka-connector/pull/11/files#diff-593779ded8c9bd4c468c5bb873996d599871d68797d228a1d42709421ec0c6cdR230>`_ .

Furthermore, the bean runtime should be adapted, to use the new 
:public-api:`initialize(IProcessStartEventBeanRuntime runtime, ProgramConfig config) </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html#initialize(ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime,ch.ivyteam.ivy.process.extension.ProgramConfig)>` method.
Configuration parameter values can then be consumed at runtime from the new `getConfig(String)` APIs.

- :public-api:`IProcessStartEventBean </ch/ivyteam/ivy/process/eventstart/IProcessStartEventBean.html>`
- :public-api:`IProcessIntermediateEventBean </ch/ivyteam/ivy/process/intermediateevent/IProcessIntermediateEventBean.html>`
- :public-api:`IProcessExtension </ch/ivyteam/ivy/process/extension/IProcessExtension.html>`

Until your editable beans are migrated, the old configurations are still functional at runtime. 
Note though, that Inscription Editors won't work correctly, until you migrated your API calls to 
the latest :public-api:`ExtensionUiBuilder </ch/ivyteam/ivy/process/extension/ui/ExtensionUiBuilder.html>`.

**AutoProcessStarterEventBean**

The process start event bean :code:`ch.ivyteam.ivy.process.eventstart.beans.AutoProcessStarterEventBean` has been deprecated. Instead use the 
new :code:`ch.ivyteam.ivy.process.eventstart.beans.TimerBean`.  

------------

.. include:: _tagLegend.rst
