Workflow
--------

Per default Html Dialog are created with a proceed button that resume the
workflow to the next step. In addition, also an cancel link is created. 

Cancel Html Dialog
^^^^^^^^^^^^^^^^^^

The default cancel link resets the current task and redirects to the
:ref:`application home <standard-processes-default-pages>` respectively to the
:ref:`task list <standard-processes-default-pages>` page if the task is
persitent. You have also the possibility to define the target redirect page.
Have a look at the :public-api:`WorkflowBean
</ch/ivyteam/ivy/jsf/bean/wf/WorkflowBean.html>` for more information.
