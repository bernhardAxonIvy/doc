Start the Engine
----------------

To start the |ivy-engine|, navigate to the :file:`bin` folder and execute
the :file:`AxonIvyEngine` binary

.. code:: bash

    cd bin
    ./AxonIvyEngine

This will start the |ivy-engine| as a user process. On the last lines of the
output a URL is displayed

.. code:: bash

    [100%] Service ProcessModelVersion Portal/AxonIvyExpress$1 started [0ms]
    Go to http://yourservername:8080/ to see the info page of |ivy-engine|.
    |ivy-engine| is running and ready to serve. [9375ms]
    Type 'shutdown' and confirm with ENTER to stop the running engine instance

Copy this URL. On your client machine open a web browser and navigate to that
URL. This will display the |ivy-engine| main page. 

Normally, you want to run |ivy-engine| as a daemon process and not as a user
process. You can register and manage the |ivy-engine| daemon using
``systemd``.
