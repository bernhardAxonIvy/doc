.. _ivy-testing:

Ivy Testing
-----------

**Ivy Tests** allow you to test classes that uses the **Ivy** context, 
or you can use the **Ivy** functionality within the test class itself.


How to write a Ivy Test
~~~~~~~~~~~~~~~~~~~~~~~

First you have to create a new test project, if you don't have one yet. 
The setup steps are the same as in the Process Test chapter.

TODO: setup test project -> link to Process Test chapter

Instead of creating a test with the annotation :code:`@IvyProcessTest`, you must 
annotate you test class with :code:`@IvyTest`. 

.. literalinclude:: includes/ivytesting/ivytesting-setup-test.java
  :language: java

.. note::

  If you run your test as :code:`@IvyTest` (without process), you have the 
  advantage that the bpm engine is not started, which speeds up the test execution.


Write Ivy Test
^^^^^^^^^^^^^^

This :code:`@IvyTest` annotation allows you to access most of the **Ivy** 
API. For example, you can check if the **CMS** has the correct content 
for the supported languages.

.. literalinclude:: includes/ivytesting/ivytesting-test-extend.java
  :language: java

.. tip::

  Take a look at the 
  :github-build-examples:`demo project </crmTests/src_test/ch/ivyteam/test>` 
  to see what else is possible.


Change app runtime
^^^^^^^^^^^^^^^^^^

For some test use cases, you may need to change the environment or use a different value 
for your global variable. In this case, we give you the opportunity to quickly change 
this test for a runtime. All you have to do is to tell the test that you want an 
instance of the :code:`AppFixure` class. Let's take a look at it:

.. literalinclude:: includes/ivytesting/ivytesting-test-fixure-var.java
  :language: java

If you want to change your active environment, you can do so in the same way:

.. literalinclude:: includes/ivytesting/ivytesting-test-fixure-env.java
  :language: java

