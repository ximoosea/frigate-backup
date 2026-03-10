#!/bin/bash
cd /opt/frigate
if [ -n "$(git status --porcelain)" ]; then
  git add .
  git commit -m "Automated backup: $(date)"
  git push origin main
fi
