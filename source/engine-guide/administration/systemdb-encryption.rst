.. _system-db-encryption:


System Database Encryption
**************************

User passwords are stored encrypted in the system database. Passwords of
Axon.ivy users are hashed by using the bcrypt algorithm.

Passwords of technical users that are used to communicate with external systems
are encrypted using the AES algorithm. The secret key for the AES algorithm is
by default created automatically by using a secure random generator. However, it
is possible to provide an own secret key as follows:

#. Create your own AES secret key and store it in a key store file by using the
   Java keytool:

    .. code-block:: bash

        keytool -genseckey -alias aes -keyalg AES -keysize 128 -storepass changeit -storetype JCEKS -keystore keystore.jceks

#. Configure the following Java system properties in the launcher configuration:

    **ch.ivyteam.ivy.persistence.keystore.file**
        The path to the key store that holds the AES secret key. E.g. ``keystore.jceks``
    **ch.ivyteam.ivy.persistence.keystore.password**
        The password needed to read the key store file. Default ``changeit``
    **ch.ivyteam.ivy.persistence.keystore.alias**
        The name of the key to read from the key store file. Default ``aes``
    **ch.ivyteam.ivy.persistence.keystore.type**
        The type of the key store. Default ``JCEKS``

.. Warning::
    If you configure an own AES secret key after you have already stored
    technical passwords for external system then those passwords can no longer
    be decrypted and are useless. You have to reconfigure all those passwords
    again!
