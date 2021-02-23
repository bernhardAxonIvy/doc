.. _migration-upgrade-engine-major:


Major Upgrade
---------------

Upgrades to a new |ivy-engine| version are warmly recommended to benefit of new features
that will increase your productivity and ability to react on new business needs.
You can have a look on the latest features here: :dev-url:`/news` 

This chapter focuses on migrations from a major version to another (e.g. form ``8.0`` to ``10.0``).
If you are only intersted in applying hotfix upgrades (e.g. from ``8.0.6`` to ``8.0.13``), 
please consult the simpler :ref:`migration-upgrade-engine-hotfix` chapter.

Switching from a Long-Term-Supported (LTS) release train (e.g. ``8.0``) to a LE (Leading Edge) release (e.g. ``9.1``) follows
the same logic as described in this chapter. Nevertheless, be aware that we do not recommend switching 
light-heartedly from an LTS to a LE version as the possability to face breaking changes
are more likely and the effort to migrate between the LE versions is higher.
See our release-cycle (:dev-url:`/release-cycle`) for more informations on our release concept. 

 

**Backward-compatibility**

The |ivy-engine| can run and execute workflow applications that have been built towards
an older engine version. Even so, we do recommend to **simulate migrations to new versions
in a testing environment** since there is a chance that your project relies upon a no longer 
supported infrastructure, such as old Primefaces versions, java libraries or internal
java classes from the |ivy-engine|. By sticking only to PublicAPI and best practices however, 
you have a minimal risk to face these versions incompatibilities.

To start with, we warmly recommend to :ref:`Read the Migration Notes document <migration-notes>`
for the versions you are migrating to. It documents are possible braking changes that
may affect you, so that manual changes in your project are necessary.


The way to migrate to the latest hotfix highly dependes on the hosting 
environment, so please jump right to the execution environment you are
using:


.. toctree::
   :maxdepth: 1

   debian
   docker
   windows
   linux
