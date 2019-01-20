Photos de la colinbus dans son état d'origine.


carte : Colinbus MPI00440 / Serial : MPI00440001 

circuits intégrés carte fille  
* NXP LPC2214FBD144 : microcontrôleur ARM : ([datasheet](https://www.nxp.com/products/processors-and-microcontrollers/arm-based-processors-and-mcus/lpc-cortex-m-mcus/lpc2000-arm7-mcus/single-chip-16-32-bit-arm-microcontrollers-128-256-kb-isp-iap-flash-with-10-bit-adc-and-external-memory-interface:LPC2214FBD144))
* ISSI IS61LV25616AL : 256K x 16 CMOS SRAM 3.3V 
drivers moteurs : 
* L6208PD : DMOS driver for bipolar stepper motor ([datasheet](https://www.st.com/en/motor-drivers/l6208.html))

Moteurs Nanotech ST4118M1206-KFRA  
* https://en.nanotec.com/products/250-st4118-stepper-motor-nema-17/ 
* https://en.nanotec.com/products/357-st4118m1206-a/

La connexion de la carte mère aux moteurs se fait en utilisant 6 broches d'un connecteur série DB9.


Aucune documentation sur la communication entre un pc et la carte n'ayant été retrouvée (types de commandes, formats de fichiers), il reste deux possibilités pour remettre cette machine en service :
* commander directement les moteurs par une carte arduino et un shield CNC, et transférer des fichiers GCode. La connexion entre arduino + shield CNC se fera en USB
* installer un port DB25 et faire la liaison à la carte de contrôleur des moteurs, pour les utiliser. Les commandes sont envoyées par le port parallèle de l'ordinateur sur lequel est installé linux CNC, c'est le principe expliqué dans la vidéo de Marco Reps https://www.youtube.com/watch?v=RU573U6lsGU
