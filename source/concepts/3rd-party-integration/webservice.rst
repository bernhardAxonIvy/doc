Web Services
============

SOAP based web services are often used to integrate various systems. The tooling
of |axon-ivy| makes the integration of remote web services very easy and
intuitive. There is no need to care much about the technical details behind the
scenes.


Call a Remote Web Service
-------------------------

To call a remote web service it has to be registered in the
:ref:`webservice-clients-configuration`. Just add a new web service entry, enter
the WSDL URI and generate a client that can be used later on in your process.

After that a :ref:`process-element-web-service-call-activity` can be used to
call the remote web service. Sending data from your business process to the
remote service and the integration of returned data from the service is easy. It
works like other well known data mapping tables.


Provide a Web Service for Third Parties
---------------------------------------

If you need to expose an interface to your application for third parties, you
can provide it as a SOAP web service.

To define a new web service interface, add a new process of kind
:ref:`Webservice <process-kind-webservice>` to your project. Define the
supported parameters by configuring the
:ref:`process-element-web-service-process-start` event. Now you can implement
the business logic of the web service just as simple as any other process flow.

Once the service is implemented, start the |ivy-engine| and click the link to
the WSDL service definition. Share this WSDL or the above link with the third
party that is interested in consuming your service.

Getting Started
---------------

Check out our :dev-url:`video tutorials </tutorial>` to see web service
integrations in action.

If you are looking for web service integration examples with |axon-ivy|, have a
look at the :ref:`ConnectivityDemos <importing-demo-projects>` sample project in
the Designer.
