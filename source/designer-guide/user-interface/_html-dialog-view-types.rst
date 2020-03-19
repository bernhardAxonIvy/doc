Html Dialog View Types
----------------------

An Html Dialog is either a page or a component. Both are complete Html
Dialogs and have therefore their own view, model (data class) and
controller (logic). This concept allows to build up component oriented
UI design.

.. note::

   The templates for page and component are configured in the
   :ref:`html-dialog-preferences`.

Html Dialog Page
^^^^^^^^^^^^^^^^

An Html Dialog page represents a full page that is finally displayed in
the web browser. Therefore a page can be opened by a
:ref:`process-element-user-dialog`.


Html Dialog Layouts
^^^^^^^^^^^^^^^^^^^

An Html Dialog Page uses an Html Dialog Layout. An Html Dialog Layout is
the concept of a master page that defines a common layout for a number
of similar dialogs. An Html Dialog Page references a layout and
implements defined parts of it. For example the layout provides the
header- and footer-area whereas the content-area is individually
implemented on each dialog.

Axon.ivy brings a set of predefined layouts. The layout (together with
the view type) is chosen in the
:ref:`New User Dialog Wizard <user-dialog-new-wizard-page-1>`.

For more information about templating have a look at the official JSF
documentation.


Custom Html Dialog Layouts
^^^^^^^^^^^^^^^^^^^^^^^^^^

Axon.ivy is not limited to the usage of the built-in Html Dialog
Layouts. Custom layouts can be added with small effort.

In order to add a custom layout - which is a normal .xhtml file - it
needs to be stored into the folder :ref:`web content folder <html-content-in-the-web-content-folder>`
of the project. In doing so, the custom layout can now be referenced as
a layout inside an Html Dialog.

To make the custom layout show up in the 
:ref:`New User Dialog Wizard <user-dialog-new-wizard-page-1>`
(for selection of the view type),
it must be stored in the folder ``webContent/layouts`` of the project.

The folder structure of ``webContent/layouts`` should follow the
following contract:

-  ``webContent/layouts/[MyTemplateName].xhtml``
-  ``webContent/layouts/[A sub folder]/[for additional template content]``

.. note::

    A layout can be anywhere in the :file:`webContent` folder, but as mentioned
    before we recommend to store it in the :file:`webContent/layouts` folder. 
    
    Please don't store it into the :file:`webContent/view` folder. This location
    is intended for :ref:`static-jsf-pages`, which would mean that you could
    call the layout directly.


.. _html-dialog-component:

Html Dialog Component
^^^^^^^^^^^^^^^^^^^^^

A component can be embedded into other Html dialog or again in another
component.

View Definition
~~~~~~~~~~~~~~~

The view consists of two parts, an interface and the implementation. The
interface is constituted by a
``<cc:interface componentType="IvyComponent">`` tag and is followed by
an optional list of component attributes. The implementation part starts
with a ``<cc:implementation>`` tag and the component attributes can be
accessed with the expression ``cc.attrs.attributeName``

The following code fragment defines an example Html Dialog component:

::

           <cc:interface componentType="IvyComponent">
               <cc:attribute name="caption" />
           </cc:interface>
           <cc:implementation>
               <p:fieldset legend="Address Component">
                   <h:outputLabel value="#{cc.attrs.caption}" />
                   <h:panelGrid columns="2">
                       <p:outputLabel value="Street" for="street" />
                       <p:outputLabel value="Country" for="country" />
                       <p:inputText value="#{data.address.street}" id="street" />
                       <p:inputText value="#{data.address.country}" id="country" />
                   </h:panelGrid>
               </p:fieldset>
           </cc:implementation>
           

Usage
~~~~~

A component could be inserted with the ``<ic:``-tag. E.g.
``<ic:my.namespace.ComponentName ... />``.

.. tip::

   In the **Html Dialog Editor**\ you have pretty nice tool support for
   inserting components. You can drag and drop an available component
   from the palette. You can select one from the auto completion popup
   list and you can define required attributes in the properties view.

Start Method
~~~~~~~~~~~~

Optionally you can define the start method that should be used to start
the embedded component with the attribute ``startMethod``. If you do not
define the start method, then a default start method will be used.
Parameters of the start method can be defined by adding them as named
attributes. Parameters are mapped by name, i.e. an attribute of the tag
will be mapped to the start method parameter with the same name.
Furthermore you can set the component attributes that you defined in the
interface of the component by simply adding them as attributes of the
tag too.

.. note::

   You can not override start methods. So do not use multiple start
   methods with the same name but different parameter lists.

See the following code fragment that inserts a Html Dialog component.
The start method ``start(data.person.BillingAddress:address)`` will be
used, the current value of the data class property ``billingAddress``
will be used as parameter for the start method and the component
attribute ``caption`` will be set to the value "Billing Address"

::

       <h:panelGrid columns="2">
           <ic:ch.ivyteam.htmldialog.demo.component.AddressComponent
               startMethod="start" address="#{data.person.billingAddress}"
               caption="Billing Address">
           </ic:ch.ivyteam.htmldialog.demo.component.AddressComponent>
       </h:panelGrid>
