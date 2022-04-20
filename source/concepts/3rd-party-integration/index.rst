.. _3rd-party-integration:

3rd Party Integration
*********************

The basic idea of integrating |axon-ivy| with 3rd party systems is either to
invoke an operation on a external system out of an Ivy process (call) or to have
a remote system invoke an operation in |axon-ivy| (being called). There
are several ways to implement such an integration.

Before you integrate a 3rd party system you should have a look at the
:ref:`|axon-ivy| Market <market>` which may already provide a connector for it.

.. toctree::
   :maxdepth: 2

   restapi
   webservice
   database
   process-extension
