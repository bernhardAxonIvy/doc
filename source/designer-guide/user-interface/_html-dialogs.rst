.. _html-dialogs:

Html Dialogs
------------

An Html Dialog (in the following abbreviated as HD) is one of two
possibilities to implement a User Dialog Component. HDs are implemented
using the Java Server Faces technology.

This means, that the view of an HD is defined with the means of an XHTML
document and that it is displayed in a web browser.


PrimeFaces JSF Component Library
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Axon.ivy is bundled with the JSF component library
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

   The **Html Dialog Editor** supports PrimeFaces during design time.
   This means that you can profit from code completion support, tag
   validation, structured properties in the property view and a
   graphical representation in the preview part for all PrimeFaces
   widgets.

The elements of the PrimeFaces library are introduced with the ``<p:>``
namespace on your XHTML page. In addition also the
**primefaces-extension**\ ``<pe:`` and **primefaces-mobile** ``<pm:``
widget libraries are included in the Axon.ivy installation.

.. note::

   It is also possible to install and use additional JSF libraries. To
   do so you copy the concerning .jar file into the folder
   **/webapps/ivy/WEB-INF/lib** of Axon.ivy Designer and Axon.ivy Engine
   respectively. Then you have to add a namespace attribute **xmlns:xx**
   on your html pages to use the widgets.


Themes
^^^^^^

With themes the visual appearance of the application such as the color
scheme and the decoration of components can be changed. PrimeFaces comes
with a number of predefined themes where you can choose from. Or you can
create your own theme using the theme generator tool jQuery ThemeRoller.
To learn more about PrimeFaces themes, the web site `PrimeFaces
Themes <http://www.primefaces.org/themes.html>`__ is the right starting
point:

The theme called **modena-ivy** is configured as default. However, you
can easily configure another default theme with the following steps:

-  The `PrimeFaces Community
   Themes <http://www.primefaces.org/themes.html>`__ are already
   included in the product. To use a own theme copy your themeXY.jar
   file into the folder **/webapps/ivy/WEB-INF/lib** of Designer and
   Engine respectively

-  Edit the theme setting parameter ``primefaces.THEME`` in the file
   **/webapps/ivy/WEB-INF/web.xml**

-  The parameter ``primefaces.THEME`` can also be set as a head
   attribute in your **template.xhtml** file (works only with
   IvyPrimefacesThemeResolver).

   ::

      <h:head>
          ...
          <f:attribute name="primefaces.THEME" value="#{theme}"/>
          ...
      </h:head>

-  Restart Axon.ivy


.. tip::

   By using the ``ch.ivyteam.ivy.jsf.primefaces.IvyPrimefacesThemeResolver``
   the theme can be configured by application and session. See *Engine
   Guide > Miscellaneous > Html Dialogs > Primefaces Theme*





Html Dialog Data Binding and Event Mapping
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An Html Dialog follows the model-view-controller pattern of the Axon.ivy
:ref:`user-dialog-concept`. So part of an
implemented HD is a data class (the model) whose data fields can be
bound to widget properties of the view. To define such a binding,
Axon.ivy provides the special object **data**.

On the other hand, the controller part of an Html Dialog is implemented
by a series of UI processes that can be mapped to events on the view
such as mouse clicks. To define such an event mapping, Axon.ivy provides
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

Data Classes are automatically initialized if an Html Dialog sets a
property on it.

E.g. If ``data.address`` is ``null`` and a form is submitted with a
value for ``data.address.street`` then a ``data.address`` object is
automatically created.

See also Public API ``ch.ivyteam.ivy.scripting.objects.jsf.el.AutoInitializable``.


.. include:: _html-dialog-editor.rst
.. include:: _html-dialog-view-types.rst
.. include:: _html-dialog-preferences.rst
.. include:: _html-dialog-multiple-views.rst
.. include:: _html-dialog-converters.rst
.. include:: _html-dialog-validators.rst
.. include:: _html-dialog-managed-beans.rst
.. include:: _html-dialog-ajax-method-call.rst
.. include:: _html-dialog-error-handling.rst
