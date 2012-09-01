#! /bin/bash
hyde gen
rsync -zvr --delete --stats --progress --exclude 'scratch' deploy/ johnflan.com:/var/www/johnflan.com/
rm -fr deploy/
