#!/bin/sh
# Placeholder for people used to run.sh from older version redirecting them to read the readme
echo
echo ========================================================================================
echo
echo GOG - Gestão de Ouvidoria Governamental 
echo
echo ========================================================================================
echo

/opt/jboss-as-7.1.1.Final/bin/standalone.sh -b 0.0.0.0 &
#/opt/jboss-as-7.1.1.Final/bin/jboss-cli.sh --connect --command="deploy /opt/GOG/GOG/target/GOG.war --force"
