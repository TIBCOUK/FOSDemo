# Updated 29 November 2022

echo "Use this script to update the configurator config files to point to the external IP address"
echo "This script will also update admindbll and th opeadmindb with the external IP address to allow swagger authorization to work"

EXTERNAL_IP=$(curl -s ident.me)
#echo $EXTERNAL_IP



##################################
# Common Configuration - updates
# 1.authorizationServiceTokenEndPoint 
# 2. Update the configurator-ui and omsui application.propertites file to point at the public ip address
##################################
echo "Updating 'authorizationServiceTokenEndPoint' to value 'http://$EXTERNAL_IP:9091/oauth/token'"
psql -U "postgres" -d "admindbll" -h localhost -p 5432 -v pg_tablespace="adminschemall" -c "UPDATE app_properties SET value = 'http://$EXTERNAL_IP:9091/oauth/token' WHERE key='authorizationServiceTokenEndPoint'"




#Update the application.properties file for OM configurator-ui
echo "Updating configurator-ui  application.properties files with public ip address $EXTERNAL_IP"
echo  "...Updating configurator-ui"
sed -i "/configuratorServiceUrl/c\configuratorServiceUrl=http://$EXTERNAL_IP:9090" $OM_HOME/roles/configurator-ui/standalone/config/application.properties
sed -i "/authorizationServiceTokenEndPoint/c\authorizationServiceTokenEndPoint=http://$EXTERNAL_IP:9091/oauth/token" $OM_HOME/roles/configurator-ui/standalone/config/application.properties
echo  "...Updating omsui"
sed -i "/configuratorServiceUrl/c\configuratorServiceUrl=http://$EXTERNAL_IP:9090" $OM_HOME/roles/omsui/standalone/config/application.properties




##################################
# OPE Configuration - updates
# 1.authorization_server_oauth_url
##################################
echo "Updating 'authorizationServiceTokenEndPoint' to value 'http://$EXTERNAL_IP:9091/oauth/token'"
#Update app_properties table, authorization_server_oauth_url field for the opeadmindb
psql -U "postgres" -d "opeadmindb" -h "localhost" -p "5432" -v pg_tablespace="opeadminschema" -c "UPDATE app_properties SET value = 'http://$EXTERNAL_IP:9091/oauth/token' WHERE key='authorization_server_oauth_url'"












#Update the application.properties file authorization_server_oauth_url for OPE Configurator
#sed -i "/authorization_server_oauth_url=/c\authorization_server_oauth_url=http://$EXTERNAL_IP:9091/oauth/token" /opt/tibco/ope/5.1/roles/configurator/standalone/config/application.properties


