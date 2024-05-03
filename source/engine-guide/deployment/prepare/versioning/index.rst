.. _deployment-versioning:

Versioning
^^^^^^^^^^

We recommend to operate a minimal set of project versions on an Axon Ivy Engine.
With each new process model version introduced, you'll add a version that must
be maintained. Therefore, bugs that must be fixed, will need to be fixed in each
of the operated versions, which massively increases your maintenance efforts.
Whenever possible, overwrite the old projects instead of introducing new
versions. However, new versions must be introduced if incompatible changes are
made, for example:

- Deleting, renaming or changing types of persistent data fields in Ivy data
  classes, which are stored in the process data
- Incompatible changes to process models
- Changing types of existing data fields that are persisted in business data
