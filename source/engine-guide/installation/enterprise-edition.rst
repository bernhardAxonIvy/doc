Enterprise Edition
==================

The installation process of an Axon.ivy Engine Enterprise Edition node is very similar to the standard installation
process. To save time you can copy the configuration from the first node you have installed to other nodes. See
the next chapters to learn how to install the first node, and how to proceed to install further nodes either on
different machines or on the same machine. 

Once you've installed all Axon.ivy Engine Enterprise Edition nodes you may want to integrate them into a web server
that will act as single frontend. The web server can be configured to work as a load balancer that distributes the
incoming requests evenly to the Axon.ivy Engine Enterprise Edition nodes. Consult the chapter Web Server Integration
for more information.


Installation of the first engine node
-------------------------------------

Follow the standard installation process to install the first Axon.ivy Engine Enterprise Edition node. 

For an Axon.ivy Engine Enterprise Edition installation an external Elasticsearch server installation is mandatory.
See Elasticsearch installation for more information.

At point 4 you must make sure that you install an Axon.ivy Enterprise Edition licence. 

At point 5 an additional Cluster configuration tab will be displayed in the “Cluster ”.
Inside this tab use the Add local node button to add the new node to the list of nodes of the Axon.ivy Engine Enterprise Edition. 


Installation of another engine node on a different machine
----------------------------------------------------------

To install further Axon.ivy Engine Enterprise Edition nodes on other machines proceed as follows:

#. Install the Axon.ivy Engine
#. Copy the configuration directory inside the installation directory of the first Axon.ivy Engine
   Enterprise Edition node to the installation directory of the currently installing node. Overwriting all existing files.
#. Replace the licence file from the first Axon.ivy Engine Enterprise Edition node with the Axon.ivy Enterprise
   Edition licence for this node in the configuration directory.
#. Start the “Engine Configuration UI” program. The system database and administrators and web server tab should
   display the values you have configured on the first node. Change to the Cluster tab and use the Add local node
   button to add the node to the list of nodes of the Axon.ivy Engine Enterprise Edition. Save your changes.
#. Start the Axon.ivy Engine Enterprise Edition node and test if it is running.


Installation of another engine node on the same machine
-------------------------------------------------------

To install further engine nodes on the same machine where a node is already installed proceed as follows:

#. Install the Axon.ivy Engine
#. Copy the configuration directory inside the installation directory of the first engine node to the installation directory of the currently installing node. Overwrite all existing files.
#. Replace the licence file from the first engine node with the Axon.ivy Enterprise Edition licence for this node in the configuration directory.
   
   .. Note:: Every cluster node needs its own licence file even if nodes run on the same machine.

#. Start the “Engine Configuration UI” program. The system database and administrators tab should display the values you have configured for the first node.
#. Change to the WebServer tab and specify different port numbers than those you have specified for the other nodes on this machine.
#. Change to the Cluster tab and use the Add local node button to add the node to the list of nodes of the Axon.ivy Engine Enterprise Edition. Save your changes.
#. Start the Axon.ivy Engine Enterprise Edition node and test if it is running.