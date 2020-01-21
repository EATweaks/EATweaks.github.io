#!/bin/sh
rm Packages*
Dpkg-scanpackages ./debs > Packages
bzip2 -k Packages
gzip -c Packages > Packages.gz
git add --all
git commit -m "update"
git push -u origin master