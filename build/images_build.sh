#!/bin/sh

location=$(dirname $0)
version=$($location/get_version.sh)

$location/package_maven_artifacts.sh && operator-sdk build docker.io/apache/camel-k:$version