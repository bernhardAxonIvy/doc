.. _unit-testing:

Unit Tests
----------

You can easily write Unit Tests in the Designer to test your Java source code
using JUnit 5. If your code uses the
:public-api:`Ivy</ch/ivyteam/ivy/environment/Ivy.html>` environment you can
either mock it or use the
:public-api:`@IvyTest</ch/ivyteam/ivy/environment/IvyTest.html>` annotation that
correctly sets up the environment.


How to write Unit Tests
^^^^^^^^^^^^^^^^^^^^^^^

.. |TESTKIND| replace:: ``IvyTest``
.. include:: includes/test-project-setup.rst

#. Run test

   - Make sure the engine is started with your projects

   - To run this test right-clicking inside this class -> Run As -> JUnit Test

   - A new **JUnit** View should have been opened and the test should be green.


This is already all you need to start writing conventional Unit Tests.


Set up the Ivy environment
^^^^^^^^^^^^^^^^^^^^^^^^^^

To gain access to the :public-api:`Ivy</ch/ivyteam/ivy/environment/Ivy.html>`
context the ``SampleIvyTest`` class is annotate with the
:public-api:`@IvyTest</ch/ivyteam/ivy/environment/IvyTest.html>` annotation.

.. literalinclude:: includes/unittesting/unittesting-setup-test-part2.java
  :language: java
  :emphasize-lines: 7

.. note::

  If you run your test as ``@IvyTest`` (without process), you have the 
  advantage that the bpm engine is not started, which speeds up the test execution.

Write Ivy Tests
^^^^^^^^^^^^^^^

Here we test a class called ``OrderUtil``. This class needs access to different
``Ivy`` resources like ``global variables``. Without properly setting up the
``Ivy`` environment we would have to mock all those accesses.

.. literalinclude:: includes/unittesting/unittesting-test-extend.java
  :language: java

.. tip::

  Take a look at the 
  :github-build-examples:`demo project </crmTests/src_test/ch/ivyteam/test>` 
  to see what else is possible.


Change application runtime
^^^^^^^^^^^^^^^^^^^^^^^^^^

For some test cases, you may need to change the environment or use a different
value for your global variable. In this case use ``AppFixture`` to change the
value. The value is automatically reset to the original value after the test
is executed. All you have to do is to tell the test that you want an instance of
the :code:`AppFixure` class. Let's take a look at it:

.. literalinclude:: includes/unittesting/unittesting-test-fixure-var.java
  :language: java
  :emphasize-lines: 2, 5

If you want to change the active environment, you can do so in a similar way:

.. literalinclude:: includes/unittesting/unittesting-test-fixure-env.java
  :language: java
  :emphasize-lines: 5

Moreover it's possible to use the ``AppFixture`` to login with an existing user.
You can either login with a username or with an ``IUser`` object, which in this
example we injected as a parameter.

.. literalinclude:: includes/unittesting/unittesting-test-fixure-login.java
  :language: java
  :emphasize-lines: 2, 5, 13
