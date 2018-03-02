require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
also_reload('lib/**/*.rb')
require('pg')
require('pry')

DB = PG.connect({:dbname => 'volunteer_tracker'})

get('/') do
  @projects = Project.all()
  erb(:index)
end

post('/') do
  title = params[:title]
  project = Project.new({:title => title, :id => nil})
  project.save()
  @projects = Project.all()
  erb(:index)
end

get('/projects/:id') do
  @project = Project.find(params.fetch('id').to_i())
  # binding.pry
  erb(:project_edit)
end

patch('/projects/:id') do
  title = params.fetch('title')
  @project = Project.find(params.fetch('id').to_i())
  @project.update({:title => title})
  @projects = Project.all()
  erb(:project_edit)
end

delete('/projects/:id') do
  @project = Project.find(params.fetch('id').to_i())
  @project.delete()
  @projects = Project.all()
  erb(:project_edit)
end
