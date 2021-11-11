HTML content in the CMS
-----------------------

There are a number of specific content object types that are uniquely
used inside HTML Dialog pages. All of them have their own editors, the
usage of which is described in the following sections.

.. note::

   Web Pages can be accessed without starting a process. This allows you
   to create for example a translated start page with some process start
   links. See also chapter :ref:`Access CMS Content with a
   Browser <cms-access-with-browser>`.


.. _html-jsp-editor:

JSP Editor
^^^^^^^^^^

The JSP editor is used to edit a JSP content object which can be used in
the
:ref:`process-element-web-page`,
:ref:`process-element-end-page`,
:ref:`process-element-task-switch-event` or
:ref:`process-element-task-switch-gateway`
process elements.

Inside JSP content objects you can make use of the
:ref:`Environment Variable ivy <ivyscript-reference-environmentvariable>`.
It is imported and declared as follows:

::

       <%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
       <jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>

You can also use the *in* object (i.e. process data) of the process
where the associated process element is located. You can access the
process data by using the ``ivy.html.get()`` method, e.g.:

::

       <%=ivy.cms.co("myUri")"%>
       <%=ivy.html.get("in.myString")%>

Furthermore you can insert references to content from the :ref:`web content
directory <html-content-in-the-web-content-folder>` into your JSP content objects, e.g.:

::

       <jsp:include page="/jspToInclude/include.jsp" />
       <img src="images/myImage.jpg" >


