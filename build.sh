#!/bin/bash

docker login

docker build -t fireworkweb/ci .
docker push fireworkweb/ci

helm upgrade --install --atomic --namespace=fwd-ci --create-namespace ci ./chart
