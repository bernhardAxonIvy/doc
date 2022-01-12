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


.. _serenity-themes:

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

If you want to change the colors of the **serenity-ivy** theme, please have a
look at the :ref:`branding` chapter.
