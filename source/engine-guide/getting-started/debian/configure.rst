Configure the Engine
--------------------

Now, let's configure the Axon.ivy Engine with a licence and system database.

To start with that you must first request a valid Axon.ivy Engine licence.
Either you get a licence for your productive system through one of our sales
personal or contact our support for time limited trial licences. If you do not
have a licence you can skip this section and continue with the next section.

Moreover, you need to have a supported database server up and running with a
database user that has the rights to create new databases. The configuration and
creation of the system database differs a little bit depending on the database
system you use. We will use a PostgreSQL database server.

Shutdown the Axon.ivy Engine first by stopping its service

.. code:: bash

    systemctl stop axonivy-engine-9.service

Let's install the licence. You can do this by simple copy the licence
:file:`*.lic` file into the :file:`configuration` folder

.. code:: bash

    cp ~/licence.lic /etc/axonivy-engine-9

To configure the system database, use the :code:`config-db` command of the
**EngineConfigCli** tool. Replace **yourdatabasserver** with the name of the
host where your PostgreSQL server is running. Replace **dbuser** and
**password** with the credentials of a database user that has the rights to
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
  The system database is used by Axon.ivy Engine to store configurations, users,
  roles, process instances, tasks and process data.

Next, define an administrator by modifying the :ref:`ivy-yaml` file of the
:file:`/etc/axonivy-engine-9` directory:

.. literalinclude:: ../linux/sample-ivy.yaml
  :language: yaml
  :linenos:

.. Note::
  Administrators can administrate the Axon.ivy Engine. For example, they can add
  or remove users, assign user to roles, enable or disable applications, etc.
  Therefore, you need at least one administrator so that you can later
  administrate the Axon.ivy Engine. The Email address of administrators are used
  to send mail notifications if licence problems occur.

.. include:: ../_webserver.rst

Now, start the Axon.ivy Engine again

.. code:: bash

    systemctl start axonivy-engine-9.service

Note, that the HTTP port of the Axon.ivy Engine may have changed. If you did
change the http settings! So open again a web browser and navigate to
http://yourservername:yourportnumber/. Note, that the header with the demo
mode message is gone. You now have a production ready Axon.ivy Engine.
