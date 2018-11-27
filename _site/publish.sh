#!/bin/bash
echo "compiling..."
echo ""
rm -r _site
jekyll build

# Add any other files that should be published within the root of site.
cp keybase.txt _site/

echo ""
commit=$(date '+%d/%m/%Y %H:%M:%S');
echo "preparing git commit \"$commit\"..."
git add .
git commit -m "$commit"
echo "pushing to master repo..."
git push origin master
echo "push complete! external deployer should be notified."

