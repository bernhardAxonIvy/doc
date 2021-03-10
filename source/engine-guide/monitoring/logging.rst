.. _logging:

Logging
=======

In order to successfully run an |ivy-engine|, you need to be prepared in
case of errors or even failures. Therefore mission critical events are logged.
Each event has a level:

* **FATAL** systems runs partially or not at all
* **ERROR** something is not working properly
* **WARNING** warning which can lead someday to an error
* **INFO** neutral message
* **DEBUG/TRACE** low-level events, needed for troubleshooting

Axon Ivy comes with a sophisticated :ref:`default log configuration <log4j2-xml>`
which logs all warning, error and fatal events in the :file:`logs`
directory of the |ivy-engine|. The log files will be roated and compressed
every day.

Keep in mind that an unfavorable log configuration can lead to failures.
For example, if the root log level is set to DEBUG, so many logs are written
that the engine has no more resources for other tasks.


Customization
-------------

The logging configuration can be fully customized to your needs.
For example, you can change the log level of a logger so that the log events are logged in a log file.
Therefore you need to know that
Axon Ivy uses `Log4j 2 <https://logging.apache.org/log4j/2.x/>`_ for logging and
comes with a built-in :ref:`default configuration <log4j2-xml>` which can be 
customized by providing a configuration in :file:`[engineDir]/configuration/log4j2.xml`.
The custom configuration will be `merged <http://logging.apache.org/log4j/2.x/manual/configuration.html#CompositeConfiguration>`_
with the default configuration automatically on the fly.


Runtime Log
-----------

The Runtime Log is a well-known `designer feature <simulate-process-models-debugger-runtimelog-view>`_ and disabled by default
in the |ivy-engine| to prevent a flood of log messages, which can decrease
performance and filling the disk.
But you can set the log level of a specific runtime logger and bring them even to another file to get the logs also on the |ivy-engine|.

The name of the runtime logger has a well defined format:

**runtimelog.[app name].[process model name].[category]**

**Example:**

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/log4j2-runtimelog.xml
  :language: xml
  :linenos:


Request Tracing
---------------

If you experience poor performance, you can trace the individual requests
to the |ivy-engine| by setting the level of the request performance logger in :file:`[engineDir]/configuration/log4j2.xml`:

.. literalinclude:: ../../../../workspace/ch.ivyteam.ivy.server.file.feature/root/configuration/templates/log4j2-performance-request.xml
  :language: xml
  :linenos:

This will make a log when the request was received by the internal web server
and when the request was processed with the time spent for processing.

A unique request identifier **requestId** is assigned to every request. This can be used
to find out what the |ivy-engine| did while processing the request.

**Example:**

.. literalinclude:: includes/request-tracing.log
  :language: none

The example above shows the log messages when the request with id **61** has entered
and exited the web server. During the request a database :code:`SELECT` statement was executed.
The whole request was processed in 16 ms.


Log format
----------

A single event can be found as a log entry in the format
**[datetime][level][logger name][thread name]{context infos}** followed by the message itself like:

.. literalinclude:: includes/log-message.log
