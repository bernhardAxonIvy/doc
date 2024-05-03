.. _deployment-versioning:

Versioning
^^^^^^^^^^

We recommend creating as few different versions (process model versions) of an
Axon Ivy Project (process model) as possible on an Axon Ivy Engine.  This is
because with each new version, another Axon Ivy project must be maintained on
the Axon Ivy Engine. If, for example, a bug needs to be fixed, this may also
need to be fixed for all old versions. This massively increases the maintenance
effort. Whenever possible, overwrite the old projects instead of introducing new
versions. However, new versions must be introduced if incompatible changes are
made, for example:

- Deleting, renaming or changing types of persistent data fields in Ivy data
  classes, which are stored in the process data
- Incompatible changes to process models
- Changing types of existing data fields that are persisted in business data
