Prerequisiti
############

Per installare una versione locale del **server Minetest** sul tuo client, puoi installare `Docker Desktop <https://www.docker.com/products/docker-desktop>`_.

Per mac, non è necessario installare Docker Desktop.

Se vuoi installare solo il gioco, non è necessario installare **Docker Desktop** o il **server Minetest**.

Installazione
#############

Se vuoi installare solo il gioco, salta il paragrafo **Server Minetest**.

Server Minetest
***************

Per installare il **server Minetest** è necessario scaricare dei pacchetti e delle dipendenze.

Il server Minetest ha come porta di default la 30000.

Per mac,

.. code-block:: bash

    brew install minetest
    open /usr/local/opt/minetest/minetest.app/Contents/MacOS/minetest --server

Per Docker Desktop,

.. code-block:: bash

    git clone https://github.com/bilardi/minetest
    cd minetest
    make # per stampare i comandi messi a disposizione
    make install # per installare il server minetest sul tuo client

Client Minetest
***************

Per installare la versione **client Minetest** sul tuo client, puoi seguire `la guida ufficiale <https://www.minetest.net/downloads/>`_.

Per macOS,

.. code-block:: bash

    brew install minetest
    open /usr/local/opt/minetest/minetest.app/Contents/MacOS/minetest

Per Windows,

* scarica l'`ultima versione <https://github.com/minetest/minetest/releases/latest>`_
* scegli il file .zip contenente win64 (per esempio: `minetest-5.2.0-win64.zip <https://github.com/minetest/minetest/releases/download/5.2.0/minetest-5.2.0-win64.zip>`_)
* quando scaricato, clicca sul file .zip e scegli di estrarre tutto sulla cartella che vuoi
* cerca **bin/minetest.exe** e cliccalo per aprire il gioco

Mod
***

Le **mod** sono dei componenti del gioco. Alcune sono già presenti, altre sono da scaricare.
Segue come installare le mod di `Mesecons <http://mesecons.net/>`_.

Per macOS,

.. code-block:: bash

    cd /usr/local/opt/minetest/minetest.app/Contents/Resources/games/minetest_game/mods
    curl -LOk https://github.com/minetest-mods/mesecons/archive/master.zip
    unzip master.zip
    mv mesecons-master/mesecons* .
    rm -rf mesecons-master master.zip

Per Windows,

* scaricare il file .zip https://github.com/minetest-mods/mesecons/archive/master.zip
* quando scaricato, clicca sul file .zip e scegli di estrarre tutto sulla cartella che vuoi
* copiare la cartella **mesecons** e le cartelle che cominciano con **mesecons_**
* incollarle nella cartella **games/minetest_game/mods** del gioco scaricato

A questo punto, è indispensabile uscire dal gioco e rientrare:
se nell'inventario non sono ancora visibili tutti i `blocchi di Mesecons <http://mesecons.net/items.html>`_,
allora sono da abilitare le mod a partire dal bottone **Configura** (vedi la sezione **Giocare da soli**).