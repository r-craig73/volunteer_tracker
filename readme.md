# volunteer_tracker

#### by Ron Craig (ron.craig@comcast.net)
#### updated 02/23/2018

### GitHub repository: https://github.com/r-craig73/volunteer_tracker

## Description
### An app using ruby, BDD, Sinatra and CRUD routing to track volunteers and projects.

## Specifications
### Logic specs (rspec), class Project
1. Returns true when two projects have the same title.
2. Returns true when the volunteer's name is the same.
3. Create an empty array.
4. Saves all projects.
5. Returns all projects from the database to a saved array, each element is a project variable.
6. Returns project's title.
7. Returns project's id (nil) before saving, returns project id value (integer) after saving.
8. Returns a project by finding the project_id number.
9. Allow user to delete all projects after saving.
10. Allow user to update a project title after saving.
11. TBD

### Logic specs (rspec), class Volunteer
1. Returns true when two volunteer names are the same.
2. Returns volunteer name.
3. Returns volunteer project_id number.
4. Returns all volunteers from the database to a saved array, each element is a project volunteer.
5. TBD
6. TBD

## Setup/Instructions
### Create and edit Gemfile in the project's root directory
### Install rubygems (Rspec, pry, Capybara and Sinatra)
### In the project's root directory...
* Install gem bundler ($ gem install bundler; $ bundle install; $bundle update)
### Install Postgres
### Open another terminal window, go to home directory ($ cd ~)
* Install Postgres ($gem install pg)
* Open Postgres ($ psql)

## Known Bugs
### None at the moment.

## Technology used
* Ruby and Sinatra (application)
* Postgres server (database)
* Rspec and Capybara (testing)

### MIT License

Copyright (c) 2018 **_Ron Craig (ron.craig@comcast.net)_**
