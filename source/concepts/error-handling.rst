.. _error-handling:

Error Handling
==============

Errors are used to model exceptional process paths. With an error the
happy path of a process is left. An error is caught by an Error Boundary
Event or Error Start Event if their Error Code pattern matches the
thrown Error Code.

-  Errors are divided into technical errors (e.g. database connection
   problem) or business errors (e.g. approval declined).

-  An error is defined by an Error Code.

-  The error may be caught by an
   :ref:`process-element-error-boundary-event` attached to the
   activity or subprocess, or by an
   :ref:`process-element-error-start`.

-  An Error Boundary Event or Error Start Event with an empty Error Code
   catches every error.


Error Codes
-----------

Error codes are defined as strings. They can be refined by inserting a
colon (:). Multiple sub Error Codes can be caught using wildcards (*).
Trailing wildcards are optional so the string ``custom:error`` is the
same as ``custom:error:*``.

Example
~~~~~~~

If the error code ``booking:failed`` is thrown it can be caught with
following error code patterns: ``booking:failed``, ``booking`` ,
``*:failed`` . Additionally it can be caught by an empty Error Code that
catches all errors.

System Errors
~~~~~~~~~~~~~

System errors are thrown by process elements like *Database Step* or
*Web Service Call Step*. Their error codes are set by default and are
prefixed with ``ivy`` (e.g. ``ivy:error:database``).


Throwing Errors
---------------

An error can be thrown explicitly by an Error End Event, or from code
executed in IvyScript or Java. System errors (e.g.
``ivy:error:database``) are implicitly thrown by the system.


.. _error-handling-error-end-event:

Error End Event
~~~~~~~~~~~~~~~

The happy path of a process can be left by throwing an error with an
:ref:`process-element-error-end`. (e.g. if an approval
was declined). The Error End Event throws the error to upper process
level, it can't be caught on the same process level.

|image0|

Error End Events can also be used to re-throw a pre-defined ivy error
with a specific error that has a meaning to the business. (e.g. if a
webservice is not available)

|image1|

Error handling in Html Dialog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When an error happens inside of an Html Dialog the handling is slightly
different than the default error handling.

Default Html Dialog Error Handling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Basically any thrown error (e.g. an Java exception) is handled inside of
the Html Dialog itself. Therefore there is no propagation to the caller
process or between Ivy/JSF composites. It is important to handle errors
locally in the Dialog Logic to let the user work uninterrupted on the
same dialog.

Exit an Html Dialog by an Error End Element
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

It is possible to exit an Html Dialog by an Error End Element. This is
useful to leave the happy path of the calling business process. The
throwing Error End Element must be located in the Html Dialog Logic of
an Html Dialog Page (not an Component).

|image2|

IvyScript or Java Code
~~~~~~~~~~~~~~~~~~~~~~

Unhandled Script exception
^^^^^^^^^^^^^^^^^^^^^^^^^^

If an unhandled exception occurs while executing IvyScript or Java code
then the calling process element throws an error with the Error Code
``ivy:error:script``. On the error object the causing Java exception is
available as technical cause.

Throwing an error programmatically
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An error with a certain Error Code can be thrown using the following
IvyScript code:

::

   import ch.ivyteam.ivy.bpm.error.BpmError;

   BpmError.create("mystock:empty").throwError();

An error with a certain Error Code can be thrown using the following
Java code:

::

   import ch.ivyteam.ivy.bpm.error.BpmError;

   throw BpmError.create("mystock:empty").build();

Elements throwing System errors
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The process elements Program Interface, Database, WebService and E-Mail
throw system errors. If an exception or timeout occurs on these elements
it can be caught using a matching Error Code or using a directly
addressed Error Start Event. On the Error Start process element more
information about the error can be accessed via the variable ``error``
and the legacy variable ``exception``.


Catching Errors
---------------

Errors can either be caught by Error Boundary Events or Error Start
Events.

An error is caught in the following order:

#. By an Error Start Event directly addressed in the element's
   inscription mask. (If available on the inscription.)

#. By an Error Boundary Event attached directly to the activity the
   error comes from.

#. By an Error Start Event on the same process level if not thrown by an
   Error End Event.

#. By an Error Handling on the next higher process level, starting there
   with step 2 until the top level process is reached.

#. By a Project Error Process in the top-level project.

#. If the error is not caught it is displayed to the user on the
   standard :ref:`user-dialogs-error-pages`.

.. note::

   Each process - including the embedded subprocess - is a separate
   process level.


Error Boundary Event
~~~~~~~~~~~~~~~~~~~~

An :ref:`process-element-error-boundary-event` catches errors
which were thrown from the attaching activity or subprocess if the
configured Error Code matches the thrown error.

|image3|


.. _error-handling-error-start-event:

Error Start Event
~~~~~~~~~~~~~~~~~

An :ref:`process-element-error-start` catches unhandled
errors which were thrown in the same process or inside a subprocess if
the configured Error Code matches the thrown error.

|image4|

Loop Prevention
~~~~~~~~~~~~~~~

To prevent endless process execution trough an inappropriate error
handling, the ivy process engine detects loops during the error
handling. If the engine detects a loop the error handling will be
continued on the next higher process level with the new error code
``ivy:error:loop``, to interrupt the cycle.

Loop detection is done on error catching elements (Error Start Event and
Error Boundary Event). The engine checks if there was already an
identical execution of the catcher at this process level. Identical
means: Same process request, same throwing element (including its
process callstack) and same catching element (including its process
callstack).

Lets illustrate this with two use cases:

Use Case 1
^^^^^^^^^^

The process element throws an BpmError. The Error Boundary Event will
catch the error and call the process element again. In this case, the
loop detection will interrupt the process when the Boundary Error Event
was reached the second time. This would also be the case, when the
throwing error element is located in a composite or callable process.

|image5|

Use Case 2
^^^^^^^^^^

In this case, the loop detection will interrupt the process
'callInCall1' after the second error handling. The process will be
continue by the error handling on the caller process with the error code
``ivy:error:loop``. The process will end on the End Element named 'done'.

|image6|

Project Error Process
~~~~~~~~~~~~~~~~~~~~~

A Project Error Process catches uncaught errors from the whole project.
The name of a Project Error Process must start with ``Error`` and has to
reside in the top-level process group *Processes*. It can contain one or
more Error Start Events.

.. note::

   The process data of the throwing process (i.e. the value of the
   ``in`` variable) is not available in the Error Start of a Project
   Error Process.

Error Object
~~~~~~~~~~~~

The error object provides the following information about the error that
was caught:

-  Unique Error ID
-  Error Code
-  Technical Cause (Java Exception)
-  Process element
-  Process call stack
-  User defined error attributes

For more information see the Public API of :public-api:`BpmError </ch/ivyteam/ivy/bpm/error/BpmError.html>`.

.. |image0| image:: /_images/error-handling/throwing-error-end-event-approval.png
.. |image1| image:: /_images/error-handling/rethrow-errors-remote-factory.png
.. |image2| image:: /_images/error-handling/catch-error-thrown-by-html-dialog.png
.. |image3| image:: /_images/error-handling/catch-errors-on-activity-booking.png
.. |image4| image:: /_images/error-handling/catch-error-from-multiple-activity-flight-service.png
.. |image5| image:: /_images/error-handling/loop-detection-usecase-1.png
.. |image6| image:: /_images/error-handling/loop-detection-usecase-2.png
