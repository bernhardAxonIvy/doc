.. _rest-clients-configuration:


REST Clients
============

The REST clients configuration contains the definition of all REST
services, which can be consumed from a BPM process.

.. tip::

   Before you create a new REST Client you should have a look at the
   :ref:`Axon Ivy Market <market>`. You may find there already a connector.


REST Client
-----------

A REST client can be referenced by its name or by its universal unique
identifier (uuid). The uuid is generated when a new REST client is
created and will never change. The name of a REST client is given when a
new REST client is created. It can be changed later. By referencing a
REST client by its uuid ensures that renaming of the REST client will
not break the reference.

Further information about how to use the REST clients can be found in
the chapter :ref:`integration-rest`.

Like other configurations a REST client can be configured differently
per environment.

.. _rest-client-configuration-editor:

REST Client Editor
------------------

The REST client Editor allows to configure REST client default and
environments configurations.

.. figure:: /_images/designer-configuration/rest-client-editor.png
   :alt: Rest Client Editor
   :align: center
   
   Rest Client Editor


REST Clients Tree Editor
~~~~~~~~~~~~~~~~~~~~~~~~

Shows the REST clients and its environment configurations.

- :guilabel:`Add Client`
  Adds a new REST client.

- :guilabel:`Add Environment`
  Adds a new environment configuration for the selected REST client.

- :guilabel:`Remove`
  Removes the selected environment or REST client configuration.

REST Client Details Editor
~~~~~~~~~~~~~~~~~~~~~~~~~~

Shows the currently selected REST client or environment configuration.

REST Client Section
^^^^^^^^^^^^^^^^^^^

- :guilabel:`UUID`
  Universal unique identifier of the REST client. The REST client can
  be referenced by this uuid. Cannot be modified.

- :guilabel:`Name`
  The name of the REST client. The REST client can be referenced by
  this name. Can be modified. Note that references using the name will
  break if you change it.
  
- :guilabel:`Icon`
  Choose an icon that represents the system that this REST client
  communicates with. The icon will also be used as decorator icon on 
  REST client call process elements that references this REST client.  

- :guilabel:`Description`
  Description of the REST client.

