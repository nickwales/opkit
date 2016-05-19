#!/bin/bash

cp -Rf out/ $HOME/
cd $HOME
git config --global user.email "travis@travis-ci.org"
git config --global user.name "travis-ci"
git clone --quiet --branch=gh-pages git@github.com:inetCatapult/opkit.git

cd gh-pages
git rm -rf ./javadoc
cp -Rf $HOME/out ./doc
git add -f .
git commit -m "Generated docs from Travis."
git push -fq origin gh-pages > /dev/null