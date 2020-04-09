.. _testing:

Testing
=======

Writing test code has a bad reputation, however they can make your life much
easier. Think about the following points:

- Tests can make the **functionality of a software reliable**

- **Quality** can be maintained

- **Repetitive tasks** can be reduced to a minimum. Let the computer do it!

- Ensure that the software **does what it supposed to do** (e.g after a code
  change or even a platform update).

Write good software without tests is nearly impossible and we want give you the
ability to write tests for your software as easy as possible. Let’s get started!


Web Testing
-----------

Consider the following use case: You have build a workflow app containing
multiple user dialogs. Do you really want to click always through the full
process, if you maybe change a part of it? At least you should make sure that
the functionality (happy path) of this process is still ensured.

**Web Integration tests** will always follow the same steps and can be highly
automated.


How to write a Web Test
~~~~~~~~~~~~~~~~~~~~~~~

The first step in writing your own web tests is to create a new test project.

.. tip::

  The following guide is based on a :github-build-examples:`demo project <>` and
  uses the name ``crm`` for the project to be tested and the name
  ``crmIntegrationTests`` for the one containing the tests. 
  
  Since this documentation only shows how to setup a test project and perform a
  simple test, you should take a look at the demo project.
  

Setup test project
^^^^^^^^^^^^^^^^^^

The following step-by-step instructions show you how to create a new test
project:

#. Add a new Axon.ivy Project

   - Enter the same name as the ``crm`` project but with a name postfix (e.g:
     ``crmIntegrationTests``)

   - Make the ``crmIntegrationTests`` project depending on the
     ``crm`` project. Do so by select the the project ``crm`` as **Required
     Project** inside the creation wizard *(or later over: Definitions ->
     Deployment -> Required Projects)*.

#. Convert Projects to Maven Projects

   - Convert both projects (``crm`` and ``crmIntegrationTests``) to Maven
     Projects. *(Right click on the project -> Configure -> Convert to Maven
     Project)*.

#. Define a test source directory

   - Open the :github-build-examples:`.classpath </crmIntegrationTests/.classpath#L28-L33>`
     file. This can be found if you disable the ``.* resource`` filter inside
     the Project Tree (or open the file directory from the *File Explorer*).
     
     
   - Add the following lines to the :file:`.classpath` file:

     .. literalinclude:: includes/webtesting-setup-classpath.xml
        :language: xml

   - Add a new folder :file:`src_test` to the ``crmIntegrationTests`` project *(Right
     click on the project -> New -> Folder)*

#. Add test util dependencies

   - Open the :github-build-examples:`pom.xml </crmIntegrationTests/pom.xml#L25-L41>`
     file of the ``crmIntegrationTests`` project *(Right click on pom.xml or Deployment
     -> Open With -> Maven POM Editor)* 
    
   - Add the following dependency and repository to the :file:`pom.xml` file:

     .. literalinclude:: includes/webtesting-setup-pom.xml
        :language: xml

#. Add a test class

   - Create a new class (e.g :github-build-examples:`WebTestRegistrationForm
     </crmIntegrationTests/src_test/ch/ivyteam/integrationtest/WebTestRegistrationForm.java>`)
     inside of the :file:`src_test` folder *(Right click on 'src_test' -> New ->
     Class, e.g 'WebTest' as name)*
   
   - Add the following code inside:

     .. literalinclude:: includes/webtesting-setup-test.java
        :language: java

#. Run test

   - Make sure the engine is started with your projects

   - To run this test right-clicking inside this class -> Run As -> JUnit Test

   - A new **JUnit** View should have been opened and the test should be green.


Write Web Test
^^^^^^^^^^^^^^

Let's start by extending our test class added above with a
:github-build-examples:`real test implementation
</crmIntegrationTests/src_test/ch/ivyteam/integrationtest/WebTestRegistrationForm.java#L22-L39>`.
First we need to start a process (you can use the ``EngineUrl`` utility from the
:ref:`web-tester` to do this). 

