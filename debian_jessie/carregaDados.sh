#!/bin/sh
DATABASE=dbouvidoria
USERNAME=clelsonrodrigues
HOSTNAME=10.0.0.217
PORT=5432
PASSWORD=123456
export PGPASSWORD=123456

echo "Vai executar o script SQL para CARGA DO DOMÍNIO DE DADOS"
psql -h $HOSTNAME -p $PORT -U $USERNAME $DATABASE -f /opt/ScriptCargaDominio.sql

echo "Vai executar o script SQL para CARGA DE DADOS COMPLEMENTARES" 
psql -h $HOSTNAME -p $PORT -U $USERNAME $DATABASE -f /opt/ScriptCargaComplementar.sql

echo "Vai executar o script SQL para CRIAÇÃO DA VIEW DE ESTATÍSTICAS DE MANIFESTAÇÃO"
psql -h $HOSTNAME -p $PORT -U $USERNAME $DATABASE -f /opt/ScriptCreateVWEstatisticasManifestacao.sql

echo "Vai executar o script SQL para CRIAÇÃO DA VIEW DE ÚLTIMO TRAMITE"
psql -h $HOSTNAME -p $PORT -U $USERNAME $DATABASE -f /opt/ScriptCreateVWUltimoTramite.sql




 
