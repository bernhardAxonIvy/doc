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
be published as `OpenAPI <https://www.openapis.org/>`__ service specification. You only need to share the specification 
as file or serve it on a public URL so that clients can start using it.

The technical interface description is available under the following URL path:

``/<appName>/api/openapi.json``
e.g. http://localhost:8081/designer/openapi.json


.. _integration-rest-api-browser:

API Browser
-----------

All `OpenAPI <https://www.openapis.org/>`__ services can be easily inspected with the API Browser. 
It gives consumers of your services not only a detailed service description, but a simple client to fire real calls
against the services too.

The API Browser can be accessed with a webbrowser of your choice under the following URL paths:

- In the |ivy-designer|: ``/designer/api-browser`` (e.g. http://localhost:8081/designer/api-browser)
- In the |ivy-engine|: ``/system/api-browser`` (e.g. http://localhost:8080/system/api-browser)

.. figure:: /_images/concepts-integration/api-browse-app.png
    :align: center


Secure APIs
-----------

REST APIs provided by an |ivy-engine| are protected by default to provide a safe interactions with your API clients.

CSRF protection
^^^^^^^^^^^^^^^
To call a modifying REST service via ``PUT``, ``POST`` or ``DELETE`` the
caller needs to provide a HTTP Header called ``X-Requested-By`` with
any value e.g. ``ivy``. The `CSRF filter <https://github.com/jersey/jersey/blob/master/core-server/src/main/java/org/glassfish/jersey/server/filter/CsrfProtectionFilter.java>`__
protects REST services against cross-site request forgery (CSRF). If the
CSRF header is not provided on a modifying REST request the request
will fail with an HTTP Status 400 (Bad Request).

User provided REST services via ``GET``, ``HEAD`` or ``OPTIONS`` should
therefore be implemented in a way that they don't modify data.

The CSRF protection filter is enabled by default. However, it can be turned of
in an environment where the client can be trusted (e.g. intranet). See the 
property ``REST.Servlet.CSRF.Protection`` in the :ref:`ivy-webserver-yaml`


Workflow API
------------

Axon.ivy provides a basic :ref:`Workflow API REST Service <mobile-workflow-api>`.
It can be used to enable remote systems to request information about
tasks of a user etc.