.. _process-element-rest-client-activity:

REST Client Activity
====================

|image0| The *REST Client Call Activity* element is located in the
*Activity* drawer of the process editor palette.

Element Details
---------------

Use the REST Client Activity to invoke REST services.

Inscription
-----------

.. include:: _tab-name.rst

Request Tab
~~~~~~~~~~~

On this tab you can configure the call to the REST service.

.. figure:: /_images/process-elements/rest-client-activity-tab-request-get.png
   :alt: REST Client Request tab

   REST Client Request tab

Target
   -  **REST-Client**: The first combo lets you pick a pre-configured
      :ref:`rest-clients-configuration`.

   -  **HTTP-Method**: The second combo lets you select the HTTP method
      to use. You can choose one of the well known methods like GET,
      POST, PUT or DELETE.

   -  **Path**: The text input can be used to define a resource-path.
      The provided path will be added to the base URI which is defined
      in the :ref:`rest-clients-configuration`. Use the attribute browser on
      the right side to insert dynamic parts to the URI.

   -  .. _process-element-rest-client-activity-browser: 
   
      **API Browser**: Open API method browser that shows valid remote 
      service resources and their documentation.
      Once selected, the chosen method will automatically fill essential
      inscription editor parts to make the service call valid.

      If this browser is not displaying any method: Use the :ref:`rest-clients-generator-wizard`
      and generate the Open API client in advance.

      |image16|

   -  **Parameters**: Use this table to define query parameters that
      should be added to the URI. Or switch the type to 'template' in
      order to resolve a dynamic path template with a concrete value.

      The parameter value is scriptable and can therefore contain
      process variables or other dynamic content.

      |image1|

   -  **Headers**: Will be sent with the request and can be interpreted
      by the target service. For instance, many REST APIs can provide
      data in multiple serialization formats. By setting the ``Accept``
      header, the preferred format can be propagated to the target
      service.

      Any other HTTP-Header can also be configured. However, the
      ``Authorization`` header is easier to configure with an
      authorization feature on the :ref:`rest-clients-configuration`.

      |image2|

   -  **Properties**: Are used to configure optional features or native
      properties of the REST client. They are globally configurable in
      the :ref:`rest-clients-configuration` properties. Here you can overwrite
      a property with dynamic values.

      |image3|

Body
   For POST and PUT requests the body section can be used to specify
   that data that will be sent to the REST service.

   -  **Raw**: Define the Content-Type first and define any textual
      content in the editor part. The content can contain dynamic parts
      like process data fields. Use the action buttons left to the
      editor in order to insert a dynamic variable or function call.

      |image4|

   -  **Form**: Send form values as content of type
      ``application/x-www-form-urlencoded`` or as ``multipart/form-data``.
      The form values are scriptable.

      |image5|

   -  **Entity**: Send a complex object as serialized text to the remote
      REST service. Most Java objects should be serializable as JSON
      (application/json) without additional configuration.

      The serialization behaviour can be configured for special needs
      via :ref:`properties <rest-clients-configuration-properties>` on
      the client.

      |image6|

Response Tab
~~~~~~~~~~~~

On this tab you can consume response from the REST service.

.. figure:: /_images/process-elements/rest-client-activity-tab-response.png
   :alt: REST Client Response tab

   REST Client Response tab

Body
   -  **Result-Type**: The first combo defines how the response entity
      will be read. Pick a Java type that can be mapped to response
      entity. The entity object is available in the 'result' variable.

      See the chapter below (:ref:`process-element-rest-client-activity-json-to-java`)
      for a
      quick comparison of response body mapping solutions.

      The deserialization from JSON to a Java object can be customized
      with :ref:`properties <rest-clients-configuration-properties>` on
      the client.

   -  **Code**: Use the code editor to handle the response or its
      entity. In most cases, you only need to assign the 'result'
      variable to your process data. However, in this editor the JAX-RS
      'response' variable is also available which lets you access the
      HTTP-status-code and other details of the HTTP response.

Error handling
   -  **On Error**: Choose the Error Code to throw if the REST client
      fails with an exception. This is typically the case if a
      connection or timeout problem exists. Pick '*>> Ignore Error*' to
      continue the process execution even though the REST service call
      failed with an exception.

   -  **On Status Code not successful**: Fail automatically with an
      Error Code if the HTTP response status code is not in the 200
      family. Pick '*>> Ignore Error*' if other status codes are valid
      and expected.



.. _process-element-rest-client-activity-json-to-java:

JSON to Java
------------

The mapping of a JSON response body to a Java object is a simple task.
Think of a service that returns a complex JSON. E.g:

