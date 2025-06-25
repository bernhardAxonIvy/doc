.. _security-http-headers:

HTTP Headers
============

We recommend using the following additional security headers. Mostly it makes
most sense to configure such headers in your :ref:`reverse-proxy`. However, we
also give you the possibility to configure them inside of the embedded Web
Server via the :code:`WebServer.HttpHeaders` key in the :ref:`ivy-yaml`. You can
also add more headers than the ones we list below.

* **Strict-Transport-Security (HSTS)**: Set this header if the Engine is to be
  accessed via HTTPS only. For more information, see: `Strict-Transport-Security
  (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security>`_.

* **Content-Security-Policy (CSP)**: Set this header if you want to reduce the
  risk of having an exploitable Cross-site scripting (XSS) vulnerability. With a
  Content-Security-Policy, you can define from which locations external
  resources can be loaded and if scripts embedded in HTML can be executed. For
  more information, see: `Content Security Policy (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP>`_. If you use the
  :code:`WebServer.PrimeFaces.ContentSecurityPolicy` configuration in the
  :ref:`ivy-yaml`, we use the CSP functionality from `PrimeFaces
  <https://primefaces.github.io/primefaces/13_0_0/#/core/contentsecuritypolicy>`_.

* **X-Frame-Options**: We set this header per default with :code:`SAMEORIGIN` as
  we use iFrames. For more information, see: `X-Frame-Options (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options>`_.

* **X-Content-Type-Options**: We set this header per default with
  :code:`nosniff`. For more information, see: `X-Content-Type-Options (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Content-Type-Options>`_.

* **Referrer-Policy**: We set this header per default with
  :code:`strict-origin-when-cross-origin`. For more information, see:
  `Referrer-Policy (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy>`_

* **Cross-Origin-Opener-Policy (COOP)**: Set this header to restrict the browser
  context. For more information, see: `Cross-Origin-Opener-Policy (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Opener-Policy>`_.

* **Cross-Origin-Embedder-Policy (COEP)**: Set this header to restrict the
  browser from loading and embedding cross-origin resources. For more
  information, see: `Cross-Origin-Embedder-Policy (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Embedder-Policy>`_.

* **Cross-Origin-Resource-Policy (CORP)**: Set this header to indicate that the
  browser should block cross-origin or cross-site requests to the given
  resource. For more information, see: `Cross-Origin-Resource-Policy (MDN)
  <https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Resource-Policy>`_.
