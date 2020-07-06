.. _process-testing:

Process Testing
---------------

At this point you should already know how to create working processes. Because
software tends to evolve over the years and might experience breaking changes,
you should assure their integrity with process tests. As the name implies those
tests are meant to run through your processes and act like a user might interact
with them. By ensuring that the functionality doesn't accidentally change it's
less likely to introduce bugs and errors into your processes.

Setup test project
^^^^^^^^^^^^^^^^^^

.. |TESTKIND| replace:: ``IvyProcessTest``
.. include:: includes/test-project-setup.txt

We now have a minimal test called ``SampleIvyProcessTest``. A few things to note at this
point:

Line 24:
  The test class is annotated as an :public-api:`@IvyProcessTest
  </ch/ivyteam/ivy/bpm/exec/client/IvyProcessTest.html>`, this enables us to run
  process tests.

Line 27:
  We want to test a specific process in this test class, we have defined the
  :public-api:`BpmProcess</ch/ivyteam/ivy/bpm/engine/client/element/BpmProcess.html>`.
  under test with a constant called ``testee``. The passed string argument
  defines the current process we run tests on. Replace ``MyProcess``
  with a process that actually exists in your project under test.
  
Line 31:
  The proces under test can directly be started, since it has only one start element.
  If our process under test contains multiple start elements. 
  We'd have to define the start element to be executed using the 
  :public-api:`BpmElement</ch/ivyteam/ivy/bpm/engine/client/element/BpmElement.html>` selector.

Line 30:
  In each test method you have to pass in a
  :public-api:`BpmClient</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html>`.
  This client is supplied by the process testing framework and embodies an Ivy
  Engine that can run and drive your processes along.


Write Process Test
^^^^^^^^^^^^^^^^^^

Now that everything is ready we can start writing our first actual process test.
Lets start simple by testing the following process:

.. figure:: /_images/testing/write-invoice-process.png


Execute a process
"""""""""""""""""

.. literalinclude:: includes/processtesting/processtesting-test-part1.java
    :language: java
    :emphasize-lines: 4, 9, 12
    :linenos:

Now let us break this code down:

Line 4-7:
  Here we tell our ``BpmClient`` that we want to test and execute our start
  element. After calling the :ref:`execute<process-testing-start>` method the
  ``BpmClient`` drives our process just after the first task.
  
.. note::

  Note that the ``BpmClient`` does not run through the whole process at once but
  runs task by task. It also ignores ``skipTaskList`` flags and stops the
  execution at ``system tasks``.

Line 9:
  You have multiple APIs to assert your processes, one of it is the
  :ref:`process-testing-history`. The ``History`` gives you access to the
  executed process elements, in this example we just assert the names of the
  executed elements.

Line 12:
  The :ref:`process-testing-workflow` API gives you access to the ``Case``,
  ``Tasks`` as well as the ``Session`` of your executed process. Use it to fetch
  information about the active ``Case``/``Tasks``, executed ``Tasks`` or the
  ``Session``.


Drive the execution further
"""""""""""""""""""""""""""

As noted above the ``BpmClient`` doesn't run through the whole process at once,
this means we now want to drive the current process further.

.. literalinclude:: includes/processtesting/processtesting-test-part2.java
    :language: java
    :emphasize-lines: 17, 18
    :linenos:

Again, we introduced two new things in the code above:

Line 17:
  To drive our process along we tell our ``BpmClient`` that it should just execute
  any active task. In our case there is only one possible active task, the task
  from the ``UserTask`` element called ``write invoice``.

Line 18:
  Of course, we can't just drive a process's task along without declaring an
  appropriate ``Session``. To declare said ``Session`` you can call the
  :ref:`process-testing-as` method and append the desired ``Session``, ``User``
  or ``Role`` that should execute the next task.

To send you off on your own we just have to go over two more concepts, mocking
elements and asserting process data.