This process opens a dialog with two input fields (``firstname`` and
``lastname``) and a submit button. After submitting, a second dialog with your
inputs is displayed. 

.. literalinclude:: includes/webtesting-test-extend.java
  :language: java

.. figure:: /_images/testing/webtesting-run.gif

.. tip::

  The :ref:`@IvyWebTest <web-tester>` annotation can be configured (e.g to choose your ``browser``
  or change if it should be started ``headless``).


Select, Do and Check
^^^^^^^^^^^^^^^^^^^^

Now let's take a look how this test works. Basically, there are three things
you need to know:

- **Select** an element
- **Do an action** with this selected element
- **Check a condition** on this selected element


Select
""""""

To work with a **single element** you must first select the correct one.
Normally you can use the ``By.id`` selector for this:

.. code-block:: java

  $(By.id("form:submit")); //Find element by id selector

.. tip::

  To evaluate the real id of an element you can use the **Developer Tools** of
  your browser.

  There are much more options how you can use selectors, e.g you
  can select multiple elements:

  .. code-block:: java

    $$(By.cssClass("ui-outputlabel")); //Find all <p:outputLabel> elements
  
  Take a look at the :github-build-examples:`demo project
  </crmIntegrationTests/src_test/ch/ivyteam/integrationtest/WebTestOrderForm.java#L114-L156>`
  to see what else is possible.


Do an action
""""""""""""

On the selected element you can perform some actions:

.. code-block:: java

  $(By.id("form:submit")).click();            //click on button
  $(By.id("form:lastname")).clear();          //clear input field
  $(By.id("form:lastname")).sendKeys("Test"); //set input value


