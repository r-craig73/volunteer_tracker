class Project

attr_reader(:id, :title, :project_id)

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def ==(another)
    self.title().==(another.title())
  end

  def self.all()
    returned_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    returned_projects.each() do |item|
      title = item.fetch("title")
      id = item.fetch("id").to_i()
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def save()
    saved_project = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
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
    DB.exec("DELETE FROM projects WHERE id >= 0;")
  end

  def update(attributes)
    @title = attributes.fetch(:title, @title)
    @id = self.id()
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};")
  end

  def volunteers()
    # list_volunteers = []
    #
    # DB.exec("SELECT name, project_id FROM volunteers;")
    # DB.exec("SELECT project_id FROM projects;")
  end

end
