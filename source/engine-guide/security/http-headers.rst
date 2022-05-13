HTTP Headers
============

The following additional security headers are recommended.

* **Strict-Transport-Security**: Set this header if the Engine should only be
  accessed over HTTPS (strongly recommended). For more information, see:
  `Strict-Transport-Security <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security>`_.
  You can adjust this in the embedded Tomcat with the pre-configured `Http Header Security Filter <https://tomcat.apache.org/tomcat-9.0-doc/config/filter.html#HTTP_Header_Security_Filter>`_
  in the :ref:`web-xml`

* **Content-Security-Policy**: Set this header if you want to reduce the risk of
  having an exploitable Cross-site scripting (XSS) vulnerability. With a
  Content-Security-Policy you can define from which locations external resources
  can be loaded and if scripts embedded in HTML can be executed. For more
  information, see: `Content Security Policy (CSP) <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP>`_. Check
  https://answers.axonivy.com/questions/2982 to see a CSP example with the
  embedded Tomcat.

* **Referrer-Policy**: Set this header if you want to control how or if the
  referrer is disclosed to other sites. For more information, see:
  `Referrer-Policy <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy>`_
