Minetest/en
===========

This repository contains the instructions for installing and running `Minetest <https://www.minetest.net/>`_ server and client.
It is part of the `educational repository <http://www.coderdojofosso.it/download/>`_ to learn how to write code by blocks.
Educational repository is an italian page because the material is used by an italian team of `CoderDojo <https://coderdojo.com/>`_.

Exceptionally, this documentation is also in `Italian <https://github.com/bilardi/minetest/blob/master/LEGGIMI.rst>`_ .

The Minetest server version that you will install, it will already have the `Mesecons <http://mesecons.net/>`_ mods.

Prerequisite
############

For installing a local version of **Minetest server** on your client, you can install `Docker Desktop <https://www.docker.com/products/docker-desktop>`_.

For mac, you can install the program directly on your client, without Docker Desktop.

Installation
############

Minetest server
***************

The package is not self-consistent: you need to install some packages for deploying **Minetest server**.

Minetest server has default port 30000.

For mac,

.. code-block:: bash

    brew install minetest
    open /usr/local/opt/minetest/minetest.app/Contents/MacOS/minetest --server

For Docker Desktop,

.. code-block:: bash

    git clone https://github.com/bilardi/minetest-server
    cd minetest
    make # for checking the prerequisites
    make install # for deploying the minetest server on your client

Minetest client
***************

For installing **Minetest client** on your client, you can follow the `official guide <https://www.minetest.net/downloads/>`_.

For macOS,

.. code-block:: bash

    brew install minetest
    open /usr/local/opt/minetest/minetest.app/Contents/MacOS/minetest

For Windows,

* download the `latest version <https://github.com/minetest/minetest/releases/latest>`_
* choose the .zip file with win64 (ie: `minetest-5.2.0-win64.zip <https://github.com/minetest/minetest/releases/download/5.2.0/minetest-5.2.0-win64.zip>`_)
* click on the .zip file and choose to extract all where you want
* search bin/minetest.exe and click that file for opening the game

Usage
#####

There are 2 methods for play with Minetest:

* play alone, in your world, on your client
* play online, by a Minetest server

Play Alone
**********

When you play alone, on your client, you can add mods in your client following the `guide <https://wiki.minetest.net/Help:Installing_Client-Side_Mods>`_.

When you run the Minetest client,

* click on **Start game** tab
* choose if you want to play in **Creative mode**
* select a world and, if you don't have a world, click on **New** button for creating one 
* you can enable the mods by **Configure** button and, for saving your changes, click on **Save** button
* click on **Play Game** to start

Play Online
***********

For playing on a Minetest server, you need 3 details: IP and port of the Minetest server, and if the server is private, the password.

For Docker Desktop, if you have installed a local version of Minetest server on your client

.. code-block:: bash

    cd minetest
    make ip # for printing your minetest server ip

When you run the Minetest client,

* click on **Join game** tab
* digit the IP of your (docker) container that you'll have deployed in the **Address** input
* digit the port in **Port** input (on the right the Address input): default port is 30000
* digit your **Name** (without spaces!) in the input further down
* and in the gray rectangle input, digit the **Password** (*)

(*) if you have installed a local Minetest server on your client by Docker Desktop,
default password is created by **install.sh**: you can change it with that you want, before the deployment on (docker) container.

License
#######

This package is released under the MIT license. See `LICENSE <https://github.com/bilardi/minetest/LICENSE>`_ for details.
