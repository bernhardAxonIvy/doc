.. _process-element-pi:

PI (Programming Interface) Activity
===================================

|image0| The *Program Interface Activity* element is located in the
*Activity* drawer of the process editor palette.

.. _ivy.processmodels.elements.pi.element:

Element Details
---------------

This element allows Axon Ivy to integrate custom-made software, legacy
systems, proprietary applications or any other external system through a
Java interface. The Program Interface element will instantiate a Java
class that implements the interface
:public-api:`IUserProcessExtension </ch/ivyteam/ivy/process/extension/IUserProcessExtension.html>`
and will
call the method ``perform`` each time a process arrives at the Program
Interface. The common way to implement a Program Interface bean is to
extend the abstract base class 
:public-api:`AbstractUserProcessExtension </ch/ivyteam/ivy/process/extension/impl/AbstractUserProcessExtension.html>`.
The interface also includes an inner editor class to parametrize the bean.
The documentation of the interface and the abstract class can be found
in the Java Doc of the Axon Ivy Public API.

.. note::

   Since Axon Ivy version 3.x this element has become somewhat obsolete
   since it has become very easy to create and call your own Java
   classes from IvyScript. However, the PI element still provides a
   standardized interface to a third party Java class and can provide a
   custom made editor for parametrization.


Inscription
-----------

.. include:: _tab-name.rst

PI Tab
~~~~~~

On this tab you define the Java class that implements the interface
:public-api:`IUserProcessExtension </ch/ivyteam/ivy/process/extension/IUserProcessExtension.html>`
and is called when the PI step gets executed.
Furthermore, you can specify exception handlers for errors such as
unreachable systems, insufficient privileges and more.

.. figure:: /_images/process-elements/program-interface-activity-tab-pi.png
   :alt: PI tab

   PI tab

Java Class to Execute
   The fully qualified name of the PI Java class implementing
   :public-api:`IUserProcessExtension </ch/ivyteam/ivy/process/extension/IUserProcessExtension.html>`.
   You can use default ``copy & paste``
   commands, open a Java Type Browser to search for the class or you use
   the predefined ``Wait`` class which just waits for a given period of
   time. Use the :ref:`new-bean-class-wizard`
   (|image2|) to create a new Java source file with an example
   implementation of the bean class.

   .. tip:::

      You can add a graphical configuration editor for the Java call
      (i.e. setting the parameter values) on the PI inscription mask.
      See section Tab Editor for more details.

Program error
   Occurs whenever an exception is thrown during the execution of the
   class. The error can be handled by a catching
   :ref:`process-element-error-start`.

Timeout
   Sets a timeout for the return call to the Java PI class.

Timeout error
   Occurs when the timeout is reached. The error can be handled by a
   catching :ref:`process-element-error-start`.

.. include:: _tab-editor.rst

Complete Code sample
--------------------

::

   public class MyOwnPiBean extends AbstractUserProcessExtension
   {
     /**
      * @see ch.ivyteam.ivy.process.extension.IUserProcessExtension#perform(ch.ivyteam.ivy.process.engine.IRequestId,
      *      ch.ivyteam.ivy.scripting.objects.CompositeObject,
      *      ch.ivyteam.ivy.scripting.language.IIvyScriptContext)
      */
     public CompositeObject perform(IRequestId requestId, CompositeObject in,
             IIvyScriptContext context) throws Exception
     {

       IIvyScriptContext ownContext;
       CompositeObject out;
       out = in.clone();
       ownContext = createOwnContext(context);

       String eventtyp = "";
       String linkId = "";
       String fieldValue = "";
       String user = "";

       StringTokenizer st = new StringTokenizer(getConfiguration(), "|");
       if (st.hasMoreElements())
         user = (String) executeIvyScript(context, st.nextElement().toString());
       if (st.hasMoreElements())
         eventtyp = (String) executeIvyScript(context, st.nextElement().toString());
       if (st.hasMoreElements())
         linkId = (String) executeIvyScript(context, st.nextElement().toString());
       if (st.hasMoreElements())
         fieldValue = (String) executeIvyScript(context, st.nextElement().toString());

       // do something with the values
       return out;
     }

     public static class Editor extends JPanel implements IProcessExtensionConfigurationEditorEx
     {
       private IProcessExtensionConfigurationEditorEnvironment env;
       private IIvyScriptEditor editorUser;
       private IIvyScriptEditor editorEventTyp;
       private IIvyScriptEditor editorLinkId;
       private IIvyScriptEditor editorFieldValue;

       public Editor()
       {
         super(new GridLayout(4, 2));
       }

       /**
        * Sets the configuration
        * @param config the configuration as an String
        */
       public void setConfiguration(String config)
       {
         StringTokenizer st = new StringTokenizer(config, "|");
         if (st.hasMoreElements())
           editorUser.setText(st.nextElement().toString());
         if (st.hasMoreElements())
           editorEventTyp.setText(st.nextElement().toString());
         if (st.hasMoreElements())
           editorLinkId.setText(st.nextElement().toString());
         if (st.hasMoreElements())
           editorFieldValue.setText(st.nextElement().toString());
       }

       /**
        * Gets the component attribute of the Editor object
        * @return this
        */
       public Component getComponent()
       {
         return this;
       }

       /**
        * Gets the configuration
        * @return The configuration as an String
        */
       public String getConfiguration()
       {
         return editorUser.getText() + "|" + editorEventTyp.getText() + "|" +
                 editorLinkId.getText() + "|" + editorFieldValue.getText() + "|";
       }

       /**
        * @return boolean
        */
       public boolean acceptInput()
       {
         return true;
       }

       public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
       {
         this.env = env;
         editorUser = env.createIvyScriptEditor(null, null, "String");
         editorEventTyp = env.createIvyScriptEditor(null, null, "String");
         editorLinkId = env.createIvyScriptEditor(null, null, "String");
         editorFieldValue = env.createIvyScriptEditor(null, null);

         add(new JLabel("User"));
         add(editorUser.getComponent());
         add(new JLabel("Event Typ"));
         add(editorEventTyp.getComponent());
         add(new JLabel("Link-Id"));
         add(editorLinkId.getComponent());
         add(new JLabel("Feldwert"));
         add(editorFieldValue.getComponent());
       }
     }
   }

.. |image0| image:: /_images/process-elements/program-interface-activity.png
.. |image2| image:: /_images/process-elements/button-new-bean-class.png
