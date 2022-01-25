Developer Workflow UI
*********************

Login Table
-----------

The login table allows you to see all the users with their roles 
and easily switch between them. Currently logged in user will be highlighted
in the table.

|image1|


Case Details
------------

The new Case Details view gives you a good overview of all the most important
information about the case. You can also have a good overview over a Case Map
or case hierarchy. If a Case Map has any sidesteps you can start them in the 
Case Map panel.

|image2|


Task Details
------------

On the Task Details view you can see all the information about the task.
In the top right corner of the panel you can see actions dropdown. 
There you can execute some actions on the task like changing state or 
delegating the task to a different role or user.

|image3|


Developer Section
-----------------

The Developer section in the navbar will show up if your user has the 
`IPermission.TASK_READ_ALL` and `IPermission.CASE_READ_ALL` permissions.
The "Developer" user in designer has all needed premissions.
There you will be able to find some more interesting tools like Signals,
Intermediate Events, Cleanup and API Browser.


Intermediate Events
~~~~~~~~~~~~~~~~~~~

On the Intermediate Events page you will be able to see any active Intermediate Events
and their sub events.

|image4|
|image5|


API Browser
~~~~~~~~~~~

On the API Browser you will be able to browse through available rest-resources.

|image6|


Signals
~~~~~~~

The first box on the Signals page is where you can send a signal with or
without a payload. You can either type in your signal code that can be autocompleted or 
use the dropdown and choose a visible signal.
If you have any waiting or boundary signals you can fire them directly by clicking the
paper plane icon on the table in Boundary signals box.

|image7|

Cleanup
~~~~~~~

The cleanup page allows you to delete different type of date from the runnning engine.
There you will see 4 checkboxes. 

The first one deletes all Cases, Tasks and dependant objects of the system-db like 
documents, or custom-fields.

The second checkbox deletes business data and its Elastic Search index.

The third checkbox deletes OAuth2 identity tokens which you might have collected
by calling third-party rest services.

And the last checkbox clears data caches like cache of a Database or
web service request. See more :ref:`data-cache` and :ref:`process-element-tab-data-cache`.

|image8|


.. |image1| image:: /_images/dev-wf-ui/workflow-ui-loginTable.png
.. |image2| image:: /_images/dev-wf-ui/workflow-ui-caseMap.png
.. |image3| image:: /_images/dev-wf-ui/workflow-ui-taskDetails.png
.. |image4| image:: /_images/dev-wf-ui/workflow-ui-intermediateEvents.png
.. |image5| image:: /_images/dev-wf-ui/workflow-ui-intermediateElementDetails.png
.. |image6| image:: /_images/dev-wf-ui/workflow-ui-swagger-ui.png
.. |image7| image:: /_images/dev-wf-ui/workflow-ui-signals.png
.. |image8| image:: /_images/dev-wf-ui/workflow-ui-cleanup.png
