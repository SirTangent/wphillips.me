#!/bin/bash
echo "compiling..."
echo ""
rm -r _site
JEKYLL_ENV=production jekyll build
echo ""
echo -n "Name commit: "
read commit
echo "preparing git commit \"$commit\"..."
git add .
git commit -m "$commit"
echo "pushing to master repo..."
git push origin master
echo "push complete! external deployer should be notified."

