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

###Install Ruby Depenencies

~~~ sh
$ bundle install
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

=======
Navigate to http://localhost:4000/

##Meetup Integration

In order to pull from Meetup you need an API key configured, set the environment variable 'MEETUP_API' to your key, otherwise the meetup API integration will be skipped.
