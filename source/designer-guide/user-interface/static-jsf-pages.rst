.. _static-jsf-pages:

Static Jsf Pages
================

It is possible to use Jsf (xhtml) pages outside of a normal
:ref:`user-dialogs`. If you want a such static Jsf page you can
create them directly in the webContent folder. The concept is mostly the
same as in :ref:`html-dialogs` described. The special
part about this approach is, that those pages run on an application and
process model but without a process or task.

Because this pages are outside of a normal 
:ref:`user-dialogs` structure, it is not possible to access any
ivy data or logic classes. If you want logic and data you need to
implement ManagedBeans (same way as known from :ref:`html-dialog-managed-beans`)
which will provide this stuff
for you.

.. warning::

   It is not possible to use
   :ref:`html-dialog-component` inside of static Jsf pages.
   Even if you use a static Jsf page as workflow end page, it is not
   possible to access the case and task context.


Access static pages
-------------------

**URL**

To access this pages with a browser you need to call
``http://<servername>:<port>/ivy/faces/view/<application name>/<process model>/<xhtml file in webContent>``.
Assumed you have a xhtml page with the name test.xhtml in your webContent folder,
an <application name> App and a <processmodel> PM, you can call the URL
``http://localhost:8081/ivy/faces/view/App/PM/test.xhtml`` to get your static JSF page.

**EndPage**

If you want to call this static Jsf pages from a ivy process, you can
implement a 
:ref:`End Page <process-element-end-page>`,
:ref:`Task Switch Gateway <process-element-task-switch-gateway>` or
:ref:`Task Switch Event <process-element-task-switch-event>` 
element and choose the
xhtml file as end page. For this approach exists an example in the
:ref:`HtmlDialogDemos <importing-demo-projects>`.
