#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth produser@192.168.143.219:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish produser@192.168.143.219:/tmp/publish
scp -i /opt/prod produser@192.168.143.219 "/tmp/publish"

