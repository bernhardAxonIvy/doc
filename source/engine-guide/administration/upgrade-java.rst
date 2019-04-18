Upgrade Java
************

For security reasons we recommend to keep the Java version up to date. The
engine should always run with the latest maintenance release of Java. However, a
major upgrade from Java, for example Java 8 to Java 9, is not possible.

If your Axon.ivy Engine runs with the Java runtime of the system. Then you only
have to upgrade that Java runtime.

Otherwise, the Axon.ivy Engine will run with the bundled Java runtime, then
proceed as follows:

#. Download the latest maintenance release of the Java Runtime that suits best
   for your OS and Ivy-Installation.
#. Install the downloaded JRE on the server (or on any computer with the same
   OS)
#. Move the whole content of the directory :file:`jre` in the installation
   folder of your Axon.ivy Engine to some other folder (to have a backup).
#. Copy the whole content of the folder :file:`jre` in the installation
   directory of the JDK to the :file:`jre` folder in the installation folder of
   your Axon.ivy Engine (the one you moved in the step above)
