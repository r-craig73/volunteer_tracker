require "sinatra"
require "sinatra/reloader"
require "./lib/project"
require "./lib/volunteer"
also_require "lib/**/*.rb"
require "pg"

DB = PG.connect({:dbname => "volunteer_tracker"})
