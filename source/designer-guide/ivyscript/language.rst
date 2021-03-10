IvyScript Language
==================

The Ivy scripting language IvyScript provides elements to write simple
computational expressions but also more complex elements to program
conditional-, loop- and exception handling blocks.

The :ref:`ivyscript-reference-data-types` are
defined for easy use. Especially, IvyScript bewares the programmer from
null pointer exceptions because ivy data objects are automatically
initialized to a default value. Read the section :ref:`ivyscript-nullhandling`
for more details.

IvyScript can also directly manipulate :ref:`Java objects <ivyscript-java-integration>`
in an easy way. Thus Java objects can be used without mapping and
auto-casting simplifies the usage.


Language Elements
-----------------

Conditions
~~~~~~~~~~

Conditional expressions
   Java style

   ::

      cond ? ifExpr : elseExpr
      
   Function style

   ::

      IF (cond, ifExpr, elseExpr)

Conditional statements
   ::

      if (cond) { ... } else { ... }


Loops
~~~~~

for
   ::

      for (init; cond; increment) 
      { 
      // do something here
       ... 
      }
                                  

   ::

      for (element: list)
       // do something here
      ... 
      }                       
                                  

while
   ::

      while (cond)
      {
       // do something here
      ... 
      }
                                  

Exception Handling
~~~~~~~~~~~~~~~~~~

IvyScript supports the try/catch/finally construct to handle exceptions
that happen while executing external Java code.

::

   try 
   {
   // some code here
   ... 
   } 
   catch (Exception ex) 
   {
   // compensate code
   ... 
   } 
   finally 
   { 
   // some code that is executed regardless of whether exceptions occurred 
   ... 
   }


.. _ivyscript-nullhandling:

Null handling / Automatic object creation
-----------------------------------------

IvyScript supports auto-initialization of the ivy basic types, i.e. you
don't have to create/initialize fields or variables explicitly with
``new`` after declaration. ``Strings`` are initialized to an empty
``String``, ``Numbers`` to zero, ``Lists`` to an empty ``List``.

Ivy composite types (ivy Data Classes) are automatically created. Due to
that automatic object creation, a null check expression like
``if(in.customer == null)`` is always false.

You can use the ``.#`` operator to suppress the automatic object
creation.

::

   if (in.#customer == null)
   {
     // object is null
   }

   if (in.#customer is initialized)
   {
     // object is not null or has been set to a non-default value
   }
                       

.. note::

   Any fields or variables of Java classes are also created
   automatically if they're referenced for the first time and if the
   type has a default constructor. Interface types and abstract class
   types are not auto-created because no instances can be created of
   such types in Java.

.. note::

   Inside IvyScript it is generally recommended to use ``is initialized``
   rather than comparing against
   ``null`` with the ``==`` operator. Because Java types may be ``null``
   and IvyScript base types never, this operator will always ensure the
   correct checking depending on the type of the tested object.


Axon Ivy also supports auto-initialization of AXIS types:

- ``org.apache.axis.types.Time`` to ``'00:00:00'``
- ``org.apache.axis2.databinding.types.Time`` to ``'00:00:00'``
- ``org.apache.axis.types.Duration`` to ``'PT0S'``
- ``org.apache.axis2.databinding.types.Duration`` to ``'PT0S'``

A ``java.util.Date`` is auto-initialized to a default value of ``'0001-01-01 00:00:00'``.

However, you do not have to compare the values of those types against
hard coded default values in your code, simply use **is initialized** to
find out if a value has been changed by the user or still bears the
default value.

::

   if (webserviceData.caseDuration is initialized)
   {
     // do something
      ... 
   }

