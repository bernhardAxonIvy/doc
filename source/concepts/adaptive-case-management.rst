.. _adaptive-case-management:

Adaptive Case Management
========================

Classic BPM processes have a clear flow that defines how the process is
executed. Within these strict processes the involved user has very limited
possibilities to improve the process while executing. Optimizations and flow
changes often require a long modeling and re-deployment round-trip. Because
every rarely occurring special case has to be modeled, the process quickly gets
unclear and cryptic: The process no longer shows the most relevant business
paths clearly. Welcome to the world of spaghetti BPM.

Today, the user needs to adapt the process flow during execution: Optional side
steps are required to complement the process flow or a set of actions has to be
skipped because of a special condition. 

Enabling this kind of flexibility hands decision power back to the user who has
more knowledge of the business domain and the current context of the process
than the process designer. For instance, an important information is delivered
via phone, but the workflow system does not receive this analog information.


Definitions
-----------

To make this subject easier to understand, we define the following terms.

Process
   A Process is a series of actions or steps taken to achieve a particular result.

Business Process
   A Business Process consists of one or more dependent Processes.

Case
   A Case is an instance of a process, i.e. one particular execution of the process.
   We also speak of a Process invocation.

Task
   A Task is an action or a step executed as part of a Case.

Business Case
   A Business Case is an instance of a Business Process. It has a distinct set
   of Cases and Tasks.



Adaptive Implementation
-----------------------


Invoking Optional Processes
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Imagine you have a process for approving a procurement by a line manager. The
line manager may request a detailed justification why this procurement is required.
Therefore he'd execute a side step to ask the requester for clarification. This
optional interaction should not be wired into the main approval process as it
obfuscates the most used business path. But it could be available as an optional
side step that the line manager can start and then is executed within the
current process context.

In |axon-ivy| processes with side steps can be invoked through Triggers or
Signals.

**Triggers**

You can trigger strictly defined processes. "Strictly defined" means
that the calling process knows the target process as it located in
the same or a required project. You can declare RequestStart events as
triggerable. You use the Trigger activity to execute such a process start.

So, in the request verification front end, the manager triggers the process to
enrich the request with a trigger call activity.

|image0|

|image1|

**Signals**

Usually, you prefer a looser coupling between processes. This is accomplished
with Signals. A process that wants to integrate other processes fires a signal
when the process reaches a certain state. Multiple other processes in the same
application listen to this signal. All of them will start execution as soon as
the signal is fired. No further dependency between the firing process and the
listening processes is not required.

Let's look at a new hire process: Upon receiving the candidate's signed work
contract, HR registers him as a new employee. Other processes listen for
such registrations and start to prepare the work environment for this employee:
An IT person will procure and set up a new laptop while an office administrator
orders the keys, the office space and furniture for the new employee. 

We execute these processes in parallel, in a loosely coupled fashion. We use
signals to start the follow-on processes. The IT process and the office process
both listen to employee registration signals fired by the HR process.

|image2|

Keeping Loosely Coupled Processes in Same Context
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A real-world agile process execution includes many different processes.
However, the history and the context have to be clear for anyone who works on a
task: The workflow needs to know whether an invoked process belongs to the
invoking case or if it creates a new case.

The entity that combines multiple cases is the :ref:`business-case`. All cases
and tasks that belong to the same business case are presented to the user of a
workflow screen as related cases. Therefore, all process starts have to define
if they belong to the same Business Case as the invoking process. You do this by
configuring these starts as desired. See :ref:`process-element-signal-start` and
:ref:`Trigger Start <process-element-start-request-trigger-tab>` inscription for
details.

|image3|

You can also use the Public API to attach the current case to an existing
Business Case.

::

   if (in.departement.equals("HR")) // evaluate attachment by runtime conditions
   {
     ivy.case.attachToBusinessCase(in.callerCaseId)
   }

For workflow front end developers, we offer an API to list all tasks or cases of
a Business Case. Thus, showing all cases and tasks involved in the Business Case
to a workflow user is a simple implementation. For details, refer to the Public
API of ch.ivyteam.ivy.workflow.businesscase.IBusinessCase.

::

   ivy.case.getBusinessCase().tasks().allActive(); // get involved tasks that are active
   ivy.case.getBusinessCase().tasks().all(); // get all involved tasks

Aborting Tasks
~~~~~~~~~~~~~~

A long running case may end up with many open tasks that have to be executed by
people. Then, the environment of the case changes and these open tasks are
obsolete. For instance, in a car leasing request process, the customer decides
right before signing the contract that he wants leather seats instead of the
standard ones. Thus, the car will be more expensive - the whole credit
assessment process has to be re-executed; open tasks from the original request
become obsolete.

