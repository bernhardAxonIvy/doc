Data Storage
============

Axon Ivy provides multiple possibilities to manage and store project
specific data. This chapter provides an overview of all the
possibilities with their advantages and disadvantages. Which one should
be used depends from case to case.

Content Management
------------------

Stores static multi language content like labels, texts, titles, images.
More information can be found in the chapter :ref:`cms`.

Web Content Folder
------------------

Stores static web files (CSS, JavaScript, Images, JSF-Templates) used in
HTML User Dialogs.
More information can be found in the chapter 
:ref:`html-content-in-the-web-content-folder`.

Filesystem
----------

Data can be stores in files. Access and management has to be implemented
in the project itself.

HTML User Dialog Resources
--------------------------

Stores static web files (CSS, JavaScript, Images, etc.) that are only
used in the HTML User Dialog.

Database
--------

Stores and access data in an external database systems. An own database
server is necessary and the database schema must be managed outside of
Axon Ivy.
More information can be found in the chapter :ref:`process-element-db-step`.

Persistency (Java Persistence API)
----------------------------------

Stores and access data in an external database systems. An own database
server is necessary. The database schema can be generated. JPA is a Java
standard that is well documented and widely used. 
More information can be found in the chapter :ref:`persistence`.

Web Service
-----------

Stores and access data in external systems by using web services.
More information can be found in the chapter :ref:`process-element-web-service-call-activity`.

Variables
---------

Stores simple name/value configuration pairs. A variable can have a different
value per environment. On the |ivy-engine| there is a UI to change the values of
a variable. More information can be found in the chapter :ref:`variables`.

Application Custom Properties
-----------------------------

Stores simple name/value pairs. Good alternative for storing small
amount of data instead using a database.
More information can be found in the Public API
:public-api:`ICustomProperties </ch/ivyteam/ivy/application/property/ICustomProperties.html>`.

User Properties
---------------

Stores simple name/value pairs per user. Can be used to store user
settings.
More information can be found in the Public API
:public-api:`IUser </ch/ivyteam/ivy/security/IUser.html>`.


Summary
-------

+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Concept                       | Overriding | Project Dependencies | Environments | Public API | Web Accessable | Designer UI | Engine UI | Knowledge |
+===============================+============+======================+==============+============+================+=============+===========+===========+
| Content Management            | yes        | yes                  | no           | yes        | (yes)          | yes         | no        | Novice    |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Web Content Folder            | no         | yes                  | no           | no         | yes            | yes         | no        | Novice    |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Filesystem                    | no         | no                   | no           | no         | no             | no          | no        | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Html User Dialog Resources    | no         | no                   | no           | no         | yes            | yes         | no        | Novice    |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Database                      | no         | yes                  | yes          | no         | no             | yes         | no        | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Web Service                   | no         | yes                  | yes          | no         | no             | yes         | no        | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Persistency                   | no         | yes                  | yes          | yes        | no             | yes         | no        | Expert    |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Variables                     | no         | yes                  | yes          | yes        | no             | yes         | yes       | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| Application Custom Properties | no         | no                   | no           | yes        | no             | no          | no        | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
| User Properties               | no         | no                   | no           | yes        | no             | no          | no        | Advanced  |
+-------------------------------+------------+----------------------+--------------+------------+----------------+-------------+-----------+-----------+
