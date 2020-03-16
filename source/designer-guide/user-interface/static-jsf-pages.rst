.. _static-jsf-pages:

Static JSF Pages
================

It is possible to use JSF (xhtml) pages outside of a normal :ref:`user-dialogs`.
If you want a such static JSF page you can create a new sub folder :file:`view`
inside the :file:`webContent` directory. The concept is mostly the same as in
:ref:`html-dialogs` described. The special part about this approach is, that
those pages run on an application and process model but without a process or
task.

Because this pages are outside of a normal :ref:`user-dialogs` structure, it is
not possible to access any ivy data or logic classes. If you want logic and data
you need to implement **ManagedBeans** (same way as known from
:ref:`html-dialog-managed-beans`) which will provide this stuff for you.

.. warning::

   It is not possible to use :ref:`html-dialog-component` inside of static JSF
   pages. Even if you use a static JSF page as workflow end page, it is not
   possible to access the case and task context.


Access static pages
-------------------

**URL**

To access this pages with a browser you need to call
``http://<servername>:<port>/ivy/faces/view/<application>/<process model>/<xhtml
file in webContent/view>``. Assumed you have a xhtml page with the name
test.xhtml in your :file:`webContent/view` folder, an <application name> App and
a <processmodel> PM, you can call the URL
``http://localhost:8080/ivy/faces/view/App/PM/test.xhtml`` to get your static
JSF page. 

.. note::
   
   Please note that any page located within the :file:`webContent/view` folder
   is accessible via this static URL. So you should only have pages in here,
   which are fully functional (e.g no template pages) and you should secure them
   via a login page.


**EndPage**

If you want to call this static JSF pages from a ivy process, you can
implement a 
:ref:`End Page <process-element-end-page>`,
:ref:`Task Switch Gateway <process-element-task-switch-gateway>` or
:ref:`Task Switch Event <process-element-task-switch-event>` 
element and choose the
xhtml file as end page. For this approach exists an example in the
:ref:`HtmlDialogDemos <importing-demo-projects>`.
