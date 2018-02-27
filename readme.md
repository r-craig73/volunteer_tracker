# volunteer_tracker

#### by Ron Craig (ron.craig@comcast.net)
#### updated 02/23/2018

### GitHub repository: https://github.com/r-craig73/volunteer_tracker

## Description
### An app using ruby, BDD, Sinatra and CRUD routing to track volunteers and projects.

## Specifications
### back end specs: class Project
1. Returns true when two projects have the same title.
2. Returns true when the volunteer's name is the same.
3. Create an empty projects array.
4. Saves all projects.
5. Returns all projects from the database to a saved array, each element is a project variable.
6. Returns project's title.
7. Returns project's id (nil) before saving, returns project id value (integer) after saving.
8. Returns a project by finding the project's primary id number.
9. Allow user to delete all projects after saving.
10. Allow user to update a project title after saving.
11. Returns a list of volunteers for a specific project.

### back end specs: class Volunteer
1. Returns true when two volunteer names are the same.
2. Returns a volunteer's name.
3. Returns a volunteer's project_id number.
4. Returns volunteer's information from the database to a saved array, each element is a volunteer.
5. Create an empty volunteer array.
6. Save a volunteer into the database.
7. Returns a volunteer by finding the volunteer's primary id number.

### Front end specs: Sinatra
1. The user on the home page should be able to input a project.  Once created, the application should direct the user back to the home page. (ongoing)
2. The user should be able to click on the project to see its detail.  The detail page should include a form where the project can be updated.  After submitting the project's detail, the user can be directed to either the home page or that project's detail page. (ongoing)
3. The user should be able to to navigate to the project's detail page and be able to delete the project.  The user will then be directed to the home page.  The project should no longer be on the list of projects. (ongoing)
4. The user should be able to click on a project detail page and see a list of all volunteers working on that project.  The user should be able to click on a volunteer to see the volunteer's detail page. (ongoing)


## Setup/Instructions
### Create and edit Gemfile in the project's root directory
### Install rubygems (Rspec, pry, Capybara and Sinatra).  In the project's root directory...
* Install gem bundler ($ gem install bundler; $ bundle install; $bundle update)
### Install Postgres.  Open another terminal window, go to home directory ($ cd ~)...
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
