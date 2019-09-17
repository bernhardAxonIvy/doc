.. _html-content-in-the-web-content-folder:

HTML content in the Web Content Folder
--------------------------------------

Although it is recommended that you store all (or most of) your content
in the project's :ref:`cms`, as an alternative you can place web
resources into a folder within the root folder of your project with the
name ``webContent``.

These web content files can be referred from CMS pages either by
addressing them relatively (to the web content directory) or by using
the method ``ivy.html.wr(fileNameRelative)``. Of course, you can also
reference directly from one web content file to another (e.g. a web
content HTML file that displays a web content image with a ``img``
tag.). It is even possible to mix references between CMS and web content
files (e.g. a JSP in the web content includes a JSP in the CMS which
imports a JavaScript file in the web content and so on).

.. warning::

   Web content files can always be referenced relative to the web
   content folder. But in contrast to content objects in the CMS,
   resources in the web content folder are only visible in the same
   project. If the resource is not found then there is no lookup in the
   required projects.


.. tip::

   To gain access to Axon.ivy functionality please insert the following
   code to your hand-made JSP page in the web content folder:

   ::

          <%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
          <jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>