#!/usr/bin/bash
zola build
rsync -arP --delete public/ admin@oneaboveall.xyz:/var/www/website/
git add .
git commit -m "auto updating site"
git push origin main
