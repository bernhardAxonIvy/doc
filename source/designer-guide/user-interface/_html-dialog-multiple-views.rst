.. _html-dialog-multiple-views:

Html Dialog with Multiple Views
-------------------------------

To implement a user interaction that consists of several pages (for
example a wizard), one Html Dialog can have multiple views (.xhtml
files). This allows to enclose a complex user interaction in one Html
Dialog and to abstract it from the business process.

How to add a view
^^^^^^^^^^^^^^^^^

In the :guilabel:`New` menu in the Axon Ivy project tree you find the
:guilabel:`New Html Dialog View` wizard to add a view to a Html Dialog. Just
enter the name of the view and the xhtml file for the view is created
and added to the Html Dialog. In the ivy project tree all view files of
a Html Dialog are displayed below the main node of that Html Dialog.

|html-dialog-new-wizard|

How to switch views during runtime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you have created a Html Dialog with several views you have to
implement the navigation between the views for the user on your own. The
basic solution is a ``commandButton`` with an ``update`` attribute to
load the next view.

You find an example of a multi view Html Dialog in the :ref:`HtmlDialogDemos
project <importing-demo-projects>` that is provided
with the Axon Ivy Designer.

::

   <h:form id="myForm">
       <p:panel header="Multi View Demo" id="panel">
       <h3>Payment - Credit Card</h3>
       <p:messages id="msgs"/>
       <h:panelGrid columns="2">
           <p:outputLabel value="Credit Card Number"/>
           <p:inputMask required="true" value="#{data.creditCardNumber}" 
               id="CreditCardNumber" mask="9999-9999-9999-9999"></p:inputMask>
       </h:panelGrid>           
       <p:commandButton value="Next" update="myForm" action="#{logic.nextView('CreditCard')}"/>
       </p:panel>
   </h:form>      

.. |html-dialog-new-wizard| image:: /_images/html-dialog/html-dialog-new-view-wizard.png
