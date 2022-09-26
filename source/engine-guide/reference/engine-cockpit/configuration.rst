Configuration
-------------


.. _engine-cockpit-variables:

Variables
^^^^^^^^^

The view **Variables** displays all variables that are defined
for each application. The variables can be configured in the project or
set in the :ref:`app-yaml` file. You can switch the environment in the drop-down
box at the top.

You can add a new variable by clicking :guilabel:`New` or edit an existing one by
clicking the :guilabel:`Pencil` button. Any changes will be written directly to the
:ref:`app-yaml` file. You can reset a variable to its default value by
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
relative to Easter.

.. figure:: /_images/engine-cockpit/engine-cockpit-configuration-businesscalendar-detail.png


.. _engine-cockpit-branding:

Branding
^^^^^^^^

The **Branding** view gives you an overview of your :ref:`Branding resources
<branding>` in your different applications with the possibility to :guilabel:`upload new`
images or :guilabel:`reset` them to the :ref:`default <branding-system-default>`.

.. figure:: /_images/engine-cockpit/engine-cockpit-branding.png

There is also an edit support for your :ref:`custom-css` and an overview of all
colors with the possibility to easily change a specific color.

.. warning::

  Please note that the color editor will write into the :file:`custom.css` file
  inside your :ref:`branding-configuration` directory. Depending on the content
  of this file, the new color value may show a strange behavior. So maybe you
  should quickly check the the result in the :file:`custom.css` editor.

.. figure:: /_images/engine-cockpit/engine-cockpit-branding-custom-css.png

