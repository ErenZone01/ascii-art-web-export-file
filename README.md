#ASCII ART WEB/DOCKERIZE

Ce projet permet la creation d une image en utlisant un dockerfile, cet fichier decrit toutes les etapes pour construire une image, l image est utillisee pour creer des container.

Pour ce projet, nous allons créer :

.un fichier Docker
.une image
.un conteneur
.Appliquer des métadonnées aux objets Docker.

La commande suivante permet de construire notre image:
-> docker build -t <nom_de_l_image> .

Cette commande nous permet de ruter avec notre image
-> docker run -p 80:80 <nom_de_l_image>

L'option -d dans la commande docker run permet de démarrer le conteneur en mode détaché (en arrière-plan) plutôt qu'en mode interactif. Cela signifie que le conteneur s'exécutera en arrière-plan et libérera le terminal decommande.

-> docker run -d <nom_de_l_image>

Une fois que le conteneur est démarré en mode détaché, Docker vous renverra l'ID du conteneur. Vous pouvez également utiliser la commande docker ps pour voir la liste des conteneurs en cours d'exécution et obtenir des informations supplémentaires, telles que l'ID, le nom, le port exposé, etc.