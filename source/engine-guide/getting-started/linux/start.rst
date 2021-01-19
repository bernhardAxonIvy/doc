Start the Engine
----------------

Start the Axon.ivy Engine by navigation to the :file:`bin` folder and executing
the :file:`AxonIvyEngine` binary

.. code:: bash

    cd bin
    ./AxonIvyEngine

This will start the Axon.ivy Engine as a user process. On the last lines of the
output a URL is displayed

.. code:: bash

    [100%] Service ProcessModelVersion Portal/AxonIvyExpress$1 started [0ms]
    Go to http://yourservername:8080/ to see the info page of Axon.ivy Engine.
    Axon.ivy Engine is running and ready to serve. [9375ms]
    Type 'shutdown' and confirm with ENTER to stop the running engine instance

Copy this URL. On your client machine open a web browser and navigate to that
URL. This will display the Axon.ivy Engine main page. 

Normally, you want to run Axon.ivy Engine as a daemon process and not as a user
process. You can register and manage the Axon.ivy Engine daemon using
``systemd``.
