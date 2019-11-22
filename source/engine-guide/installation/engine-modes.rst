Engine Modes
============

.. _demo-mode:
  
Demo Mode
---------  

|ivy-engine| offers a demo mode for demonstration purposes.
The demo mode allows you to install and start the |ivy-engine| without 
configuration and without a productive licence.  You can play 
with the |ivy-engine|. Try out the :ref:`Portal <portal>` and 
:ref:`Cockpit <engine-cockpit>`, deploy projects, etc. The username of 
the administrator in demo mode is **admin** and password **admin**. 
  
.. warning:: 

    The |ivy-engine| uses a memory database as system database in demo mode.
    This means that all your data, all cases that are created by
    any sessions in demo mode are lost when you shut down the |ivy-engine|.    

.. _production-mode:
  
Production Mode
---------------

The production mode is active if a licence is installed and a system database is configured and available.

.. _maintenance-mode:

Maintenance Mode
----------------

In the maintenance mode you can use the :ref:`engine-cockpit` to fix licence or system database configuration problems. 

.. warning:: 
    In maintenance mode all functions of the |ivy-engine| expect the :ref:`engine-cockpit` are disabled! 

The |ivy-engine| starts automatically in maintenance mode if there is a problem with the licence or the system database.

You can disable the automatically switching to maintenance mode in the :ref:`ivy-yaml` file:
                                                                       
.. code:: yaml

  Boot.MaintenanceMode: DISABLED
  
If disable and there is a licence or system database problem the |ivy-engine| fail to start and report an error.
You can then start the |ivy-engine| explicitly in maintenance mode by using the :ref:`command line option <axonivy-engine>` :code:`-maintenance`.

