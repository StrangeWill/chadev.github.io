#!/usr/bin/env sh
mkdir travis-output-repo
mv * ./travis-output-repo
mv ./travis-output-repo/_site/* ./
rm -R ./travis-output-repo
echo gem 'rack' >> Gemfile
git config user.name "travis"
git config user.email "travis@null"
git add -A
git commit -m "Travis commit"