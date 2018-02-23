class Project

attr_reader(:id, :title, :project_id)
attr_accessor(:name)

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
    @project_id = attributes.fetch(:project_id)
    @name = attributes.fetch(:name)
  end

  def ==(another)
    self.title().==(another.title())
  end

  def self.all()
    returned_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    returned_projects.each() do |item|
      id = item.fetch("id").to_i()
      title = item.fetch("title")
      project_id = item.fetch("project_id")
      name = item.fetch("name")
      projects.push(Project.new({:title => title, :project_id => project_id, :name => name, :id => id}))
    end
    projects
  end

  def save()
    saved_project = DB.exec("INSERT INTO projects (title, project_id, name) VALUES ('#{@title}', '#{@project_id}', '#{@name}') RETURNING id;")
    @id = saved_project.first().fetch("id").to_i()
  end

  def self.find(id)
    identified_project = nil
    Project.all().each do |project|
      if project.id().==(id)
        identified_project = project
      end
    end
    identified_project
  end

  def delete()
    #DB.exec("DELETE FROM projects WHERE id = #{self.id()};")
    DB.exec("DELETE FROM projects WHERE id >= 0;")
  end

  def update(attributes)
    #@title = attributes.fetch(:title, @title)
    #@id = self.id()
    #DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};"")

  end


end
