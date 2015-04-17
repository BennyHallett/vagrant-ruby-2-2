# vagrant-ruby-2-2

Vagrant box for Ruby 2.2. Useful for working through the exercises
in [7 Languages in 7
Weeks](https://pragprog.com/book/btlang/seven-languages-in-seven-weeks)

## Inclusions

Starting with the `ubuntu/trusty64` box, we've included:

* build-essentials
* ruby 2.2
* bundler
* rake
* git
* nokogiri dependencies (for xml and xslt work)
* sqlite3

## Usage

    $ git clone $REPO_URL
    $ cd vagrant-ruby-2-2
    $ vagrant up
    $ vagrant ssh
