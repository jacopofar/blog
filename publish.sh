# remove previous publication
rm -rf public
mkdir public

# clone gh-pages branch from the local repo into a repo located within "public in the repo folder itself"
git clone .git --branch gh-pages public
  
# generate
hugo
  
# commit the changes in the clone and push them back to the local gh-pages branch
echo "insert commit message"
read PUBLISH_MESSAGE && cd public && git add --all && git commit -m "$PUBLISH_MESSAGE"  && git push origin gh-pages

# publish
git push upstream gh-pages
