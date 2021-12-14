
API
------------

There are several APIs to manipulate and query workflow tasks and cases.


Task and Case queries
~~~~~~~~~~~~~~~~~~~~~

The fluent workflow query API makes queries against all existing tasks
and cases possible. The queries can be written in a SQL like manor.

.. literalinclude:: code-snippets/task-query/example.java
   :language: java

To resolve all tasks that the current user can work on use the following
code:


.. literalinclude:: code-snippets/task-query/current_user.java
   :language: java

To execute a query an instance of a IQueryExecutor is needed. It can be
retrieved trough the :ref:`ivy environment variable <ivyscript-reference-environmentvariable>`.



.. warning::

   Queries over all applications can be executed on the global workflow
   context. But queries that involve the current session could deliver
   useless results as users are not shared over multiple applications.

.. literalinclude:: code-snippets/task-query/IQueryExecutor.java
   :language: java


Task and Case manipulation
~~~~~~~~~~~~~~~~~~~~~~~~~~

The API to manipulate tasks and cases is available trough
the :ref:`ivy environment variable <ivyscript-reference-environmentvariable>`.

-  ``ivy.case`` (ICase): represents the current process under execution

-  ``ivy.task`` (ITask): represents the user's current work unit in the
   process under execution.

-  ``ivy.wf`` (IWorkflowContext): addresses all workflow tasks and cases of
   all users for the application under execution.

-  ``ivy.session`` (IWorkflowSession): gives access to all workflow tasks
   and cases of the current user.


.. _mobile-workflow-api:

REST API
~~~~~~~~

There is a :api-browser-url:`REST workflow API <workflow>`
available that allows third party services to interact with workflow Tasks,
Cases and the like. The API was designed to allow mobile devices to use the
workflow. 

The so called mobile workflow API is disabled by default. You can enabled it by
setting the configuration ``REST.Servlet.MobileWorkflow.API: true``.

.. literalinclude:: includes/mobile.wf.enable.ivy.yaml
  :language: yaml
  :linenos:

Once the mobile workflow API is enabled, you may browse it's
services by using the :ref:`integration-rest-api-browser`.

If any REST workflow API is missing for your specific use-case, 
keep in mind that you can provide additional APIs very easily 
by creating REST API service classes in your project. See 
:ref:`integration-rest-provider`
