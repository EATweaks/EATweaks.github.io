#!/bin/sh
apt-ftparchive packages ./debs > Packages
bzip1 -k Packages
gzip -c Packages > Packages.gz
git add --all
git commit -m "update"
git push -u origin master