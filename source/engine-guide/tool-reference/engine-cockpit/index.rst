.. _engine-cockpit:

Engine Cockpit
==============

The **Engine Cockpit** is the application to administer your engine.


.. rubric:: Opening the tool

After successfully starting the |ivy-engine|, you can launch the engine cockpit tool 
via the |ivy-engine| info page. 
To do so, open the address: http://ServerName:Port/ in your browser and click the
:guilabel:`Cockpit` tab. This will open the dashboard: 
http://ServerName:Port/system/faces/view/engine-cockpit/dashboard.xhtml

.. note::
    To use this Engine Cockpit you will need an administrator user account. 
    If you run in :ref:`demo-mode`, the administrator user and password are
    **admin**.


.. _engine-cockpit-dashboard:

.. rubric:: Dashboard

The **dashboard** provides a quick overview of your running engine. It displays 
real time information about open sessions, user count, working tasks and
deployed applications. In addition, it shows information about the host 
the engine is running on.

In the :guilabel:`Licence` panel you can to upload a licence. To do so click
on the :guilabel:`Upload Licence` button.

If you have configured an EMail server you can test it by clicking on the
:guilabel:`Send` button in the :guilabel:`Email` panel. This will send a test mail.

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

