.. _3rd-party-integration:

3rd Party Integration
*********************

The basic idea about integrating Axon.ivy with 3rd party systems is
either to invoke an operation on a external system out of an ivy process
(call) or to have a remote system that invokes an operation in Axon.ivy
(being called). There are several ways to implement such an integration.
This chapter will give you an overview.



Process Extensions
==================

Axon.ivy contains :ref:`extendible-process-elements` that can be
used to address particular execution behaviour requirements none of the
standard process elements can fulfill. By implementing one of these Java
interfaces any 3rd party logic can be weaved into the process during
execution time.

A generic Java interface is provided in following process elements:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).

:ref:`process-element-wait-program-intermediate-event`
   Interrupts process execution until an (external) event occurs.

:ref:`process-element-call-and-wait`
   A combination of the *PI* and *Wait* process elements.



Custom Process Element
----------------------

Process extension developers can also 
:ref:`provide their custom process <provide-your-own-process-elements>`
element with its specific icon, name and logic. This is the best way to
share a connector to your third party system with a larger community.




Database
========

A simple way to integrate Axon.ivy is the usage of an :ref:`external
database <database-configuration>`. From an ivy process, database
contents can
be read/written by :ref:`process-element-db-step` or by
using :ref:`JPA <persistence>`.





Web Services
============

SOAP based web services are often used to integrate various systems
together. The tooling of Axon.ivy makes the integration of remote web
services very easy and intuitive. There is no need to care much about
the technical details behind the scenes.


Call a remote Web Service
-------------------------

To call a remote web service it has to be registered in the
:ref:`webservice-clients-configuration`. Just add a new web service entry,
enter the WSDL URI and generate a client that can be used later on in
your process.

After that a :ref:`process-element-web-service-call-activity` can be
used to call the remote web service. Sending data from your business
process to the remote service and the integration of returned data from
the service is easy. It works like other well known data mapping tables.


Provide a Web Service for third parties
---------------------------------------

If you need to expose an interface to your application for third
parties, you can provide it as SOAP web service.

To define a new web service interface, add a new process of kind
:ref:`Webservice <process-kind-webservice>` to your
project. Define the supported parameters by configuring the
:ref:`process-element-web-service-process-start` event. Now you can
implement the business logic of the web service just a simple as any
other process flow.

Once the service is implemented. Start the process engine and hit the
link to the WSDL service definition. Share this WSDL with the third
party that is interested in your service.

Getting started
---------------

Have a look at our :dev-url:`video tutorials </tutorial>` to see web
service integrations in action.

If you are looking for web service integration examples with Axon.ivy,
have a look at the *ConnectivityDemos* sample project in the Designer.


.. _integration-rest:

REST Services
=============

REST (representational state transfer) is an architectural style, based
on resources to provide inter-system communication.

The Java API specification for RESTful Web Services is called
`JAX-RS <https://docs.oracle.com/javaee/7/api/javax/ws/rs/package-summary.html#package.description>`__.
It provides portable APIs for developing, exposing and accessing web
applications designed and implemented in compliance with principles of
REST architectural style.

Axon.ivy uses the reference implementation libraries of JAX-RS called
`Jersey <https://jersey.github.io/>`__.


Call a remote REST Service
--------------------------

To call a remote REST service it has to be defined in the
:ref:`rest-clients-configuration`. After that a
:ref:`process-element-rest-client-activity` can be used to call
the REST service.

Examples can be found in the :ref:`ConnectivityDemos <importing-demo-projects>` project.


.. _integration-rest-provider:

Provide own REST Services
-------------------------

To provide a custom REST services from an ivy project,
`JAX-RS <https://docs.oracle.com/javaee/7/api/javax/ws/rs/package-summary.html#package.description>`__
annotations can be used. A REST resource is created by adding a Java
class to the ``src`` directory. The Java class has to use the correct
annotations (as shown below), then it will be detected as a REST
resource and published automatically. After publishing, the resource
will be available on the base path */<appName>/api/*.

::

   /**
    * Provides the person REST resource 
    * on the path /myApplicationName/api/person
    */
   @Path("person")
   public class CustomProjectResource {
       @GET
       @Produces(MediaType.APPLICATION_JSON)
       public Person get() {
           Person p = new Person();
           p.setFirstname("Renato");
           p.setLastname("Stalder");
           return p;
       }
   }


.. note::

   To call a modifying REST service via ``PUT``, ``POST`` or ``DELETE`` the
   caller needs to provide a HTTP Header called ``X-Requested-By`` with
   any value e.g. ``ivy``. This is the `Jersey provided
   protection <https://github.com/jersey/jersey/blob/master/core-server/src/main/java/org/glassfish/jersey/server/filter/CsrfProtectionFilter.java>`__
   of REST services against cross-site request forgery (CSRF). If the
   CSRF header is not provided on a modifying REST request the request
   will fail with an HTTP Status 400 (Bad Request).

   User provided REST services via ``GET``, ``HEAD`` or ``OPTIONS`` should
   therefore be implemented in a way that they don't modify data.

Further information is available in the `JAX-RS API
Specification <https://docs.oracle.com/javaee/7/api/javax/ws/rs/package-summary.html#package.description>`__.
If you are looking for a sample about how to use JAX-RS in an ivy
project, you can study the *ConnectivityDemos* sample project in the
Designer.


.. _integration-rest-api-spec:

API publishing
--------------

Once you have provided new REST APIs with your project you need to share the service capabilities
with your service users. This is simple, since services defined within ivy projects will 
be published as `OpenAPI <https://www.openapis.org/>`__ service specification. One only needs to share the specification 
as file or serve it on a public URL so that clients can start using it.

The technical interface description is available under the following URL path:

``/<appName>/api/openapi.json``
e.g. http://localhost:8081/designer/openapi.json


.. _integration-rest-api-browser:

API Browser
-----------

All `OpenAPI <https://www.openapis.org/>`__ services can be easily inspected with the API Browser. 
It gives consumers of you services not only a detailed service description, but a simple client to fire real calls
against the services too.

The API Browser can be accessed with a webbrowser of your choice under the following URL paths:

- In the |ivy-designer|: ``/designer/api-browser`` (e.g. http://localhost:8081/designer/api-browser)
- In the |ivy-engine|: ``/system/api-browser`` (e.g. http://localhost:8080/system/api-browser)



Workflow API
------------

Axon.ivy provides a basic :ref:`Workflow API REST Service <mobile-workflow-api>`.
It can be used to enable remote systems to request information about
tasks of a user etc.
