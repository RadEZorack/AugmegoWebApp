#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-303x914k3ow9/augmego-web-app.tar /usr/local/node/webapps/augmego-web-app.tar
tar -tvf /usr/local/node/webapps/augmego-web-app.tar

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/tomcat9/webapps