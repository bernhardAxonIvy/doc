.. _dynamic-config:

Dynamic Configuration
=====================

You may use dynamic expressions in your configurations in order to reduce post
installation configurations for different runtime environments. To do so, you
can add dynamic references to :ref:`variables` into properties or URIs. As an
example, for an endpoint URI defined as :code:`${ivy.var.myVariable}/resource`
the value of the variable called `myVariable`  will be injected at runtime into
the URI.

We provide a set of expressions you can use to refer to the currently running
Axon Ivy Engine Application to simplify calls from an Ivy process to its own
backend.

Expression Reference
--------------------

+----------------------------------------+---------------------------------------------------------+
| **Expression**                         | **Example runtime value**                               |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.var.myVar}``                   | myVarValue                                              |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.app.baseurl}``                 | http://myHost:8080/myContext/myApp                      |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.app.name}``                    | myApp                                                   |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.engine.baseurl}``              | http://myHost:8080/myContext                            |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.engine.host}``                 | myHost                                                  |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.engine.http.port}``            | 8080                                                    |
+----------------------------------------+---------------------------------------------------------+
| ``${ivy.engine.context}``              | myContext *(empty by default)*                          |
+----------------------------------------+---------------------------------------------------------+
