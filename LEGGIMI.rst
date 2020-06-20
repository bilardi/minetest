Minetest/it
===========

Questo repository contienere le istruzioni per installare e usare le versioni server e client di `Minetest <https://www.minetest.net/>`_.
Fa parte del materiale `educativo scaricabile <http://www.coderdojofosso.it/download/>`_ per imparare come scrivere codice a blocchi.
Questo materiale è usato da un gruppo italiano del l'associazione `CoderDojo <https://coderdojo.com/>`_.

Questa documentazione potete trovarla anche in lingua `inglese <https://github.com/bilardi/minetest/blob/master/README.rst>`_ .

La versione del server Minetest che puoi installare, avrà già le mods di `Mesecons <http://mesecons.net/>`_.

Prerequisiti
############

Per installare una versione locale del **server Minetest** sul tuo client, puoi installare `Docker Desktop <https://www.docker.com/products/docker-desktop>`_.

Per mac, non è necessario installare Docker Desktop.

Installazione
#############

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

    git clone https://github.com/bilardi/minetest-server
    cd minetest
    make # per controllare i prerequisiti
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
* cerca bin/minetest.exe e cliccalo per aprire il gioco

Uso
###

Ci sono 2 metodi per giocare con Minetest:

* giocare da soli, nel tuo mondo, sul tuo client
* giocare online, collegandosi ad un server Minetest

Giocare da soli
***************

Quando giochi da solo, sul tuo client, puoi aggiungere delle mods seguendo questa `guida <https://wiki.minetest.net/Help:Installing_Client-Side_Mods>`_.

Quando apri Minetest,

* clicca sulla tab **Comincia gioco**
* scegli se vuoi giocare in **Modalità creativa**
* seleziona un mondo e, se non hai un mondo, clicca sul bottone **Nuovo** per crearne uno
* puoi abilitare le mods con il bottone **Configura** e, per salvare le tue modifiche, clicca sul bottone **Salva**
* clicca su **Avvia il gioco** per iniziare

Giocare Online
**************

Per giocare su un server Minetest, hai bisogno di 3 informazioni: IP e porta del server Minetest, e se il server è privato, la password.

Per Docker Desktop, se ha installato una versione locale del server Minetest sul tuo client

.. code-block:: bash

    cd minetest
    make ip # per stamapre l'ip del server minetest

Quando apri Minetest,

* clicca sulla tab **Entra in un gioco**
* digita l'IP del conteiner (docker) che hai installato nell'input **Indirizzo**
* digita la porta nell'input **Porta** (sulla destra dell'input Indirizzo): di default la porta è 30000
* digita il tuo **Nome** (senza spazi!) nell'input più in basso
* e nell'input grigio, digita la **Password** (*)

(*) se hai installato la versione locale del server Minetest sul tuo client con Docker Desktop,
la password di default è creata da **install.sh**: puoi cambiarla con quella che vuoi, prima dell'installazione del container (docker).

Licenza
#######

Questo repository è rilasciato sotto licenza MIT. Vedi `LICENSE <https://github.com/bilardi/minetest/LICENSE>`_ per i dettagli.
