.. _engine-cockpit:

Engine Cockpit
==============

The **Engine Cockpit** is the application to administrate your engine.


.. rubric:: Opening the tool

After you have successfully started the Axon.ivy Engine, you can launch the engine cockpit tool 
via the Axon.ivy Engine info page. 
To do so, open the address: http://ServerName:Port/ivy in your browser and click on the :guilabel:`Cockpit` tab. 
This will open the dashboard: 
http://ServerName:Port/ivy/faces/view/system/engine-cockpit/dashboard.xhtml

.. note::
    For the usage of this tool, you will need an administrator user account. 
    If you run in :ref:`demo-mode`, the administrator user and password is
    **admin**.


.. _engine-cockpit-dashboard:

.. rubric:: Dashboard

The **dashboard** provides you a quick overview of your running engine. It displays 
real time information about open sessions, user count, working tasks and
deployed applications. In addition, it will show you information about the host 
where the engine is running on. 

If you have a EMail Server configured you
can test it by clicking on the :guilabel:`Send` button and send a test mail. On
the licence panel you have the possibility to upload a licence. To do so click
on the :guilabel:`Upload Licence` button.

.. figure:: /_images/engine-cockpit/engine-cockpit-dashboard.png

.. rubric:: Features

Additional configuration views of the cockpit are accessible via menu drawer.

.. toctree::
   :maxdepth: 1

   applications
   security
   configuration
   services
   system
   monitor

