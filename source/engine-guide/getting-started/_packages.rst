.. note::

  We provide Axon Ivy Engine in different packages:

  * **Windows** The preferable package for Windows. It comes with a bundled Java
    Runtime.

  * **All** For all platforms. It contains launchers for Windows and Linux. You
    need to install a Java Runtime by yourself as none is bundled. Axon Ivy will
    use the JRE pointed to by the operating system environment variable
    ``IVY_JAVA_HOME``. If not set, Axon Ivy falls back to the JRE pointed to by
    ``JAVA_HOME``.

  * **Slim All** Same as *All* but without the demo application.

  * **Docker** Docker Image for all platforms that can run Linux containers.

