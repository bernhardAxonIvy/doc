.. _3rd-party-integration:

3rd Party Integration
*********************

The basic concepts of integrating |axon-ivy| with 3rd party systems are 

- invoke an operation in a external system from an |axon-ivy| process 
  (call; |axon-ivy| is the client) or 
- a remote system invokes an operation in |axon-ivy| (being called; |axon-ivy| is the server). 

There are several ways to implement such integrations.

Before you integrate a 3rd party system you should have a look in the
:ref:`|axon-ivy| Market <market>` which may already provide a connector for it.

.. toctree::
   :maxdepth: 2

   restapi
   webservice
   database
   process-extension
