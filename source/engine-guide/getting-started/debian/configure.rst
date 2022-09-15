Configure the Engine (Debian)
-----------------------------

.. include:: ../_prepare-configuration.rst

Manual Setup
^^^^^^^^^^^^

Shutdown the Axon Ivy Engine first by stopping its service

.. code:: bash

    systemctl stop axonivy-engine-|major-version|.service

Install the license: Copy the license file (:file:`*.lic`) into the
:file:`configuration` folder

.. code:: bash

    cp ~/licence.lic /etc/axonivy-engine-|major-version|

To configure the system database, use the :code:`config-db` command of the
**EngineConfigCli** tool. Replace **yourdatabaseserver** with the hostname of
the server running your DBMS system. Replace **dbuser** and **password** with
the credentials of a database user with the permissions to create a new
database and its structures (i.e. DDL permissions) on the database server.

.. code:: bash

    cd /usr/lib/axonivy-engine-|major-version|/bin
    ./EngineConfigCli config-db org.postgresql.Driver \
    jdbc:postgresql://yourdatabaseserver:5432/AxonIvySystemDatabase \
    dbuser password

Now, let's create the system database with the :code:`create-db` command.

.. code:: bash

    ./EngineConfigCli create-db

.. Note::
  The Axon Ivy Engine uses the system database to store **master data** like
  users, user attributes, roles, etc. as well as **runtime data** like
  applications, process models, process model versions, cases, tasks, and
  **process data**.

Next, define an Axon Ivy Engine administrator by modifying :ref:`ivy-yaml`
in directory :file:`/etc/axonivy-engine-|major-version|` as detailed below:

.. literalinclude:: ../linux/sample-ivy.yaml
  :language: yaml
  :linenos:

.. Note::
  Administrators manage the Axon Ivy Engine. For example, they add or remove
  users, assign users to roles, enable, disable and deploy applications, etc. 
  You need at least one administrator to manage the Axon Ivy Engine. In case 
  of license problems, the Axon Ivy Engine sends mail notifications to 
  the administrators.

.. include:: ../_webserver.rst

Now, start the Axon Ivy Engine again

.. code:: bash

    systemctl start axonivy-engine-|major-version|.service

.. Note:: 
  If you have changed the HTTP Settings, the HTTP port of the Axon Ivy Engine may have changed! 

Open a web browser and navigate to http://yourservername:yourportnumber/. As you
see, the header with the demo mode message is gone. You now have a
production-ready Axon Ivy Engine.
