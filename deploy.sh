#! /bin/bash
mv site.yaml site_dev.yaml 
mv site_prod.yaml site.yaml

hyde gen
rsync -zvr --delete --stats --progress --exclude 'scratch' deploy/ johnflan.com:/var/www/johnflan.com/
rm -fr deploy/

mv site.yaml site_prod.yaml
mv site_dev.yaml site.yaml
