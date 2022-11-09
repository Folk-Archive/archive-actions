#!/usr/bin/bash
set -e

mv main /github/workspace
cd /github/workspace && ./main
