.. _config-systemdb:

System Database
===============

An untouched |ivy-engine| runs in demo mode. In consequence workflow data is
never stored, but kept in a memory database. To run a productive engine an
external system database must be connected, where workflow data will be stored.

To define the database of the |ivy-engine|, the :code:`SystemDb` entries must be
set.

.. literalinclude:: includes/ivy-systemdb.yaml
  :language: yaml
  :linenos:

To run the |ivy-engine| with a System Database a license is required. See
:ref:`installing-a-licence`.

The schema of the Axon.ivy System Database must exist on the referenced database
system. The :ref:`engine-config-ui` and :ref:`engine-config-cli` simplify the
creation of the SystemDb connection.
