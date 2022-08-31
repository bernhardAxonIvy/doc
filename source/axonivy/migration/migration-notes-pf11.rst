.. _primefaces-11-migration:

Primefaces 11 Migration
=======================

Breaking Changes from version 7 to 11
-------------------------------------

Unfortunately, Primefaces made some breaking changes in its latest versions: 

* UI components have been removed or were deprecated.
* UI components have different CSS classes.
* Attributes of UI components have been removed, moved, renamed or have a different behavior.
* Java API have been removed or changed.

This means that your user interfaces are most likely broken. 

For a complete list of all changes see `Primefaces 11 Migration Guide <https://primefaces.github.io/primefaces/11_0_0/#/../migrationguide/migrationguide>`_

How to avoid migration pain
---------------------------
 
* Use the provided standard themes :ref:`freya-ivy <freya-themes>` or :ref:`serenity-ivy <serenity-themes>`. 
* Use as few own CSS rules as possible. 
* Use as few different Primefaces components as possible. 

Project Converter |tag-project-auto-convert|
--------------------------------------------

To mitigate the migration pain, we have built a :ref:`project converter <project-convert-wizard>` 
that fixes the most important of the breaking changes.

To start the :ref:`converter <project-convert-wizard>` select a project in your Designer and press the context menu *Convert*. 
Then select *Convert project to use latest Primefaces version* and press the *Next >* and then the *Convert* button. 
Review the applied changes in the conversion log or the *Git Staging* view.

The :ref:`project converter <project-convert-wizard>` will fix most common broken Java APIs in your Java, Process (IvyScript) and Data Class files. 
It also fixes renamed UI components and attributes. 

However, some attributes have been moved from one UI component to a child component or have a different behavior. 
Those changes cannot be fixed automatically. 
Check your :ref:`WebTests <web-testing>` or manually test your UI components to find problems and then fix them manually.

Common Manual Migration Tasks
-----------------------------

Component p:layout removed
""""""""""""""""""""""""""

See `Primefaces 10 Migration Notes - Layout <https://primefaces.github.io/primefaces/10_0_0/#/../migrationguide/10_0_0?id=layout>`_

Use pure CSS instead (e.g. with the `Primefaces Grid System <https://www.primefaces.org/showcase/primeflex/grid.xhtml>`_). 
Or, the similar component from Primefaces Extensions `pe:layout <https://www.primefaces.org/showcase-ext/sections/layout/fullPageLayoutAttr.jsf>`_.

Component p:themeSwitcher removed
"""""""""""""""""""""""""""""""""

See `Primefaces 10 Migration Notes - ThemeSwitcher <https://github.com/primefaces/primefaces/blob/master/docs/migrationguide/10_0_0.md#themeswitcher>`_

Use a ``p:selectOneMenu`` to switch the theme. See example provided in the link above.
 
Component pe:gravatar removed
"""""""""""""""""""""""""""""
 
See `Primefaces Extension 10 Migration Notes <https://github.com/primefaces-extensions/primefaces-extensions.github.com/wiki/Migration-Guide#1000---1001>`_
 
Instead of ``pe:gravatar`` use new Primefaces component ``p:gravatar``

Sorting and filtering of component p:dataTable and p:treeTable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

See `Primefaces 10 Migration Notes - DataTable <https://primefaces.github.io/primefaces/10_0_0/#/../migrationguide/10_0_0?id=datatable>`_

Sorting and filtering of of component ``p:dataTable`` and ``p:treeTable`` has been changed. 
Instead of defining the attributes ``sortField``, ``sortOrder``, ``sortFunction`` and ``filterBy`` on the ``p:dataTable`` component 
you now have to define them on the ``p:column`` component.

Example:

Primefaces 7:

  .. code:: xml
  
    <p:dataTable var="person" value="#{data.persons}" sortField="#{person.name}" sortOrder="ASCENDING" filteredBy="#{person.surname}">
      <p:column><h:outputText value="#{person.name}"/></p:column>
      <p:column><h:outputText value="#{person.surname}"/></p:column>
    </p:dataTable>

