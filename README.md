# README

*Testing my git flow

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

Welcome to Repertoire-Builder! This app helps organists find previously-unknown pieces to explore and add to their repertoire. It randomly shows tiles of six pieces which the user can like and comment on. 

repertoire-builder => where git repo is initialized
repertoire-builder-api => uses a rails generator to make this dir
repertoire-builder-client
    index.html +. single page of the app, will load all of the js that interacts with api
    src
        index.js => top-level js files (where the js starts running)
            pieces.js
            comments.js

