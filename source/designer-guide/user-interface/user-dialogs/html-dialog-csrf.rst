.. _html-dialogs-csrf:

CSRF Protection
---------------

HTML Dialogs using the JSF technology are well protected from Cross-site Request
Forgery (CSRF) attacks:

- JSF is since version 2.0 quite well protected from CSRF attacks through its
  ``ViewState`` concept, using a randomly generated ID as its value.
- Since JSF 2.2 even non-postback views, stateless views and views with client
  side state can be or are protected by default.
- Postback views are automatically protected; non-postback views need to be
  configured to be protected, but are not a valid attack scenario.

.. note::

  As the the JSF ``ViewState`` concept does not base on the usual X-CSRF header token
  schema, some penetration testing tools will show a false vulnerability for CSRF
  attacks. They expect a header token in the server response, which is not needed in
  this case and, if included, will be ignored by the Ivy Engine.
