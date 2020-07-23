.. _process-testing:

Process Testing
---------------

At this point you should already know how to create working processes. Because
software tends to evolve over the years and might experience breaking changes,
you should assure its integrity with process tests. As the name implies those
tests are meant to run through your processes and act like a user might interact
with them. By ensuring that the functionality still works the same way and does
not change accidentally, these tests prevent you from introducing bugs and errors
in your processes.

Setup Test Project
~~~~~~~~~~~~~~~~~~

.. |TESTKIND| replace:: ``IvyProcessTest``
.. include:: includes/test-project-setup.txt

You now have a simple test called ``SampleIvyProcessTest``.

Note a few things at this point:

Line 24:
  The test class is annotated as an :public-api:`@IvyProcessTest
  </ch/ivyteam/ivy/bpm/exec/client/IvyProcessTest.html>`, this enables you to run
  this test as a process tests.

Line 27:
  As you want to test a specific process in this test class, the generated test class defines
  the :public-api:`BpmProcess</ch/ivyteam/ivy/bpm/engine/client/element/BpmProcess.html>`
  under test in a constant called ``testee``. The passed in ``String`` argument defines the
  process to run the test against. Replace ``MyProcess`` with a process that actually exists
  in your project under test.
  
Line 31:
  The process under test can be directly started since it has only one start element.
  If your process under test contains multiple start elements you need to define the
  start element to be executed by using the 
  :public-api:`BpmElement</ch/ivyteam/ivy/bpm/engine/client/element/BpmElement.html>` selector.

Line 30:
  In each test method you have to pass in a
  :public-api:`BpmClient</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html>`.
  This client is supplied by the process testing framework and represents an |ivy-engine| that
  can run and drive your processes along.


Write a Process Test
~~~~~~~~~~~~~~~~~~~~

Now that everything is ready you can start writing your first actual process test.
Let's start by simply testing the following process:

.. figure:: /_images/testing/write-invoice-process.png


Execute a process
^^^^^^^^^^^^^^^^^

.. literalinclude:: includes/processtesting/processtesting-test-part1.java
    :language: java
    :emphasize-lines: 4, 5, 7, 12, 15
    :linenos:

Now let us have a closer look at the code:

Line 4-7:
  Here you tell your ``BpmClient`` that you want to test and execute your start
  element. After calling the :ref:`execute<process-testing-start>` method the
  ``BpmClient`` drives your process just after the first task.
  
.. note::

  Note that the ``BpmClient`` does not run through the whole process at once but
  runs task by task. It also ignores ``skipTaskList`` flags and stops the
  execution at ``system tasks``.

Line 12:
  The :ref:`process-testing-workflow` API gives you access to the ``Case``,
  ``Tasks`` as well as the ``Session`` of your executed process. Use it to fetch
  information about the active ``Case``/``Tasks``, executed ``Tasks`` or the
  ``Session``.

Line 15:
  You have multiple APIs to assert your processes, one of it is the
  :ref:`process-testing-history`. The ``History`` gives you access to the
  executed process elements, in this example we just assert the names of the
  executed elements.


Continue the process execution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As noted above the ``BpmClient`` does not run through the whole process at once,
this means we now want to continue the current process.

.. literalinclude:: includes/processtesting/processtesting-test-part2.java
    :language: java
    :emphasize-lines: 17, 18
    :linenos:

We introduced two new things in the code above:

Line 17:
  To drive our process along you need to tell your ``BpmClient`` that it should
  just execute any active task. In this case there is only one possible active
  task that can be executed, the task from the ``UserTask`` element called
  ``write invoice``.

Line 18:
  Of course, you cannot just drive a process's task along without declaring an
  appropriate ``Session``. To declare said ``Session`` you can call the
  :ref:`process-testing-as` method and append the desired ``Session``, ``User``
  or ``Role`` that should execute the next task.

Before you start writing test code we need to introduce you to two more concepts,
mocking elements and asserting process data.


Mock dialogs and assert data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Process tests are not meant to assert UI elements such as Html Dialogs. Because
dialogs are an important data input interface between users and your processes,
you have to mock those inputs. If you want to test the dialogs themselves have a
closer look at the :ref:`web-testing` chapter.

