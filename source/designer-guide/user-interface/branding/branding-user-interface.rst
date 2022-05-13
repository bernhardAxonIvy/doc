.. _branding-user-interface:

User Interface Branding
-----------------------

To make the branding work in your :ref:`html-dialogs`, be sure that they are
using the latest :ref:`default templates <html-dialog-layouts>` or your
templates are migrated to the :ref:`branding concept
<branding-apply-to-templates>`. 


.. _branding-apply-to-templates:

Apply custom styles and branding
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In :ref:`html-dialogs` all branding resources are loaded over the
**ivy-branding** library. This is already used by default in all
:ref:`default templates <html-dialog-layouts>`, but if you want to use it to in
your dialogs or own templates, you can do so by e.g:

.. literalinclude:: includes/ivy-branding.xhtml
    :language: html
    :linenos:

Of course, it's also possible to define your own images or css files which you
then can load over the **ivy-branding** resource loader. e.g. if you have a
custom error dialog whose image you want to brand differently depending on the
current application.


.. _branding-resources:

Resources
~~~~~~~~~

The following resources are currently used by the |ivy-engine|,
:ref:`html-dialogs` and :ref:`Portal <portal-guide>`:

- :file:`logo(.png)`: The main logo image
- :file:`logo_light(.png)`: Same as the main logo, but e.g. in our case with white writing
- :file:`logo_mail(.png)`: The logo which is taken by the default |ivy-engine| :ref:`email-notifications`
- :file:`logo_small(.png)`: The logo in small (square format recommended), used by e.g. error, login pages
- :file:`favicon(.png)`: The logo for the browser tab (square format recommended)
- :file:`background(.png)`: A background image, e.g. used by the :ref:`Portal <portal-guide>` login screen
- :file:`custom.css`: A :ref:`general CSS file <custom-css>` with variables to customize colors, etc.

The :file:`custom.css` can be used to override `css-variables
<https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties>`_.
If you're interested in more customization, there are more variables provided by
the :ref:`Portal <portal-guide>`.

.. warning::

   CSS variables are only supported in the :ref:`serenity-ivy
   <serenity-themes>` or the :ref:`freya-ivy <freya-themes>` themes.

.. tip::

  Images are supported with every known extension, e.g. :file:`.jpg`,
  :file:`.png`, :file:`.svg`. However, if there are multiple files with different
  extensions (e.g. a :file:`logo.png` and a :file:`logo.svg`) in the same
  directory, the first found will be chosen.


Example
^^^^^^^

Let's say we are in the company ACME and we want to brand a dialog with our logo
and primary color:

- So, we have the dialog:

  |branding-default-dialog|

- And want to have the :file:`logo.png`:

  |branding-acme-logo|

- And the :file:`custom.css`:

  .. literalinclude:: ./includes/custom-acme.css
    :language: css
    :linenos:

- If we :ref:`configure <branding-configuration>` it correctly we will get the
  following result: 

  |branding-acme-dialog|



.. |branding-acme-logo| image:: /_images/branding/Acme-corp.png
.. |branding-acme-dialog| image:: /_images/branding/dialog-acme-branding.png
.. |branding-default-dialog| image:: /_images/branding/dialog-without-branding.png
