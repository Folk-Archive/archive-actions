#!/usr/bin/sh -l

mv /main /github/workspace
cd /github/workspace && ./main
echo "$(ls)" >> $GITHUB_OUTPUT
