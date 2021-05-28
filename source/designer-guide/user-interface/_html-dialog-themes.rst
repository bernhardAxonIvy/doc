Html Dialog Themes
------------------

With themes the visual appearance of the application such as the color
scheme and the decoration of components can be changed. PrimeFaces comes
with a number of predefined themes where you can choose from. Or you can
create your own theme using the theme generator tool jQuery ThemeRoller.
To learn more about PrimeFaces themes, the web site `PrimeFaces
Themes <http://www.primefaces.org/themes.html>`__ is the right starting
point:

The theme called **modena-ivy** is configured as the default. New dialogs
will be created with the **serenity-ivy** theme, if you choose a standard
version 8 layout. However, you can easily configure another default theme with
the following steps:

-  The `PrimeFaces Community
   Themes <http://www.primefaces.org/themes.html>`__ and `Serenity Themes
   <https://www.primefaces.org/layouts/serenity>`__ are already included in the
   product. To use a own theme copy your themeXY.jar file into the folder
   **/webapps/ivy/WEB-INF/lib** of Designer and Engine respectively

-  The parameter ``primefaces.THEME`` can be set as a head
   attribute in your **template.xhtml** file.

   ::

      <h:head>
          ...
          <f:attribute name="primefaces.THEME" value="serenity-ivy"/>
          ...
      </h:head>

-  If not defined as head attribute, the theme can be configured by application.
   See :ref:`app-yaml`
-  The application configuration can also be overridden per session by using 
   ``ch.ivyteam.ivy.jsf.primefaces.IvyPrimefacesThemeResolver.setSessionTheme(String theme)`` 


Serenity Themes
^^^^^^^^^^^^^^^

If you choose a **serenity** theme, you have the possibility to choose all
default serenity themes or the **serentiy-ivy** theme. If you do so you have to
import an additional layout.css file:

::

  e.g. serenity-lime theme

  <h:head>
    <f:attribute name="primefaces.THEME" value="serenity-lime" />
    <h:outputStylesheet name="css/layout-lime.css" library="serenity-layout" />
    ...
  </h:head>

  or the serentiy-ivy theme

  <h:head>
    <f:attribute name="primefaces.THEME" value="serenity-ivy" />
    <h:outputStylesheet name="css/layout-ivy.css" library="serenity-layout" />
    ...
  </h:head>


Color Customizing
^^^^^^^^^^^^^^^^^

In our age, customizing is important so that a customer feels at home when he
opens a page where the company colors are used. And fortunately for everyone,
new technologies makes customizing much easier. 

With our **serenity-ivy** theme, we want to give you a theme that is very
neutral, but also allows you to easily change the colors according to your
wishes. For this purpose, we provide you `css-variables
<https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties>`_
that you can overwrite. 

To do so, you have to add a new **css file** to your resources and import it
into your template:

.. code-block::

   <h:outputStylesheet name="layouts/styles/color-customize.css" />

Within this file you can overwrite some colors. For example, the **primary-color**:

.. code-block::

   :root {
      --primary-color-h:195;
      --primary-color-s:100%;
      --primary-color-l:29%;
      --primary-color:hsl(var(--primary-color-h), var(--primary-color-s), var(--primary-color-l));
   }
   
.. note::

   We use `hsl colors <https://www.w3schools.com/colors/colors_hsl.asp>`_, and
   you will notice that some of them are split into the individual values. These
   are important for some color effects (e.g when you move the mouse over a
   button).

   For all possible variables, have a look at our :ref:`HtmlDialogDemos
   <importing-demo-projects>`. These use an additional file
   :dev-url:`color-customize.css </link/demos/blob/master/html-dialog/html-dialog-demos/webContent/layouts/styles/color-customize.css#L1-L54>`
   to override colors.
