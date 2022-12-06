SOAPUI_DIR=~/tools/SoapUI-5.0.0/bin/
cd ./tmp
$SOAPUI_DIR/testrunner.sh -e "http://localhost:18080/omsServer/api/orderService" -c "TEST_PRODUCT" -s "SubmitOrder" ~/soapui/OrderServiceHTTP-soapui-project.xml

