Converters
----------

Converters are used to convert number or date/time values for string
representation and vice versa. If you want to display a ``Number`` or
``Date``/``DateTime`` process data attribute well formated in an input
widget then use the basic converters provided by the JSF core framework:
**convertNumber** and **convertDateTime**.

See this code fragment from an input form:

::

   <p:calendar id="Birthday" value="#{data.birthday}" navigator="true" 
           required="true" pattern="dd.MM.yyyy">
       <f:convertDateTime pattern="dd.MM.yyyy" />
   </p:calendar>            
       

Custom Faces Converters
^^^^^^^^^^^^^^^^^^^^^^^

Custom Faces Converters can be implemented as a Java class with a
specific ``FacesConverter`` annotation and then be used in your Axon Ivy
project.

Example:

::

       @FacesConverter("MyCustomFacesConverter")
       public class MyCustomFacesConverter implements Converter
