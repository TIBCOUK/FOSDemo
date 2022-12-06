#!/bin/bash
EXTERNAL_IP=$(curl -s ident.me)
echo "External IP = $EXTERNAL_IP"
echo "$(tput setaf 15)"	#white
#echo "$(tput smso)"	#stand out
echo "-----------------------------------"
echo "FOSDEMO 5.1.0  ( Postgres )"
echo "-----------------------------------"

echo "Use ~/bin scripts to start/stop/status/log to start all individual components"
echo "E.g"
echo "~/bin/fos start"
echo "~/bin/fos status"
echo "~/bin/fos log"
echo "~/bin/fos stop"

echo "$(tput setaf 14)"	#cyan
echo "----------------------------------"
echo "HTTP URLs"
echo "----------------------------------"
echo "Product & Service Catlogue (EBX)	http://$EXTERNAL_IP:8080/ebx"
echo "OM Configurator				http://$EXTERNAL_IP:9104"
echo "OPE Configurator			http://$EXTERNAL_IP:9190"
echo "OMS User Interface			http://$EXTERNAL_IP:9097"
#echo "OCS					http://$EXTERNAL_IP:9098"

echo "$(tput setaf 11)" #yellow
echo "----------------------------------"
echo "Swagger Interfaces"
echo "Swagger login:"
echo " admin@TIBCO"
echo " order-management-client" 
echo " order-management-secret"
echo "----------------------------------"
echo "OM Configurator                         http://$EXTERNAL_IP:9090"
echo "Authorization Service			http://$EXTERNAL_IP:9091"
echo "Catalog Service				http://$EXTERNAL_IP:9092"
echo "Orchestrator				http://$EXTERNAL_IP:9093"
echo "AOPD					http://$EXTERNAL_IP:9094"
echo "Data Service				http://$EXTERNAL_IP:9095"
#echo "OCS					http://$EXTERNAL_IP:9098"
echo "Archival Service			http://$EXTERNAL_IP:9099"
echo "Migrator				http://$EXTERNAL_IP:9100"
echo "Jeopardy				http://$EXTERNAL_IP:9102"
echo "TMF Adapter				http://$EXTERNAL_IP:8181"
echo "Catalog Client (Manual load of OM))     http://$EXTERNAL_IP:8082"


echo "OPE Catalog Service			http://$EXTERNAL_IP:9192"
echo "OPE					http://$EXTERNAL_IP:8090"
echo "OPE Shopping Cart			http://$EXTERNAL_IP:8091"
echo "OPE OfferSearchIndex			http://$EXTERNAL_IP:8093"

echo "$(tput setaf 10)" #green
echo "Postgres  Database			https://$EXTERNAL_IP:5432"

echo "TIBCO HOME = $TIBCO_HOME"
#echo "$(tput rmso)"	#stand out off

