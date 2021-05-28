.. _user-interface-web-page:

Web Page
========

This chapter shows how Web Pages and -content are used within Axon Ivy.

Using Web Pages (web content) in a Business Process
---------------------------------------------------

As an alternative to User Dialogs, you can display Web Pages or other
web resources to the user of an Axon Ivy process application in a
browser to let him or her interact with the executed process.

Such content is embedded within a business process by using the 
:ref:`process-element-web-page` element or by using end pages
for various elements in a process (:ref:`process-element-end-page`,
a :ref:`process-element-task-switch-event` element or a
:ref:`process-element-task-switch-gateway` element).
Whenever the
process reaches such an element, then the defined content is presented
to the user.

You are free to use HTML-based content (plain HTML, JSP) or other
resources (such as images, text files, RTF and many more) as long as
they can be displayed in a web browser. In addition, you are free to use
resources from the :ref:`cms` or from the
:ref:`web content folder <html-content-in-the-web-content-folder>` of the project.

.. warning::

   When you re-use resources like JSP pages in different process
   elements, you need to carefully consider how to integrate the content
   with the process. When you access members of the data class (e.g. in
   the JSP) you must ensure that this member is accessible in all
   processes that use the resource. Furthermore, in Web Page elements
   you need to ensure that a) there is a way to continue with the
   process, e.g. an out-link and that b) that way can be used in all
   usages of the resource.

.. warning::

   Please bear in mind that web pages can only be used if a single HTTP
   request is available from the client. This means that you *cannot*
   use web pages if at least one of the following conditions apply:

   -  The current request was not triggered by HTTP (e.g. started by an
      Event Bean).

   -  The current task is executed by SYSTEM.

   -  The process is running in a parallel execution section, e.g. after
      a *Split* element.


.. _user-interface-web-page-creating:

Creating and Editing Web Pages from within the Process
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A web page can be created or accessed directly from the process. Open
the inscription mask of any page-capable process element. Depending on
whether the page is already defined or not, you will be presented with
either of the two scenarios described in the sections below.

No page has been specified yet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

|image0|

|image1|

You can define the Web Page that should be displayed by using one of the
following three methods:

1. Enter the path to an existing page by hand. Specify either a CMS path
   (e.g. ``/HtmlPages/myPage``) that points to a content object or give
   a path to a web content file (e.g. ``commonPages/infoPage.html``)
   instead.

   Note that content object paths do not have a file extension, but web
   content paths do. Web content paths are always specified relative to
   the ``webContent`` folder of the current project.

   If you enter a path to a non-existing web content resource, then
   pressing the *Create* button will create an empty file at the
   specified location in the ``webContent`` folder and open Eclipse's
   default editor on it.

   If you enter the name of a non-existing content page, then pressing
   the *Create* button will have the same effect as described under (3).

2. Select an existing content object by using the *content smart button*
   or an existing web content file by using the *file smart button*.

   You can select any content object and any file, but a "wrong type"
   error will be displayed if the selected content object is not
   suitable as a page. Likewise a "invalid web content path" error will
   be shown, if you select a file outside the project's web content
   folder.

3. Click *Create* to generate an entirely new page in the content
   management system.

   A dialog will appear that allows you to enter the name and type
   (normal or JSP) of the new page. The created page will be associated
   with the current element and it will be placed appropriately inside
   the CMS *ProcessPages/<ProcessName>* folder (see :ref:`below <web-page-store>`).

A page is already specified
^^^^^^^^^^^^^^^^^^^^^^^^^^^

|image2|

Click on *Edit* to open the specified page either in the content editor
(if it is a content object) or the system's default editor (if it is a
web content file) so that you can edit its contents. You can change the
default editor for any file type by opening *Window/Preferences* and
navigating there to */General/Editors/File Associations*.

Alternatively you can use the *content smart button* or the *file smart
button* to select an entirely different page to be displayed.

You can also edit the specified path by hand if you like.


.. _web-page-store:

Where Web Pages are stored
~~~~~~~~~~~~~~~~~~~~~~~~~~

The page that is displayed is either stored in the :ref:`cms` or
in the :ref:`web content folder <html-content-in-the-web-content-folder>`
of the project.

By default, CMS pages are stored in the ``ProcessPages`` hierarchy in a
further sub folder named after the containing process (e.g.
``ProcessPages/Main/MyPage``). Although it is not required to store the
pages within this scheme, it is recommended to keep your pages
separated. All content objects that can be downloaded can be used,
especially the :ref:`cms-content-object-types` and
:ref:`JSP <cms-content-object-types>` types, but also some
:ref:`Document <cms-content-object-types>` (e.g. RTF, HTML, PDF or
Plain Text) and other types are working.

|image3|

Pages in the web content folder can be stored in any hierarchy below the
project's web content folder (it is not allowed to use or reference
content that is stored outside the project's web content folder). You
can use any type as long as it is possible to render it in the browser
of the user.

.. note::

   Some browsers delegate the displaying of certain file types to third
   party plugins and/or applications depending on the configuration of
   the client. Thus this behavior cannot be controlled by Ivy.


.. include:: _html-content-in-the-cms.rst
.. include:: _html-content-in-the-web-content-folder.rst
.. include:: _html-best-practice.rst

.. |image0| image:: /_images/user-interface-html/create-new-page.png
.. |image1| image:: /_images/user-interface-html/create-new-page-web-content.png
.. |image2| image:: /_images/user-interface-html/edit-existing-page.png
.. |image3| image:: /_images/user-interface-html/page-in-cms.png
