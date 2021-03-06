PPP
===

_(thats Project Potential Planning)_

[![Code Climate](https://codeclimate.com/github/elsom25/ppp/badges/gpa.svg)](https://codeclimate.com/github/elsom25/ppp)

Let's track what's happening and who's supposed to work on it.

Setup
-----

We are using `Ruby v2.1.3`, locally with `sqlite3` and `PhantomJS`.

### OSX Specific

1. Install [Xcode](https://developer.apple.com/xcode/downloads/) or Xcode Developer Tools:
  - Download Xcode form the App Store, OR
  - `xcode-select --install`
1. Install [Homebrew](http://brew.sh/):
  - `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
  - `brew update`
1. Setup [RVM](http://rvm.io/rvm/install):
  - `\curl -sSL https://get.rvm.io | bash -s stable --ruby`
1. Setup ruby: `rvm install ruby-2.1.3` and `rvm use ruby-2.1.3`
1. Setup [PhantomJS](https://github.com/teampoltergeist/poltergeist)
  - `brew install phantomjs`

### All Systems

1. Install gems: `bundle install`
1. Setup your environment variables:
  - create a file in the application root: `.env`
    - `SECRET_KEY_BASE=#{rake secret}`
    - `ADMIN_EMAIL=#{whatever you want}`
    - `ADMIN_PASSWORD=#{whatever you want}`

Run
---

1. `bundle exec guard`
1. ...
1. Profit!

Tests
-----

We're using [MiniTest](https://github.com/seattlerb/minitest) spec style for testing.

* To run all tests: `rake`
* To run a specific test file: `rake test TEST=test/models/widget_test.rb`
* To run a specific test within a file: `ruby -Ilib:test test/models/widget_test.rb -n test_0003_refreshes`
