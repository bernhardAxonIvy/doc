.. _systemdb-encryption:


Password Encryption
*******************

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

#. Configure the following Java system properties in :ref:`jvm-options`:

   .. literalinclude:: jvm.options
      :language: bash
      :linenos:

.. Warning::
    If you configure an own AES secret key after you have already stored
    technical passwords for external system then those passwords can no longer
    be decrypted and are useless. You have to reconfigure all those passwords
    again!
