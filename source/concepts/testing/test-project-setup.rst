.. _test-project-setup:

#. Add a new Axon.ivy Project

   - Enter the same name as the ``crm`` project but with a name postfix (e.g:
     |PROJECT|)

   - Make the |PROJECT| project depending on the
     ``crm`` project. Do so by select the the project ``crm`` as **Required
     Project** inside the creation wizard *(or later over: Definitions ->
     Deployment -> Required Projects)*.

#. Convert Projects to Maven Projects

   - Convert both projects (``crm`` and |PROJECT|) to Maven
     Projects. *(Right click on the project -> Configure -> Convert to Maven
     Project)*.

#. Define a test source directory

   - Open the :github-build-examples:`.classpath </crmTests/.classpath#L28-L33>`
     file. This can be found if you disable the ``.* resource`` filter inside
     the Project Tree (or open the file directory from the *File Explorer*).
     
     
   - Add the following lines to the :file:`.classpath` file:

     .. literalinclude:: includes/webtesting/webtesting-setup-classpath.xml
        :language: xml

   - Add a new folder :file:`src_test` to the |PROJECT| project *(Right
     click on the project -> New -> Folder)*
