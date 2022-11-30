#!/usr/bin/sh -l

mv /main /github/workspace
cd /github/workspace && ./main
ls >> $GITHUB_OUTPUT
