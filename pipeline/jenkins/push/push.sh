#!/bin/bash

echo "*******************************"
echo "******* Pushing Image *********"
echo "*******************************"

IMAGE="maven-project"

echo "**** Logging in ****"
docker login -u faisalkhan91 -p $PASS
echo "**** Tagging Image ****"
docker tag $IMAGE:$BUILD_TAG faisalkhan91/$IMAGE:$BUILD_TAG
echo "**** Pushing Image ****"
docker push faisalkhan91/$IMAGE:$BUILD_TAG

