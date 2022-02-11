.. _cms-content-resolution:

Content resolution
******************

As soon as a content object is loaded, the content object will be resolved as follows:

#. Application CMS (:file:`[engineDir]/data/{app}/cms`)
#. Current project
#. Dependent projects

Once the content object is found, the concrete content object value must be
evaluated. For this purpose, the locale must be defined first:

#. Locale from :public-api:`session </ch/ivyteam/ivy/security/ISession.html>`
#. Locale from :ref:`simulation <content-formatting-language-settings>`
#. Locale from browser
#. Locale from server operation system

Once the locale has been evaluated, the content object value is loaded as
follows:

#. Same locale (language and region)
#. Same language (only language)
#. Default value
#. First value
