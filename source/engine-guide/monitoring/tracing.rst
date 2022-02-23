.. _tracing:

Request Tracing
===============

The tracing of requests allows you to find slow requests and analyze where those requests spend time 
(e.g., on which internal or external system a request spends time or is waiting).  
 
Engine Cockpit
--------------

You can activate and analyze the request tracing in the
:ref:`engine-cockpit-monitor-slow-requests` view of the :ref:`engine-cockpit`.

Logging
-------

If you experience poor performance, you can log the individual requests
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

Request Tracing Tools
.....................

If you use an external tracing tool that propagates a trace id as HTTP header then the trace id 
is used as **requestId** instead of the internally generated identifier. This allows you to 
aggregate log entries from different systems using the **requestId**. 
|ivy-engine| supports the following HTTP headers:

=================  =============      
HTTP Header        Tool/Standard
=================  =============
traceparent        `W3C Trace Context <https://www.w3.org/TR/trace-context/>`_
uber-trace-id      `Jaeger <https://www.jaegertracing.io>`_
b3                 `Zipkin <https://zipkin.io/>`_
X-B3-TraceId       `Zipkin <https://zipkin.io/>`_
X-Amzn-Trace-Id    `Amazon X-Ray <https://docs.aws.amazon.com/xray>`_
ot-tracer-traceid  `Open Tracing <https://github.com/opentracing>`_
=================  =============

For a deeper integration with a tracing tool have a look at our :link-url:`Jaeger Tracing <docker-tracing-jaeger>` 
(`Jaeger <https://www.jaegertracing.io>`_ and  `OpenTelemetry <https://opentelemetry.io/>`_) example.
