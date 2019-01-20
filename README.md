# electrofraise  

Tentative(s) pour remettre en service une machine à commande numérique "Colinbus profiler"


Modèle: Colinbus Profiler CNC

L'entreprise Colinbus n'existe plus et il n'existe pas de pilotes open source. Aucune documentation sur la communication entre un pc et la carte n'ayant été retrouvée (types de commandes, formats de fichiers), il reste deux possibilités pour remettre cette machine en service :

* "bypasser" la carte de commande à microcontrôleur. En installant un connecteur type port parallèle DB25 sur la fraiseuse on peut contrôler directement les moteurs pas à pas. Les commandes sont envoyées par le port parallèle de l'ordinateur sur lequel est installé linux CNC, c'est le principe expliqué dans la [vidéo de Marco Reps](https://www.youtube.com/watch?v=RU573U6lsGU)
* commander directement les moteurs par une carte arduino et un shield CNC, et transférer des fichiers GCode. La connexion entre arduino + shield CNC se fera alors en USB.