A :ref:`process-element-user-task` can support abortion by listening to a
signal. The UserTask activity subscribes to an abortion signal using a
:ref:`process-element-signal-boundary-event`. When the signal "credit
amount changed" is fired by another process of this business case, the listening
UserTask will be aborted. The process thus continues at the Signal Boundary
Event. Classically, a clean up process is exectuted after the Signal Boundary
Event has occured.

|image4|

Share Data Between Processes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Often, an initialization process starts by gathering data that is later
processed and enriched. This data is typically business relevant domain data
needed by domain experts who patricipate in the process. Think of a bank
employee who grants credits. The data for his processes could look like this
when simplified:

.. figure:: /_images/adaptive-case-management/acm-business-data.png 

To retain this kind of data, |axon-ivy| provides a simple repository called
Business Data. This stored data can then be accessed by multiple cases during
the lifetime of a Business Case. 

The repository provides access to the data with simple store and load functions
similar to other repositories such as the JPA EntityManager, but it can be
accessed without any additional database or environment configuration.

::

   CreditRequest creditRequest = ivy.repo.get(CreditRequest.class); // load a CreditRequest from the Business Data Repo
   creditRequest.amount = 30000; // modify a field
   ivy.repo.save(creditRequest); // save the modified CreditRequest back to the Repo.

By annotating a data class with the ``@BusinessCaseData`` annotation, all values
of the annotated data class are automatically associated with the context of the
current Business Case. The data is then accessible to all cases belonging to
the Business Case. Multiple data classes of different types can be used in a
Business Case.

Business Data Analytics
~~~~~~~~~~~~~~~~~~~~~~~

Business cases typically generate highly valuable data that influences critical
business decisions. You will typically want to visualize this data as KPIs on a
management dashboard. In our credit sample, you may want to visualize the
aggregated sum of all open credit requests. The data in the Business Data
repository is stored in a format that is easily accessible and explorable with a
tool like `Kibana <https://www.elastic.co/products/kibana>`__.

.. figure:: /_images/adaptive-case-management/acm-data-analysis.png 


.. _adapative-case-management-big-picture:

Regaining the Big Picture
~~~~~~~~~~~~~~~~~~~~~~~~~

Real-world BPM projects have shown that big processes tend to get increasingly
complex and need to be split into process landscapes. This leads to a
non-transparent main process flow. Users of the process often do not see how
their work contributes to the overall business process. Therefore, great
opportunities for improvements are neither identified nor implemented. 

There is a great need for a unified view of adaptive case operations that
support participants, for instance in the form of an overview of optional tasks
(side steps) that a user can start at any given state of the process.

The Case Map addresses the needs for flexible and agile Business Cases by
providing a clear and simple view of the main Business Process and its current
execution. With the Case Map, you can easily orchestrate the main flow of
processes and the business can identify and track the stages where a running
process instance is currently at.

.. figure:: /_images/adaptive-case-management/casemap-lending.png 

A Case Map is divided into stages (in the example above the stages are:
Identification, Credit Rating and Approval). Each stage defines a certain phase
in the life cycle of a business process. A stage consists of processes (e.g.
"Collect personal data"). The default flow (also known as the happy path) is
from left to right and from top to bottom. If the last process of a stage has
finished the flow continues on the stage to the right of the current stage. If
the current stage is the last on a line and there are further Listens, then the
flow continues with the first stage on the left hand side of the next line.
Stages typically have a name and an icon. The idea is to reuse these icons in
Workflow UIs and processes to provide the user with a hint in which stage the
current Business Case is.

.. figure:: /_images/adaptive-case-management/acm-casemap-portal.png 

