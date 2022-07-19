.. note::

  Axon Ivy Engine is provided in different packages:

  * **Windows** Preferable package for Windows which comes with
    a bundled Java Runtime.

  * **All** For all platforms. Contains launchers for Windows
    and Linux systems, but no bundled JRE. Therefore you need to install
    a Java Runtime by yourself. Axon Ivy will pick the JRE configured via
    ``IVY_JAVA_HOME`` operating system environment variable. If that is not set, it will fall back to ``JAVA_HOME``.

  * **Slim All** Same as *All* but without the demo application.

  * **Docker** Docker Image for all platforms which can run Linux containers.

