.. _systemdb-case-insensitive-searches:

Case insensitive searches
=========================

If a case insensitive search is required, it must be guaranteed that the
affected column has a case insensitive collation.

#. Check character set & collation of the column
#. Change character set & collation if necessary

.. rubric:: Character set and collation

All characters in databases are encoded with a specific charset (e.g. utf8,
latin1, cp1257). Lastly it defines which kind of characters can be stored at
all.

The collation is a set of rules that defines how the database management system
compares and orders the data (e.g. utf8_unicode_ci, latin2_general_ci). Common
abbreviations in the name of the collations are the following:

* ci = case insensitive
* cs = case sensitive
* ai = accent insensitive
* as = accent sensitive

As well as the character set the collation can be defined mostly on several
levels: server, database, table or column. Everything about this subject is very
dependent on the actual database management system.
