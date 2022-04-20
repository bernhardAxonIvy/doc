Process Extensions
==================

|axon-ivy| contains :ref:`extensible-process-elements` that can be used to
address particular execution behavior requirements not offered by any of the
standard process elements. By implementing one of these Java interfaces any 3rd
party logic can be weaved into the process during execution time.

A generic Java interface is provided in following process elements:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).

:ref:`process-element-wait-program-intermediate-event`
   Interrupts process execution until an (external) event occurs.



Custom Process Element
----------------------

Process extension developers can also :ref:`provide their custom process
<provide-your-own-process-elements>` element with its specific icon, name and
logic. This is the best way to share a connector to your third party system with
a larger community.
