#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
mkdir /usr/local/node/
aws s3 cp s3://codedeploystack-webappdeploymentbucket-303x914k3ow9/augmego-web-app.tar /usr/local/node/augmego-web-app.tar.gz

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/tomcat9/webapps