
API
------------

There are several APIs to manipulate and query workflow tasks and cases.


Task and Case queries
~~~~~~~~~~~~~~~~~~~~~

The fluent workflow query API makes queries against all existing tasks
and cases possible. The queries can be written in a SQL like manor.

::

   import ch.ivyteam.ivy.workflow.query.TaskQuery;
   import ch.ivyteam.ivy.workflow.ITask;

   // create a new query
   TaskQuery query = TaskQuery.create()
     .aggregate().avgCustomDecimalField1()
     .where().customVarCharField1().isEqual("ivy")
     .groupBy().state()
     .orderBy().customVarCharField2().descending();
   // resolve query results
   List<ITask> tasks = ivy.wf.getTaskQueryExecutor().getResults(query);

To resolve all tasks that the current user can work on use the following
code:

::

   TaskQuery query = TaskQuery.create()
     .where().currentUserCanWorkOn()
     .orderBy().priority();
   List<ITask> userWorkTasks = ivy.wf.getTaskQueryExecutor().getResults(query);

To execute a query an instance of a IQueryExecutor is needed. It can be
retrieved trough the :ref:`ivy environment variable <ivyscript-reference-environmentvariable>`.

::

   // Application specific query executors can be retrieved from the application context
   ivy.wf.getTaskQueryExecutor().getResults(taskQuery);
   ivy.wf.getCaseQueryExecutor().getResults(caseQuery);

.. warning::

   Queries over all applications can be executed on the global workflow
   context. But queries that involve the current session could deliver
   useless results as users are not shared over multiple applications.

   ::

      ivy.wf.getGlobalContext().getTaskQueryExecutor().getResults(taskQuery);
      ivy.wf.getGlobalContext().getCaseQueryExecutor().getResults(caseQuery);


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
