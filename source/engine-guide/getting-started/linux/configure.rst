Configure the Engine
--------------------

Now, let's configure the Axon Ivy Engine with a license and a system database. 

First, request a valid Axon Ivy Engine license. Either you get a license for your
productive system through one of our sales representatives or contact our support for
a time limited trial license. If you do not have a license you can skip this
section and continue with the next section.

You need to have a supported database server up and running with a database user
that has the rights to create new databases. The configuration and creation of
the system database differs a little bit depending on the database system you
use. We will use a PostgreSQL database server.

Shutdown the Axon Ivy Engine first by typing **shutdown** and **Y**::

    ...
    Go to http://ivy1:8080/ to see the info page of Axon Ivy Engine.
    Axon Ivy Engine is running and ready to serve. [11596ms]
    Type 'shutdown' and confirm with ENTER to stop the running engine instance
    shutdown
    Should 'Axon Ivy Engine' be stopped? ([Y]es / [N]o): Y
    Stopping Axon Ivy Engine ...
    [  0%] Stopping Server
    ...

Let's install the license. You can do this by simply copying the license
:file:`*.lic` file into the :file:`configuration` folder

.. code:: bash

    cp ~/licence.lic /opt/ivy/engine/latest/configuration

To configure the system database, use the :code:`config-db` command of the
**EngineConfigCli** tool. Replace **yourdatabaseserver** with the name of the
host which runs your PostgreSQL server. Replace **dbuser** and **password** with
the credentials of a database user that has the rights to create a new database
on the database server.

.. code:: bash

    ./EngineConfigCli config-db org.postgresql.Driver \
    jdbc:postgresql://yourdatabaseserver:5432/AxonIvySystemDatabase \
    dbuser password

Now, let's create the system database with the :code:`create-db` command:

.. code:: bash

    ./EngineConfigCli create-db

.. Note::
    The system database is used by Axon Ivy Engine to store configurations,
    users, roles, process instances, tasks and process data.

Next, define an administrator by modifying the :ref:`ivy-yaml` file of the
:file:`configuration` directory: 

.. literalinclude:: sample-ivy.yaml
  :language: yaml
  :linenos:

.. Note::
    Administrators can administer the Axon Ivy Engine. For example, they can
    add or remove users, assign user to roles, enable or disable applications,
    etc. Therefore, you need at least one administrator so that you can later
    administer the Axon Ivy Engine. If license problems occur, these are mailed 
    to all administrators.

.. include:: ../_webserver.rst

Now, start the Axon Ivy Engine again as a background process.::
    
    nohup ./AxonIvyEngine &

The HTTP port of the Axon Ivy Engine may have changed if you did change the HTTP
settings! So open again a web browser and navigate to
http://yourservername:yourportnumber/. Note that the header with the demo mode
message is gone. You now have a production ready Axon Ivy Engine.
