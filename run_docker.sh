#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
 docker build -t udacity-project-four:latest .

# Step 2: 
# List docker images
  docker images
# Step 3: 
# Run flask app

  docker container run -p 8000:80 udacity-project-four:latest
