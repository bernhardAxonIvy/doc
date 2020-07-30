Logging
=======

Axon.ivy uses a library called `log4j
<http://logging.apache.org/log4j/1.2/index.html>`_ to log certain events. The
logging configuration file is located in directory :file:`{engineDir}/configuration`
and is called :ref:`log4jconfig-xml`. By default, log events are
written to the console and to log files. The log files are written to the
:file:`{engineDir}/logs` directory.

Each log message has a log level:

+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Log Level | Description                                                                                                                                                                |
+===========+============================================================================================================================================================================+
| FATAL     | This level is used to report problems that may cause the engine not to work correctly.                                                                                     |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ERROR     | This level is used to report problems that something has not worked as expected and may cause that the user gets an error message on the UI.                               |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| WARN      | This level is used to report problems that have to be solved because it can lead to errors later.                                                                          |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| INFO      | This level is used to report that something was done. (E.g. for example a database call)                                                                                   |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DEBUG     | This level is used to report internal events. Most of these events are only interesting for developers. However, some of them may also be interesting for troubleshooting. |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

You can control what log levels should be written for which logs. The following
is configured as default:

+-------------------+-----------+
| Logging Type      | Log Level |
+===================+===========+
| Console log       | WARN      |
+-------------------+-----------+
| File log          | WARN      |
+-------------------+-----------+
| Config log        | INFO      |
+-------------------+-----------+
| Windows Event Log | FATAL     |
+-------------------+-----------+


Log Message Format
------------------

A log message looks like this:

.. literalinclude:: includes/example-ivy.log
    

The first entry of a log message is the exact time when it was written
(``12:23:17.910``). This is followed by the log level of the message (``INFO``). Next is the
log category (``[runtimelog.LicenseOrder.LicenseOrder.db]``), followed by the name of the
thread in whose context the log message was written (``[ivy background
operation pool-thread-5]``). The next section contains a lot of Axon.ivy context
information, e.g. the active user session or process model version when the log
message was written. The content of the context information depends on the context the
log message was written in. The following context informations exist:

+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| Info             | Description                                                                                                                          |
+==================+======================================================================================================================================+
| application      | The identifier of the current application.                                                                                           |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| client           | The IP address and maybe the host name of the current web client.                                                                    |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| executionContext | The security execution context that is used to check permissions. This can be the current session or SYSTEM if security is disabled. |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| request          | Information about the current request is written to the log.                                                                         |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| requestId        | The identifier of the current request. Can be used to filter all messages that are written in the context of the same request.       |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| pmv              | The identification string of the current process model version.                                                                      |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| processElement   | The process element that is currently executed.                                                                                      |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| hd               | The fully qualified name of the Html Dialog.                                                                                         |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| session          | The current Axon.ivy session. The identifier of the session and the user name (if a user is logged in).                              |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+
| task             | The identifier of the current task.                                                                                                  |
+------------------+--------------------------------------------------------------------------------------------------------------------------------------+

On the next line the actual log message is printed. In case of an error, a java
exception stack trace may follow on the next lines.


Runtime Log
-----------

On the |ivy-designer| certain process events are logged to the runtime
log view. The Process Designer itself can write to the runtime log using the
``ivy.log`` object. On the |ivy-engine|, all information written to the runtime
log is handled by Log4j. It is written to the console, to log files and to the
Windows Event Log.

The runtime log entries are written as special log categories whose names start
with ``runtimelog`` followed by the application name, the process model name and the
runtime log category. For example: the category name
**runtimelog.app.hrm.user_code** represents the runtime log of the application
called **app** with the process model called **hrm** and the runtime log
category **user_code**.

**Example:**

The following xml snippet can be added to the Log4j configuration file. Log4J will
then, after a restart, write the runtime log of the process model **hrm** of application
**app** into its own log file called :file:`runtimelog.app.hrm.log`:

.. literalinclude:: includes/log4jconfig-example.xml
    :language: xml


Request/Performance Logging
---------------------------

If you want to know the time when a request was received by the |ivy-engine|
and when it processed processed the request, you need to use the log category
**ch.ivyteam.ivy.webserver.internal.PerformanceLogValve**

Configuration Example (:ref:`log4jconfig-xml`):

.. literalinclude:: includes/log4jconfig-category-example.xml
    :language: xml

This log category logs the entry of a request right after the internal web server
has received it. The exit is logged after the request was processed by the web
server. The exit log message contains the time spent to process the request, in
microseconds.

The log level of these messages is ``DEBUG``. You need to set the appender's
threshold to ``DEBUG`` in order to write log messages with this priority to
the appender's destination.

Configuration Example (:ref:`log4jconfig-xml`):

.. literalinclude:: includes/log4jconfig-appender-example.xml
    :language: xml

If you want to know what the |ivy-engine| did between the entry and exit
of a request, you can use the context information **requestId**. It can be found
in every log message. A unique request identifier is assigned to every
request. By filtering the log for messages with the same **requestId** you find
out what kind of operations the |ivy-engine| has done during the request.

**Example:**

.. literalinclude:: includes/example-ivy-large.log

The example above shows the log messages when the request with id 43 has entered
and exited the web server. During the request a message was written to the user
runtime log and a database SELECT statement was executed. The whole request was
processed within 196 ms.
