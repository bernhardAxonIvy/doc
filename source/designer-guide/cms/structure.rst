CMS Structure
=============

A Content Object is identified by its **path** which is expressed as an
URI of the form ``/Labels/Common/CustomerName``. The first ``/``
represents the root of the CMS whereas the rest forms a recursive tree
of so called **Content Objects**. Each Content Object can contain other
Content Objects thus forming the recursive structure of the CMS. Each
Content Object has one or multiple **Content Object value(s)**. A Content
Object Value is always bound to a specific locale. A locale is a
combination of a language identifier and a region identifier. For
example the locale ``en_US`` represents the language English for the US
region. So, you can define values for different languages but as well
for different regions which use the same language (see how this is used
for the :ref:`resolution of CMS content <cms-content-resolution>` at
runtime).

In Axon Ivy, each project has its own CMS. Content Objects are looked up
by means of the Content Object URI mentioned above. If the lookup for a
Content Object fails in the current project, then Axon Ivy will
recursively lookup the URI in the CMS's of the required projects
(breadth-first).

.. tip::

   Put common content that you use in multiple projects into a base
   project and make your other projects dependent on the base project.
   Then you can share and re-use all Content Objects from the base
   project.
