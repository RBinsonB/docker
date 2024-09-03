#!/usr/bin/env bash

ORG=openrobotics
IMAGE=space_robots_demo
TAG=lunar_pole_exploration_rover

VCS_REF=""
VERSION=preview

# Exit script with failure if build fails
set -eo pipefail

echo ""
echo "##### Building Space ROS Demo Docker Image #####"
echo ""

docker build -t $IMAGE:$TAG \
    --build-arg VCS_REF="$VCS_REF" \
    --build-arg VERSION="$VERSION" .

echo ""
echo "##### Done! #####"

