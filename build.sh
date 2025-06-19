#!/usr/bin/bash
zola build
rsync -arP --delete public/ /var/www/html/
git add .
git commit -m "auto updating site"
git push origin main
