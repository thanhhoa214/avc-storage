#!/bin/bash

git add .
git commit -m "$COMMIT_MESSAGE"
git checkout -b $BRACH_NAME