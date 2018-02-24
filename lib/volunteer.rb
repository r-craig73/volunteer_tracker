class Volunteer

attr_reader(:id, :name)
attr_accessor(:project_id)

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
  end

  def ==(another)
    self.name().==(another.name())
  end

  def save()
    saved_volunteer = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', '#{@project_id}') RETURNING id;")
    @id = saved_volunteer.first().fetch("id").to_i()
  end



  def self.all
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    returned_volunteers.each() do |item|
      id = item.fetch("id").to_i()
      name = item.fetch("name")
      project_id = item.fetch("project_id")
      volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
    end
    volunteers
  end


end