Let us add a second test to assert your second process start ``checkOrder``, which
contains an Html Dialog you want to mock.

.. literalinclude:: includes/processtesting/processtesting-test-part3.java
    :language: java
    :emphasize-lines: 1, 6, 7, 8, 15, 16
    :linenos:

Line 1:
  Because you want to test the second process ``checkOrder`` you need to add
  another constant for its start. The process is available in our
  :github-build-examples:`demo project <>`.

Line 6:
  Here you are telling the ``BpmClient`` that you are declaring a
  :ref:`process-testing-mock` for an element.

Line 7:
  Here you select the element you want to mock by its name.

Line 8:
  Your process uses the ``Order.ivyClass`` as its data class. When the execution
  reaches the declared element ``check order``, it will return ``true`` for the
  ``valid`` field in its data.

Line 15-16:
  With the :ref:`process-testing-data` API you can assert the process data of
  the executed elements.

Congratulations, you have learned about all necessary tools and most important
APIs to ensure your process continuation. In the next section we will have a
closer look at some of the APIs.


API Reference
~~~~~~~~~~~~~

The following section describes some of the more common API calls you can use. If
you want to see the full functionality of each API you can follow the links in
each subsection to the :public-api:`Public
API</ch/ivyteam/ivy/bpm/engine/client/package-summary.html>`.


.. _process-testing-select:

Select
^^^^^^

There are multiple ways to select processes and elements. The easiest way is to
find them by their
:public-api:`name</ch/ivyteam/ivy/bpm/engine/client/element/BpmProcess.html>`.

.. literalinclude:: includes/processtesting/processtesting-select.java
    :language: java


.. _process-testing-start:

Start
^^^^^

To :public-api:`start</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html#start()>`
an execution, you just need to tell the ``BpmClient`` which ``BpmProcess`` or
``BpmElement`` you want to run. To proceed with the execution, either tell the
``BpmClient`` to continue with the previous
:public-api:`execution</ch/ivyteam/ivy/bpm/engine/client/ExecutionResult.html>`
or choose the next desired ``task``. Using a ``task`` is especially useful
if there are multiple active ``tasks`` available.

.. literalinclude:: includes/processtesting/processtesting-start.java
    :language: java


.. _process-testing-as:

As
^^

Most processes require a specific ``user`` or ``role`` to be executed. You can
define them by calling :public-api:`as</ch/ivyteam/ivy/bpm/engine/client/RequestBuilder.html#as()>`.

.. literalinclude:: includes/processtesting/processtesting-as.java
    :language: java


.. _process-testing-mock:

Mock
^^^^

There are two ways of
:public-api:`mocking</ch/ivyteam/ivy/bpm/engine/client/BpmClient.html#mock()>`
an element. Either the element does not return anything, or the element returns
some data. If your process runs through an Html Dialog you always need to mock it.

.. literalinclude:: includes/processtesting/processtesting-mock.java
    :language: java


.. _process-testing-history:

History
^^^^^^^

The :public-api:`History</ch/ivyteam/ivy/bpm/engine/client/History.html>` lets
you assert the executed process elements. You can either assert the exact element
objects or elements names.

.. literalinclude:: includes/processtesting/processtesting-history.java
    :language: java


.. _process-testing-workflow:

Workflow
^^^^^^^^

The :public-api:`Workflow</ch/ivyteam/ivy/bpm/engine/client/Workflow.html>`
provides access to the active ``case`` or ``task``. You can filter them by
activator.

.. literalinclude:: includes/processtesting/processtesting-workflow.java
    :language: java


.. _process-testing-data:

Data
^^^^

With the :public-api:`Data</ch/ivyteam/ivy/bpm/engine/client/ProcessData.html>`
API you can assert the process data at different points in your process. You can
get the ``data`` from the last executed element or from any element during execution.
If an element is executed multiple times you can access the ``data`` of each execution
in an ordered list.

.. literalinclude:: includes/processtesting/processtesting-data.java
    :language: java
