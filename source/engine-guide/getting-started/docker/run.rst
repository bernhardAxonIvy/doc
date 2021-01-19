Run
---

Now we are going to run the Axon.ivy Engine with a system database management
which holds the system database - in this case we use PostgreSQL. Create a new
folder somewhere in your file system and copy paste the following files to it:

:file:`docker-compose.yaml`

.. literalinclude:: docker-compose.yaml
   :language: yaml

:file:`ivy.yaml`

.. literalinclude:: ivy.yaml
   :language: yaml

Provide a valid licence file in the same folder with the name
:file:`licence.lic`. If you don't do that than this example should still work
but the Axon.ivy Engine will run in :ref:`demo mode <demo-mode>`.

Open a terminal and execute :code:`docker-compose up` in the folder where
:file:`docker-compose.yaml` is located. After startup, the engine is available
at http://localhost:8080.
