.. _process-element-web-service-call-activity:

Web Service Call Activity
=========================

|image0| The *Web Service Call Activity* element is located in the
*Activity* drawer of the process editor palette.

Element Details
---------------

Using the Web Service Call Activity you can invoke Web Services.

Inscription
-----------

.. include:: _tab-name.rst

Request Tab
~~~~~~~~~~~

.. figure:: /_images/process-inscription/web-service-call-tab-request.png

Client
   Selects the Web Service Client to use. If no client is yet accessible
   in the project, a new client can instantly be created via the plus
   button. The available Web Service Clients are managed in the :ref:`webservice-clients-configuration`.

Port
   Selects the Port of the Web Service. The Port mainly defines the
   protocol that is used (e.g., SOAP, SOAP 1.2, HTTP).

Operation
   Selects the Operation of the Web Service. Calls to this operation
   with real data can be tested by clicking on the Test button.
   See :ref:`process-element-web-service-call-activity-tester`.

Properties
   Values to fine tune the configuration of the Web Service Call. Most
   of these properties are interpreted by features of the client (e.g.
   an authentication feature).

   Values of properties can be scripted.

   Properties configured on this Activity may override global
   configuration properties of the Web Service.

Parameters
   Defines the input parameters to send to the remote Web Service
   operation. Values can be scripted.

.. include:: _tab-data-cache.rst
  
Error Tab
~~~~~~~~~
On this tab you can configure the Error Code to throw if the web service call fails with an exception. Pick '*>> Ignore Exception*' to continue the process execution even though the web service call failed with an exception.

Output Data Tab
~~~~~~~~~~~~~~~

.. figure:: /_images/process-inscription/web-service-call-tab-response.png

Body
   Maps the result returned by the Web Service Call back to any process
   data or executes code on it. The result is provided as ``wsResponse``
   variable.

.. _process-element-web-service-call-activity-tester:

Web Service Tester
~~~~~~~~~~~~~~~~~~

The Web Service Tester dialog can be opened by clicking on the ``Test``
button next to the Web Service operation selector on the Request Tab.

The Web Service Tester allows to send Test Data to a remote Web Service
and simple examination of the returned SOAP XML envelope. This makes
prototyping and testing of Web Services fast and intuitive.

Entered test data can be stored in project preferences by clicking on
the save button.

.. |image0| image:: /_images/process-elements/web-service-call-activity.png
