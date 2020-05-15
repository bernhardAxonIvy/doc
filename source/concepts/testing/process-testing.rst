.. _process-testing:

Process Testing
---------------

At this point you should already know how to create working processes. Because
software tends to evolve over the years and might experience breaking changes we
should assure their integrity with process tests. As the name implies those
tests are meant to run through your processes and act like a user might interact
with them. By ensuring that the functionality doesn't accidentialy change it's
less likely to introduce bugs and errors into your processes.

Setup test project
^^^^^^^^^^^^^^^^^^

.. include:: test-project-setup.rst

#. Create a new test class called ``TestInvoiceProcess`` in the just created
   ``src_test`` folder and add the code below.

.. literalinclude:: includes/processtesting/processtesting-setup-test.java
    :language: java
    :emphasize-lines: 8, 11, 13, 16
    :linenos:

.. |PROJECT| replace:: ``crmTests``

We now have a minimal test setup to get started. A few things to note at this
point:

Line 8:
  Here we annotate the class as an ``@IvyProcessTest``, this enables us to run
  process tests.

Line 11:
  We want to test a specific process in this test class, we can define the
  process under test by adding it as a field, here it's called
  ``INVOICE_PROCESS`` and is of the type ``BpmProcess``. If you prefere to
  declare your process locally in the test method you might do so.

Line 13:
  Our process under test contains two start elements. For our first test we only
  want to test ``writeInvoice``, so we define it as a variable as well. It's
  called ``WRITE_INVOICE_START`` and is of the type ``BpmElement``.

Line 16:
  In each test method you have to pass in a ``BpmClient``. This client is
  supplied by the process testing framework and embodies an Ivy Engine that can
  run and drive your processes along.


Write Process Test
^^^^^^^^^^^^^^^^^^

Now that everything is ready we can start writing our first actual process test.
Lets start simple by testing the following process:

TODO: process image

.. literalinclude:: includes/processtesting/processtesting-test-part1.java
    :language: java
    :emphasize-lines: 4, 9, 12
    :linenos:

Now let us break this code down:

Line 4-7:
  Here we tell our ``BpmClient`` that we want to test and execute our invoice
  process. After calling the ``execute`` method the ``BpmClient`` drives our
  process just after the first task.
  
.. note::

  Note that the ``BpmClient`` does not run
  through the whole process at once but runs task by task. It also ignores
  ``skipTaskList`` flags and stops the execution either way.

Line 9:
  You have multiple APIs to assert you processes, one of it is the ``History``.
  The ``History`` gives you access to the executed process elements, in this
  example we just assert the names of the executed elements.

Line 12:
  The ``Workflow`` API gives you access to the ``Case``, ``Tasks`` as well as the
  ``Session`` of your executed process. Use it to fetch information about the
  active ``Case``/``Tasks``, executed ``Tasks`` or the ``Session``.


As noted above the ``BpmClient`` doesn't run through the whole process at once,
so now we want to drive the current process further.

TODO: process image with arrow where we are?

.. literalinclude:: includes/processtesting/processtesting-test-part2.java
    :language: java
    :emphasize-lines: 17, 18
    :linenos:

Again we introduced two new things in the code above:

Line 17:
  To drive our process along we tell our ``BpmClient`` that it should just execute
  any active task. In our case there is only one possible active task, the task
  from the ``UserTask`` element called ``write invoice``.

Line 18:
  Of course we can't just drive a process's task along without declaring an
  appropriate ``Session``. To declare said ``Session`` you can call the ``as``
  method and append the desired ``Session``, ``User`` or ``Role`` that should
  execute the next task.

To send you off on your own we just have to go over two more concepts; mocking elements and
asserting process data.

Process tests aren't meant to assert UI elements like Html Dialogs. Because
dialogs are an important data input interface between users and our processes we
have to mock those inputs. If you want to test the dialogs themself have a
closer look at the :ref:`web-testing` chapter.

Let's add a second test to assert our second process start ``checkOrder`` which
contains an Html Dialog we want to mock.

.. literalinclude:: includes/processtesting/processtesting-test-part3.java
    :language: java
    :emphasize-lines: 1, 6, 7, 8, 15
    :linenos:

Line 1:
  Because we want to test the second process ``checkOrder`` we add another
  variable for its start.

Line 6:
  We are telling the ``BpmClient`` that we are declaring a mock for an element.

Line 7:
  Here we select the element we want to mock by its name.

Line 8:
  Our process uses the ``Order.ivyClass`` as its data class. When the execution
  reaches the declared element ``check order`` it will return ``true`` for the
  ``valid`` field in its data.

Line 15-17:
  With the ``data`` API you can assert the process data of executed elements.

Congratulations, you have learned all the necessary tools and the most important
APIs to ensure your processes continuance. In the next sections we will take a
closer look at some API details.


API
^^^

Select
""""""

There are multiple ways to select processes and elements. The easiest way would
be to find them by their ``name``, if an element doesn't have a ``name`` its
``fieldId`` can be used.

.. tip::

  The ``fieldId`` can easily be deduced with the ``Outline View`` in the
  designer.

.. literalinclude:: includes/processtesting/processtesting-select.java
    :language: java


Start
"""""

To start an execution you just need to tell the ``BpmClient`` which
``BpmProcess`` or  ``BpmElement`` you want to run. To proceed with the execution
you can either tell the ``BpmClient`` to continue with the previous
``ExecutionResult`` or by choosing the next desired ``task``. Using a ``task``
is especially useful if there are multiple active ``tasks`` available.

.. literalinclude:: includes/processtesting/processtesting-start.java
    :language: java


As
""

Most processes require a specific ``user`` or ``role`` to execute. You can
define them by calling ``as``.

.. literalinclude:: includes/processtesting/processtesting-as.java
    :language: java


History
"""""""

The ``History`` lets you assert the executed process elements. You can either
assert exact element objects or the elements names.

.. literalinclude:: includes/processtesting/processtesting-history.java
    :language: java


Workflow
""""""""

The ``Workflow`` gives you access to ``cases``, ``tasks`` or which ``user`` can
act on the active ``task``.

.. literalinclude:: includes/processtesting/processtesting-workflow.java
    :language: java


Data
""""

With the ``Data`` API you can assert the processes data at different points. You
can get the ``data`` of the last executed element or of a desired element. If an
element is executed multiple times you can access the ``data`` as a list.

.. literalinclude:: includes/processtesting/processtesting-data.java
    :language: java


Mock
""""

There are two ways of mocking an element. Either the element doesn't return
anything or the element returns some data. If your process runs through an html
dialog you always have to install a mock for it.

.. literalinclude:: includes/processtesting/processtesting-mock.java
    :language: java
