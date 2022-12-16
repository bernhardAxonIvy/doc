.. _azure-ad-app:

Create Azure Active Directory App
---------------------------------

1. Goto `Azure Portal <https://portal.azure.com>`_
2. Open :guilabel:`Azure Active Directory` by searching it
3. Click on :guilabel:`App-Registration` on the left-side
4. Click on :guilabel:`New registration`

  .. figure:: /_images/identity-provider/azure-1.png
    :alt: New registration

  i. Choose a name of your choice e.g. :code:`ivy`
  ii. Define a Redirect URI of type :code:`Web` which points to your |ivy-engine|: https://ivy.ivyteam.io/default-workflow/oauth2/callback
    
    The pattern of this URI is `https://{host}/{security-system}-workflow/oauth2/callback` . 
    Therefore, you need to adjust the host in this URL. 
    If you run another security system than the default, you also need to change the security-system name after the host.
  
  iii. Click on :guilabel:`Register`

5. Click on :guilabel:`API permissions`
6. Click on :guilabel:`Add a permission`
7. Choose :guilabel:`Microsoft Graph`
8. Administrator privileges are required to execute steps 9 - 11:
9. Choose :guilabel:`Application permission`
10. Type :guilabel:`Directory.Read.All`
11. Click on :guilabel:`Add`

  .. figure:: /_images/identity-provider/azure-2.png
    :alt: Permission

  .. figure:: /_images/identity-provider/azure-3.png
    :alt: Grant Permission

12. Click on :guilabel:`Certificates & secrets`
13. Click on :guilabel:`New Client Secret`
14. Enter a description, e.g. :code:`ivy`
15. Click on :guilabel:`Add`
16. Copy the :code:`value` of this secret. This is needed later to configure the |ivy-engine|.

    .. figure:: /_images/identity-provider/azure-4.png
      :alt: Secret

17. Go to :guilabel:`Overview`

  .. figure:: /_images/identity-provider/azure-5.png
      :alt: Secret

18. :guilabel:`Application ID` and :guilabel:`Directory (tenant) ID` is needed to configure |ivy-engine|.
