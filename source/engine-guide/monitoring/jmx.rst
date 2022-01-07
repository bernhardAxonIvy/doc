.. _jmx:

Java Management Extensions (JMX)
================================

Java Management Extensions (JMX) is a technology to read and write runtime
information from Java processes. This allows tools to monitor the
state of an |ivy-engine|, e.g. with VisualVM, Java Mission Control,
Nagios, Prometheus, etc. 

A monitoring tool running on the same machine and with the same user
as the |ivy-engine| can connect to |ivy-engine| without any additional
configuration.


Activate Remote Access
----------------------

If the |ivy-engine| is running under another user or on a remote host than
the monitoring tool, JMX remote access has to be activated. Remote access
is protected by a user name and password of an |ivy-engine| administrator, so
all |ivy-engine| administrators have access.

Activate remote access by uncommenting all lines in the JMX section of :ref:`jvm-options`.


Auto Discovery (JDP)
--------------------

Some monitoring tools can auto discover running JMX servers in the network. This way,
a user does not have to know the JMX ip and port.

You can disable this behavior in :ref:`jvm-options`
by setting the JMX autodiscovery property to false:

.. code-block:: properties

    -Dcom.sun.management.jmxremote.autodiscovery=false


Provided MBeans
---------------

The |ivy-engine| provides performance and management information by a set of
MBeans. They allow tools to monitor internals of the |ivy-engine|. Most
monitoring tools provide a user interface to browse the available MBeans. 
MBeans are mostly shown in a tree built with the information provided in the
names of the MBeans. 

.. figure:: /_images/monitoring/visualvm-mbeans.png

The :ref:`engine-cockpit` also contains a built-in :ref:`engine-cockpit-monitor-mbeans`
browser. This way you do not need to install a an external monitoring tool.

Where possible, |ivy-engine| MBeans names contain application, process 
model, process model version, or environment name. 

**Examples of typical |axon-ivy| MBean names:**

.. code-block:: properties

    ivy Engine:type=External Web Service,application=MyApplication,environment=Default,name=Echo (43838347ABCD)
    ivy Engine:type=Job Manager
    ivy Engine:type=Process Start Event Bean,application=MyApplication,pm=MyProcessModel,pmv=1,name="MyStartEventBean (3485471349/start.ivp)"

The name and description of an MBean can be found in its meta information (see
the Metadata tab in the MBeans tab of VisualVM). MBeans provide information
through attributes and operations. The description of the attributes and
operations can also be found in the meta information (also the tool tips in
the Attributes and Operations tab of VisualVM's MBeans tab).

.. warning::
    Manipulating attribute values or calling operations on MBeans will
    immediately change the configuration of your system and can therefore harm
    your running applications.

    If not mentioned otherwise, a manipulation only affects the currently
    running engine. It will not survive a engine restart.
    
    Manipulations that survive a engine restart contain the following text in
    the description of the attribute or operation: ``(Persistent)``.

In addition to the MBeans provided by |axon-ivy|, some third party libraries
included in |axon-ivy| provide their own MBeans. One of them is Apache Tomcat, which
is used as internal web server. Its MBeans provide information about the
handling of HTTP requests like request count, errors, execution time, sessions,
etc. Moreover, the Java Virtual Machine also provides some MBeans that contain
information about the used memory (Java heap), CPU usage, uptime, etc.

The list below contains some of the provided information:

**External Database** (connections, transactions, errors, execution time, etc.)

.. code-block:: properties
        
    ivy Engine:type=External Database,application=*,environment=*,name=*

**Web Service** (calls, errors, execution time, etc.)

.. code-block:: properties
        
    ivy Engine:type=External Web Service,application=*,environment=*,name=*

**REST Web Service** (calls, errors, execution time, slow calls, etc.)

.. code-block:: properties
        
    ivy Engine:type=External REST Web Service,application=*,environment=*,name=*

**System Database** (connections, transactions, errors, execution time, etc.)

.. code-block:: properties
        
    ivy Engine:type=Database Persistency Service

**HTTP Requests** (count, errors, execution time, etc.)

.. code-block:: properties

    *:type=GlobalRequestProcessor,name=*

**Number of Sessions** (HTTP sessions, |axon-ivy| sessions, license relevant sessions, etc.)

.. code-block:: properties

    ivy Engine:type=Security Manager
    *:type=Manager,context=*,host=*

**Background jobs** (name, next execution time, etc.)

.. code-block:: properties
   
    ivy Engine:type=Job Manager
    ivy Engine:type=Daily Job,name=*
    ivy Engine:type=Periodical Job,name=*

**Process Start Event Beans** (polls, executions, errors, execution time, etc.)

.. code-block:: properties
   
    ivy Engine:type=Process Start Event Bean,,application=*,pm=*,pmv=*,name=*

**Process Intermediate Event Beans** (polls, firings, errors, execution time, etc.)

.. code-block:: properties

    ivy Engine:type=Process Intermediate Event Bean,application=*,pm=*,pmv=*,name=*

**Application, Process Model and Process Model Version, Library information** (activity state, release state, name, description, etc.)

.. code-block:: properties

    ivy Engine:type=Application,name=*
    ivy Engine:type=Process Model,application=*,name=*
    ivy Engine:type=Process Model Version,application=*,pm=*,name=*

**Cluster, Cluster Nodes and Cluster Communication information** (received and sent message, errors, execution time, etc.)

.. code-block:: properties

    ivy Engine:type=Cluster Manager
    ivy Engine:type=Cluster Channel

**Thread Pool information** (core, maximum and current pool size, active threads, queue size)

.. code-block:: properties

    ivy Engine:type=Thread Pool, name=Background Operation Executor
    ivy Engine:type=Thread Pool, name=Immediate Job Executor
    ivy Engine:type=Thread Pool, name=Scheduled Job Executor

**System Database Cache**

.. code-block:: properties

    ivy Engine type=CacheClassPersistencyService,name=* [clearCache()]
    ivy Engine type=CacheClassPersistencyService,name=*,strategy=CacheAll [maxBytesToCache, maxCharactersToCache]
    ivy Engine type=CacheClassPersistencyService,name=*,strategy=CacheAllRemoveUnused [maxBytesToCache, maxCharactersToCache, countLimit, usageLimit]
    ivy Engine type=CacheClassPersistencyService,name=*,cache=LongBinaries [readHits, readMisses, writes, cachedLongValues, clearCache()]
    ivy Engine type=CacheClassPersistencyService,name=*,cache=LongCharacters [readHits, readMisses, writes, cachedLongValues, clearCache()]
    ivy Engine type=CacheClassPersistencyService,name=*,cache=ObjectsAndAssociations [objectReadHits, objectReadMisses, objectWrites, cachedObjects, associationReadHits, associationReadMisses, associationWrites, cachedAssociations, clearCache()]

**Memory (Java Heap, Perm Gen)**

.. code-block:: properties

    java.lang:type=Memory

**CPU Usage, Uptime**

.. code-block:: properties
        
    java.lang:type=Runtime
    java.lang.type=OperatingSystem
