CMS Access
----------

In Axon.ivy
^^^^^^^^^^^

CMS content can be used in the most locations where Axon.ivy displays
text for example in User Dialogs, Web Pages or in processes. Use Content
Objects to set the text of your labels, the images for your icons or the
content of your HTML pages. There are two ways how to use content from
the CMS:

-  In most :ref:`ivyscript-editor` you have a
   :ref:`ivyscript-editor-smart-buttons`
   (see :ref:`smart-buttons`) for the CMS. The smart
   button will create the correct code to access the CMS in the current
   editor.

-  In IvyScript you can use the ``ivy.cms`` environment variable and
   hereby the public API class 
   :public-api:`IContentManagmentSystem </ch/ivyteam/ivy/cm/IContentManagementSystem.html>`.
   The class offers the method ``co`` that returns content itself and
   the method ``cr`` which returns a link to the content. In Java the
   same environment variable is available with
   ``ch.ivyteam.ivy.environment.Ivy.cms()``.

Depending on the context Axon.ivy will return the content (link) in the
correct form. If you use a document Content Object in the 
:ref:`html-panel-editor`, then it will be rendered
as a link to the document in the HTML page.


.. _cms-access-with-browser:

Access with a Browser
^^^^^^^^^^^^^^^^^^^^^

Some content objects can be accessed directly from the browser with the
URL pattern
``http://<servername>:<port>/ivy/cm/<application name>/<process model>/<path in CMS>``. Assumed you
have created a page in a CMS with the path /StaticContent/MyPage in a
project named Test. Type the URL
``http://localhost:8081/ivy/cm/designer/Test/StaticContent/MyPage`` in
your browser and the page will be rendered in there.

.. note::

   The engine of the Axon.ivy Designer must be started to render the
   Content Objects.

.. note::

   Technically it is possible to display any page with this mechanism.
   But most pages display information from a process and therefore
   access the data of that process. With this mechanism you access the
   content outside of the process scope. Therefore you do not have a
   data class in access so that it might lead to an error.


.. _cms-content-resolution:

Content resolution
^^^^^^^^^^^^^^^^^^

If content from the CMS is requested, it is addressed using the URI of
the Content Object. But the real content (the text, the string, ...) is
stored in a Content Object Value. How does Axon.ivy resolve the Content
Object Value whose content is returned?

First, Axon.ivy tries to find the requested Content Object. It looks up
in the current project first. If not found Axon.ivy will recursively
look up in the CMS's of the required projects in a breadth-first manner
(i.e. first it searches in all of the directly required projects, then
in all of the required projects of the directly required projects and so
on).

Second, as soon as Axon.ivy has found the Content Object, it evaluates
which is the correct value to return. First, the lookup locale is
defined. The algorithm to resolve the lookup locale is like this:

#. If the content locale was set on the session, then take this locale.
   See the Public API method
   :public-api:`ISession.setContentLocale(java.util.Locale) </ch/ivyteam/ivy/security/ISession.html>`.

#. If the request comes from the Designer and the user
   :ref:`defined a specific content locale <content-formatting-language-settings>`,
   then use this locale.

#. If the (root) request was initiated from a browser, then use the
   browser locale. Please look up the help of your browser to see how
   you can edit this setting.

#. Otherwise use the default locale of the operating system.

When Axon.ivy knows the lookup locale, then it tries to resolve the
correct value. The algorithm for that is like this:

#. If there is a value with the same locale like the lookup locale, then
   return this value

#. If there is a value with the same language in the locale like the
   language of the lookup locale, then return this value.

#. If there is a default value, then return this value.

#. Otherwise return the first value.
