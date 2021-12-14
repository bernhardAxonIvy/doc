
Categories
----------


Start, Case and Task Categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A Start, Case or a Task can be assigned to a category. A category is a
structured String (e.g. ``Finance/Invoices``) and categorize them into a
hierarchical structure. It is beside the name an
important identification attribute of a Start, Case or Task.

The ``Category`` API allows to get localized information from the CMS.
E.g. the ``name`` of the category ``Finance/Invoices`` is stored in the
CMS at ``/Categories/Finance/Invoices/name``.

To display a tooltip or an icon for a category on start lists configure
the ``tooltip`` and ``cssIcon`` in the CMS (e.g. ``/Categories/Finance/Invoice/cssIcon``).

The following example shows a simple usage of a category on Case level.
The API on Task level is identical.

::

   ivy.case.setCategoryPath("Finance/Invoices");

   String categoryName = ivy.case.getCategory().getName(); // EN: "Invoices", DE: "Rechnungen"
   String categoryPath = ivy.case.getCategory().getPath(); // EN: "Finance/Invoices", DE: "Finanzen/Rechnungen"

.. tip::

   The project
   :ref:`WorkflowDemos <importing-demo-projects>`
   demonstrates the usage of start, case and task categorization. Typically the
   case category is used to categorize the over-all process (i.e.
   Business Case) and the task category is used to categorize a single
   or set of unions of work. Because the clear separation of case and
   task categorization even complex use cases could be handled.

   E.g. in a mid-sized company the process to request an address from a
   customer change exists in multiple forms. There is one in the
   customer portal and one for partner agencies. The process executed
   from the customer portal has the case category
   'CustomerPortal/AddressChange'. The process executed by a partner
   agency has the case category 'Partner/Customers/AddressChange'. Both
   processes has involved a task to validate the address. Finally the
   address verification is done by the same department/user. So this
   task has in both cases the category 'AddressVerification'. This
   allows the user to filter those tasks no matter where they where
   created.
