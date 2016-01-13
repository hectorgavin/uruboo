source $SDKMAN_DIR/bin/sdkman-init.sh

URUBOO_PATH=/Users/hector/projects/uruboo
TOMCAT_PATH=/Users/hector/projects/tomcat

cd $URUBOO_PATH
sdk use grails 2.5.3
grails clean-all --non-interactive && grails prod war
cp target/uruboo-0.1.war $TOMCAT_PATH/webapps/ROOT.war
cd $TOMCAT_PATH
git add .
git commit -am "Deploying Uruboo in Staging Server"
git push
