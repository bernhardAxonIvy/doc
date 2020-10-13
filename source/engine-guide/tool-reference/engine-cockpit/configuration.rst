Configuration
-------------


Global Variables
^^^^^^^^^^^^^^^^

The view **Global Variables** displays all global variables that are defined
for each application. The global variables can be configured in the project or
set in the :ref:`app-yaml` file. You can switch the environment in the drop-down
box at the top.

You can add a new variable by clicking :guilabel:`New` or edit an existing one by
clicking the :guilabel:`Pencil` button. Any changes will be written directly to the
:ref:`app-yaml` file. You can reset a global variable to its environment value by
clicking the :guilabel:`Reset` button. 

.. figure:: /_images/engine-cockpit/engine-cockpit-configuration-variables.png


Business Calendar
^^^^^^^^^^^^^^^^^

The **Business Calendar** view shows all configured business calendars for each
application. Business calendars are displayed in hierarchical order and can be
created in the :ref:`app.yaml<app-businesscalendar-yaml>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-configuration-businesscalendar.png

By clicking on one of the calendars you get redirected to the calendar's detail
view. The configurations are grouped by **Week configuration** and **Free
Days**. Free days can contain fixed dates, dates repeating every year and days
relative to easter.

.. figure:: /_images/engine-cockpit/engine-cockpit-configuration-businesscalendar-detail.png
