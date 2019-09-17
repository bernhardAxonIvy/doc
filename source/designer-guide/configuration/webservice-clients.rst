.. _webservice-clients-configuration:

Web Service Clients
===================

This chapter describes how web service configurations are organized.

.. figure:: /_images/designer-configuration/webservice-client-editor.png
   :alt: Web Service Clients Editor

   Web Service Clients Editor


Client Tree
-----------
Web service configurations are displayed in a tree hierarchy. The tree
editor helps to add and delete existing tree elements (web service
groups, web service configurations and web service environment
configurations).

In the editor the groups are symbolized with a folder icon. The web
service configuration elements are symbolized with a globe icon. On the
right side there are buttons offering the following functions:

- :guilabel:`Add Client`
  Adds a new web service client configuration.

- :guilabel:`Add Environment`
  Adds an environment configuration to the selected web service
  configuration. Select one or more environments from the environment
  list.

  .. figure:: /_images/designer-configuration/webservice-client-environment.png
     :alt: Add Environment

     Add Environment

- :guilabel:`Add Group`
  Adds a new web service group. These can be used to structure your
  service trees.

- :guilabel:`Remove`
  Remove the current selection.

.. warning::

   Entries you want to erase might still be in use. Check all
   dependencies before removing elements from the tree.


Client Details Editor
---------------------

Details of currently selected web service configuration node are
displayed on the right hand side. In this editor details of an tree
element (web service group, web service configuration or web service
environment configuration) can be changed.

Web Service Client Section
~~~~~~~~~~~~~~~~~~~~~~~~~~

The following attributes are available in the *Web Service* Section:

- :guilabel:`Name`
  The name attribute specifies the displayed name of a web service
  configuration. The name is not used as identifier, so it can be
  changed at any time.

- :guilabel:`Description`
  Description of the web service. This field is for documentation
  purposes only.

- :guilabel:`WSDL URL`
  Service details and classes will be generated using the WSDL
  specified here. Please **use protocol prefix** like:
  http://myserver.ch/hello.wsdl or file://c:\temp\myWis.wsdl

- :guilabel:`Library`
  The library that is used to generate the web service client classes.
  Unless you have some special reasons to use the older Axis framework,
  please select Apache CXF. Note that you have to regenerate the web
  service client classes if you change this setting.

- :guilabel:`Generate WS classes`
  After specifying the mandatory fields WSDL URL and Library you can
  click the Generate WS classes button to read the WSDL and generate
  client side classes. The generated files will be compiled and
  packaged into a jar file. The generated jar file will be located in
  the *lib_ws/client* folder of ivy project and automatically added to
  the project libraries.

.. note::

   When you change the WSDL URL, the WSDL itself or the Library
   setting you **always** have to re-generate the service classes.



Authentication Section
~~~~~~~~~~~~~~~~~~~~~~

.. figure:: /_images/designer-configuration/webservice-client-auth.png
   :alt: Authentication Section

   Authentication Section

Configures the authentication that is sent to the remote web service.
The following attributes are available in the *Authentication* section:

- :guilabel:`Type`
  The authentication type to be used. The available authentication
  types depends on the selected library.

- :guilabel:`Username`
  Name of the user used to authenticate the client. Will be stored as a
  property.

- :guilabel:`Password`
  Password of the user used to authenticate the client. Will be stored
  as a property.

.. tip::

   Authentication properties like (``username`` and ``password``) can be
   overridden in the :ref:`process-element-web-service-call-activity`
   that performs the call to the remote service. On these activities
   authentication properties can contain scripted/dynamic values.



Features Section
~~~~~~~~~~~~~~~~

.. figure:: /_images/designer-configuration/webservice-client-features.png
   :alt: Features Section

   Features Section
   

Features add optional functionality to a web service client call
execution.

- :guilabel:`Add`
  Adds a new feature class to the list. All specified feature classes
  must implement the JAX-WS standard class
  `javax.xml.ws.WebServiceFeature <https://docs.oracle.com/javase/9/docs/api/javax/xml/ws/WebServiceFeature.html>`__
  or
  ``ch.ivyteam.ivy.webservice.exec.feature.WebServiceClientFeature``.

- :guilabel:`Remove`
  Removes the selected feature class from the list.



Properties Section
~~~~~~~~~~~~~~~~~~

.. figure:: /_images/designer-configuration/webservice-client-properties.png
   :alt: Properties Section

   Properties Section

Properties configure the web service client and its features. Some well
known properties are documented here:
`javax.xml.ws.BindingProvider <https://docs.oracle.com/javase/9/docs/api/javax/xml/ws/BindingProvider.html>`__

- :guilabel:`Add`
  Adds a new property.

- :guilabel:`Add Password`
  Adds a new password property. The value of a password property is not
  visible in the table and is stored encrypted in the configuration
  file.

- :guilabel:`Remove`
  Removes the selected property.

.. tip::

   In order to configure SSL client authentication for a web service,
   you need to specify the property *SSL.keyAlias*. The value of this
   alias needs to correspond with a key alias available in the client
   keystore configured under ref:`workspace-preferences-sslclient`.


Endpoint URI Section
~~~~~~~~~~~~~~~~~~~~

.. figure:: /_images/designer-configuration/webservice-client-endpoint-uris.png
   :alt: Endpoint URIs Section

   Endpoint URIs Section

The following attributes are available in the *Ports* section:

- :guilabel:`Ports`
  The list of ports is available after web service client classes
  generation. (see: Generate WS classes). The content of this list
  originates from the specified WSDL and is filled with information
  from the client framework.

- :guilabel:`Default URI`
  The URI where the current web service is located. The initial URI is
  derived from the WSDL. But one can override this setting if the
  address has changed. It can also be overridden per environment. For
  instance to route calls during development to test instance of the
  service.

- :guilabel:`Fallback URIs`
  An optional list of URIs. They are used as fallback URI if any error
  happens during the web service request. The default endpoint will be
  called first, then the fallback URI in the appearing order. Servers
  on the list are queried one by one until a successful web service
  access can be made. You find error messages in the runtime log when
  endpoint invocations fail. If a service invocation is successful then
  the process continues as normal.

  This list is optional. If this list is empty and no default URI is
  specified then an exception is raised during the call and the process
  continues with error handling.
