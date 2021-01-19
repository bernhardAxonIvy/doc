.. note::

  Axon.ivy Engine is provided in different packages:

  * **Windows** Preferable package for Windows which comes with
    a bundled Java Runtime.

  * **All** For all platforms with launchers for Windows
    and Linxus systems, but without a bundled JRE. Therefore you need to install
    a Java Runtime by yourself. Ivy will pick the JRE configured via
    ``IVY_JAVA_HOME`` operating system environment variable or if not set
    fallback to ``JAVA_HOME``.

  * **Slim All** Same as *All* but without a demo application.

  * **Docker** Docker Image for all platforms which can run Linux containers.

