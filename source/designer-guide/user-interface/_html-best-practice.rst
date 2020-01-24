HTML Best Practice
------------------

.. _html-provide-own-html-validation-scripts:

How to provide own HTML Validation Scripts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Inside the :ref:`Form Field Details Editor <html-configuring-form-field-details>` you
may specify client side validation scripts to validate user input before
submitting a form. If the validation fails (i.e. some user input is
invalid) then the form will not be submitted.

Out of the box, Axon.ivy allows you to select from a number of
predefined scripts, e.g. *Integer > 0* as shown below:

|image4|

Testing for *Integer > 0* may be fine for some cases, but what if you
need to test whether an integer value is greater than 10 and smaller
than 20? In this case you need to provide your own validation script to
test your specific input requirements.

HTML validation scripts are written in *JavaScript* and are stored in a
\*.js file. The script file contains a header line and a check function.
For example:

.. literalinclude:: includes/html-validation-javascript.js
  :language: javascript
  :linenos:

The header of the script file defines the name of the script as it is
displayed in the validation combo box of the *Form Field Details Editor*.

The JavaScript validation function must always define the same 3
parameters: ``field`` is the field that is being validated, ``msg`` is
the custom validation alert message that may optionally be defined when
selecting a validation script and ``loc`` is the language code that will
be provided by the Axon.ivy runtime system.

The above defined checks if the given input field contains a number
between 10 and 20 and if so, ``true`` is returned. If the value is not a
number or not between 0 and 20, then an alert message is shown to the
user and ``false`` will be returned (which will prevent the sending of
the form, as long as the field value is not correct).

In order for the script to be able to selected from the Form Field
Details Editor, it must be located in the
``webContent/scripts/validation`` folder of the Axon.ivy project where
it will be used:

|image5|

Once you have copied your script to this location, it will become
available in the validation selection combo box of the *Form Field
Detail Editor*:

|image6|

.. tip::

   If you don't like the behavior of any built-in scripts then you may
   change them as well. Simply edit the associated validation script
   file.

   You may generally edit the available validation scripts at any time.
   The changes will become effective immediately on save (unless
   browsers or other internet entities use a previously cached copy of
   an old script).

.. warning::

   Please note, that *JavaScript* must be enabled in your client's
   browsers in order for any validation scripts to work!

   Also make sure that the name of your script function and the name of
   your script file are exactly identical (including capitalization).
   The script will be referred by name of the file. If it does *not*
   match the actual function name, then the script will not be executed,
   and validation will not take place without any obvious error.

.. |image4| image:: /_images/user-interface-html/own-validation-script-1.png
.. |image5| image:: /_images/user-interface-html/own-validation-script-location.png
.. |image6| image:: /_images/user-interface-html/own-validation-script-2.png
