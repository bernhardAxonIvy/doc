Process Extensions
==================

|axon-ivy| contains :ref:`extendible-process-elements`. You use these to
implement execution behavior requirements that none of the standard process
elements can fulfill. By implementing one of these Java interfaces, you can
weave any 3rd party logic into the process during execution time.

A generic Java interface is provided in the following process elements:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).

:ref:`process-element-wait-program-intermediate-event`
   Suspends process execution until an (external) event occurs.



Custom Process Element
----------------------

Process extension developers can also :ref:`provide their custom process
<provide-your-own-process-elements>` element with its specific icon, name and
logic. This is the best way to share a connector for your third party system
with a larger community.
