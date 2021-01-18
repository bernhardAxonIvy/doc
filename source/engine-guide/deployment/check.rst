.. _deployment-check-results:

Check the results
-----------------

Go to the server info page, which is by default http://localhost:8080. You
should see now your new processes available. If you think there is missing
something you better check the deployment logs.

The engine cockpit provides direct feedback on the user interface, the REST API
by the HTTP response and the deployment directory creates new files in the same
directory where you have dropped the deployment file:

+------------------+------------------------------------------------------------------------+
| File suffix      | Description                                                            |
+==================+========================================================================+
| .deployed        | Last deployed file to the engine in case of a successful deployment    |
+------------------+------------------------------------------------------------------------+
| .notDeployed     | Last not deployed file to the engine in case of error while deployment |
+------------------+------------------------------------------------------------------------+
| .deploymentLog   | Contains the log output which is written during the deployment         |
+------------------+------------------------------------------------------------------------+
| .deploymentError | Contains the error cause and is only written when the deployment fails |
+------------------+------------------------------------------------------------------------+
