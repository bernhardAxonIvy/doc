.. _process-elements:

Process Elements Reference
==========================

This chapter provides detailed explanations for the usage and
configuration of all process elements, for both business processes and
user dialog logic.

Axon Ivy provides a lot of useful process elements that can be used to
define processes. These elements reside in the palette on the right edge
of the Process editor. You can drag and drop the elements on the editor
to use them in a specific process flow. You then can connect two
elements by clicking on the source element, let the moused button
pressed down, move the mouse cursor to the target element and finally
release the mouse button. Reconnecting or removal is only possible by
using the corresponding entries in the popup menu.

Every process element can be configured with its inscription mask. Open
this mask by double-clicking on the element, use the popup-menu or press
the ``i``-key whenever the element is selected. The inscription mask is
divided into multiple tabs and the order of the tabs indicates the
sequence of processing. For example in the figure below, the Output
mapping (the second tab in the middle) is performed before the code in
the third tab is executed.

.. figure:: /_images/process-elements/example-inscription-mask.png
   :alt: An exemplary inscription mask

   An exemplary inscription mask

The icons on the tab indicate their state:

-  |image0| the tab is empty

-  |image1| the tab has been changed by the user (default assignments
   are not considered as user entries)

-  |image2| the tab contains errors

.. |image0| image:: /_images/process-elements/bullet-grey.png
.. |image1| image:: /_images/process-elements/bullet-black.png
.. |image2| image:: /_images/process-elements/bullet-red.png


Common Tabs
-----------

.. toctree::
   :maxdepth: 2

   common-tabs


Start Events
------------

.. toctree::
   :maxdepth: 1

   start
   signal-start
   program-start
   error-start
   sub-process-start
   web-service-process-start
   user-dialog-start
   user-dialog-method-start
   user-dialog-event-start


Intermediate Events
-------------------

.. toctree::
   :maxdepth: 1

   task-switch-event
   wait-program-intermediate-event


End Events
----------

.. toctree::
   :maxdepth: 1

   process-end
   process-end-page
   error-end
   user-dialog-process-end
   user-dialog-exit-end


Boundary Events
---------------

.. toctree::
   :maxdepth: 1

   error-boundary-event
   signal-boundary-event


Gateways
--------

.. toctree::
   :maxdepth: 1

   alternative
   split
   join
   task-switch-gateway


Workflow Activities
-------------------

.. toctree::
   :maxdepth: 1

   user-task
   user-dialog
   script-step
   embedded-subprocess
   call-sub
   trigger-step
   web-page


Interface Activities
--------------------

.. toctree::
   :maxdepth: 1

   database-activity
   web-service-call-activity
   rest-client-activity
   email-activity
   rule-activity
   program-interface-activity


BPMN Activities
---------------

.. toctree::
   :maxdepth: 1

   bpmn-activity-elements


Annotations
-----------

.. toctree::
   :maxdepth: 1

   note


Connectors
----------

.. toctree::
   :maxdepth: 1

   connector-browser