Besides processes, a stage of a Case Map can contain Sidesteps (e.g. "External
solvency service" in the Case Map above). Sidesteps are started manually by the
workflow user in the current Business Case. A typical Sidestep could be a
process which aborts the business process (i.e., a abort request). Sidesteps help
to reduce the time spent on technical round trips, and for modeling rare and
costly edge cases.

.. figure:: /_images/adaptive-case-management/acm-casemap-portal-sidestep.png 

The dependencies between Case Map, Business Cases and Business Data are as
follows: Processes started inside a Case Map create new Cases in the Business
Case. The Cases contain Tasks. Data can be shared between processes using
Business Data. A Business Case can be attached to a Case Map, which in turn
controls the flow of the Cases of the Business Case.

.. figure:: /_images/adaptive-case-management/casemap-businesscase-relation.png
   :alt: Relationship between Business Case, Business Data and Case Map.

   Relationship between Business Case, Business Data and Case Map.

Conclusion
~~~~~~~~~~

To reiterate:
- Signals are used to couple processes loosely
- Triggers serve to couple processes tightly

The innovative Case Map brings order into the chaos of spaghetti BPM. A domain
expert always has a simple graphical view of the Business Case he contributes
to. The Case Map empowers the domain expert to control process execution by
starting optional Sidesteps or skip large parts of the pre-modeled standard flow
if conditions require or allow this.

The Case Map gives the developer and the user a common language to talk about a
complex process landscape. The Case Map can be read and understood by anyone who
contributes to the process without an introduction. It offers the long
sought-after flexibility of process execution.




.. _signal-reference:

Signal Reference
----------------

Signals inform an unknown number of recipients of a specific event that
has happened. Signals are sent application-wide without the need for
project dependencies between the sender and receiver.

Sending Signals
~~~~~~~~~~~~~~~

A Signal is sent programmatically and consists of a Signal Code and
optional signal data.

.. note::

   Signal codes are defined as strings. Only letters and numbers
   ``[A-Za-z0-9]`` as well as the colon ``:`` as a separator are allowed.

   Valid: ``hr:employee:quit``, ``flight:cancel:no:LXL398``

Sending a Signal Programmatically
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Send a signal with a custom signal code using the following IvyScript code:

::

   import ch.ivyteam.ivy.process.model.value.SignalCode;

   // send simple signal
   ivy.wf.signals().send("datarepository:updated");

   // send signal with reference
   ivy.wf.signals().send("order:canceled:"+in.order.id);

   // send signal with signal data
   ivy.wf.signals().send(new SignalCode("user:created"), in.employee.name);

.. tip::

   Please refrain from using data classes as signal data as not all receiving
   projects may have access to these data classes. We suggest to send an id
   which references an object in a database or send payload data that is encoded
   as string (e.g. JSON).

Send a Signal Manually in Designer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

While developing a process it is possible to send a Signal manually in
the :guilabel:`Signals` page of the :ref:`designer-workflow-ui`.

Receiving Signals
~~~~~~~~~~~~~~~~~

Signals are received by Signal Boundary Events and Signal Start Events.
Receivers can either register for an explicit signal code or a generic
:ref:`signal-receive-patterns`.

Signal Boundary Event
^^^^^^^^^^^^^^^^^^^^^

A :ref:`process-element-signal-boundary-event` attached to a User Task Element
destroys the task if a matching signal is received and the task is in SUSPENDED
state (see also :ref:`signal-boundary-event` in the Workflow chapter). The
inscribed pattern on the Signal Boundary Event defines the filter for awaited
signal codes:

Listens for a cancelled order signal with a specific id defined as
macro:

::

   order:canceled:<%=in.orderNr%>

Listens to signals that have a ``created`` postfix. E.g
(``user:created``, ``order:created``).

::

   *:created

|image5|

Signal Start Event
^^^^^^^^^^^^^^^^^^

With a :ref:`process-element-signal-start` a new process is started if a
matching signal code is received.

|image6|

.. _signal-receive-patterns:

Signal Patterns
^^^^^^^^^^^^^^^

Receivers can listen to a specific signal by its fully qualified name. It is
also possible to catch multiple signal sources by listening to its common
prefix. Moreover, signal listener patterns can contain wildcards (*) so that the
prefixes need not be shared.

::

   # passenger on-boarding
   ivy.wf.signals().send("airport:passenger:boarding:3424");

.. table:: Signal receivers for signal code Signal 'airport:passenger:boarding:3424'

   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | Listener pattern                                          | Fired?          | Reason                                 |
   +===========================================================+=================+========================================+
   | ``airport:passenger:boarding:3424``                       | true            | Full qualified match                   |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``airport:passenger:boarding``                            | true            | Prefix matches                         |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``airport:passenger``                                     | true            | Prefix matches                         |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``airport``                                               | true            | Prefix matches                         |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   |                                                           | true            | Empty matches all signals by prefix    |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``airport:crew:boarding``                                 | false           | Different prefix part: ``crew``        |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``airport:*:boarding``                                    | true            | Wildcard matches                       |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``*:*:boarding``                                          | true            | Wildcard matches                       |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   | ``*:boarding``                                            | false           | Only one wildcard instead of two       |
   +-----------------------------------------------------------+-----------------+----------------------------------------+
   

Tracing Signals
~~~~~~~~~~~~~~~

You can trace Signals by either using the Designer Workflow UI or the JSF
Workflow UI in the |ivy-engine|. Both Workflow UIs make use of the Public API for Signals
(``ivy.wf.signals()``).

.. tip::

   For debugging the signal data of a Signal event you can set a
   :ref:`simulate-process-models-breakpoints` on a
   Signal Start Event or Signal Boundary Event and inspect the signal variable
   in the 'Variables' view.

.. |image0| image:: /_images/adaptive-case-management/invoke-triggerable-start.png
.. |image1| image:: /_images/adaptive-case-management/triggerable-start-request.png
.. |image2| image:: /_images/adaptive-case-management/hr-signaled-processes.png
.. |image3| image:: /_images/adaptive-case-management/attach-to-signaled-case-inscription.png
.. |image4| image:: /_images/adaptive-case-management/credit-amount-change-listener.png
.. |image5| image:: /_images/adaptive-case-management/signal-boundary.png
.. |image6| image:: /_images/adaptive-case-management/signal-start.png
