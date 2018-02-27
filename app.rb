require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
also_reload('lib/**/*.rb')
require('pg')
require('pry')

DB = PG.connect({:dbname => 'volunteer_tracker'})

get('/') do
  erb(:homepage)
end

# post('/projects') do
#   title = params.fetch('title')
#   project = Project.new({:title => title, :id => nil})
#   project.save()
#   @projects = Project.all()
#   erb(:success)
# end
