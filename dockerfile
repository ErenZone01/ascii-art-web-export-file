# FROM golang:alpine permet d avoir une image plus legere avec une taille reduite (image minimale d alpine linux)
# qui est benefiques en terme de consommation de ressources et de rapidite du deploiement
FROM golang:alpine
#le LABEL est utlise pour fournir des informations supplementaires sur l image telles que la version, la description, l auteur, les licences etc...
LABEL maintainer="Bousso, Matar, Khadim"
LABEL description="Ce projet permet la creation d une image en utlisant un dockerfile, cet fichier decrit toutes les etapes pour construire une image, a partir de l image on obtient un container"
LABEL version="1.0"
# le WORKDIR permet de definir le repertoire de travail a l interieur de l image ou les fichiers de votre application seront copies
WORKDIR /app
#la commande COPY permet de copier tous les fichiers se trouvant dans votre repertoire courant dans /app (dans l image docker)
COPY . /app
# se mettre dans le repertoire /app
RUN cd /app
#RUN go build -o app . : Elle est utilisee pendant la construction de l image DOCKER pour compiler une application GO, il permet de creer une executable a partir du code source GO
RUN go build -o app .
#permet de specifierle port, cela signifie que l application a l interieur du conteneur est configuree pour ecouter les connexions sur le port 8080.
EXPOSE 8080
CMD ["./app"]
