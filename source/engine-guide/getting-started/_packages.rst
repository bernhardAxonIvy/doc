.. note::

  We provide Axon Ivy Engine in different packages:

  * **Docker** Docker Image for all platforms that can run Linux containers.

  * **Debian** for Debian-based Linux systems. This is a :file:`.deb` package
    which will install the Axon Ivy Engine into the Debian standard paths,
    define the engine as a service, and start that service.
  
  * **Linux** For all platforms (including Windows). It contains launchers for
    both Windows and Linux. No Java Runtime (JRE) is bundled, thus, you need to
    install one yourself. Axon Ivy Engine will use the JRE pointed to by the
    operating system environment variable ``IVY_JAVA_HOME``. If not set, Axon
    Ivy Engine falls back to the JRE pointed to by ``JAVA_HOME``.

 * **Windows** The preferable package for Windows. It comes with a bundled Java
    Runtime; otherwise, it is identical to the Linux package. So, if you want to
    supply your own JRE, use the Linux package.

  