Mocking dialogs
"""""""""""""""

Process tests aren't meant to assert UI elements like Html Dialogs. Because
dialogs are an important data input interface between users and our processes,
we have to mock those inputs. If you want to test the dialogs themself have a
closer look at the :ref:`web-testing` chapter.

Let's add a second test to assert our second process start ``checkOrder`` which
contains an Html Dialog we want to mock.

.. literalinclude:: includes/processtesting/processtesting-test-part3.java
    :language: java
    :emphasize-lines: 1, 6, 7, 8, 15
    :linenos:

Line 1:
  Because we want to test the second process ``checkOrder`` we add another
  constant for its start. The process is available in our
  :github-build-examples:`demo project <>`.

Line 6:
  We are telling the ``BpmClient`` that we are declaring a
  :ref:`process-testing-mock` for an element.

Line 7:
  Here we select the element we want to mock by its name.

Line 8:
  Our process uses the ``Order.ivyClass`` as its data class. When the execution
  reaches the declared element ``check order`` it will return ``true`` for the
  ``valid`` field in its data.

Line 15-16:
  With the :ref:`process-testing-data` API you can assert the process data of
  executed elements.

Congratulations, you have learned all the necessary tools and the most important
APIs to ensure your processes continuance. In the next sections we will take a
closer look at some API details.


API Reference
^^^^^^^^^^^^^

The following section shows some of the more common API calls you can use. If
you want to see the whole capabilities of each API you can follow the links in
each subsection to the :public-api:`Public
API</ch/ivyteam/ivy/bpm/engine/client/package-summary.html>`.


.. _process-testing-select:

Select
""""""

There are multiple ways to select processes and elements. The easiest way would
be to find them by their
:public-api:`name</ch/ivyteam/ivy/bpm/engine/client/element/BpmProcess.html>`.

.. literalinclude:: includes/processtesting/processtesting-select.java
    :language: java


.. _process-testing-start:

Start
"""""

To :public-api:`start</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html#start()>`
an execution, you just need to tell the ``BpmClient`` which ``BpmProcess`` or
``BpmElement`` you want to run. To proceed with the execution, you can either
tell the ``BpmClient`` to continue with the previous
:public-api:`execution</ch/ivyteam/ivy/bpm/engine/client/ExecutionResult.html>`
or by choosing the next desired ``task``. Using a ``task`` is especially useful
if there are multiple active ``tasks`` available.

.. literalinclude:: includes/processtesting/processtesting-start.java
    :language: java


.. _process-testing-as:

As
""

Most processes require a specific ``user`` or ``role`` to execute. You can
define them by calling :public-api:`as</ch/ivyteam/ivy/bpm/engine/client/RequestBuilder.html#as()>`.

.. literalinclude:: includes/processtesting/processtesting-as.java
    :language: java


.. _process-testing-mock:

Mock
""""

There are two ways of
:public-api:`mocking</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html#mock()>`
an element. Either the element doesn't return anything, or the element returns
some data. If your process runs through an html dialog you always have to
install a mock for it.

.. literalinclude:: includes/processtesting/processtesting-mock.java
    :language: java


.. _process-testing-history:

History
"""""""

The :public-api:`History</ch/ivyteam/ivy/bpm/engine/client/History.html>` lets
you assert the executed process elements. You can either assert exact element
objects or the elements names.

.. literalinclude:: includes/processtesting/processtesting-history.java
    :language: java


.. _process-testing-workflow:

Workflow
""""""""

The :public-api:`Workflow</ch/ivyteam/ivy/bpm/engine/client/Workflow.html>`
gives you access to the active ``case`` or ``task``. You can filter them by
activator.

.. literalinclude:: includes/processtesting/processtesting-workflow.java
    :language: java


.. _process-testing-data:

Data
""""

With the :public-api:`Data</ch/ivyteam/ivy/bpm/engine/client/ProcessData.html>`
API you can assert the process data at different points in your process. You can
get the ``data`` at the last executed element or of a desired element. If an
element is executed multiple times you can access the ``data`` of each execution
in an ordered list.

.. literalinclude:: includes/processtesting/processtesting-data.java
    :language: java
