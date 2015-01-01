#!/usr/bin/env sh
mkdir travis-output-repo
mv * ./travis-output-repo
mv ./travis-output-repo/_site/* ./
rm -R ./travis-output-repo
git config user.name "travis"
git config user.email "travis@null"
git commit -am "Travis commit"