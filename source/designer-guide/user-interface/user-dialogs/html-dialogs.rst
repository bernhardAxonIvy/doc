.. _html-dialogs:

HTML Dialogs
------------

An HTML Dialog (in the following abbreviated as HD) is one of two
possibilities to implement a User Dialog Component. HDs are implemented
using the Java Server Faces technology.

This means that the view of an HD is defined with the means of an XHTML
document and that it is displayed in a web browser.


PrimeFaces JSF Component Library
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

|axon-ivy| is bundled with the JSF component library
`PrimeFaces <http://primefaces.org/>`__, an open source JSF component
library developed by Prime Teknoloji. It provides a collection of mostly
visual components (widgets). These can be used by JSF programmers in
addition to the small set of basic components that are shipped with the
core JSF platform. A very good starting point to learn more about
PrimeFaces can be found in the `PrimeFaces
Showcase <http://www.primefaces.org/showcase/>`__. Detailed PrimeFaces
widget API documentation can be found in the `PrimeFaces VDL
doc <http://www.primefaces.org/docs/vdl/>`__.

.. tip::

   The **HTML Dialog Editor** supports PrimeFaces during design time.
   This means that you can profit from code completion support, tag
   validation, structured properties in the property view and a
   graphical representation in the preview part for all PrimeFaces
   widgets.

The elements of the PrimeFaces library are introduced with the ``<p:>``
namespace on your XHTML page. In addition, also the
**primefaces-extension**\ ``<pe:`` widget library is included in the
|axon-ivy| installation.

.. note::

   It is also possible to install and use additional JSF libraries. To
   do so you copy the concerning .jar file into the folder
   **/webapps/ivy/WEB-INF/lib** of |ivy-designer| and |ivy-engine|
   respectively. Then you have to add a namespace attribute **xmlns:xx**
   on your html pages to use the widgets.


HTML Dialog Data Binding and Event Mapping
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An HTML Dialog follows the model-view-controller pattern of the |axon-ivy|
:ref:`user-dialog-concept`. So part of an
implemented HD is a data class (the model) whose data fields can be
bound to widget properties of the view. To define such a binding,
|axon-ivy| provides the special object **data**.

On the other hand, the controller part of an HTML Dialog is implemented
by a series of UI processes that can be mapped to events on the view
such as mouse clicks. To define such an event mapping, |axon-ivy| provides
the keyword **logic** to call an event process or a method process in
the logic.

Look at the following small code sample of a form with a mapped data
attribute on an input text field and a button with a bound event
process:

::

     <h:body>
       <h3>My JSF Form</h>
       <h:form id="myForm">
           <p:outputLabel value="#{ivy.cms.co('/labels/street')}" for="street" />
           <p:inputText value="#{data.address.street}" id="street" />
           <p:commandButton value="#{ivy.cms.co('/labels/submit')}" actionListener="#{logic.submit}"/>
       </h:form>
     </h:body>
       

Data Class Auto Initialization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Data Classes are automatically initialized if an HTML Dialog sets a
property on it.

E.g. If ``data.address`` is ``null`` and a form is submitted with a
value for ``data.address.street`` then a ``data.address`` object is
automatically created.

See also Public API ``ch.ivyteam.ivy.scripting.objects.jsf.el.AutoInitializable``.
