.. _cms-content-resolution:

Content resolution
******************

As soon as a content object is loaded, the content object is first searched for
in the current project, if it does not exist, a content object is searched for
in the dependent projects.

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