Check a condition
"""""""""""""""""

On your selected element you can check some conditions too (e.g is the element
*visible* or contains a specific *value*):

.. code-block:: java

  $(By.id("form:lastname")).shouldHave(value("Test")); //input field should have value "Test"

.. tip::

  You can check multiple conditions on an item or you can check something
  before perform an action on the item:

  .. code-block:: java

    //button should be enabled before click on it
    $(By.id("form:submit")).shouldBe(enabled).click();
    //<h:outputText> element should be visible and have text "Unit Test"
    $(By.id("form:newCustomer")).shouldBe(visible, text("Unit Test"));

  Take a look at the :github-build-examples:`demo project
  </crmIntegrationTests/src_test/ch/ivyteam/integrationtest/WebTestOrderForm.java#L164-L181>`
  to see what else is possible.


Run automated
~~~~~~~~~~~~~

Now let's look at how you can run your web tests automated
(:ref:`continuous-integration`). This is important if you want fast feedback on
breaking changes, maybe introduced by a team member. 


.. _webtesting-maven-build:

Module build
^^^^^^^^^^^^

Both projects needs to be compiled in the same run. For this we need firstly to
setup a maven module build:

#. Create maven module

   - Delete projects ``crm`` and ``crmIntegrationTests`` from your Designer
     workspace.
   - Open your workspace folder and move both projects into an new folder, e.g
     :file:`compile-test`

   - Add :file:`pom.xml` file into :file:`compile-test` folder.

   - Add following to the :github-build-examples:`pom.xml </pom.xml>`
     file (ensure the correct **modules** ``crm`` and ``crmIntegrationTests`` are
     set):

     .. literalinclude:: includes/webtesting-maven-module.xml
        :language: xml

   - Your :github-build-examples:`folder structure <>` should look like the
     following:

     .. code-block:: none

        workspace/
          compile-test/
            crm/
            crmIntegrationTests/
            pom.xml

#. Run module build in IDE

   - In your Designer open the **Import** Wizard, then **Existing Maven
     Projects**

   - Select :file:`compile-test/pom.xml` with sub projects (``crm`` and
     ``crmIntegrationTests`` should be visible here) and click **Finish**

   - Right-click on ``compile-test`` -> Run As -> Maven build

   - Set **Goals** to ``clean verify`` and click **Run**

   - This should trigger a run which starts with something like:

     .. literalinclude:: includes/webtesting-maven-run.log
        :language: none

     But it ends with some **Errors**. To fix those let's continue with the next
     steps.


Run integration tests
^^^^^^^^^^^^^^^^^^^^^

To run our tests within a maven build, we need to start an engine, deploy the
``crm`` project to it, and then stop the engine after the tests are finished. We can
define these steps in the :github-build-examples:`pom.xml
</crmIntegrationTests/pom.xml>` file of our ``crmIntegrationTests`` project:

#. Set :github-build-examples:`test sources dir
   </crmIntegrationTests/pom.xml#L44-L45>` and :github-build-examples:`test
   application name </crmIntegrationTests/pom.xml#L14-L16>`
   
   .. literalinclude:: includes/webtesting-maven-init.xml
      :language: xml

#. :github-build-examples:`Start </crmIntegrationTests/pom.xml#L52-L58>`
   an engine

   .. literalinclude:: includes/webtesting-maven-start.xml
      :language: xml

#. :github-build-examples:`Deploy </crmIntegrationTests/pom.xml#L59-L70>`
   our ``crm`` project to the engine

   .. literalinclude:: includes/webtesting-maven-deploy.xml
      :language: xml

   .. tip::

     In the demo project we use the :github-build-examples:`dependency plugin
     </crmIntegrationTests/pom.xml#L102-L113>` to evaluate the **deployFile**
     attribute.

#. :github-build-examples:`Stop </crmIntegrationTests/pom.xml#L71-L77>`
   the engine after the tests are finished

   .. literalinclude:: includes/webtesting-maven-stop.xml
      :language: xml

#. Add the :github-build-examples:`test runner plugin </crmIntegrationTests/pom.xml#L80-L101>`

   .. literalinclude:: includes/webtesting-maven-surefire.xml
      :language: xml

#. Run module build in IDE

   - Try to run the module build as before in second step of the
     :ref:`webtesting-maven-build` section. The build should now succeed.


Further Resources
~~~~~~~~~~~~~~~~~

If you want to know more about web testing, take a look at the
:github-build-examples:`second test in our demo project
</crmIntegrationTests/src_test/ch/ivyteam/integrationtest/WebTestOrderForm.java>`
or at our `other demo projects
<https://github.com/ivy-samples/ivy-project-demos>`__ and how they are tested.

If you want to learn more about how to build a CI/CD pipeline, take a look at
the **CI/CD videos** in our :dev-url:`Tutorial section </tutorial>`.


Selenium
^^^^^^^^

Selenium is open source and works across different browsers and platforms. To
communicate with the browser, selenium provides the **WebDriver** specification. 

In our tests we use the `Selenide <https://selenide.org/>`_ (`GitHub
<https://github.com/selenide/selenide>`_, `API
<https://selenide.gitbooks.io/user-guide/content/en/selenide-api/selenide.html>`_)
framework, which is based on the Selenium WebDriver. If you’re more familiar
with plain Selenium tests the following comparison can give you a quick overview
about the differences and benefits: `Selenide vs Selenium
<https://github.com/selenide/selenide/wiki/Selenide-vs-Selenium>`_. Or you can
simply write your tests with the normal Selenium API by accessing the driver
object:

.. code-block:: java

  WebDriver driver = WebDriverRunner.getWebDriver();


.. _web-tester:

Web-Tester
^^^^^^^^^^

With the `web-tester <https://github.com/axonivy/web-tester>`__
we provide you the annotation ``@IvyWebTest``, which sets up the browser
connection for you. It can be configured with some parameters:

.. code-block:: java

  //Default (same as simple @IvyWebTest)
  @IvyWebTest(browser = "firefox", headless = true, reportFolder = "target/selenide/reports")

- **browser**: The browser which should run the test e.g: chrome, firefox, ie,
  phantomjs, htmlunit, safari, opera

- **headless**: Controls if the browser should start with a UI or not.

- **reportFolder**: Automatic screenshots will be taken, when a test fails. This
  folder defines where they are saved.
