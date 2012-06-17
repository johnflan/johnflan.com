#! /bin/bash
hyde gen
rsync -zvr --delete deploy/ johnflan.com:/var/www/johnflan.com/
rm -fr deploy/