Primefaces 11:

  .. code:: xml
    
    <p:dataTable var="person" value="#{data.persons}">
      <p:column field="#{person.name}" sortOrder="ASCENDING"><h:outputText value="#{person.name}"/></p:column>
      <p:column sortBy="#{person.surname}" filterBy="#{person.surname}"><h:outputText value="#{person.surname}"/></p:column>
    </p:dataTable>
    
In rare situations, it is not possible to set the filter and sort attributes on the ``p:column`` component. 
In this case you can use the attributes ``sortBy`` and ``filterBy`` on the ``p:dataTable`` component. 
However, these attributes need to be bound to objects of type ``SortMeta`` and ``FilterMeta``. 
The following example shows how to use them:

  .. code-block:: xml
  
    <p:dataTable sortBy="#{bean.sortById}" id="table" value="#{bean.dataModel}" var="table" >

    ...
  
    <p:dataTable />       
    
  .. code-block:: java
  
    @ManagedBean
    @ViewScoped
    public class Bean {
      private SortMeta buildSortMeta(String field, boolean isSortDescending) {
        return SortMeta.builder()
          .field(field)
          .order(isSortDescending ? SortOrder.DESCENDING : SortOrder.ASCENDING)
          .build();
      }
  
      public SortMeta getSortById() {
        return buildSortMeta("ID", false);
      }
    }
      
Similar for ``p:treeTable``.

Attribute columns of p:panelGrid
""""""""""""""""""""""""""""""""

Either attribute ``columns`` must be set on a ``p:panelGrid`` or a ``p:row`` child component must be defined.

Component Carousel and Galeria
""""""""""""""""""""""""""""""

See `Primefaces 11 Migration Notes - Carousel and Galeria <https://primefaces.github.io/primefaces/10_0_0/#/../migrationguide/11_0_0?id=carousel-and-galleria>`_

Most of the attributes have been removed or renamed. 
See `Carousel <https://primefaces.github.io/primefaces/10_0_0/#/components/carousel?id=carousel>`_ or
`Galeria <https://primefaces.github.io/primefaces/10_0_0/#/components/galleria?id=galleria>`_ documentation for details.

Java class TreeUtils removed
""""""""""""""""""""""""""""

See `Primefaces Forum <https://forum.primefaces.org/viewtopic.php?f=3&p=200134>`_
 
Copy the source code from the original 
`TreeUtils class <https://github.com/primefaces/primefaces/blob/10.0.0/src/main/java/org/primefaces/util/TreeUtils.java>`_ 
into your project. 

Components have different CSS classes
"""""""""""""""""""""""""""""""""""""

Some components have new CSS classes. 
You may need to adjust your CSS rules and :ref:`WebTests <web-testing>` if they select a component by its CSS classes.

Font-Awesome upgraded to 6.1.0
""""""""""""""""""""""""""""""

See `Fontawesome 4 Migration Notes <https://fontawesome.com/docs/web/setup/upgrade/upgrade-from-v4>`_

You should use the new CSS class ``fa-solid`` instead of ``fa``.

Example:

Font-Awasome 4.7

  .. code:: xml
    
    <i class="fa fa-camera-retro"> 

Font-Awesome 6.1

  .. code:: xml
    
    <i class="fa-solid fa-camera-retro"> 

However, because we provide a compatibility library the old ``fa`` class should still work.

JQuery icons removed
""""""""""""""""""""

The JQuery icons (CSS classes ``ui-icon-*``) are no longer supported. 
Instead, use icons of the supported icon libraries:

* `Primefaces Icon library <https://www.primefaces.org/showcase/icons.xhtml>`_
* `Fontawesome <https://fontawesome.com/>`_
* `Streamline <https://www.streamlinehq.com/>`_

Rendering time changed
""""""""""""""""""""""

Some components now need more time to render.
You may need to adjust the timeout settings of your :ref:`WebTests <web-testing>`. 

ChartJS library upgraded
""""""""""""""""""""""""

The integrated ChartJS library has been upgraded. 
If you have used additional ChartJS plugins you may need to upgrade them as well.
  
