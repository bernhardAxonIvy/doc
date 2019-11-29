.. _getting-started-linux:

Linux (with console tools only)
===============================

In this section, you will learn how to install and configure an Axon.ivy Engine
on a Linux server only using the console. On the Linux machine no windowing
system has to be installed. However, to test your configuration a client machine
with a web browser is needed.


Prepare your Machine
--------------------

Before starting with the installation of Axon.ivy Engine prepare your Linux
machine with the necessary tools and software needed for the installation (wget,
unzip, Java 11 runtime). Most distribution may have pre-installed these tools but
especially certain Docker images may have not. On Debian (e.g. Ubuntu, etc.)
based system use::

    apt update
    apt install sudo wget unzip openjdk-11-jre-headless


Install the Engine
------------------

We suggest that you install the Axon.ivy Engine into a new folder called
:file:`/opt/ivy/engine`. Create the directory and change the owner to your current
user

.. code:: bash

    cd /opt
    sudo mkdir ivy
    sudo chown myuser:myuser ivy

Replace **myuser** with the name of your current user.

.. Tip::
    Instead of using your current user we suggest that on a productive system
    you use a special user called **ivy**. First, create a new user and group
    called ivy. Then, change the owner of the folder :file:`ivy` to the user
    **ivy**. After that, login as user **ivy** and work with the new user.

    .. code:: bash

        sudo mkdir ivy
        adduser ivy
        ...
        sudo chown ivy:ivy ivy
        ls -al
        ...
        drwxr-xr-x 3 ivy  ivy       4096 Sep 15 11:26 ivy
        ...
        login ivy
        ...

Download the latest engine

.. code:: bash

    cd ivy
    mkdir engine
    cd engine
    wget https://developer.axonivy.com/permalink/latest/axonivy-engine.zip -O engine.zip

To install Axon.ivy Engine simply unzip the downloaded file
:file:`AxonIvyEngine*.zip` into a new :file:`AxonIvyEngine*` folder

.. code:: bash

    unzip engine.zip -d latest
    rm engine.zip
    cd latest

.. Note::
  The most important folders of the Axon.ivy Engine are:

  * :file:`bin` folder which contains all the executables.
  * :file:`configuration` folder which contains the configuration files.
  * :file:`deploy` folder which is used to deploy Axon.ivy projects.


Start the Engine
----------------

Start the Axon.ivy Engine by navigation to the bin folder and executing the
:file:`AxonIvyEngine` binary

.. code:: bash

    cd bin
    ./AxonIvyEngine

This will start the Axon.ivy Engine as a user process. On the last lines of the
output a URL is displayed

.. code:: bash

    [100%] Service ProcessModelVersion Portal/AxonIvyExpress$1 started [0ms]
    Go to http://yourservername:8080/ivy to see the info page of Axon.ivy Engine.
    Axon.ivy Engine is running and ready to serve. [9375ms]
    Type 'shutdown' and confirm with ENTER to stop the running engine instance

Copy this URL. On your client machine open a web browser and navigate to that
URL. This will display the Axon.ivy Engine main page. 

Normally, you want to run Axon.ivy Engine as a daemon process and not as a user
process. You can register and manage the Axon.ivy Engine daemon using
``systemd``.


.. include:: _use-the-engine.rst


Configure the Engine
--------------------

Now, let's configure the Axon.ivy Engine with a license and system database. 

To start with that you must first request a valid Axon.ivy Engine license.
Either you get a license for your productive system through one of our sales
personal or contact our support for time limited tryout licenses. If you do not
have a license you can skip this section and continue with the next section.

Moreover, you need to have a supported database server up and running with a
database user that has the rights to create new databases. The configuration and
creation of the system database differs a little bit depending on the database
system you use. We will use a PostgreSQL database server.

Shutdown the Axon.ivy Engine first by typing **shutdown** and **Y**::

    ...
    Go to http://ivy1:8080/ivy to see the info page of Axon.ivy Engine.
    Axon.ivy Engine is running and ready to serve. [11596ms]
    Type 'shutdown' and confirm with ENTER to stop the running engine instance
    shutdown
    Should 'Axon.ivy Engine' be stopped? ([Y]es / [N]o): Y
    Stopping Axon.ivy Engine ...
    [  0%] Stopping Server
    ...

Let's install the license. You can do this by simple copy the license :file:`*.lic`
file into the :file:`configuration` folder

.. code:: bash

    cp ~/license.lic /opt/ivy/engine/latest/configuration

To configure the system database, use the :code:`config-db` command of the
**EngineConfigCli** tool. Replace **yourdatabasserver** with the name of the
host where your PostgreSQL server is running. Replace **dbuser** and
**password** with the credentials of a database user that has the rights to
create a new database on the database server.

.. code:: bash

    ./EngineConfigCli config-db org.postgresql.Driver \
    jdbc:postgresql://yourdatabaseserver:5432/AxonIvySystemDatabase \
    dbuser password

Now, let's create the system database with the :code:`create-db` command:

.. code:: bash

    ./EngineConfigCli create-db

.. Note::
    The system database is used by Axon.ivy Engine to store configurations,
    users, roles, process instances, tasks and process data.

Next, define an administrator by modifying the :ref:`ivy-yaml` file of the
:file:`configuration` directory: 

.. literalinclude:: includes/sample-ivy.yaml
  :language: yaml
  :linenos:

.. Note::
    Administrators can administrate the Axon.ivy Engine. For example, they can
    add or remove users, assign user to roles, enable or disable applications,
    etc. Therefore, you need at least one administrator so that you can later
    administrate the Axon.ivy Engine. The Email address of administrators are
    used to send mail notifications if license problems occur.

Lastly, disable the AJP protocol connector of the Axon.ivy Engine internal web
server in the :ref:`ivy-webserver-yaml` file of the :file:`configuration` directory:

.. literalinclude:: includes/sample-ivy-no-ajp.yaml
  :language: yaml
  :linenos:

.. include:: _webserver.rst

Now, start the Axon.ivy Engine again as background process.::
    
    nohup ./AxonIvyEngine &

Note, that the HTTP port of the Axon.ivy Engine may have changed. If you did
change the http settings! So open again a web browser and navigate to
http://yourservername:yourportnumber/ivy. Note, that the header with the demo
mode message is gone. You now have a production ready Axon.ivy Engine.


.. include:: _deploy-project.rst
