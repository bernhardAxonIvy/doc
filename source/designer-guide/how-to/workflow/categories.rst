.. _workflow-categories:

Categories
----------


Start, Case, and Task Categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A Start, Case, or Task can be assigned to a category. A category is a
structured String (e.g. ``Finance/Invoices``). It categorizes Starts, Cases, or Tasks into a
hierarchical structure. It is an
important identification attribute besides the name of a Start, Case, or Task.

The ``Category`` API allows getting localized information from the CMS.
For example, the ``name`` of the category ``Finance/Invoices`` is stored in the
CMS at ``/Categories/Finance/Invoices/name``.

To display a tooltip or an icon for a category on start lists configure
the ``tooltip`` and ``cssIcon`` in the CMS (i.e. ``/Categories/Finance/Invoice/cssIcon``).

The following example shows a simple use of a category on the Case level.
The API on the Task level is identical.

::

   ivy.case.setCategoryPath("Finance/Invoices");

   String categoryName = ivy.case.getCategory().getName(); // EN: "Invoices", DE: "Rechnungen"
   String categoryPath = ivy.case.getCategory().getPath(); // EN: "Finance/Invoices", DE: "Finanzen/Rechnungen"

.. tip::

   The project :ref:`WorkflowDemos <importing-demo-projects>` demonstrates the
   use of start, case, and task categorization. Typically the case category is
   used to categorize the overall process (i.e. Business Case) and the task
   category is used to categorize a single or set of unions of work. Because of the
   clear separation of the case and task categorization, even complex use cases can
   be handled.

   An example: In a mid-sized company, the process to request an address change
   from a customer exists in multiple forms. There is one in the customer portal
   and one for partner agencies. The process executed from the customer portal
   has the case category 'CustomerPortal/AddressChange'. The process executed by
   a partner agency has the case category 'Partner/Customers/AddressChange'.
   Both processes have involved a task to validate the address. Finally, the
   address verification is done by the same department/user. So, in both cases,
   this task has the category 'AddressVerification'. This allows the user to
   filter those tasks no matter where they have been created.
