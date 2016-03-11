# docker_GOG
Arquivos para criação de containers DOCKER para o projeto GOG

# Comando para utilização do docker neste projeto 

- Comandos para criar a imagem e executar o container do jboss (diretório debian_jessie/)

```
docker build -t base:jboss .
docker run -it -p 8080:8080 -p 9990:9990 -e JBOSS_PASS="jboss" base:jboss
```


- Comandos para criar a imagem e executar o container do postgresql (diretório debian_jessie/postgresql/postgresql_9.3)

```
docker build -t base:postgresql .
docker run --name postgres9.3 -p 5434:5432 -e POSTGRES_USER=clelsonrodrigues -e POSTGRES_DB=dbouvidoria -e POSTGRES_PASSWORD=123456 -d base:postgresql
```
