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
            class3.js...etc.

The application must be an HTML, CSS, and JavaScript frontend with a Rails API backend. All interactions between the client and the server must be handled asynchronously (AJAX) and use JSON as the communication format.

The JavaScript application must use Object Oriented JavaScript (classes) to encapsulate related data and behavior.

The domain model served by the Rails backend must include a resource with at least one has-many relationship. For example, if you were building an Instagram clone, you might display a list of photos with associated comments.

The backend and frontend must collaborate to demonstrate Client-Server Communication. Your application should have at least 3 AJAX calls, covering at least 2 of Create, Read, Update, and Delete (CRUD). Your client-side JavaScript code must use fetch with the appropriate HTTP verb, and your Rails API should use RESTful conventions.

AJAX Requests:
1. get /pieces (possibly show according to category, like 'period' )
2. delete /pieces/:id (so the same piece doesn't keep showing up)
3. post /pieces
4. get /comment(s) associated with piece (on a button click on a card)
5. post /comment(s) on selected piece





    


