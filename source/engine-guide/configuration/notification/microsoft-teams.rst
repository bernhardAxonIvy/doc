Microsoft Teams Notifications
-----------------------------

This channel provides notifications via Microsoft Teams. If you enable this channel, you also need to:

- :ref:`Create a technical user in the Azure AD which serves as the sender of notifications<microsoft-teams-notifications-technical-user>`.
- :ref:`Create an application in the Azure AD where the technical user can log in and send messages through<microsoft-teams-notifications-application>`.
- :ref:`Users who shall be notified need to be synced with Azure AD<azure-ad>`.

**Template**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.notification.microsoft.teams/src/ch/ivyteam/ivy/notification/microsoft/teams/impl/microsoft-teams-channel-template.yaml
  :language: yaml
  :linenos:

**Reference**

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.notification.microsoft.teams/src/ch/ivyteam/ivy/notification/microsoft/teams/impl/microsoft-teams-channel-reference.yaml
  :language: yaml
  :linenos:

.. _microsoft-teams-notifications-technical-user:
.. rubric:: Technical User

Visit the `Microsoft 365 admin center <https://admin.microsoft.com/>`_ and
create a new user by navigating to **Users** > **Active users** and clicking on
**Add a user**. Give the user a display name that represents your Ivy Portal
(e.g. "Ivy"). Other users will receive notifications in the form of chat
messages by this user. Remove the checkmarks for **Automatically create a
password** and **Require this user to change their password when they first sign
in**. Provide the user with a secure password and keep note of it. Also, provide
the user with a product license to be able to use Microsoft Teams.

After creating the user, turn off multifactor authentication by clicking on the
user and then **Manage multifactor authentication**. Make sure no other policies
require the user to change their password regularly or prevent them from logging
in for any other reasons.

Add the mail address (`TechnicalUser.Mail`) and password
(`TechnicalUser.Password`) of the technical user to the configuration of the
Microsoft Teams Notification Channel.

.. _microsoft-teams-notifications-application:
.. rubric:: Application

Visit the `Microsoft Entra admin center <https://entra.microsoft.com/>`_ and
follow `these instructions
<https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app>`_
to register an application with the Microsoft identity platform. On step 5,
choose **Accounts in this organizational directory only**.

Navigate to **Applications** > **Enterprise Applications** and click on the
newly registered application. Navigate to **Properties** in the section
**Manage**. Set **Assignment required?** to **Yes**.

Navigate to **Users and Groups** in the section **Manage**. Click on **Add
user/group** > **Users and groups** and search for, select, and assign the
technical user you created before. (See :ref:`Technical User<technical-user>`)

Navigate to **Applications** > **App registrations** and click on the newly
registered application. If you can not see it, make sure to change the selected
tab to **All applications**. Navigate to **Authentication** in the section
**Manage**. Set **Allow public client flows** to **Yes**.

Navigate to **API permissions** in the section **Manage**. Click on **Add a
permission** > **Microsoft Graph** > **Delegated permissions** and search for,
select, and add the following permissions:

- User.Read
- Chat.Create
- ChatMessage.Send

Click on **Grant admin consent for <tenant>** above the table with the
permissions and confirm the dialog.

Add the ID of your tenant (`TenantId`) and newly created application
(`ClientId`) to the configuration of the Microsoft Teams Notification Channel.
