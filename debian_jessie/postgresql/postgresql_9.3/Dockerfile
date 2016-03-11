FROM postgres:9.3
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

RUN echo "Utilize o seguinte padrão de comando para utilizar esta imagem: " && \
    echo "docker run --name postgres9.3 -p 5434:5432 -e POSTGRES_USER=clelsonrodrigues -e POSTGRES_DB=dbouvidoria -e POSTGRES_PASSWORD=123456 -d base:postgresql"  

