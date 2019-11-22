Enterprise Edition
==================

The installation process of an |ivy-engine| Enterprise Edition node is very
similar to the standard installation process. To save time you can copy the
configuration from the first node you have installed to other nodes. See the
next chapters to learn how to install the first node, and how to proceed to
install further nodes either on different machines or on the same machine. 

Once you've installed all |ivy-engine| Enterprise Edition nodes you may want
to integrate them into a web server that will act as single frontend. The web
server can be configured to work as a load balancer that distributes the
incoming requests evenly to the |ivy-engine| Enterprise Edition nodes.
Consult the chapter Web Server :ref:`integration` for more information.


Installation of the first |ivy-engine| node
-------------------------------------------

Follow the :ref:`installation-standard-edition` process to install the first
|ivy-engine| Enterprise Edition node. Except that the license for the
Enterprise Edition is issued.

For an |ivy-engine| Enterprise Edition installation an external Elasticsearch
server installation is mandatory. See Elasticsearch section in :ref:`ivy-yaml`.

At point 5 an additional :guilabel:`Cluster` configuration tab will be displayed
in the :ref:`Engine Config UI <tool-reference-engine-config-ui-cluster>`. Inside
this tab use the :guilabel:`Add local node` button to add the new node to the
list of nodes of the |ivy-engine| Enterprise Edition. 


Installation of another |ivy-engine| node on a different machine
----------------------------------------------------------------

To install further |ivy-engine| Enterprise Edition nodes on other machines
proceed as follows:

#. :ref:`install_engine`
#. Copy the :file:`configuration` directory inside the installation directory of
   the first |ivy-engine| Enterprise Edition node to the installation
   directory of the currently installing node. Overwriting all existing files.
#. Replace the licence file from the first |ivy-engine| Enterprise Edition
   node with the Axon.ivy Enterprise Edition licence for this node in the
   :file:`configuration` directory.
#. Start the :ref:`engine-config-ui` program. The :guilabel:`system database`,
   :guilabel:`administrators` and :guilabel:`web server` tab should display the
   values you have configured on the first node. Change to the
   :guilabel:`Cluster` tab and use the :guilabel:`Add local node` button to add
   the node to the list of nodes of the |ivy-engine| Enterprise Edition.
   :guilabel:`Save` your changes.
#. :ref:`Start <control-center>` the |ivy-engine| Enterprise Edition node and
   test if it is running.


Installation of another |ivy-engine| node on the same machine
-------------------------------------------------------------

To install further |ivy-engine| nodes on the same machine where a node is already
installed proceed as follows:

#. :ref:`install_engine`
#. Copy the :file:`configuration` directory inside the installation directory of
   the first |ivy-engine| node to the installation directory of the currently
   installing node. Overwrite all existing files.
#. Replace the licence file from the first |ivy-engine| node with the 
   Enterprise Edition licence for this node in the :file:`configuration`
   directory.
   
   .. Note::
        Every cluster node needs its own licence file even if nodes run on
        the same machine.

#. Start the :ref:`engine-config-ui` program. The :guilabel:`system database`
   and :guilabel:`administrators` tab should display the values you have
   configured for the first node.
#. Change to the :guilabel:`web server` tab and specify different port numbers
   than those you have specified for the other nodes on this machine.
#. Change to the :guilabel:`Cluster` tab and use the :guilabel:`Add local node`
   button to add the node to the list of nodes of the |ivy-engine| Enterprise
   Edition. :guilabel:`Save` your changes.
#. :ref:`Start <control-center>` the |ivy-engine| Enterprise Edition node and
   test if it is running.