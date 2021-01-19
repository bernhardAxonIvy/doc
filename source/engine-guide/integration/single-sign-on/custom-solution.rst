.. _sso-custom-solution:

Custom SSO Solution
===================

Our built-in solutions may not fit your needs. Therefore you are able to
implement your own Single Sign-on solution by implementing an own Tomcat Valve
and register this Valve in :ref:`context-xml`. A Valve is something which will
be executed in every request against Axon.ivy Engine. This is our Single Sign-on
valve. Use it as template and adapt your needs:

.. literalinclude:: ../../../../../workspace/ch.ivyteam.ivy.webserver/src/ch/ivyteam/ivy/webserver/security/SingleSignOnValve.java
    :language: java
