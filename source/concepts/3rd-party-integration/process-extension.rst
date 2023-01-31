Process Extensions
==================

|ivy| contains :ref:`extensible-process-elements` that help you to
address particular execution behavior requirements not offered by any of the
standard process elements. By implementing one of these Java interfaces, any 3rd
party logic can be weaved into the process at execution time.

We provide a generic Java interface in the following process elements:

:ref:`process-element-program-start`
   Triggers the start of a new process upon an (external) event.

:ref:`process-element-pi`
   Executes generic Java code (may interact with a remote system).

:ref:`process-element-wait-program-intermediate-event`
   Suspends process execution until an (external) event occurs.



Custom Process Element
----------------------

Process extension developers can also :ref:`provide their custom process elements
<provide-your-own-process-elements>` with their specific icons, name, and
logic. This is the best way to share a connector to your 3rd party system with a
larger community.
