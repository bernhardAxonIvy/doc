Error Handling
--------------

The exception handling in HTML Dialogs can be customized. Depending on
the request type the customization differs.

.. _user-dialogs-error-pages:

Error Pages
^^^^^^^^^^^^

Error pages inform the user on unexpected errors that occurred during the execution of 
process activities or HTML dialog interactions.

The default error pages can be examined in the product (see ``webapps/ivy/ivy-error-page.xhtml``).
These pages can be customized to met the look of your workflow application and your 
companies identity. 
Moreover, you can adjust the displayed information. The :public-api:`ErrorPageMBean </ch/ivyteam/ivy/webserver/ErrorPageMBean.html>` is 
accessible within error pages to provide context information on the error and its engine state.
Other IVY APIs are not intended to work in case of an error.

Custom errors pages must be registered in the global :ref:`web-xml`.

.. tip:: Keep in mind that error pages and its configuration do not live within the project. Therefore it is crucial to document or automate their deployment. Otherwise error page configurations might get lost during migrations to newer version of Axon.ivy.


AJAX Errors
^^^^^^^^^^^^

If an exception occurs in an ajax-based HTTP request, the configured
Primefaces ajax exception handlers comes into play. The handler must be
defined as part of the *\*.xhtml* file. In the provided standard
layouts, handlers are already configured. See ``webContent/layouts/includes/exception.xhtml`` for details.

::

   <p:ajaxExceptionHandler update="ajaxExceptionDialog" onexception="PF('ajaxExceptionDialog').show();"/>

The above ajax exception handler will catch every exception of every
type. If an exception occurs the action in ``onexception`` will be
executed. In this example, a Primeface dialog will be shown.

::

   <p:p:dialog id="ajaxExceptionDialog" header="Error" widgetVar="ajaxExceptionDialog" height="400px">              
       <p:h:outputText value="Error Id: #{errorPage.exceptionId}"/>
       <p:br/>
       ...
   <p:/p:dialog> 

The ``errorPage`` bean is available within the ajax exception handling.
Properties like ``exceptionId`` or ``message`` can be used to provide
specific error information to the user.

View Expired Exception
^^^^^^^^^^^^^^^^^^^^^^

If the view or the session of a user expires then there is a possibility
to catch that exception with a specialized ajax exception handler.
Instead of catching all exceptions you can specify the type of the
exception to catch.

::

   <p:ajaxExceptionHandler
       type="javax.faces.application.ViewExpiredException" 
       update="viewExpiredExceptionDialog" 
       onexception="PF('viewExpiredExceptionDialog').show();"/>

This handler will only catch exceptions of type
``javax.faces.application.ViewExpiredException``. The exception handler
with the most specific type of exception will be used.

::

   <p:dialog id="viewExpiredExceptionDialog" header="View or Session Expired" widgetVar="viewExpiredExceptionDialog" height="50px">
       <h:outputText value="The view or session has expired."/>
       <br/>
       <h:outputLink value="#{ivy.html.loginRef()}">Please login again.</h:outputLink> 
   </p:dialog>
