.. _user-dialog-interface-editor:

User Dialog Interface Editor
----------------------------

The User Dialog Interface editor is used to define the *API (Application
Programming Interface*) of a User Dialog. Since User Dialogs are
components which are intended for reuse, they must define a stable
interface on which other clients (i.e. processes or User Dialogs) can
rely upon. An interface is defined independently from the implementation
of the User Dialog and therefore separates the way of *how* a User
Dialog performs its work from the declaration of *what* it is capable to
do.

Accessibility
^^^^^^^^^^^^^

|axon-ivy| Project Tree -> double click on the *Interface* node below a
User Dialog in the tree.


Interface tab
^^^^^^^^^^^^^

The User Dialog Interface editor consists of the sections for the
declaration of :ref:`user-dialog-interface-start-methods` and
:ref:`user-dialog-interface-methods`. Each section can
have multiple entries.

.. tip::

   It is strongly recommended to write a short description for each
   declared interface part in the *Description* area of the details
   pane. This will help clients of the User Dialog to understand the
   characteristics of the respective part.


.. _user-dialog-interface-start-methods:

Start Methods
^^^^^^^^^^^^^

Start methods define different entry points into a User Dialog. A User
Dialog can be started with different parameters and return different
values, depending on which entry point is chosen at call time.

|Dimage1|

To add/edit a *Start method* you must add/edit a 'Init start' on
the according process. You must provide a *name* as well as *input* and
*output* parameters.

.. tip::

   If the *name/parameter* combination (the so called *signature*) of
   the Start method as defined so far is identical to the signature of
   another Start method, then a validation error will be displayed. The
   warning disappears when either arguments are added or argument types
   are changed or if the name of the method is altered accordingly, i.e.
   the signatures are no more identical.

.. note::

   Start methods visible in the User Dialog Interface can be selected
   inside a :ref:`process-element-user-dialog` when the
   respective User Dialog is chosen to be started.

   |Dimage2|


.. _user-dialog-interface-methods:

Methods
^^^^^^^

In the *Methods* section of the User Dialog Interface Editor the regular
interaction methods of a User Dialog are visualized. The declaration of
*Methods* is absolutely similar to the declaration of *Start methods*,
with the sole difference that a *Method* can only have a single return
parameter (or none). The *Methods* can only be called from the
:ref:`process-element-user-dialog-method-start`.


Metadata tab
^^^^^^^^^^^^

You can define a textual description, a set of tags (keywords) for each
User Dialog. These can be searched by the :ref:`Ivy search
page <designer-search>`.

Description
   A description of the User Dialog

Tags
   The tags are a space separated list of keywords used to categorize
   User Dialogs. We suggest to define a vocabulary of tags within your
   team/company to always use the same terms.

.. |Dimage1| image:: /_images/user-interface/interface-editor-start-methods.png
.. |Dimage2| image:: /_images/user-interface/interface-editor-start-methods-use.png
