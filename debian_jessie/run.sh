#!/bin/bash

if [ "$JBOSS_PASS" = "**Random**" ]; then
    unset JBOSS_PASS
fi

if [ ! -f /.jboss_admin_pass_configured ]; then
    /set_jboss_admin_pass.sh
fi

echo "Vai iniciar o Jboss ..."
/opt/jboss-as-7.1.1.Final/bin/standalone.sh -b=0.0.0.0 &
# Aguardar o jboss subir...
sleep 5

echo "Vai realizar o deploy ..."
/opt/jboss-as-7.1.1.Final/bin/jboss-cli.sh --connect --command="deploy /opt/GOG/GOG/target/GOG.war --force"
echo "Jboss iniciado com o depĺoy realizado"

#sleep 30
echo "...Agora vamos carregar os dados do sistema..."
sh /opt/carregaDados.sh 

#echo "Vai retirar o primeiro deploy do ar ..."
#/opt/jboss-as-7.1.1.Final/bin/jboss-cli.sh --connect --command="undeploy GOG.war --force"

#echo "Vai parar o Jboss ..."
#/opt/jboss-as-7.1.1.Final/bin/jboss-cli.sh --connect command=:shutdown

#echo "Vai configurar a aplicação para executar sem atualizar o schema de banco"
#sed -i -r 's/<property name=\"hibernate.hbm2ddl.auto\" value=\"create\" \/>/<!-- <property name=\"hibernate.hbm2ddl.auto\" value=\"create\" \/> -->/' /opt/GOG/GOG/src/main/resources/META-INF/persistence.xml 
#cat /opt/GOG/GOG/src/main/resources/META-INF/persistence.xml

#echo "Vai gerar uma nova build"
#cd /opt/GOG/GOG
#mvn package

#echo "Vai iniciar o Jboss (2a. vez) ..."
#/opt/jboss-as-7.1.1.Final/bin/standalone.sh -b=0.0.0.0 &
# Aguardar o jboss subir...
#sleep 5

#echo "Vai realizar o novo deploy ..."
#/opt/jboss-as-7.1.1.Final/bin/jboss-cli.sh --connect --command="deploy /opt/GOG/GOG/target/GOG.war --force"
#echo "Jboss iniciado com o depĺoy realizado (2a. vez)"

echo -e "\n\n\n\t...A aplicação está funcionando!"

/bin/bash