::

   {
     "id": 1,
     "name": "Leanne Graham",
     "username": "Bret",
     "email": "Sincere@april.biz",
     "address": {
       "street": "Kulas Light",
       "suite": "Apt. 556",
       "city": "Gwenborough",
       "zipcode": "92998-3874",
       "geo": {
         "lat": "-37.3159",
         "lng": "81.1496"
       }
     },
     "phone": "1-770-736-8031 x56442",
     "website": "hildegard.org",
     "company": {
       "name": "Romaguera-Crona",
       "catchPhrase": "Multi-layered client-server neural-net",
       "bs": "harness real-time e-markets"
     }
   }

You can handle this complex JSON object with one of these solutions:

1. **Map to Data Class**: Create a Data Class with the attributes you
   need in the business process. Read the result body with this Data
   Class. Every attribute that matches by name (case sensitive) with an
   attribute in the JSON object will be mapped. Assign the ``result``
   object to an attribute of your process data. This option should be
   used if you want to reflect a small JSON structure.

   |image9|

   |image10|

2. **Map to Generated Class**: Paste the JSON you receive from the
   service into a Java object source generator like
   http://www.jsonschema2pojo.org/. Generate the Java sources for the
   JSON structure. Download the sources and add them to a special source
   folder (E.g. ``src_generated``). Now you can read the response body
   to an object of this generated class.

   This option should be used if you want to represent a complex JSON
   structure without writing code yourself.

   |image11|

   |image12|

   |image13|

3. **Map to JSON Node**: Read the result body as ``JsonNode`` object.
   Navigate through the object tree and read its field values manually.
   This option should be used if you don't want to reflect the whole
   object structure and only need parts from the object tree.

   |image14|

Customization
-------------

The inscription mask provides a handy UI that makes most calls to a REST
service very simple. However, there are always corner cases where you
need to configure something, which is not configurable on the UI. In
these rare cases, you can use the fluent JAX-RS API to call the service
and interpret the response. To do so you can choose 'JAX_RS' as HTTP
Method. In the scripting field that became visible you can configure
every detail of the REST request done by this element.

In the scripting field, the variable ``client`` holds the REST client
chosen in the *Target* section. The whole setup from the Target section
will be applied to this client variable.

|image15|


Call from Java
~~~~~~~~~~~~~~

Rest Client calls can also be executed via Public API without using the
Rest Client Activity.

The entry point to access Rest Clients is ``Ivy.rest()``. The returned
object is an instance of a
`javax.ws.rs.client.WebTarget <http://docs.oracle.com/javaee/7/api/javax/ws/rs/client/WebTarget.html>`__
which is pre-configured as defined in the :ref:`rest-clients-configuration`. It
provides fluent API to call the remote REST service.

**Sample**

::

   // retrieve pre-configured rest service client
   WebTarget client = Ivy.rest().client("myServiceName"):

   // GET request to receive a simple string
   String token = Ivy.rest().client(UUID.fromString("e00c9735-7733-4da8-85c8-6413c6fb2cd3")).request().get(String.class);

   // POST request to send a complex object
   Ivy.rest().client("crmService").request().post(javax.ws.rs.client.Entity.json(myPerson));


Re-use configuration
~~~~~~~~~~~~~~~~~~~~

If you notice that you configure precisely the same thing on multiple
Rest Client Activities you can reduce this duplication.

Instead of applying the configuration multiple times, it can be set
globally on the :ref:`rest-clients-configuration`. Almost any aspect of a Rest
Client call can be configured by implementing a custom feature
(``javax.ws.rs.core.Feature``). Our authorization feature can be taken
as an example:
``ch.ivyteam.ivy.rest.client.authentication.HttpBasicAuthenticationFeature``.

.. |image0| image:: /_images/process-elements/rest-client-activity.png
.. |image1| image:: /_images/process-elements/rest-client-activity-request-parameters.png
.. |image2| image:: /_images/process-elements/rest-client-activity-request-headers.png
.. |image3| image:: /_images/process-elements/rest-client-activity-request-properties.png
.. |image4| image:: /_images/process-elements/rest-client-activity-input-raw-json.png
.. |image5| image:: /_images/process-elements/rest-client-activity-input-form-string.png
.. |image6| image:: /_images/process-elements/rest-client-activity-input-entity-json.png
.. |image9| image:: /_images/process-elements/rest-client-activity-consume-data-class-structure.png
.. |image10| image:: /_images/process-elements/rest-client-activity-consume-data-class.png
.. |image11| image:: /_images/process-elements/rest-client-activity-consume-class-generator-site.png
.. |image12| image:: /_images/process-elements/rest-client-activity-consume-generated-sources.png
.. |image13| image:: /_images/process-elements/rest-client-activity-consume-generated-class.png
.. |image14| image:: /_images/process-elements/rest-client-activity-consume-nodes-manually.png
.. |image15| image:: /_images/process-elements/rest-client-activity-tab-request-jax-rs.png
.. |image16| image:: /_images/process-elements/rest-client-activity-oas3-browser.png
