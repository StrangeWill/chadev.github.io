#Chadev.com

The future home of chadev.com. Woot!  
We'll be designing and developing this publicly, so expect to see lots of changes and few bugs ;)

##Adding yourself to the developers list

We invite anyone who identifies as a developer or is interested in becoming a developer in Chattanooga to join our community.

For directions on how to add yourself see [the Wiki page](https://github.com/chadev/chadev.github.io/wiki/Adding-yourself-to-the-Devs-list)

Feel free to contact us via the [#chadev IRC channel on freenode](https://kiwiirc.com/client/irc.freenode.net/?nick=chadev-?#chadev), or email chadevhelp@gmail.com if you have trouble.

##Instructions for Local Development

To replicate our development environment a number of open source tools are required, specifically:

* [Jekyll](http://jekyllrb.com)

##Getting Started

###Install bundler

~~~ sh
$ gem install bundler
~~~

###Have bundler resolve your dependencies.

~~~ sh
$ bundle install
~~~

###Run Jekyll Server

~~~ sh
$ jekyll serve
~~~

###Open Browser

Navigate to http://localhost:4000/

##Getting started with Travis CI

###Environment Variables To Configure On Travis

* GH_TOKEN - An OAuth token that has access to your repo.
* GH_REF - The repo that Travis will push the resulting site to.
* GH_BRANCH (optional) - The branch that Travis will push the resulting site to. Default: gh-pages
* GH_USER (optional) - User to commit as. Default: Travis-CI
* GH_EMAIL (optional) - E-mail to commit as. Default: travis@travis-ci.org
=======

