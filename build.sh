#!/usr/bin/bash
zola build
rsync -arP --delete public/ root@spidyshivam.xyz:/var/www/website/
git add .
git commit -m "auto updating site"
git push origin master

