#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

dockerpath="{github_username}/{github_project_name}:latest"

# Step 2:  
# Authenticate & tag
docker login --username={github_username}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker tag udacity-project-four:latest $dockerpath
docker push $dockerpath