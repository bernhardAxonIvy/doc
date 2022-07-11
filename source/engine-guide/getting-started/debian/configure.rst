Configure the Engine
--------------------

Now, let's configure the Axon Ivy Engine with a license and system database.

First, you have to request a valid Axon Ivy Engine license. You can either get a
license for your productive system through one of our sales representatives or
contact our support for time limited trial licenses. If you do not have a
license you can skip this section and continue with the next section.

Additionally, you need to have a supported database management system server up
and running and a database user avilable who has the rights to create new
databases and execute data definition language as well as data manipulation
language statements. The configuration and creation of the system database
differs a little bit depending on the database system you use. We will use a
PostgreSQL database server.

Shutdown the Axon Ivy Engine first by stopping its service

.. code:: bash

    systemctl stop axonivy-engine-9.service

Let's install the license: Simply copy the license :file:`*.lic` file into the
:file:`configuration` folder

.. code:: bash

    cp ~/licence.lic /etc/axonivy-engine-9

To configure the system database, use the :code:`config-db` command of the
**EngineConfigCli** tool. Replace **yourdatabaseserver** with the name of the
host where your PostgreSQL server is running. Replace **dbuser** and
**password** with the credentials of a database user who has the rights to
create a new database on the database server.

.. code:: bash

    cd /usr/lib/axonivy-engine-9/bin
    ./EngineConfigCli config-db org.postgresql.Driver \
    jdbc:postgresql://yourdatabaseserver:5432/AxonIvySystemDatabase \
    dbuser password

Now, let's create the system database with the :code:`create-db` command

.. code:: bash

    ./EngineConfigCli create-db

.. Note::
  The system database is used by Axon Ivy Engine to store configurations, users,
  roles, process instances, tasks and process data.

Next, define an administrator by modifying the :ref:`ivy-yaml` file of the
:file:`/etc/axonivy-engine-9` directory:

.. literalinclude:: ../linux/sample-ivy.yaml
  :language: yaml
  :linenos:

.. Note::
  Administrators can administer the Axon Ivy Engine. For example, they can add
  or remove users, assign user to roles, enable or disable applications, etc.
  Therefore, you need at least one administrator so that you can later
  administer the Axon Ivy Engine. In case of license problems, the Axon Ivy Engine 
  sends mail notifications to the administrators.

.. include:: ../_webserver.rst

Now, start the Axon Ivy Engine again

.. code:: bash

    systemctl start axonivy-engine-9.service

Note that the HTTP port of the Axon Ivy Engine may have changed if you did change
the http settings! So open again a web browser and navigate to
http://yourservername:yourportnumber/. As you see, the header with the demo mode
message is gone. You now have a production ready Axon Ivy Engine.
