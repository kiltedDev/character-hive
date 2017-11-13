# README

https://character-hive.herokuapp.com/

![Build Status](https://codeship.com/projects/256179/status?branch=master
)
![Code Climate](https://codeclimate.com/github/twilson-spqr/character-hive.png)
![Coverage Status](https://coveralls.io/repos/github/twilson-spqr/character-hive/badge.svg?branch=master)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

To get to work on this at home, you'll have to set up a .env file on your machine and add two lines:
GOOGLE_ID=asdfklajsdfkajsdflkj
and
GOOGLE_SECRET=asdfklajsdfkajsdflkj

This site will walk you through how to obtain those two keys.
https://richonrails.com/articles/google-authentication-in-ruby-on-rails/

You'll be substituting "asdfklajsdfkajsdflkj" with your ID and SECRET_KEY.

From there you should be able to run this on your local machine by entering
 "$ foreman start -f Procfile.dev" in your console.
