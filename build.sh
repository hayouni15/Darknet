#!/bin/bash
set -e

TAG_VERSION=0.01

echo "Building..."
docker build -t ca.thalesgroup.trt/brite/darknet:${TAG_VERSION} \
             -f Dockerfile \
             .
        
echo "Tagging..."     
docker tag ca.thalesgroup.trt/brite/darknet:${TAG_VERSION} ${DOCKER_REGISTRY}/ca.thalesgroup.trt/brite/darknet:${TAG_VERSION} 
docker tag ca.thalesgroup.trt/brite/darknet:${TAG_VERSION} ${DOCKER_REGISTRY}/ca.thalesgroup.trt/brite/darknet:latest 

echo "Pushing to collaborative docker registry"
docker push ${DOCKER_REGISTRY}/ca.thalesgroup.trt/brite/darknet:${TAG_VERSION}
docker push ${DOCKER_REGISTRY}/ca.thalesgroup.trt/brite/darknet:latest
