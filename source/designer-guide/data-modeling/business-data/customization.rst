Customization
-------------

The BusinessData store serializes Java objects to schemaless JSON by
using `Jackson <https://github.com/FasterXML/jackson>`__. Ivy
DataClasses are predestinated to be serialized with Jackson. However,
Jackson is able to store and load any Java object hierarchy. The
following customizations could help to store your special plain old Java
objects, which may not be serialized by default.

.. warning::

   Jackson is not only used for BusinessData serialization, but also to
   provide and consume :ref:`integration-rest`. If you customize
   the serialization of Jackson, it will very likely also affect the
   serialization of Java objects which are used as input or return
   parameter of any REST service. If a serialization behavior must only
   be applied for the BusinessData serialization, declare it as :ref:`business-data-own-module`.

Custom constructor
~~~~~~~~~~~~~~~~~~

The deserializer expects an empty default constructor to recreate a Java
object. If you have a non default constructor (with parameters) or a
factory method to create instances of your object, Jackson annotations
are required so that the deserializer knows how to recreate the object.

For a sample see:
https://github.com/FasterXML/jackson-databind/#annotations-using-custom-constructor

Field without get/setter
~~~~~~~~~~~~~~~~~~~~~~~~

The ObjectMapper will only store fields as JSON which are public
accessible, either by getter methods or its field visibility. The
recreation of such field will fail if no setter is public accessible.
Via annotations either the serialization of this field can be avoided or
the recreation can be enabled.

**Avoid the serialization of a field:**

::

   public class MyCar{
       private List<Wheel> wheels;

       @JsonIgnore
       public List<Wheel> getWheels(){
           return wheels;
       }
   }

**Enable recreation of a setterless field:**

::

   public class MyCar{
       @JsonProperty
       private List<Wheel> wheels;

       public List<Wheel> getWheels(){
           return wheels;
       }
   }

.. _business-data-own-module:

Own module
~~~~~~~~~~

If simple annotations do not solve a serialization task, it's possible
to write a completely custom serializer and deserializer for Jackson. To
do so implement a class that extends
``com.fasterxml.jackson.databind.module.SimpleModule`` and add your
customization code into it. Register the class via SPI: create a file
``META-INF/services/com.fasterxml.jackson.databind.Module`` and store
the qualified name of your module implementation in this file.

However, if you need to serialize instances of a popular library there
could already be a Jackson module available that handles its
serialization. See
https://github.com/FasterXML/jackson#third-party-datatype-modules

If a module is already public available, simply add its JAR to the
classpath of your project.
