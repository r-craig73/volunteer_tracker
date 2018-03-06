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
  @volunteers = Volunteer.all()
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
  @volunteers = Volunteer.all()
  erb(:project_edit)
end

patch('/projects/:id') do
  title = params[:title]
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

get('/volunteer_edit/:id') do
  @project = Project.find(params.fetch('id').to_i())
  @volunteers = Volunteer.all()
  erb(:volunteer_edit)
end

patch('/volunteer_edit/:id') do
  name = params[:name]
  @volunteer = Volunteer.find(params.fetch('project_id').to_i())
  @volunteer.update({:name => name})
  @volunteers = Volunteer.all()
  erb(:volunteer_edit)
end

get('/volunteers') do
  @volunteers = Volunteer.all()
  erb(:volunteers)
end

post('/volunteers') do
  name = params[:name]
  project_id = params.fetch("project_id").to_i()
  @project = Project.find(project_id)
  @volunteer = Volunteer.new({:name => name, :project_id => project_id, :id => nil})
  @volunteer.save()
  @volunteers = Volunteer.all
  erb(:volunteers)
end
