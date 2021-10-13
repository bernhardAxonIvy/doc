Validators
----------

The JSF core framework provides a number of basic validators that can be
used to validate the entered values in an input form.

-  ``validateDoubleRange``
-  ``validateLength``
-  ``validateLongRange``
-  ``validateRegex``
-  ``validateRequired``

Example code fragment from an input form:

::

               <p:inputText value="#{data.zipCode}" id="ZipCode" required="true">
                   <f:convertNumber integerOnly="true" groupingUsed="false"/>
                   <f:validateLength minimum="4" maximum="5"/>
               </p:inputText>     


.. _html-dialog-client-side-validation:

Client Side Validation
^^^^^^^^^^^^^^^^^^^^^^

In some cases it makes sense to perform the validation of the entered
values before they are sent to the server (e.g. in an :ref:`offline-dialogs`).
For this reason, Primefaces provides a `client side
validation <http://www.primefaces.org/showcase/ui/csv/basic.xhtml>`__
framework. Client side validation is added as addition to the JSF
validators. Thus, it can give instant feedback - even while typing - to
the user. Since the JSF validators (see above) remain still active, the
data is also validated on server side after the form has passed client
side validation and is submitted.

Example code fragment from an input form:

::

               <p:inputText value="#{data.zipCode}" id="ZipCode" required="true">
                   <f:convertNumber integerOnly="true" groupingUsed="false"/>
                   <f:validateLength minimum="4" maximum="5"/>
                   <p:clientValidator event="keyup" />
                   <p:clientValidator event="blur" />
               </p:inputText>     
               <p:message for="ZipCode" display="text" showDetail="true" />
               
               <p:commandButton actionListener="#{logic.close}" value="Proceed" validateClient="true" icon="ui-icon-check"  />
           

.. tip::

   It's useful to add the client validators to the desired input field
   and also to trigger client side validation on the submit button. This
   way you make sure, that client side validation is performed during
   field modification, but also if the user tries to submit the from
   without any modification.

   In order to provide a good instant feedback, a message element
   dedicated to the input field might be quite helpful.
