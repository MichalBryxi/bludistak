## bludistak

Projekt pro skladování bludišťáků
maniac vubec nevi o co jde

Vývojář | github jméno | e-mail
------- | ------------ | ------
 Tomas Filipek | maniac1234 | maniac1234@gmail.com
Ivana Kozlová | iff11 | ivanakozlova@gmail.com

## Running via Docker
1. Install Docker
 1. For OSX: https://www.docker.com/products/docker-toolbox
 2. For Linux: https://docs.docker.com/engine/installation/ubuntulinux/
2. Build container:
```
docker build -t bludistak .
```
3. Run container:
```
docker run -it -p 8080:3000 bludistak
```
4. Get your machine IP (in other terminal):
```
# For OSX
docker-machine ls

# For Linux
docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)
```
5. GoTo your docker machine IP port 8080: http://192.168.99.100:8080/