- :guilabel:`Uri`
  The base URI under which the remote service publishes its resources
  (e.g. https://api.twitter.com/1.1).

  The URI can contain template placeholders which are resolved later by
  the client user (e.g. https://api.twitter.com/{version}).

  ::

     ivy.rest.client("twitter").resolveTemplate("version", "1.1").get()

  .. tip::

     To consume a REST service running in the same Axon Ivy Engine /
     Application as the client a set of Axon Ivy placeholders can be
     used. These placeholders are automatically resolved:
     {ivy.engine.host}, {ivy.engine.http.port}, {ivy.engine.context},
     {ivy.request.application}.

     E.g. ``http://{ivy.engine.host}:{ivy.engine.http.port}(/{ivy.engine.context})/{ivy.request.application}/api/my/service``


.. _rest-clients-generator-wizard:

OpenAPI Client Generator
^^^^^^^^^^^^^^^^^^^^^^^^^
The OpenAPI client generator wizard enables validation and inscription editor simplification features 
around concrete calls with a :ref:`process-element-rest-client-activity`. 
Click the *Generate REST classes* button to start the wizard. 

.. figure:: /_images/designer-configuration/rest-client-editor-main-section.png

**OpenAPI Clients**

- expose valid resource+method combos and their documentation
- display and validate typed query and path parameters
- are aware of the payload being to and fro and generates java objects for them

**Pre-Requisites**

- In oder to generator an `OpenAPI <https://swagger.io/docs/specification/about/>`__ client you need an OpenAPI 3.0 JSON service descriptor. 
- The legacy Swagger 2.0 openapi.json format is also supported by the client generator.

.. figure:: /_images/designer-configuration/rest-client-generator-wizard.png


**Migrate to OpenAPI**

OpenAPI isn't the only popular format to describe REST service capabilities.

You may need to integrate an `OData service <https://www.odata.org/>`__ then you
can convert your OData service description with our `OData converter
<http://odata-converter.axonivy.com>`__. The service description is usually
available under the given service url ending with :code:`$metadata` e.g.
:code:`https://myService/cars/$metadata`

If you have other types of service description then you may have a look at
`lucybot <https://lucybot-inc.github.io/api-spec-converter/>`__ which is able to
convert many other specifications to OpenAPI.


Authentication Section
^^^^^^^^^^^^^^^^^^^^^^

- :guilabel:`HTTP Basic`
  Adds support for HTTP Basic authentication.

- :guilabel:`HTTP Digest`
  Adds support for HTTP Digest authentication.

- :guilabel:`NTLM`
  Adds support for NTLM authentication. Optionally, the ``NTLM.domain``
  and the ``NTLM.workstation`` can be configured in the properties
  section.

- :guilabel:`Username`
  The name of the user used to authenticate the client.

- :guilabel:`Password`
  The password of the user used to authenticate the client.

Features Section
^^^^^^^^^^^^^^^^

- :guilabel:`JSON`
  Adds a feature so that responses in JSON are mapped to Java objects
  and Java objects in requests are mapped to JSON.

- :guilabel:`Features List`
  Shows the configured "features" classes. The classes configured here
  are registered in the WebTarget using the method ``register(Class)``.
  The classes need to implement a JAX-RS contract interface and must
  have a default constructor.

- :guilabel:`Add`
  Adds a new feature class.

- :guilabel:`Remove`
  Removes the selected feature.


.. _rest-clients-configuration-properties:

Properties Section
^^^^^^^^^^^^^^^^^^
 
Properties can customize the settings of the REST client or one of
its features.

- :guilabel:`Add`
  Adds a new property.

- :guilabel:`Add Password`
  Adds a new password property. The value of a password property is not
  visible in the table and is stored encrypted in the configuration file.

- :guilabel:`Remove`
  Removes the selected property.

**Client properties**

Well known properties of the client are documented here:
`org.glassfish.jersey.client.ClientProperties <https://jersey.github.io/apidocs/latest/jersey/org/glassfish/jersey/client/ClientProperties.html>`__.

In order to configure SSL client authentication for a REST client
call, you need to specify the property *SSL.keyAlias*. The value of
this alias needs to correspond with a key alias available in the
client keystore configured under :ref:`workspace-preferences-sslclient`.

**JSON properties**

The JSON feature knows many properties that customize the
serialization from JSON to Java objects and vice versa.

It is for instance possible to read a very complex JSON object with
many fields back to a Java object that contains only a subset of
these fields. To allow this incomplete but efficient mapping the
property ``Deserialization.FAIL_ON_UNKNOWN_PROPERTIES`` must be set
to ``false``.

Consult the Jackson documentation for a list of all configurable
items:

- `Jackson Deserialization features <https://github.com/FasterXML/jackson-databind/wiki/Deserialization-Features>`__
  can be set using ``Deserialization.`` as prefix. E.g. ``Deserialization.FAIL_ON_UNKNOWN_PROPERTIES``

- `Jackson Serialization features <https://github.com/FasterXML/jackson-databind/wiki/Serialization-features>`__
  can be set using ``Serialization.`` as prefix. E.g. ``Serialization.WRITE_ENUMS_USING_INDEX``

**Path properties**

Properties prefixed with ``PATH.`` are used in resource paths on calling activities. 
So if your target resources contain templates like ``{api.version}`` which 
re-occur on each and every instance of a calling activity, you should set it as global 
path property on the RestClient, rather than re-declaring it on every instance 
of the calling element.

Example:

Given a valid resource of your remote service looks like this: ``https://api.twitter.com/{api.version}/status/...``

Then the path template ``{api.version}`` can be set globally on the RestClient as property

+------------------+----------+
| Property         | Value    |
+------------------+----------+
| PATH.api.version |    2     |
+------------------+----------+

The resolved uri would consequently look as follows: ``https://api.twitter.com/2/status/...``
